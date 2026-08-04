Prescription type code: `parameters`.

Example: [example-drp-nursing-parameters](ServiceRequest-example-drp-nursing-parameters.html).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| Business field | Values / constraints | Data type | Notes |
| --- | --- | --- | --- |
| Prescription type |  |  |  |
| Discipline |  |  |  |
| Validity period |  |  | Business validity of the prescription. |
| Patient |  |  | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |  |  | Reference to the prescribing practitioner role. |
| Parameter type | - Blood pressure while lying down<br>- Blood pressure while standing<br>- Heart rate<br>- Oxygen saturation<br>- Temperature<br>- Respiratory rate<br>- Stool frequency<br>- Weight<br>- Diuresis<br>- Visual analogue pain scale<br>- Pain type<br>- Stool control<br>- Other | Enum |  |
| This field appears when "Parameter type" = "Other" |  |  |  |
| Other: | ... | String | Required in business template. Conditional free text for ?other?; must be pseudonymized when patient-specific. |
| Diagnosis | ... | String | Required in business template. Free text diagnosis; must be pseudonymized. |
| Time of day | - Avant le repas<br>- Apres le repas<br>- Entre les repas<br>- Matin<br>- Midi<br>- Apres-midi<br>- Soir<br>- Nuit | List | Required in business template. `ServiceRequest.occurrenceTiming.repeat.when` (FHIR EventTiming codes). |
| Frequency |  |  | Required in business template. Timing repeat block. |
| - Number of repetitions | ... times per | Integer | Number of repetitions per period. |
| - Time unit | - Day<br>- Week<br>- Month | Enum |  |
| Treatment period |  |  | Required in business template. Overall treatment period. |
| - Duration | ... | Integer | Duration value. |
| - Time unit | - Day<br>- Week<br>- Month<br>- Year(s) | Enum |  |
| Number of sessions (max) | ... | Integer | Required in business template. Total number of planned sessions. |
| Medical reason | ... (field becomes mandatory when frequency is more than once per day) | String | Medical reason; coded value when available, otherwise pseudonymized text. |
| Contraindications | ... | String | Free text; must be pseudonymized. |
| General remarks | ... | String | Free text; must be pseudonymized. |
| Feedback required | - Yes<br>- No | Boolean | Required in business template. `be-ext-feedback-to-prescriber`. |
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
          "code": "parameters"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type</code></a></li><li>code: <code>parameters</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type"><code>be-vs-nursing-prescription-technical-type</code></a></li></ul></td>
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
      <td>Parameter type</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "431314004"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>431314004</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-parameter-type"><code>be-vs-parameter-type</code></a></li></ul></td>
    </tr>
        <tr>
      <td>This field appears when "Parameter type" = "Other"</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "431314004"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>431314004</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-parameter-type"><code>be-vs-parameter-type</code></a></li></ul></td>
    </tr>
        <tr>
      <td>Other:</td>
      <td><code>CodeableConcept.text</code></td>
      <td><pre><code class="language-json">{
  "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-free-text}}"
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Diagnosis</td>
      <td><code>ServiceRequest.reasonCode.text</code></td>
      <td><pre><code class="language-json">{
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-reason}}",
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
      <td></td>
    </tr>
        <tr>
      <td>Time of day</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.when</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "when": [
        "C"
      ]
    }
  }
}</code></pre></td>
      <td><ul><li>system: FHIR <a href="http://hl7.org/fhir/R4/valueset-event-timing.html"><code>EventTiming</code></a> code system</li><li>code: <code>C</code> (during meal)</li></ul></td>
    </tr>
        <tr>
      <td>Frequency</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 2,
        "system": "http://unitsofmeasure.org",
        "code": "mo"
      },
      "count": 180,
      "frequency": 3,
      "period": 1,
      "periodUnit": "d",
      "when": [
        "C"
      ]
    }
  }
}</code></pre></td>
      <td><ul><li>system: <a href="http://unitsofmeasure.org"><code>http://unitsofmeasure.org</code></a></li><li>code: <code>mo</code></li></ul></td>
    </tr>
        <tr>
      <td>- Number of repetitions</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.frequency</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "frequency": 3
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
        "value": 2,
        "system": "http://unitsofmeasure.org",
        "code": "mo"
      }
    }
  }
}</code></pre></td>
      <td><ul><li>system: <a href="http://unitsofmeasure.org"><code>http://unitsofmeasure.org</code></a></li><li>code: <code>mo</code></li></ul></td>
    </tr>
        <tr>
      <td>- Duration</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.boundsDuration.value</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 2
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
      "count": 180
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Medical reason</td>
      <td><code>ServiceRequest.reasonCode</code></td>
      <td><pre><code class="language-json">{
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-reason}}",
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
      <td></td>
    </tr>
        <tr>
      <td>Contraindications</td>
      <td><code>ServiceRequest.note[contraindication].text</code></td>
      <td><pre><code class="language-json">{
  "note": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-contraindication}}",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
                "code": "contraindication"
              }
            ]
          }
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types</code></a></li><li>code: <code>contraindication</code></li></ul></td>
    </tr>
        <tr>
      <td>General remarks</td>
      <td><code>ServiceRequest.note[general-remarks].text</code></td>
      <td><pre><code class="language-json">{
  "note": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-general-remarks}}",
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
