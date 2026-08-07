Prescription type code: `diabetic-education-within-care-trajectory`.

Example: [example-drp-nursing-de-within-care-trajectory](ServiceRequest-example-drp-nursing-de-within-care-trajectory.html).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| Business field | Values / constraints | Data type | Notes |
| --- | --- | --- | --- |
| Prescription type |  |  |  |
| Discipline |  |  |  |
| Validity period |  |  | Business validity of the prescription. |
| Patient |  |  | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |  |  | Reference to the prescribing practitioner role. |
| Recommended education | - Information about the disease and a healthy lifestyle<br>- Follow-up for a patient who does not move to self-management<br>- Start of insulin or GLP-1 agonist treatment<br>- Additional education for HbA1c > 7.5<br>- Additional education when moving from 1 to 2 injections<br>- Education for patient on oral treatment<br>- Educational material<br>- Use of blood glucose meter | Enum |  |
| This field appears when "Recommended education" = "Use of blood glucose meter" |  |  |  |
| Educator type | - Nurse<br>- Diabetes educator | List |  |
| Session type | - Individual session (30 min)<br>- Group session (2 hours)<br>- Combination | Enum | or be-vs-session-type-extended. |
| This field appears when "Session type" = "Individual session (30 min)" |  |  |  |
| Number of sessions (max) | - First five sessions<br>- Five additional sessions | Enum | Required in business template. Total number of planned sessions. |
| General remarks | ... | String | Free text; must be encrypted with a pseudonymized key. |
| Feedback required | - Yes<br>- No | Boolean | Required in business template. `be-ext-feedback-to-prescriber`. |
| Prescription validity |  |  | `be-ext-validity-period`. |
| - Start date | Today (default, max. January 1 of the next calendar year) | Date | Required in business template. Start of prescription validity. |
| - End date | December 31 20xx (year of the start date) | Date | Required in business template. End of prescription validity. |

### FHIR mapping

<table class="mapping-table mapping-technical-table">
  <thead>
    <tr>
      <th>Business field</th>
      <th>FHIR representation</th>
      <th>FHIR JSON example</th>
      <th>Terminology</th>
    </tr>
  </thead>
  <tbody>
        <tr>
      <td>Prescription type</td>
      <td><code>ServiceRequest.category[prescriptionType]</code></td>
      <td><pre><code class="language-json">{
  "category": [
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
          "code": "diabetic-education-within-care-trajectory"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type</code></a></li><li>code: <code>diabetic-education-within-care-trajectory</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type"><code>be-vs-nursing-prescription-technical-type</code></a></li></ul></td>
    </tr>
        <tr>
      <td>Discipline</td>
      <td><code>ServiceRequest.category[discipline]</code></td>
      <td><pre><code class="language-json">{
  "category": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "9632001"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>9632001</code></li></ul></td>
    </tr>
        <tr>
      <td>Validity period</td>
      <td><code>ServiceRequest.extension[validity]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-02-18",
        "end": "2026-12-31"
      }
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Patient</td>
      <td><code>ServiceRequest.subject</code></td>
      <td><pre><code class="language-json">{
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
      "_value": {
        "extension": [
          {
            "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization",
            "extension": [
              {
                "url": "marker",
                "valueBoolean": true
              },
              {
                "url": "format",
                "valueCode": "direct"
              },
              {
                "url": "version",
                "valuePositiveInt": 2
              }
            ]
          }
        ]
      }
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Requester / prescriber</td>
      <td><code>ServiceRequest.requester</code></td>
      <td><pre><code class="language-json">{
  "requester": {
    "reference": "PractitionerRole/72101230445-PHYSICIAN"
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Recommended education</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "370858005"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>370858005</code></li></ul></td>
    </tr>
        <tr>
      <td>This field appears when "Recommended education" = "Use of blood glucose meter"</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "370858005"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>370858005</code></li></ul></td>
    </tr>
        <tr>
      <td>Educator type</td>
      <td><code>ServiceRequest.extension[performerType]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-performer-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "106292003"
          }
        ]
      }
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>106292003</code></li></ul></td>
    </tr>
        <tr>
      <td>Session type</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "370858005"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>370858005</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-session-type"><code>be-vs-session-type</code></a></li></ul></td>
    </tr>
        <tr>
      <td>This field appears when "Session type" = "Individual session (30 min)"</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "370858005"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>370858005</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-session-type"><code>be-vs-session-type</code></a></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-session-type-extended"><code>be-vs-session-type-extended</code></a></li></ul></td>
    </tr>
        <tr>
      <td>Number of sessions (max)</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.count</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "count": 5
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>General remarks</td>
      <td><code>ServiceRequest.note[general-remarks].text</code></td>
      <td><pre><code class="language-json">{
  "note": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
                "code": "general-remarks"
              }
            ]
          }
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types</code></a></li><li>code: <code>general-remarks</code></li></ul></td>
    </tr>
        <tr>
      <td>Feedback required</td>
      <td><code>ServiceRequest.extension[feedback]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber",
      "valueBoolean": false
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Prescription validity</td>
      <td><code>ServiceRequest.extension[validity]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-02-18",
        "end": "2026-12-31"
      }
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>- Start date</td>
      <td><code>ServiceRequest.extension[validity].valuePeriod.start</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-02-18",
        "end": "2026-12-31"
      }
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>- End date</td>
      <td><code>ServiceRequest.extension[validity].valuePeriod.end</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-02-18",
        "end": "2026-12-31"
      }
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
  </tbody>
</table>
