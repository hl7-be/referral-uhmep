RADIOLOGY_CASES = [
  {
    number: 1, title: 'Suspected pulmonary edema', age: 41, sex: 'Male', contrast_allergy: false,
    indications: ['Shortness of breath with suspected pulmonary edema'],
    context: 'Hypertension for five years, progressive shortness of breath over 24 to 48 hours, orthopnea, dry cough, tachypnea, reduced oxygen saturation and bilateral basal crackles. No documented cardiac disease and no known allergies.',
    exams: [{ code: '399208008', title: 'Chest X-ray' }],
    steps: ['A 41-year-old man with hypertension presents with progressive shortness of breath, orthopnea and a dry cough. Examination findings raise suspicion of pulmonary edema.', 'The physician reviews the clinical context and chooses a chest X-ray for rapid initial assessment and confirmation, rather than the initially envisaged contrast-enhanced chest CT.', 'After completing the imaging safety screening, the physician creates the eReferral prescription for the selected chest X-ray.']
  },
  {
    number: 2, title: 'Unresolved or complicated pneumonia', age: 18, sex: 'Female', contrast_allergy: false,
    indications: ['Unresolved or complicated pneumonia'],
    context: 'Previously diagnosed pneumonia with persistent fever despite antibiotics, continued cough, shortness of breath and pleuritic chest pain. No history of immunodeficiency and no known allergies. Imaging is requested to assess persistent infection and possible complications.',
    exams: [{ code: '399208008', title: 'Chest X-ray' }],
    steps: ['An 18-year-old woman previously diagnosed with pneumonia remains febrile despite antibiotic treatment and continues to have respiratory symptoms.', 'The physician requests a chest X-ray to assess unresolved pneumonia and look for complications such as pleural effusion or an abscess.', 'After reviewing the imaging safety screening, the physician creates the chest X-ray prescription.']
  },
  {
    number: 3, title: 'Chest pain with a normal ECG', age: 79, sex: 'Unknown', contrast_allergy: false,
    indications: ['Chest pain with a normal ECG'],
    context: 'Chest pain despite a normal ECG, with cardiovascular history and risk factors still to be assessed. The planned examination is intended to provide a broader assessment of cardiac anatomy and function.',
    exams: [{ code: '{{selectedImagingCode}}', title: 'MR angiography of the heart, with or without IV contrast' }],
    blocked: 'Business Data requests MR angiography of the heart, with or without IV contrast. Technical Data instead codes cardiac morphology and function MRI with contrast (449879007). Those descriptions are not interchangeable. Confirm the intended examination and a matching code from the required imaging ValueSet before submitting this template.',
    steps: ['A 79-year-old patient whose sex at birth is unknown presents with chest pain and a normal ECG. The physician reviews the cardiovascular history and the clinical findings.', 'The business narrative selects MR angiography of the heart, with or without IV contrast, instead of the initially envisaged chest MR angiography.', 'The exact examination code and contrast protocol must be confirmed before the physician can submit the eReferral prescription.']
  },
  {
    number: 4, title: 'New headaches during pregnancy', age: 20, sex: 'Female', pregnant: true, contrast_allergy: false,
    indications: ['New-onset headaches during pregnancy'],
    context: 'New headaches in a pregnant patient. No previous chronic headache or migraine history, head trauma, known neurological disorder or known allergy. Blood pressure, warning signs and neurological findings require clinical assessment.',
    exams: [{ code: '383371000119108', edition: 'http://snomed.info/sct/731000124108', title: 'Head CT without IV contrast' }],
    steps: ['A pregnant 20-year-old woman presents with new headaches and no previous history of chronic headaches or migraine.', 'The physician assesses the clinical findings and selects a non-contrast head CT rather than the initially envisaged head MR angiography.', 'The physician records the pregnancy in the imaging safety checklist and creates the prescription for head CT without IV contrast.']
  },
  {
    number: 5, title: 'Tongue weakness', age: 25, sex: 'Male', contrast_allergy: false,
    indications: ['Tongue weakness'],
    context: 'Recent tongue weakness requiring neurological assessment. No known neurological disease, recent trauma or surgery, previous stroke or TIA, neuromuscular disorder, head or neck cancer, or known allergy.',
    exams: [{ code: '432874000', title: 'Brain MRI without and with contrast' }],
    note: 'Business Data is authoritative: brain MRI without and with contrast is retained. Technical Data selects neck CT with contrast (431326009), which is not used. The MRI is coded using the catalogue head MRI with contrast procedure (432874000), with both unenhanced and enhanced phases retained in the encrypted examination description.',
    steps: ['A 25-year-old man presents with recent tongue weakness. The physician assesses associated speech, swallowing and neurological symptoms.', 'The physician selects brain MRI without and with contrast to investigate the neurological presentation.', 'After completing safety screening, the physician creates the MRI prescription. No neck CT is substituted for the examination described in the business narrative.']
  },
  {
    number: 6, title: 'Head trauma and stroke follow-up in an adult', age: 39, sex: 'Unknown', contrast_allergy: false,
    indications: ['Head trauma with headaches', 'Stroke follow-up'],
    context: 'Headaches after head trauma in a patient with a history of stroke. The physician assesses neurological findings against the previous stroke baseline and reviews current medication and vascular risk factors. No known drug allergies.',
    exams: [{ code: '417936006', title: 'MR angiography of the head, with or without IV contrast' }],
    note: 'The business narrative does not settle the contrast protocol. The general catalogue code for MR angiography of the vascular structures of the head is used. The final contrast decision remains part of the examination description and safety review.',
    steps: ['A 39-year-old patient whose sex at birth is unknown has headaches following head trauma and requires follow-up after a previous stroke.', 'The physician retains head MR angiography and reviews the neurological assessment and previous stroke context. The business narrative leaves contrast use open.', 'After completing safety screening and confirming the protocol, the physician creates the head MR angiography prescription with both clinical indications.']
  },
  {
    number: 7, title: 'Head trauma and stroke follow-up in a child', age: 8, sex: 'Male', contrast_allergy: false,
    indications: ['Head trauma with headaches', 'Stroke follow-up'],
    context: 'An eight-year-old child with headaches after head trauma and a history of stroke requires neurological assessment and comparison with the prior stroke baseline. No known drug allergies are reported in the business narrative.',
    exams: [{ code: '417936006', title: 'MR angiography of the head, with or without IV contrast' }],
    note: 'Business Data is authoritative: the eight-year-old child, head trauma, stroke follow-up and head MR angiography are retained. Technical Data describes suspected appendicitis and selects abdominal ultrasound (45036003), an incompatible scenario that is not used. Contrast use remains to be confirmed.',
    steps: ['An eight-year-old boy has headaches after head trauma and requires follow-up after a previous stroke.', 'The physician assesses the neurological presentation and retains the head MR angiography described in the business narrative.', 'After age-appropriate safety screening and confirmation of the imaging protocol, the physician creates the prescription. The abdominal scenario from Technical Data is not substituted.']
  },
  {
    number: 8, title: 'Initial breast cancer imaging', age: 55, sex: 'Female', contrast_allergy: false,
    indications: ['Stage I breast cancer, asymptomatic, initial evaluation to rule out bone metastases', 'Initial assessment of tumor size and extent before neoadjuvant chemotherapy'],
    context: 'Recently diagnosed stage I breast cancer. The patient is asymptomatic and needs initial evaluation, including tumor size and extent before planned neoadjuvant chemotherapy. No previous cancer history or known allergies are reported.',
    exams: [{ code: '241615005', title: 'Breast MRI without IV contrast' }],
    steps: ['A 55-year-old woman with recently diagnosed stage I breast cancer requires initial imaging before treatment planning.', 'The physician selects breast MRI without IV contrast. Both the initial staging context and the assessment of tumor size and extent are retained as clinical indications.', 'After completing the imaging safety review, the physician creates the breast MRI prescription.']
  },
  {
    number: 9, title: 'Persistent cough and abnormal sputum', age: 61, sex: 'Male', contrast_allergy: false,
    indications: ['Abnormal sputum production', 'Persistent cough', 'Acute respiratory illness'],
    context: 'Cough lasting several weeks with abnormal sputum and acute worsening of respiratory symptoms. Chronic respiratory disease, smoking history and other risk factors still require assessment. No known drug allergies and no reported respiratory distress.',
    exams: [{ code: '399208008', title: 'Chest X-ray' }],
    steps: ['A 61-year-old man presents with persistent cough, abnormal sputum and an acute respiratory illness.', 'The physician retains a chest X-ray and records the three clinical indications in the prescription.', 'After completing imaging safety screening, the physician submits the chest X-ray request.']
  },
  {
    number: 10, title: 'Tongue and facial weakness', age: 37, sex: 'Unknown', contrast_allergy: false,
    indications: ['Tongue weakness', 'Facial weakness'],
    context: 'Recent tongue and facial weakness requiring cranial nerve and neurological assessment. No known previous neurological disease, trauma, surgery, stroke, TIA, neuromuscular disorder or allergy is reported.',
    exams: [{ code: '711232001', title: 'Head CT with IV contrast' }],
    steps: ['A 37-year-old patient whose sex at birth is unknown presents with recent tongue weakness and facial weakness.', 'The physician evaluates the neurological findings and selects head CT with IV contrast, retaining both indications.', 'After checking contrast-related and other imaging safety information, the physician creates the contrast-enhanced head CT prescription.']
  },
  {
    number: 11, title: 'New cough with two selected examinations', age: 40, sex: 'Male',
    indications: ['New-onset cough'], context: 'A forty-year-old man is investigated for a new cough. No additional clinical history or safety answers are provided in the workbook.',
    exams: [{ code: '399208008', title: 'Chest X-ray' }, { code: '395081000119108', edition: 'http://snomed.info/sct/731000124108', title: 'Chest CT without IV contrast' }],
    note: 'Business Data has no narrative for this test. Only the age, sex, indication and two selected examinations from Technical Data are used. No additional symptoms, safety answers or reason for selecting two examinations are invented.',
    steps: ['A 40-year-old man is investigated for a new cough.', 'The physician selects two examinations: a chest X-ray and a chest CT without IV contrast.', 'After completing safety screening, the physician creates a separate eReferral prescription for each examination. The two SNOMED codes are not placed together as if they were equivalent codings of one examination.']
  },
  {
    number: 12, title: 'Flank pain with suspected recurrent stones', age: 52, sex: 'Female',
    indications: ['Flank pain with suspected recurrent stone disease'], context: 'A fifty-two-year-old woman has flank pain with suspected recurrent stone disease. The workbook mentions a CT examination as the preferred alternative but does not specify the examination anatomy or protocol.',
    exams: [{ code: '{{selectedImagingCode}}', title: 'CT examination: anatomy and protocol to be confirmed' }],
    blocked: 'Business Data has no narrative for this test. Technical Data gives Other (74964007), which is not in the local required imaging ValueSet, and a free-text preference for CT. Confirm a specific examination and its permitted SNOMED code. The template is not a validated positive test until this is resolved.',
    steps: ['A 52-year-old woman is investigated for flank pain and suspected recurrent stone disease.', 'The physician indicates a preference for a CT examination, but the selected workbook entry is Other and no exact anatomy or protocol is supplied.', 'Confirm the intended examination and its catalogue code, complete safety screening and only then submit the prescription. No specific CT examination is inferred from the symptom alone.']
  }
].freeze

