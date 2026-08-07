Prescription type code: `diabetic-education-without-care-trajectory`.

Example: [example-drp-nursing-de-without-care-trajectory](ServiceRequest-example-drp-nursing-de-without-care-trajectory.html).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| Business field | Values / constraints | Data type | Notes |
| --- | --- | --- | --- |
| Prescription type |  |  |  |
| Discipline |  |  |  |
| Validity period |  |  | Business validity of the prescription. |
| Patient |  |  | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |  |  | Reference to the prescribing practitioner role. |
| Education type | - Self-management education<br>- Education for understanding diabetes<br>- Support when self-management is absent<br>- Follow-up after education<br>- Other (not reimbursed) | Enum |  |
| This field appears when "Education type" = "Other (not reimbursed)" |  |  |  |
| Other: | ... | String | Required in business template. Conditional free text for "other"; must be encrypted with a pseudonymized key. |
| Frequency |  |  | Timing repeat block. |
| - Number of repetitions | ... times per | Integer | Number of repetitions per period. |
| - Time unit | - Day<br>- Week<br>- Month | Enum |  |
| Treatment period |  |  | Overall treatment period. |
| - Duration | ... | Integer | Duration value. |
| - Time unit | - Day(s)<br>- Week(s)<br>- Month<br>- Year(s) | Enum |  |
| Number of sessions (max) | ... | Integer | Required in business template. Total number of planned sessions. |
| General remarks | ... | String | Free text; must be encrypted with a pseudonymized key. |
| Feedback required | - Yes<br>- No (par defaut) | Boolean | Required in business template. `be-ext-feedback-to-prescriber`. |
| Validity start date | Today (default) | Date | Required in business template. `be-ext-validity-period`. |

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
          "code": "diabetic-education-without-care-trajectory"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type</code></a></li><li>code: <code>diabetic-education-without-care-trajectory</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type"><code>be-vs-nursing-prescription-technical-type</code></a></li></ul></td>
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
        "start": "2026-02-18"
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
      <td>Education type</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "211161000172108"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>211161000172108</code></li></ul></td>
    </tr>
        <tr>
      <td>This field appears when "Education type" = "Other (not reimbursed)"</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "211161000172108"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>211161000172108</code></li></ul></td>
    </tr>
        <tr>
      <td>Other:</td>
      <td><code>CodeableConcept.text</code></td>
      <td><pre><code class="language-json">{
  "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Frequency</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 3,
        "system": "http://unitsofmeasure.org",
        "code": "wk"
      },
      "count": 21,
      "frequency": 1,
      "period": 1,
      "periodUnit": "d"
    }
  }
}</code></pre></td>
      <td><ul><li>system: <a href="http://unitsofmeasure.org"><code>http://unitsofmeasure.org</code></a></li><li>code: <code>wk</code></li></ul></td>
    </tr>
        <tr>
      <td>- Number of repetitions</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.frequency</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "frequency": 1
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>- Time unit</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.periodUnit</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "periodUnit": "d"
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Treatment period</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.boundsDuration</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 3,
        "system": "http://unitsofmeasure.org",
        "code": "wk"
      }
    }
  }
}</code></pre></td>
      <td><ul><li>system: <a href="http://unitsofmeasure.org"><code>http://unitsofmeasure.org</code></a></li><li>code: <code>wk</code></li></ul></td>
    </tr>
        <tr>
      <td>- Duration</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.boundsDuration.value</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 3
      }
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>- Time unit</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.periodUnit</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "periodUnit": "d"
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Number of sessions (max)</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.count</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "count": 21
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
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
                "code": "general-remarks"
              }
            ]
          }
        }
      ],
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}",
      "_text": {
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
                "valueCode": "encrypted"
              },
              {
                "url": "version",
                "valuePositiveInt": 1
              }
            ]
          }
        ]
      }
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types</code></a></li><li>code: <code>general-remarks</code></li></ul></td>
    </tr>
        <tr>
      <td>Feedback required</td>
      <td><code>ServiceRequest.extension[feedback].valueBoolean</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber",
      "valueBoolean": true
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Validity start date</td>
      <td><code>ServiceRequest.extension[validity]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-02-18"
      }
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
  </tbody>
</table>
