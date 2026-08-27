Prescription type code: `medication-prefill-preparation-appendix-81`.

Example: [example-drp-nursing-med-preparation-appendix-81](ServiceRequest-example-drp-nursing-med-preparation-appendix-81.html).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| Business field | Values / constraints | Data type | Notes |
| --- | --- | --- | --- |
| Profile |  |  |  |
| Intent |  |  | Must be "proposal" at creation of the annex 81. |
| Prescription type |  |  |  |
| Discipline |  |  |  |
| Validity period |  |  | Business validity of the prescription. (Period to at least start the treatment) |
| Patient |  |  | Value must follow pseudonymization rules. |
| Requester / prescriber |  |  | Reference to the prescribing practitioner role. |
| Reason | - States difficulty cooperating with the prescribed treatment<br>- Confusion about the treatment<br>- Behaviour indicating that the patient does not adhere to treatment<br>- Medication taken only partially or not at all<br>- Persistence of complaints<br>- Progression of the disease process<br>- Occurrence of adverse effects<br>- Lack of support from family, friends, or social network | List |  |
| Treatment non-adherence related to: | - Dementia (diagnosis of dementia made by a physician)<br>- Uncorrected visual function deficit<br>- Temporary motor impairment of one or both upper limbs<br>- Permanent motor impairment of one or both upper limbs<br>- Complex medication | List |  |
| Physician comment |  | String | This field appears when the physician approves or rejects the annex 81. |

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
      <td>Profile</td>
      <td><code>ServiceRequest.meta.profile</code></td>
      <td><pre><code class="language-json">{
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81"
    ]
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Intent</td>
      <td><code>ServiceRequest.intent</code></td>
      <td><pre><code class="language-json">{
  "intent": "proposal"
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Prescription type</td>
      <td><code>ServiceRequest.category[prescriptionType]</code></td>
      <td><pre><code class="language-json">{
  "category": [
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
          "code": "medication-prefill-preparation-appendix-81"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type</code></a></li><li>code: <code>medication-prefill-preparation-appendix-81</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type"><code>be-vs-nursing-prescription-technical-type</code></a></li></ul></td>
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
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-02-18",
        "end": "2027-02-18"
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
    "reference": "PractitionerRole/67120919457-NURSE"
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Reason</td>
      <td><code>ServiceRequest.reasonCode[nursingDiagnosis]</code></td>
      <td><pre><code class="language-json">{
  "reasonCode": [
    {
      "coding": [
        {
          "code": "708014007",
          "system": "http://snomed.info/sct"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>708014007</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-annex81-nursing-diagnosis"><code>be-vs-annex81-nursing-diagnosis</code></a></li></ul></td>
    </tr>
        <tr>
      <td>Treatment non-adherence related to:</td>
      <td>ServiceRequest.reasonCode[medicalProblem]</td>
      <td><pre><code class="language-json">{
  "reasonCode": [
    {
      "coding": [
        {
          "code": "52448006",
          "system": "http://snomed.info/sct"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>52448006</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-annex81-medical-problem"><code>be-vs-annex81-medical-problem</code></a></li></ul></td>
    </tr>
        <tr>
      <td>Physician comment</td>
      <td><code>ServiceRequest.note[general-remarks].text</code></td>
      <td><pre><code class="language-json">{
  "note": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
                "code": "comment-prescriber"
              }
            ]
          }
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types</code></a></li><li>code: <code>comment-prescriber</code></li></ul></td>
    </tr>
  </tbody>
</table>