def encrypted_content(variable)
  { 'url' => "#{INFSEC}/be-ext-pseudonymized-content", 'extension' => [
    { 'url' => 'encryptedValue', 'valueString' => "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{#{variable}}}" },
    { 'url' => 'marker', 'valueBoolean' => true },
    { 'url' => 'format', 'valueCode' => 'encrypted' },
    { 'url' => 'version', 'valuePositiveInt' => 1 }
  ] }
end

def radiology_request(test, exam, track)
  common = create_request(CASES.first, track)
  patient = {
    'resourceType' => 'Patient', 'id' => 'patient',
    'meta' => { 'profile' => ['https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0'] },
    'extension' => [{
      'url' => 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth',
      'valueCodeableConcept' => {
        'coding' => [{ 'system' => 'http://hl7.org/fhir/administrative-gender', 'code' => 'other' }],
        'extension' => [encrypted_content('sexAtBirthJwe')]
      }
    }],
    '_birthDate' => { 'extension' => [encrypted_content('birthDateJwe')] }
  }
  answers = [
    ['diabetes', '{{hasDiabetes}}'],
    ['allergy-contrast-agent', test.fetch(:contrast_allergy, '{{hasContrastAllergy}}')],
    ['metallic-debris', '{{hasMetallicDebris}}'],
    ['renal-dysfunction', '{{hasRenalDysfunction}}'],
    ['none', test[:pregnant] ? false : '{{noAttentionCondition}}']
  ]
  answers.unshift(['pregnancy', true]) if test[:pregnant]
  checklist = {
    'resourceType' => 'QuestionnaireResponse', 'id' => 'safety-checklist',
    'meta' => { 'profile' => ["#{LOCAL}/StructureDefinition/ereferral-imaging-attention-conditions-response"] },
    'questionnaire' => "#{FEDERAL}/Questionnaire/be-questionnaire-imaging-attention-conditions",
    'status' => 'completed', 'authored' => CREATED,
    'item' => answers.map { |link_id, value| { 'linkId' => link_id, 'answer' => [{ 'valueBoolean' => value }] } }
  }
  conditions = test.fetch(:indications).each_index.map do |index|
    {
      'display' => 'Patient condition',
      'extension' => [
        { 'url' => "#{FEDERAL}/StructureDefinition/be-ext-radiology-supporting-info-role", 'valueCode' => 'patient-condition' },
        { 'url' => "#{FEDERAL}/StructureDefinition/be-ext-codeable-concept", 'valueCodeableConcept' => encrypted_text("indication#{index + 1}Jwe") }
      ]
    }
  end
  resource = {
    'resourceType' => 'ServiceRequest',
    'meta' => common.fetch('meta').merge('profile' => ["#{LOCAL}/StructureDefinition/ereferral-servicerequest-diagnosticimaging"]),
    'contained' => [patient, checklist],
    'extension' => [common.fetch('extension').first],
    'status' => 'active', 'intent' => 'order', 'priority' => '{{imagingPriority}}',
    'category' => [
      concept(SCT, '363679005'),
      concept("#{TERM}/be-cs-prescription-type", 'diagnostic-imaging-appendix-82'),
      concept("#{TERM}/be-cs-request-track", '{{careTrack}}')
    ],
    'code' => concept(SCT, exam.fetch(:code)).merge(encrypted_text('imagingDescriptionJwe')),
    'subject' => common.fetch('subject').merge('reference' => '#patient'),
    'authoredOn' => CREATED, 'requester' => common.fetch('requester'),
    'reasonCode' => [encrypted_text('clinicalContextJwe')],
    'supportingInfo' => [
      {
        'reference' => '#safety-checklist',
        'extension' => [{ 'url' => "#{FEDERAL}/StructureDefinition/be-ext-radiology-supporting-info-role", 'valueCode' => 'safety-checklist' }]
      },
      *conditions
    ]
  }
  resource['code']['coding'][0].delete('version') if exam.fetch(:code).start_with?('{{')
  resource['code']['coding'][0]['version'] = exam[:edition] if exam[:edition]
  resource
