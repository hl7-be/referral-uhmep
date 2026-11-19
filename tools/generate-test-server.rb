require 'json'
require 'cgi'
require 'fileutils'
require 'rexml/document'
require 'yaml'
require 'date'

ROOT = File.expand_path('..', __dir__)
CONFIG = YAML.safe_load(File.read(File.join(ROOT, 'sushi-config.yaml')), permitted_classes: [Date], aliases: true)
FSH_ALIASES = File.read(File.join(ROOT, 'input/fsh/aliases.fsh')).scan(/^Alias:\s+(\S+)\s*=\s*(\S+)/).to_h
LOCAL = CONFIG.fetch('canonical').delete_suffix('/')
FEDERAL = FSH_ALIASES.fetch('$be-ext-validity-period').delete_suffix('/StructureDefinition/be-ext-validity-period')
PARENT_WEB = CONFIG.fetch('dependencies').key?('hl7.fhir.be.referral') ? "#{FEDERAL}/#{CONFIG['dependencies']['hl7.fhir.be.referral']}" : FEDERAL
TERM = 'https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem'
INFSEC = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition'
SCT = 'http://snomed.info/sct'
UCUM = 'http://unitsofmeasure.org'
DATE = '{{validityStartDate}}'
CREATED = '{{createdAt}}'
ASSIGNED = '{{assignedAt}}'
STARTED = '{{executionStartedAt}}'

CASES = [
  { slug: 'generic-nursing', title: 'Generic nursing care', narrative: 'generic-nursing', type: 'generic-nursing', procedure: '9632001', detail: ['be-cs-generic-care-types', 'gastrointestinal-care'], frequency: 1, unit: 'd', count: 7, duration: [1, 'wk'], diagnosis: 'Nutritional problems with tube feeding or parenteral nutrition', m2m_diagnosis: 'Nutritional disorder' },
  { slug: 'annex-81', title: 'Medication preparation, Annex 81 proposal', narrative: 'annex-81', annex: true, procedure: '385796006', frequency: 1, unit: 'wk', end_date: '{{validityEndWithinYear}}', diagnosis: 'Dementia', diagnoses: %w[275928001 1290542000 52448006] },
  { slug: 'medication-prefill', title: 'Medication prefill preparation, not refunded', narrative: 'medication-prefill', type: 'medication-prefill-preparation-not-refunded', procedure: '385796006', frequency: 1, unit: 'wk', end_date: '{{validityEndWithinYear}}', diagnosis: 'Difficulty adhering to her medication regimen' },
  { slug: 'diabetes-convention-centre', title: 'Diabetes education via convention centre', narrative: 'diabetes-convention-centre', type: 'diabetic-education-convention-center', procedure: '385805005', subtype: '211141000172109', detail: ['be-cs-diabetic-education-type', 'diabetic-education-self-care'], frequency: 3, unit: 'wk', count: 30, end_date: '{{validityEndWithinYear}}', diagnosis: 'Type 1 diabetes', discrepancy: 'The narrative specifies three sessions a week. The template leaves the frequency number blank. This test follows the narrative and does not infer a treatment duration from the maximum count.' },
  { slug: 'diabetes-start-trajectory', title: 'Diabetes education within start trajectory', narrative: 'diabetes-start-trajectory', type: 'diabetic-education-within-start-trajectory', procedure: '385805005', subtype: '211151000172106', session: true, educator: true, frequency: 4, unit: 'a', count: 4, end_date: '{{validityEndCalendarYear}}', diagnosis: 'Early-stage type 2 diabetes' },
  { slug: 'diabetes-care-trajectory', title: 'Diabetes education within care trajectory', narrative: 'diabetes-care-trajectory', type: 'diabetic-education-within-care-trajectory', procedure: '385805005', subtype: '370858005', detail: ['be-cs-diabetic-education-type', 'diabetic-education-glucose-meter'], session: true, educator: true, frequency: 5, unit: 'a', count: 5, end_date: '{{validityEndCalendarYear}}', diagnosis: 'Type 2 diabetes treated with insulin', discrepancy: 'The narrative selects blood glucose meter education. The template lists additional education topics without distinguishing selected values from options. This test follows the narrative and does not add the other topics.' },
  { slug: 'diabetes-without-care-trajectory', title: 'Diabetes education without care trajectory', narrative: 'diabetes-without-care-trajectory', type: 'diabetic-education-without-care-trajectory', procedure: '385805005', subtype: '211161000172108', detail: ['be-cs-diabetic-education-type', 'diabetic-education-self-care'], session: true, frequency: 1, unit: 'mo', count: 10, session_duration: 30, remarks: '10 sessions of 30 min', diagnosis: 'Difficulty with diabetes self-management' },
  { slug: 'personal-hygiene', title: 'Assistance with personal hygiene', narrative: 'personal-hygiene', type: 'hygienic-care', procedure: '225964003', frequency: 1, unit: 'd', count: 365, duration: [1, 'a'], diagnosis: "Parkinson's disease" },
  { slug: 'peritoneal-dialysis', title: 'Chronic peritoneal dialysis', narrative: 'peritoneal-dialysis', type: 'chronic-dialysis', procedure: '225230008', frequency: 3, unit: 'd', count: 1095, duration: [1, 'a'], feedback: true, diagnosis: 'Kidney failure and loss of blood pressure', remarks: 'Dialysis-fluid dwell time: 2 hours', medical_reason: 'The patient cannot change dialysis bags independently. Once trained, nursing intervention is only needed as required.' },
  { slug: 'glycemia-test', title: 'Glycemia test with glucometer', narrative: 'glycemia-test', type: 'glycemic-test', procedure: '166900001', detail: ['be-cs-glycemia-measurement-timing', 'fasting'], frequency: 3, unit: 'wk', count: 6, duration: [2, 'wk'], diagnosis: 'Monitoring of known diabetes patients (type 1 or type 2)' },
  { slug: 'sampling', title: 'Sampling', narrative: 'sampling', type: 'sampling', procedure: '17636008', detail: ['sct', '247450001'], frequency: 1, unit: 'd', count: 7, duration: [1, 'wk'], diagnosis: 'Suspected wound infection of the right knee', remarks: 'Wound fluid for bacterial culture from the wound on the right knee', discrepancy: 'The narrative also mentions a blood draw. The structured template specifies wound fluid only, which is the sample type used in this test.' },
  { slug: 'bloodletting', title: 'Bloodletting', narrative: 'bloodletting', type: 'bloodletting', procedure: '127606004', frequency: 2, unit: 'wk', count: 4, duration: [2, 'wk'], quantity: 350, feedback: true, diagnosis: 'Chronic condition with an excess of red blood cells', discrepancy: 'The final narrative step mentions five sessions every three days. This test follows the structured template: twice a week for two weeks, up to four sessions.' },
  { slug: 'parameters', title: 'Measurement of parameters', narrative: 'parameters', type: 'parameters', procedure: '61746007', detail: ['sct', '163033001'], frequency: 2, unit: 'd', count: 14, duration: [1, 'wk'], diagnosis: 'Orthostatic hypotension', medical_reason: "The patient suffers from Parkinson's disease." }
].freeze

