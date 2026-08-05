Prescription type code: diagnostic imaging prescription type from [`be-vs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-prescription-type).

Example: [example-drp-clinical-imaging](ServiceRequest-example-drp-clinical-imaging.html).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| Business field               | Values / constraints                                                                                                    | Data type              | Notes |
|------------------------------|-------------------------------------------------------------------------------------------------------------------------|------------------------| --- |
| Prescription type            | Optional imaging prescription type category.                                                                            | code                   |  |
| Discipline                   | Required diagnostic imaging discipline.                                                                                 | code                   |  |
| Track                        | Optional request track when applicable.                                                                                 | code                   |  |
| Requested imaging            | Required requested imaging procedure.                                                                                   | code                   | Main imaging request. |
| Priority                     | Optional request priority. When the value is `urgent`, an urgency justification must also be present.                   | code                   |  |
| Urgency justification        | Required when priority is `urgent`; value must be encrypted with a pseudonymized key.                                                        | String                 | Pseudonymized free text. |
| Patient                      | Required patient identity. `subject.reference`, `subject.identifier`, and the contained Patient must remain consistent. | Reference / Identifier | Contained Patient reference; SSIN identifier must follow pseudonymization rules. |
| Patient birthdate            | Required patient birthdate input.                          | Date                   | `Patient.birthDate` must not carry a clear value; the encrypted date is carried in `_birthDate` with `be-ext-pseudonymized-content`. |
| Patient gender at birth      | Required gender at birth.                                                                                               | code                      | The visible code is fixed to administrative gender `other`; the actual value is encrypted in `be-ext-pseudonymized-content`. |
| Additionnal relevant information             | Required imaging attention conditions checklist.                                                                        | Reference              | Must reference the contained `eReferralImagingAttentionConditionsResponse`. |
| Patient condition | Zero or more Patient conditions. Use either an allowed code or encrypted free text in `CodeableConcept.text`. | code                   |  |
| Prior request                | Zero or more prior imaging request references or coded/textual prior-request details.                                   | Reference / code       | Captures relevant prior imaging request information. |
| Status reason                | Optional status reason; textual reason details must be encrypted with a pseudonymized key.                                                   | code                   | Text must be encrypted with a pseudonymized key. |

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
          "code": "diagnostic-imaging-appendix-82"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type</code></a></li><li>code: <code>diagnostic-imaging-appendix-82</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-prescription-type"><code>be-vs-prescription-type</code></a></li></ul></td>
    </tr>
        <tr>
      <td>Discipline</td>
      <td><code>ServiceRequest.category[discipline]</code></td>
      <td><pre><code class="language-json">{
  "category": [
    {
      "coding": [
        {
          "code": "363679005",
          "system": "http://snomed.info/sct"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>363679005</code></li></ul></td>
    </tr>
        <tr>
      <td>Track</td>
      <td><code>ServiceRequest.category[track]</code></td>
      <td><pre><code class="language-json">{
  "category": [
    {
      "coding": [
        {
          "code": "ambulatory",
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track</code></a></li><li>code: <code>ambulatory</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-request-track"><code>be-vs-request-track</code></a></li></ul></td>
    </tr>
        <tr>
      <td>Requested imaging</td>
      <td><code>ServiceRequest.code</code></td>
      <td><pre><code class="language-json">{
  "code": {
    "coding": [
      {
        "code": "77477000",
        "system": "http://snomed.info/sct"
      }
    ]
  }
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>77477000</code></li></ul></td>
    </tr>
        <tr>
      <td>Priority</td>
      <td><code>ServiceRequest.priority</code></td>
      <td><pre><code class="language-json">{
  "priority": "urgent"
}</code></pre></td>
      <td><ul><li>binding: <a href="http://hl7.org/fhir/R4/valueset-request-priority.html"><code>RequestPriority</code></a></li></ul></td>
    </tr>
        <tr>
      <td>Urgency justification</td>
      <td><code>ServiceRequest.extension[urgencyJustification]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-urgency-justification",
      "valueString": "urn:be:fgov:pseudo:v2:urgent-ct-after-acute-symptoms",
      "_valueString": {
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
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Patient</td>
      <td><code>ServiceRequest.subject.reference</code></td>
      <td><pre><code class="language-json">{
  "subject": {
    "reference": "#patient",
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:79012312345",
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
  },
  "contained": [
    {
      "id": "patient",
      "resourceType": "Patient"
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Patient birthdate</td>
      <td><code>ServiceRequest.contained[Patient].birthDate</code></td>
      <td><pre><code class="language-json">{
  "contained": [
    {
      "resourceType": "Patient",
      "id": "patient",
      "_birthDate": {
        "extension": [
          {
            "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content",
            "extension": [
              {
                "url": "encryptedValue",
                "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted_patient_birthdate}}"
              },
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
      <td><ul><li>The clear <code>birthDate</code> value is omitted.</li><li>The encrypted value uses <a href="https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content"><code>be-ext-pseudonymized-content</code></a>.</li></ul></td>
    </tr>
        <tr>
      <td>Patient gender at birth</td>
      <td><code>ServiceRequest.contained[Patient].extension[genderAtBirth]</code></td>
      <td><pre><code class="language-json">{
  "contained": [
    {
      "resourceType": "Patient",
      "id": "patient",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/administrative-gender",
                "code": "other"
              }
            ],
            "extension": [
              {
                "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content",
                "extension": [
                  {
                    "url": "encryptedValue",
                    "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted_patient_gender}}"
                  },
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
    }
  ]
}</code></pre></td>
      <td><ul><li>extension: <a href="https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth"><code>be-ext-gender-at-birth</code></a></li><li>visible coding: <code>http://hl7.org/fhir/administrative-gender#other</code></li><li>The encrypted value uses <a href="https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content"><code>be-ext-pseudonymized-content</code></a>.</li></ul></td>
    </tr>
        <tr>
      <td>Additionnal relevant information</td>
      <td><code>ServiceRequest.supportingInfo[safetyChecklist].reference</code></td>
      <td><pre><code class="language-json">{
  "supportingInfo": [
    {
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
          "valueCode": "safety-checklist"
        }
      ],
      "reference": "#ci-attention-qr"
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Patient condition</td>
      <td><code>ServiceRequest.supportingInfo[patientCondition]</code></td>
      <td><pre><code class="language-json">{
  "supportingInfo": [
    {
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
          "valueCode": "patient-condition"
        },
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.riziv-inami.be/standards/fhir/ereferral/CodeSystem/be-cs-pss-indication",
                "code": "2506",
                "display": "AAA screening, family history of AAA"
              }
            ],
            "text": "urn:be:fgov:pseudo:v2:free-text-indication",
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
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.riziv-inami.be/standards/fhir/ereferral/CodeSystem/be-cs-pss-indication"><code>https://www.riziv-inami.be/standards/fhir/ereferral/CodeSystem/be-cs-pss-indication</code></a></li><li>code: <code>2506</code></li><li>binding: <a href="ValueSet-ereferral-vs-imaging-patient-condition-indication.html"><code>eReferralVSImagingPatientConditionIndication</code></a></li></ul></td>
    </tr>
        <tr>
      <td>Prior request</td>
      <td><code>ServiceRequest.supportingInfo[priorRequest]</code></td>
      <td><pre><code class="language-json">{
  "supportingInfo": [
    {
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
          "valueCode": "prior-request"
        }
      ],
      "reference": "ServiceRequest/550e8400-e29b-41d4-a716-446655440000"
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Status reason</td>
      <td><code>ServiceRequest.extension[request-statusReason]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/request-statusReason",
      "valueCodeableConcept": {
        "text": "urn:be:fgov:pseudo:v2:status-reason-radiology-urgent",
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
  ]
}</code></pre></td>
      <td></td>
    </tr>
  </tbody>
</table>