end

def radiology_fields(test, exam, resource)
  business = [
    ['Patient age', "#{test[:age]} years"], ['Sex at birth', test[:sex]],
    ['Examination', exam[:title]], ['Clinical indications', test[:indications].join("\n")],
    ['Clinical context', test[:context]],
    ['Patient', 'Patient pseudonym: {{SEC1}} / {{transitInfo}}'],
    ['Requester', actor_value(resource.dig('requester', 'reference'))],
    ['Creation date', CREATED], ['Validity start', DATE],
    ['Priority', '{{imagingPriority}}'], ['Care setting', '{{careTrack}}'],
    ['Diabetes', '{{hasDiabetes}}'],
    ['Contrast-agent allergy', test.key?(:contrast_allergy) ? (test[:contrast_allergy] ? 'Yes' : 'No known allergy reported') : '{{hasContrastAllergy}}'],
    ['Metallic debris', '{{hasMetallicDebris}}'], ['Renal dysfunction', '{{hasRenalDysfunction}}'],
    ['No imaging attention condition', test[:pregnant] ? 'No: pregnancy is documented' : '{{noAttentionCondition}}']
  ]
  business << ['Pregnancy', 'Yes'] if test[:pregnant]
  patient, checklist = resource.fetch('contained')
  mappings = [
    ['Imaging discipline, prescription type and care setting', 'ServiceRequest.category', resource['category']],
    ['Examination and protocol', 'ServiceRequest.code', resource['code']],
    ['Patient age and sex at birth (encrypted)', 'ServiceRequest.contained (Patient)', patient],
    ['Patient reference and pseudonym', 'ServiceRequest.subject', resource['subject']],
    ['Imaging safety screening', 'ServiceRequest.contained (QuestionnaireResponse)', checklist],
    ['Clinical indications and checklist reference', 'ServiceRequest.supportingInfo', resource['supportingInfo']],
    ['Clinical context', 'ServiceRequest.reasonCode', resource['reasonCode']],
    ['Requester', 'ServiceRequest.requester', resource['requester']],
    ['Validity start', 'ServiceRequest.extension (be-ext-validity-period)', resource['extension'].first],
    ['Priority', 'ServiceRequest.priority', { 'priority' => resource['priority'] }],
    ['Creation date', 'ServiceRequest.authoredOn', { 'authoredOn' => resource['authoredOn'] }]
  ]
  [business, mappings]