def concept(system, code)
  coding = { 'system' => system, 'code' => code }
  coding['version'] = 'http://snomed.info/sct/11000172109' if system == SCT && code.length > 9
  { 'coding' => [coding] }
end

def marker(format, version)
  { 'url' => "#{INFSEC}/be-ext-pseudonymization", 'extension' => [
    { 'url' => 'marker', 'valueBoolean' => true },
    { 'url' => 'format', 'valueCode' => format },
    { 'url' => 'version', 'valuePositiveInt' => version }
  ] }
end

def encrypted_text(variable)
  { 'text' => "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{#{variable}}}", '_text' => { 'extension' => [marker('encrypted', 1)] } }
end

def requester(track, nurse = false)
  role = nurse ? 'NURSE' : 'PHYSICIAN'
  ssin = nurse ? '{{nurseSsin}}' : '{{prescriberSsin}}'
  suffix = track == 'm2m' ? '-NIHII-{{organizationNihii}}' : ''
  "PractitionerRole/#{ssin}-#{role}#{suffix}"
end

def create_request(test, track)
  profile = test[:annex] ? 'ereferral-annex-81' : 'ereferral-servicerequest-nursing'
  validity = { 'start' => DATE }
  validity['end'] = test[:end_date] if test[:end_date]
  resource = {
    'resourceType' => 'ServiceRequest',
    'meta' => {
      'profile' => ["#{LOCAL}/StructureDefinition/#{profile}"],
      'extension' => [{ 'id' => '{{kid}}', 'url' => "#{INFSEC}/be-ext-key-pseudonymization", 'extension' => [
        { 'url' => 'key', 'valueString' => 'urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}', '_valueString' => { 'extension' => [marker('direct', 2)] } }
      ] }]
    },
    'extension' => [{ 'url' => "#{FEDERAL}/StructureDefinition/be-ext-validity-period", 'valuePeriod' => validity }],
    'status' => 'active', 'intent' => test[:annex] ? 'proposal' : 'order',
    'category' => [concept(SCT, '9632001')],
    'code' => concept(SCT, test[:procedure]),
    'subject' => { 'identifier' => { 'use' => 'official', 'system' => 'https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin', 'value' => 'urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}', '_value' => { 'extension' => [marker('direct', 2)] } } },
    'occurrenceTiming' => { 'repeat' => { 'frequency' => test[:frequency], 'period' => 1, 'periodUnit' => test[:unit] } },
    'authoredOn' => CREATED, 'requester' => { 'reference' => requester(track, test[:annex]) }
  }
  if test[:annex] && File.read(File.join(ROOT, 'input/fsh/profiles/nursing/eReferralAnnex81.fsh')).match?(/^\*\s+category\[annex81TechnicalType\]\s+1\.\./)
    resource['category'] << concept("#{TERM}/be-cs-prescription-type", 'medication-prefill-preparation-appendix-81')
  end
  repeat = resource['occurrenceTiming']['repeat']
  repeat['count'] = test[:count] if test[:count]
  repeat['boundsDuration'] = { 'value' => test[:duration][0], 'system' => UCUM, 'code' => test[:duration][1] } if test[:duration]
  repeat.merge!('duration' => test[:session_duration], 'durationUnit' => 'min') if test[:session_duration]
  unless test[:annex]
    resource['category'] << concept("#{TERM}/be-cs-prescription-type", test[:type])
    resource['extension'] << { 'url' => "#{FEDERAL}/StructureDefinition/be-ext-feedback-to-prescriber", 'valueBoolean' => test[:feedback] || false }
  end
  if test[:educator]
    resource['extension'] << { 'url' => "#{FEDERAL}/StructureDefinition/be-ext-performer-type", 'valueCodeableConcept' => concept(SCT, '224543004') }
  end
  details = []
  details << concept(SCT, test[:subtype]) if test[:subtype]
  if test[:detail]
    system, code = test[:detail]
    details << concept(system == 'sct' ? SCT : "#{TERM}/#{system}", code)
  end
  details << concept("#{TERM}/be-cs-session-types", 'individual-session') if test[:session]
  resource['orderDetail'] = details unless details.empty?
  resource['quantityQuantity'] = { 'value' => test[:quantity], 'system' => UCUM, 'code' => 'mL' } if test[:quantity]
  if test[:slug] == 'sampling'
    resource['bodySite'] = [concept(SCT, '72696002').merge('extension' => [{ 'url' => 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality', 'valueCoding' => { 'system' => SCT, 'code' => '24028007' } }])]
  end
  resource['reasonCode'] = test[:annex] ? test[:diagnoses].map { |code| concept(SCT, code) } : [encrypted_text('diagnosisJwe')]
  notes = []
  { medical_reason: 'medical-reason', remarks: 'general-remarks' }.each do |field, code|
    next unless test[field]
    notes << encrypted_text("#{field}Jwe").merge('extension' => [{ 'url' => 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept', 'valueCodeableConcept' => concept("#{TERM}/be-cs-note-types", code) }])
  end
  resource['note'] = notes unless notes.empty?
  resource
end

def assignment(organization: false, internal: false, owner: nil, start: false)
  profile = organization ? 'be-organization-task' : 'be-performer-task'
  resource = {
    'resourceType' => 'Task', 'meta' => { 'profile' => ["#{FEDERAL}/StructureDefinition/#{profile}"] },
    'status' => start ? 'in-progress' : 'ready', 'intent' => 'order',
    'focus' => { 'reference' => 'ServiceRequest/{{serviceRequestId}}' },
    'partOf' => [{ 'reference' => 'Task/{{referralTaskId}}' }],
    'authoredOn' => start ? STARTED : ASSIGNED,
    'owner' => { 'reference' => owner || (organization ? 'Organization/NIHII-{{organizationNihii}}' : 'PractitionerRole/{{nurseSsin}}-NURSE') }
  }
  resource['basedOn'] = [{ 'reference' => 'Task/{{organizationTaskId}}' }] if internal
  resource['executionPeriod'] = { 'start' => STARTED } if start
  resource
end

def start_patch
  { 'resourceType' => 'Parameters', 'parameter' => [{ 'name' => 'operation', 'part' => [
    { 'name' => 'type', 'valueCode' => 'add' },
    { 'name' => 'path', 'valueString' => 'Task' },
    { 'name' => 'name', 'valueString' => 'executionPeriod' },
    { 'name' => 'value', 'valuePeriod' => { 'start' => STARTED } }
  ] }] }
end

def cancellation
  { 'resourceType' => 'Parameters', 'parameter' => [{ 'name' => 'operation', 'part' => [
    { 'name' => 'type', 'valueCode' => 'replace' },
    { 'name' => 'path', 'valueString' => 'ServiceRequest.status' },
    { 'name' => 'value', 'valueString' => 'revoked' }
  ] }] }
end

def escape_cell(value)
  CGI.escapeHTML(value.to_s).gsub('|', '&#124;').gsub("\n", '<br>')
end

def table(rows)
  "| Business Field | Value |\n| --- | --- |\n" + rows.map { |field, value| "| #{escape_cell(field)} | #{escape_cell(value)} |" }.join("\n") + "\n"
end

def actor_value(reference)
  return 'Organization, NIHII ' + reference.delete_prefix('Organization/NIHII-') if reference.start_with?('Organization/NIHII-')
  actor, organization = reference.delete_prefix('PractitionerRole/').split('-NIHII-', 2)
  identity, discipline = actor.rpartition('-').values_at(0, 2)
  role = { 'NURSE' => 'Nurse', 'PHYSICIAN' => 'Physician' }.fetch(discipline, discipline)
  value = "#{role}, SSIN #{identity}"
  organization ? value + ", representing organization NIHII #{organization}" : value
end

def action_fields(title, endpoint, resource, supplied_business)
  business = []
  mappings = []
  add = lambda do |label, value, field, fragment|
    business << [label, value]
    mappings << [label, field, fragment]
  end
  if resource['resourceType'] == 'ServiceRequest'
    type = resource.fetch('category').flat_map { |category| category.fetch('coding') }.find { |coding| coding['system'] == "#{TERM}/be-cs-prescription-type" }
    test = resource.dig('meta', 'profile', 0).end_with?('/ereferral-annex-81') ? CASES.find { |item| item[:annex] } : CASES.find { |item| item[:type] == type.fetch('code') }
    add.call('Prescription / proposal type', test.fetch(:title), 'ServiceRequest.category', resource['category'])
    add.call('Requested care', test.fetch(:title), 'ServiceRequest.code', resource['code'])
    add.call('Patient', 'Patient pseudonym: {{SEC1}} / {{transitInfo}}', 'ServiceRequest.subject', resource['subject'])
    add.call('Requester', actor_value(resource.dig('requester', 'reference')), 'ServiceRequest.requester', resource['requester'])
    resource.fetch('extension').each do |extension|
      case extension.fetch('url').split('/').last
      when 'be-ext-validity-period'
        period = extension.fetch('valuePeriod')
        business << ['Validity start', period['start']]
        business << ['Validity end', period['end']] if period['end']
        mappings << ['Validity period', 'ServiceRequest.extension (be-ext-validity-period)', extension]
      when 'be-ext-feedback-to-prescriber'
        add.call('Feedback required', extension['valueBoolean'] ? 'Yes' : 'No', 'ServiceRequest.extension (be-ext-feedback-to-prescriber)', extension)
      when 'be-ext-performer-type'
        add.call('Educator', 'Nurse', 'ServiceRequest.extension (be-ext-performer-type)', extension)
      end
    end
    repeat = resource.dig('occurrenceTiming', 'repeat')
    units = { 'd' => 'day', 'wk' => 'week', 'mo' => 'month', 'a' => 'year' }
    business << ['Frequency', "#{repeat['frequency']} time(s) per #{repeat['period']} #{units.fetch(repeat['periodUnit'])}"]
    if repeat['boundsDuration']
      duration = repeat['boundsDuration']
      business << ['Treatment period', "#{duration['value']} #{units.fetch(duration['code'])}(s)"]
    end
    business << ['Maximum sessions', repeat['count']] if repeat['count']
    business << ['Session duration', "#{repeat['duration']} minutes"] if repeat['duration']
    mappings << ['Frequency, treatment period and sessions', 'ServiceRequest.occurrenceTiming', resource['occurrenceTiming']]
    if resource['orderDetail']
      selections = []
      selections << ['Care type', 'Gastrointestinal concerns'] if test[:slug] == 'generic-nursing'
      selections << ['Glycemia type', 'Fasting'] if test[:slug] == 'glycemia-test'
      selections << ['Sample type', 'Wound fluid'] if test[:slug] == 'sampling'
      selections << ['Parameter', 'Blood pressure while lying down'] if test[:slug] == 'parameters'
      education = {
        'diabetes-convention-centre' => 'Diabetes education for self-care',
        'diabetes-start-trajectory' => 'Education within a preliminary diabetes care path',
        'diabetes-care-trajectory' => 'Use of a blood glucose meter',
        'diabetes-without-care-trajectory' => 'Education on diabetes self-care'
      }
      selections << ['Education type', education[test[:slug]]] if education.key?(test[:slug])
      selections << ['Session type', 'Individual'] if test[:session]
      business.concat(selections)
      mappings << [selections.map(&:first).join(', '), 'ServiceRequest.orderDetail', resource['orderDetail']]
    end
    add.call('Blood volume per session', "#{resource.dig('quantityQuantity', 'value')} ml", 'ServiceRequest.quantityQuantity', resource['quantityQuantity']) if resource['quantityQuantity']
    add.call('Sampling site and laterality', 'Right knee', 'ServiceRequest.bodySite', resource['bodySite']) if resource['bodySite']
    business.concat(supplied_business)
    if resource['reasonCode']
      labels = supplied_business.select { |label, _value| label.match?(/diagnos|medical problem/i) }.map(&:first)
      mappings << [labels.join(', '), 'ServiceRequest.reasonCode', resource['reasonCode']]
    end
    if resource['note']
      resource['note'].each do |note|
        code = note.dig('extension', 0, 'valueCodeableConcept', 'coding', 0, 'code')
        label = code == 'medical-reason' ? 'Medical reason' : 'General remarks'
        mappings << [label, "ServiceRequest.note (#{code})", note]
      end
    end
    add.call('Creation date', resource['authoredOn'], 'ServiceRequest.authoredOn', { 'authoredOn' => resource['authoredOn'] })
  elsif resource['resourceType'] == 'Task'
    add.call('Prescription / proposal', resource.dig('focus', 'reference').delete_prefix('ServiceRequest/'), 'Task.focus', resource['focus'])
    add.call('Prescription workflow', '{{referralTaskId}}', 'Task.partOf', resource['partOf'])
    add.call('Assigned care provider', actor_value(resource.dig('owner', 'reference')), 'Task.owner', resource['owner'])
    add.call('Organization assignment', '{{organizationTaskId}}', 'Task.basedOn', resource['basedOn']) if resource['basedOn']
    add.call('Assignment state', resource['status'] == 'ready' ? 'Assigned' : 'In progress', 'Task.status', { 'status' => resource['status'] })
    add.call('Action date', resource['authoredOn'], 'Task.authoredOn', { 'authoredOn' => resource['authoredOn'] })
    add.call('Execution start', resource.dig('executionPeriod', 'start'), 'Task.executionPeriod', resource['executionPeriod']) if resource['executionPeriod']
    business.concat(supplied_business)
  else
    target = endpoint.include?('/ServiceRequest/') ? '{{serviceRequestId}}' : '{{performerTaskId}}'
    target = '{{proposalId}}' if endpoint.include?('{{proposalId}}')
    business << [endpoint.include?('/Task/') ? 'Performer assignment' : 'Prescription / proposal', target]
    parameters = resource.fetch('parameter', [])
    if parameters.any? { |parameter| parameter['name'] == 'operation' }
      operation = parameters.find { |parameter| parameter['name'] == 'operation' }
      period = operation['part'].find { |part| part['name'] == 'value' }['valuePeriod']
      label, value = period ? ['Execution start', period['start']] : ['Prescription state', 'Cancelled']
      add.call(label, value, 'Parameters.parameter', parameters)
    else
      business << ['Decision', title.start_with?('Approve') ? 'Approve proposal' : 'Reject proposal']
      business << ['Comment', 'None']
      if parameters.empty?
        mappings << ['Evaluation without a comment', 'Parameters (no operation parameters)', resource]
      else
        parameter = parameters.find { |item| item['name'] == 'requester' }
        add.call('Evaluating requester', actor_value(parameter.dig('valueReference', 'reference')), 'Parameters.parameter (requester)', parameter)
      end
    end
    business.concat(supplied_business)
  end
  [business, mappings]
end

def mapping_table(rows)
  header = '<table class="grid test-server-mapping" style="width: 100%; table-layout: fixed;"><thead><tr><th scope="col" style="width: 22%;">Business Field</th><th scope="col" style="width: 28%;">FHIR Field</th><th scope="col">FHIR JSON</th></tr></thead><tbody>'
  body = rows.map do |label, field, fragment|
    json = CGI.escapeHTML(JSON.pretty_generate(fragment))
    "<tr><td style=\"overflow-wrap: anywhere;\">#{escape_cell(label)}</td><td style=\"overflow-wrap: anywhere;\"><code>#{escape_cell(field)}</code></td><td><pre style=\"white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;\"><code class=\"language-json\">#{json}</code></pre></td></tr>"
  end.join("\n")
  header + "\n" + body + "\n</tbody></table>\n"
end

def action(title, endpoint, resource, explanation, business_rows = [], field_groups: nil)
  profile = resource.dig('meta', 'profile', 0)
  link = if profile&.start_with?(LOCAL)
    "\nProfile: [#{profile.split('/').last}](StructureDefinition-#{profile.split('/').last}.html).\n"
  elsif profile
    "\nProfile: [#{profile.split('/').last}](#{PARENT_WEB}/StructureDefinition-#{profile.split('/').last}.html).\n"
  else
    "\nRequest resource: FHIR R4 Parameters. This operation body is not a Task or ServiceRequest instance.\n"
  end
  business, mappings = field_groups || action_fields(title, endpoint, resource, business_rows)
  "\n### #{title}\n\n`#{endpoint}`\n#{link}\n#{explanation}\n\n#### Business Values\n\n#{table(business)}\n#### FHIR Mapping\n\n#{mapping_table(mappings)}\n#### Complete FHIR Payload\n\n```json\n#{JSON.pretty_generate(resource)}\n```\n"
end

def narrative(test)
  source = File.read(File.join(ROOT, 'input/includes/test-server-nursing.html'))
  match = source.match(/<h4 id="p2m-#{Regexp.escape(test[:narrative])}">.*?<\/h4>\s*(<ol>\s*<li>.*?<\/li>\s*<li>.*?<\/li>)/m)
  raise "Missing Word-grounded narrative for #{test[:slug]}" unless match
  "#{match[1]}\n</ol>"
end

def preface(title, track, source_section)
  "{% raw %}\n\n\n"
end

def scenario_page(test, track)
  title = "#{track.upcase} - #{test[:title]}"
  body = preface(title, track, 'the corresponding Nursing scenario')
  body << "\n### Scenario\n\n#{narrative(test)}\n"
  body << "\nFor M2M, the organization submits creation on behalf of its internal professional.\n" if track == 'm2m'
  body << "\n**Source discrepancy:** #{test[:discrepancy]}\n" if test[:discrepancy]
  diagnosis = track == 'm2m' ? test.fetch(:m2m_diagnosis, test[:diagnosis]) : test[:diagnosis]
  business = [['Diagnosis / medical problem, before encryption', diagnosis]]
  business << ['Nursing diagnoses', 'Expressing difficulty cooperating with treatment. Being confused about treatment.'] if test[:annex]
  business << ['Medical reason, before encryption', test[:medical_reason]] if test[:medical_reason]
  business << ['General remarks, before encryption', test[:remarks]] if test[:remarks]
  body << action(test[:annex] ? 'Create Proposal' : 'Create Prescription', 'POST /ServiceRequest', create_request(test, track), 'Retain the returned ServiceRequest id. Clinical plaintext in the table is represented by encrypted values in the request.', business)
  body << "\n{% endraw %}\n"
end

def workflow_pages(track)
  pages = {}
  add = lambda do |slug, title, story, actions|
    body = preface("#{track.upcase} - #{title}", track, title)
    body << "\n### Scenario\n\n#{story}\n"
    actions.each { |arguments| body << action(*arguments) }
    body << "\n{% endraw %}\n"
    pages["test-server-#{track}-#{slug}.md"] = { title: title, body: body }
  end
  add.call('assign-organization', 'Assign a prescription to an organization', 'Assign the organization identified by NIHII 94175923001 to an existing prescription. Obtain the prescription and its referral task from consultation.', [
    ['Assign Organization', 'POST /Task', assignment(organization: true, owner: 'Organization/NIHII-94175923001'), 'The organization NIHII is fixed by the Word scenario. The prescription and referral task ids are runtime values.']
  ])
  if track == 'p2m'
    add.call('assign-caregiver', 'Assign a prescription to a treatment provider', 'Assign the nurse identified by test SSIN {{nurseSsin}} to an existing prescription.', [
      ['Assign Nurse', 'POST /Task', assignment, 'Substitute the test nurse SSIN and the current prescription and referral task ids.']
    ])
    add.call('classify-without-consequence', 'Classifying a prescription without consequence', 'The Word identifies this test as cancellation of a prescription. Apply the cancellation operation defined by the IG to an existing eligible prescription.', [
      ['Cancel Prescription', 'PATCH /ServiceRequest/{{serviceRequestId}}', cancellation, 'Use the FHIRPath Patch body documented in [Cancel Medical Document](operation-cancel-medical-document.html). Do not use the literal status cancelled, which is not the ServiceRequest cancellation status.']
    ])
  else
    add.call('assign-internal-caregiver', 'Assign a prescription to a caregiver from the organization', 'An organization assigns the nurse identified by test SSIN {{nurseSsin}} to a prescription already assigned to that organization.', [
      ['Assign Internal Nurse', 'POST /Task', assignment(internal: true), 'The organization assignment must already exist. basedOn points to that BeOrganizationTask, while partOf points to the prescription BeReferralTask. The owner reference follows the internal-professional assignment convention documented in the IG.']
    ])
  end
  add.call('start-without-assignment', 'Execute a valid prescription', 'The nurse identified by test SSIN {{nurseSsin}} starts work on a prescription without a prior performer assignment.', [
    ['Start Without Existing Assignment', 'POST /Task', assignment(internal: track == 'm2m', start: true), track == 'm2m' ? 'The organization assignment exists, but no performer assignment exists for this nurse. Create the performer task with basedOn referencing the BeOrganizationTask and partOf referencing the BeReferralTask.' : 'Create a performer task directly in progress, including the actual start timestamp. No organization task is introduced into the P2M scenario.']
  ])
  annex = CASES.find { |test| test[:annex] }
  proposal = create_request(annex, track)
  add.call('organization-annex-81', track == 'm2m' ? 'Create an annex 81 proposal by a nurse from an organization' : 'Create an annex 81 proposal by a nurse', 'The nurse creates a proposal for a patient who needs weekly medication preparation. The standalone Word business data do not specify nursing diagnoses or the medical problem, although the local Annex 81 profile requires both. This executable template explicitly reuses the dementia and two nursing diagnoses from the detailed Annex 81 scenario. This additional fixture choice is not attributed to the standalone Word test.', [
    ['Create Proposal', 'POST /ServiceRequest', proposal, 'Substitute the test nurse SSIN and, for M2M, the representing organization NIHII. No prescription focus or organization Task is added to the ServiceRequest solely because unrelated Task variables appear in the Word.', [['Fixture medical problem', 'Dementia'], ['Fixture nursing diagnoses', 'Expressing difficulty cooperating with treatment. Being confused about treatment.']]]
  ])
  pages
end

require_relative 'radiology-test-cases'

def documents
  pages = {}
  %w[p2m m2m].each do |track|
    CASES.each do |test|
      pages["test-server-#{track}-#{test[:slug]}.md"] = { title: test[:title], body: scenario_page(test, track) }
    end
    pages.merge!(workflow_pages(track))
  end
  pages.merge!(radiology_documents)
end

def overview(pages)
  text = <<~TEXT
    This section provides one page per test, with a business scenario, business values and a FHIR mapping table for each action, followed by its complete FHIR JSON.

    ### Payload Conventions {#payload-conventions}

    - Runtime tokens use double braces. Replace all tokens before sending a request.
    - Dates are runtime placeholders, not fixed scenario dates. Creation, assignment and first execution must be chronologically consistent. A validity end is only included where the scenario supplies it. Unknown session counts and treatment durations are not invented.
    - Clinical plaintext is shown in business rows, then represented by pseudonymized/encrypted fields in JSON. Supply real test pseudonyms, encryption keys and JWE ciphertext through the INFSEC integration. Placeholder substitution is not cryptographic validation.
    - ServiceRequest, referral task, organization task, performer task and approved prescription ids are distinct variables obtained from API responses or consultation. The server-created BeReferralTask is not posted by the client.

    #### Runtime Placeholder Values

    {% raw %}
    | Placeholder | Value to Supply |
    | --- | --- |
    | `{{validityStartDate}}` | Validity start as YYYY-MM-DD, within the scenario's allowed range. |
    | `{{validityEndWithinYear}}` | A later date no more than one year after validity start. |
    | `{{validityEndCalendarYear}}` | 31 December of the year in which validity starts. |
    | `{{createdAt}}`, `{{assignedAt}}`, `{{executionStartedAt}}` | Actual action timestamps as YYYY-MM-DDThh:mm:ss+hh:mm, with the appropriate timezone offset and chronological order. |
    | `{{kid}}` | Identifier of the test encryption key, consistent with the key reference and encrypted values. |
    | `{{SEC1}}`, `{{transitInfo}}` | Test-environment pseudonym components. These are not a plaintext patient SSIN. |
    | `{{diagnosisJwe}}`, `{{medical_reasonJwe}}`, `{{remarksJwe}}` | JWE ciphertext for the corresponding plaintext business value in the action table. |
    | `{{prescriberSsin}}`, `{{nurseSsin}}`, `{{evaluatingPrescriberSsin}}` | Test-environment professional SSINs for the corresponding actors. |
    | `{{organizationNihii}}` | The representing or assigned organization's 11-digit NIHII. |
    | `{{serviceRequestId}}`, `{{referralTaskId}}`, `{{organizationTaskId}}`, `{{performerTaskId}}`, `{{proposalId}}` | Actual distinct ids returned by creation or consultation for the relevant workflow branch. |
    | `{{birthDateJwe}}`, `{{sexAtBirthJwe}}` | Encrypted birth date and sex at birth for the contained Radiology patient. Use a birth date consistent with the age in the scenario, without inventing an exact source date. |
    | `{{clinicalContextJwe}}`, `{{imagingDescriptionJwe}}`, `{{indication1Jwe}}`, `{{indication2Jwe}}`, `{{indication3Jwe}}` | Ciphertext for the Radiology clinical context, examination description and individual clinical indications. |
    | `{{hasDiabetes}}`, `{{hasContrastAllergy}}`, `{{hasMetallicDebris}}`, `{{hasRenalDysfunction}}`, `{{noAttentionCondition}}` | Actual JSON booleans after substitution, not quoted strings. Complete the imaging safety screening. Do not select no attention condition if another attention condition, including pregnancy, is present. |
    | `{{imagingPriority}}` | Imaging priority assessed by the prescriber. The validation fixture uses routine. If urgent is selected, the profile also requires a pseudonymized urgency justification, not supplied by these scenarios. |
    | `{{careTrack}}` | Actual care setting: ambulatory, inpatient or urgency. |
    | `{{selectedImagingCode}}` | A confirmed SNOMED examination code in the required local imaging ValueSet. Cases with an unresolved examination are not validated positive examples. |
    {% endraw %}

    ### Nursing

  TEXT
  %w[p2m m2m].each do |track|
    text << "#### #{track.upcase}\n\n"
    text << "| Test | Scenario and Actions |\n| --- | --- |\n"
    pages.select { |filename, _document| filename.start_with?("test-server-#{track}-") }.each do |filename, document|
      text << "| #{escape_cell(document[:title])} | [Open test](#{filename.sub('.md', '.html')}) |\n"
    end
    text << "\n"
  end
  text << "### Radiology\n\nClinical scenarios cover the selected imaging examination and creation of its eReferral prescription. Exchanges with the PSS system are not included.\n\n"
  %w[p2m m2m].each do |track|
    text << "#### #{track.upcase}\n\n| Test | Scenario and Actions | Examination |\n| --- | --- | --- |\n"
    pages.select { |filename, _document| filename.start_with?("test-server-radiology-#{track}-") }.each do |filename, document|
      status = document[:validation] == :blocked ? 'To be confirmed before submission' : 'Specified'
      text << "| #{escape_cell(document[:title])} | [Open test](#{filename.sub('.md', '.html')}) | #{status} |\n"
    end
    text << "\n"
  end
  text << "### Telemonitoring\n\nNo Telemonitoring Test Server scenario is specified in the supplied Word documents.\n" unless CONFIG.fetch('version').start_with?('3.')
  text.rstrip + "\n"
end

def page_title(filename, document)
  track = filename.match(/-(p2m|m2m)-/)[1].upcase
  domain = filename.start_with?('test-server-radiology-') ? 'Radiology' : 'Nursing'
  "#{track} - #{domain} - #{document.fetch(:title)}"
end

pages = documents
index = overview(pages)
check = ARGV.include?('--check')
all_files = pages.transform_values { |document| document[:body] }.merge('test-server.md' => index)
all_files.each do |filename, content|
  target = File.join(ROOT, 'input/pagecontent', filename)
  if check
    raise "Stale generated page: #{filename}" unless File.exist?(target) && File.read(target) == content
  else
    File.write(target, content)
  end
end

config_path = File.join(ROOT, 'sushi-config.yaml')
config = File.read(config_path)
section = "  test-server.md:\n    title: Test Server\n    generation: markdown\n"
pages.each do |filename, document|
  section << "    #{filename}:\n      title: #{JSON.generate(page_title(filename, document))}\n      generation: markdown\n"
end
updated_config = if config.match?(/^  test-server\.md:\n/)
                   config.sub(/^  test-server\.md:\n.*?(?=^  [^ \n])/m, section)
                 else
                   config.sub(/^  changes\.md:\n/, "#{section}  changes.md:\n")
                 end
raise 'Test Server page registration not found' if updated_config == config && !config.include?(section)
if check
  raise 'Page registration is stale' unless updated_config == config
else
  File.write(config_path, updated_config) unless updated_config == config
end

def instantiate_placeholders(value, substitutions)
  case value
  when Hash
    value.transform_values { |item| instantiate_placeholders(item, substitutions) }
  when Array
    value.map { |item| instantiate_placeholders(item, substitutions) }
  when String
    match = value.match(/\A\{\{([^}]+)\}\}\z/)
    match ? substitutions.fetch(match[1]) : value.gsub(/\{\{([^}]+)\}\}/) { substitutions.fetch(Regexp.last_match(1)).to_s }
  else
    value
  end
end

if ARGV.include?('--validation-dir')
  directory = File.expand_path(ARGV.fetch(ARGV.index('--validation-dir') + 1))
  FileUtils.mkdir_p(directory)
  ciphertext = 'eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..AAECAwQFBgcICQoL.dGVzdA.AAECAwQFBgcICQoLDA0ODw'
  substitutions = {
    'validityStartDate' => '2026-11-18', 'validityEndWithinYear' => '2027-11-17', 'validityEndCalendarYear' => '2026-12-31',
    'createdAt' => '2026-11-18T09:00:00+01:00', 'assignedAt' => '2026-11-18T09:05:00+01:00', 'executionStartedAt' => '2026-11-18T10:00:00+01:00',
    'kid' => 'test-key', 'SEC1' => 'test-domain', 'transitInfo' => 'test-patient',
    'diagnosisJwe' => ciphertext, 'medical_reasonJwe' => ciphertext, 'remarksJwe' => ciphertext,
    'prescriberSsin' => 'test-prescriber', 'nurseSsin' => 'test-nurse', 'evaluatingPrescriberSsin' => 'test-evaluator',
    'organizationNihii' => '94175923001', 'serviceRequestId' => 'test-prescription', 'referralTaskId' => 'test-referral-task',
    'organizationTaskId' => 'test-organization-task', 'performerTaskId' => 'test-performer-task', 'proposalId' => 'test-proposal',
    'birthDateJwe' => ciphertext, 'sexAtBirthJwe' => ciphertext, 'clinicalContextJwe' => ciphertext, 'imagingDescriptionJwe' => ciphertext,
    'indication1Jwe' => ciphertext, 'indication2Jwe' => ciphertext, 'indication3Jwe' => ciphertext,
    'hasDiabetes' => false, 'hasContrastAllergy' => false, 'hasMetallicDebris' => false, 'hasRenalDysfunction' => false,
    'noAttentionCondition' => true, 'imagingPriority' => 'routine', 'careTrack' => 'ambulatory'
  }
  pages.each do |filename, document|
    if document[:validation] == :blocked
      puts "Not exported for positive validation: #{filename} (examination to confirm)"
      next
    end
    document[:body].scan(/```json\s*(.*?)```/m).each_with_index do |block, index|
      resource = instantiate_placeholders(JSON.parse(block.first), substitutions)
      payload = JSON.pretty_generate(resource)
      raise "Unresolved placeholder in #{filename}" if payload.include?('{{') || payload.include?('}}')
      File.write(File.join(directory, "#{filename.sub('.md', '')}-#{index + 1}.json"), payload)
    end
  end
end
puts "#{check ? 'Checked' : 'Generated'} #{pages.length} per-test pages and their index. No Word JSON was read."