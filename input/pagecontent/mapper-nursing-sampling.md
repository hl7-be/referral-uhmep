Prescription type code: `sampling`.

Example: [example-drp-nursing-sampling](ServiceRequest-example-drp-nursing-sampling.html).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| Business field | Values / constraints | Data type | Notes |
| --- | --- | --- | --- |
| Prescription type |  |  |  |
| Discipline |  |  |  |
| Validity period |  |  | Business validity of the prescription. |
| Patient |  |  | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |  |  | Reference to the prescribing practitioner role. |
| Sample type | - Sputum<br>- Urine<br>- Blood<br>- Stool<br>- Nasal fluid<br>- Saliva<br>- Other | List |  |
| This field appears when "Sample type" = "Other" |  |  |  |
| Other: | ... | String | Required in business template. Conditional free text for ?other?; must be pseudonymized when patient-specific. |
| Body location | - Posterior region of head<br>- Occipital condyle structure<br>- Temporal lobe<br>- ... (see list below the table) | List | `ServiceRequest.bodySite` base coding (SNOMED). Compare business values with current ValueSets before finalizing. |
| Body laterality | - Left<br>- Right<br>- Bilateral | List | `ServiceRequest.bodySite.extension:laterality` (`be-ext-laterality`). |
| Body topography | - Top<br>- Bottom<br>- Medial<br>- Lateral<br>- Superior<br>- Inferior<br>- Posterior/rear<br>- Anterior/front<br>- Below<br>- Above<br>- Internal<br>- External | List | `ServiceRequest.bodySite.extension:topography` (`be-ext-body-topography`). Note: this extension's formal FHIR context does not list `ServiceRequest.bodySite` explicitly (only `Condition`/`Observation`/`DeviceUseStatement`/`Procedure.bodySite`); to be validated against the IG Publisher build. |
| Diagnosis | ... | String | Required in business template. Free text diagnosis; must be pseudonymized. |
| Sampling nature | - Single sampling<br>- Recurring sampling | Enum | Compare business values with current ValueSets before finalizing. |
| These fields appear only when "Sampling nature" = "Recurring sampling" |  |  | No direct mapping inferred automatically from the business label. |
| Frequency |  |  | Required in business template. Timing repeat block. |
| - Number of repetitions | ... times per | Integer | Number of repetitions per period. |
| - Time unit | - Day<br>- Week<br>- Month<br>- An | Enum |  |
| Treatment period |  |  | Required in business template. Overall treatment period. |
| - Duration | ... | Integer | Duration value. |
| - Time unit | - Day(s)<br>- Week(s)<br>- Month<br>- Year(s) | Enum |  |
| Number of sessions (max) | - ...<br>- (if "sampling nature" = "single sampling", the number of sessions is 1; otherwise, the number of sessions should be calculated automatically from the frequency and treatment period) | Integer | Required in business template. Total number of planned sessions. |
| Medical reason | ... (field becomes mandatory when frequency is more than once per day) | String | Medical reason; coded value when available, otherwise pseudonymized text. |
| Contraindications | ... | String | Free text; must be pseudonymized. |
| General remarks | ... | String | Free text; must be pseudonymized. |
| Feedback required | - Yes<br>- No | Boolean | Required in business template. `be-ext-feedback-to-prescriber`. |
| Validity start date | Today (default) | Date | Required in business template. `be-ext-validity-period`. |

Body location values (see SNOMED codes table below): Head, Eye, Ear, Mouth, Nose, External naris, Lip, Cheek, Chest, Abdomen, Entire back, Upper limb, Forearm, Elbow, Hand, Shoulder, Leg, Tibia, Knee, Thigh, Greater trochanter, Fibula, Fibular malleolus structure, Entire calf of leg, Malleolar region, Ankle, Heel, Skin of instep, Foot, Big toe, Toe: 2nd, Toe: 3rd, Toe: 4th, Toe: 5th, Scapula, Ischium, Entire iliac crest, Penis, Vagina, Anus, Forehead, Facial structure, Neck, Thumb, Index finger, Middle finger, Ring finger, Little finger, Hip, Sacrum, Pubis.

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
          "code": "sampling"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type</code></a></li><li>code: <code>sampling</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type"><code>be-vs-nursing-prescription-technical-type</code></a></li></ul></td>
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
      <td>Sample type</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "78014005"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>78014005</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-sample-substance-type"><code>be-vs-sample-substance-type</code></a></li></ul></td>
    </tr>
        <tr>
      <td>This field appears when "Sample type" = "Other"</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "78014005"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>78014005</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-sample-substance-type"><code>be-vs-sample-substance-type</code></a></li></ul></td>
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
      <td>Body location</td>
      <td><code>ServiceRequest.bodySite</code></td>
      <td><pre><code class="language-json">{
  "bodySite": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "78277001"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>78277001</code></li></ul></td>
    </tr>
        <tr>
      <td>Body laterality</td>
      <td><code>ServiceRequest.bodySite.extension:laterality</code></td>
      <td><pre><code class="language-json">{
  "bodySite": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "78277001"
        }
      ],
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality",
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "24028007"
          }
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality"><code>https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality</code></a></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-laterality"><code>be-vs-laterality</code></a> (required)</li></ul></td>
    </tr>
        <tr>
      <td>Body topography</td>
      <td><code>ServiceRequest.bodySite.extension:topography</code></td>
      <td><pre><code class="language-json">{
  "bodySite": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "78277001"
        }
      ],
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "255561001"
              }
            ]
          }
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography"><code>https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography</code></a></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-topography"><code>be-vs-body-topography</code></a> (preferred)</li><li>Note: this extension's declared FHIR context does not list <code>ServiceRequest.bodySite</code> explicitly (only <code>Condition</code>/<code>Observation</code>/<code>DeviceUseStatement</code>/<code>Procedure.bodySite</code>); to be validated against the IG Publisher build.</li></ul></td>
    </tr>
        <tr>
      <td>Diagnosis</td>
      <td><code>ServiceRequest.reasonCode.text</code></td>
      <td><pre><code class="language-json">{
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-medical-reason}}",
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
      <td>Sampling nature</td>
      <td>Coded field; mapping to be confirmed</td>
      <td></td>
      <td></td>
    </tr>
        <tr>
      <td>These fields appear only when "Sampling nature" = "Recurring sampling"</td>
      <td>To be confirmed</td>
      <td></td>
      <td></td>
    </tr>
        <tr>
      <td>Frequency</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "count": 1
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>- Number of repetitions</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.frequency</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "count": 1
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
      "count": 1
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
      "count": 1
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>- Duration</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.boundsDuration.value</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "count": 1
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
      "count": 1
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
      "count": 1
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
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-medical-reason}}",
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
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
                "code": "contraindication"
              }
            ]
          }
        }
      ],
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-contraindication}}",
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