end

def radiology_documents
  pages = {}
  RADIOLOGY_CASES.each do |test|
    %w[p2m m2m].each do |track|
      title = test.fetch(:title)
      body = preface(title, track, '')
      body << "\n### Scenario\n\n<ol>\n" + test.fetch(:steps).map { |step| "<li>#{CGI.escapeHTML(step)}</li>" }.join("\n") + "\n</ol>\n"
      body << "\n#{test[:note]}\n" if test[:note]
      body << "\n**Examination to confirm:** #{test[:blocked]}\n" if test[:blocked]
      test.fetch(:exams).each_with_index do |exam, index|
        resource = radiology_request(test, exam, track)
        explanation = 'The physician completes imaging safety screening and creates the prescription. Age and sex at birth remain visible as business values, while the contained patient carries encrypted values. Safety answers not supplied by the scenario are runtime inputs, not assumed negative findings. Complete and review them before submitting the completed questionnaire.'
        explanation += ' The representing organization is identified in the requester reference.' if track == 'm2m'
        explanation += ' Use distinct ServiceRequest ids for the two examinations.' if test[:exams].length > 1
        body << action("Create Prescription#{test[:exams].length > 1 ? ' ' + (index + 1).to_s : ''}: #{exam[:title]}", 'POST /ServiceRequest', resource, explanation, field_groups: radiology_fields(test, exam, resource))
      end
      body << "\n{% endraw %}\n"
      filename = "test-server-radiology-#{track}-#{format('%02d', test[:number])}.md"
      pages[filename] = { title: title, body: body, validation: test[:blocked] ? :blocked : :ready }
    end
  end
  pages
end