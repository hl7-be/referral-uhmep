# P2M - Radiology - Suspected pulmonary edema - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **P2M - Radiology - Suspected pulmonary edema**

## P2M - Radiology - Suspected pulmonary edema

### Scenario

1. A 41-year-old man with hypertension presents with progressive shortness of breath, orthopnea and a dry cough. Examination findings raise suspicion of pulmonary edema.
1. The physician reviews the clinical context and chooses a chest X-ray for rapid initial assessment and confirmation, rather than the initially envisaged contrast-enhanced chest CT.
1. After completing the imaging safety screening, the physician creates the eReferral prescription for the selected chest X-ray.

### Create Prescription: Chest X-ray

`POST /ServiceRequest`

Profile: [ereferral-servicerequest-diagnosticimaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md).

The physician completes imaging safety screening and creates the prescription. Age and sex at birth remain visible as business values, while the contained patient carries encrypted values. Safety answers not supplied by the scenario are runtime inputs, not assumed negative findings. Complete and review them before submitting the completed questionnaire.

#### Business Values

| | |
| :--- | :--- |
| Patient age | 41 years |
| Sex at birth | Male |
| Examination | Chest X-ray |
| Clinical indications | Shortness of breath with suspected pulmonary edema |
| Clinical context | Hypertension for five years, progressive shortness of breath over 24 to 48 hours, orthopnea, dry cough, tachypnea, reduced oxygen saturation and bilateral basal crackles. No documented cardiac disease and no known allergies. |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Physician, SSIN {{prescriberSsin}} |
| Creation date | {{createdAt}} |
| Validity start | {{validityStartDate}} |
| Priority | {{imagingPriority}} |
| Care setting | {{careTrack}} |
| Diabetes | {{hasDiabetes}} |
| Contrast-agent allergy | No known allergy reported |
| Metallic debris | {{hasMetallicDebris}} |
| Renal dysfunction | {{hasRenalDysfunction}} |
| No imaging attention condition | {{noAttentionCondition}} |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Imaging discipline, prescription type and care setting | `ServiceRequest.category` | ````[ { "coding": [ { "system": "http://snomed.info/sct", "code": "363679005" } ] }, { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "diagnostic-imaging-appendix-82" } ] }, { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track", "code": "{{careTrack}}" } ] } ]```` |
| Examination and protocol | `ServiceRequest.code` | ````{ "coding": [ { "system": "http://snomed.info/sct", "code": "399208008" } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{imagingDescriptionJwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } }```` |
| Patient age and sex at birth (encrypted) | `ServiceRequest.contained (Patient)` | ````{ "resourceType": "Patient", "id": "patient", "meta": { "profile": [ "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0" ] }, "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth", "valueCodeableConcept": { "coding": [ { "system": "http://hl7.org/fhir/administrative-gender", "code": "other" } ], "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content", "extension": [ { "url": "encryptedValue", "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{sexAtBirthJwe}}" }, { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ], "_birthDate": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content", "extension": [ { "url": "encryptedValue", "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{birthDateJwe}}" }, { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } }```` |
| Patient reference and pseudonym | `ServiceRequest.subject` | ````{ "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } }, "reference": "#patient" }```` |
| Imaging safety screening | `ServiceRequest.contained (QuestionnaireResponse)` | ````{ "resourceType": "QuestionnaireResponse", "id": "safety-checklist", "meta": { "profile": [ "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response" ] }, "questionnaire": "https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions", "status": "completed", "authored": "{{createdAt}}", "item": [ { "linkId": "diabetes", "answer": [ { "valueBoolean": "{{hasDiabetes}}" } ] }, { "linkId": "allergy-contrast-agent", "answer": [ { "valueBoolean": false } ] }, { "linkId": "metallic-debris", "answer": [ { "valueBoolean": "{{hasMetallicDebris}}" } ] }, { "linkId": "renal-dysfunction", "answer": [ { "valueBoolean": "{{hasRenalDysfunction}}" } ] }, { "linkId": "none", "answer": [ { "valueBoolean": "{{noAttentionCondition}}" } ] } ] }```` |
| Clinical indications and checklist reference | `ServiceRequest.supportingInfo` | ````[ { "reference": "#safety-checklist", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role", "valueCode": "safety-checklist" } ] }, { "display": "Patient condition", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role", "valueCode": "patient-condition" }, { "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept", "valueCodeableConcept": { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{indication1Jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } } ] } ]```` |
| Clinical context | `ServiceRequest.reasonCode` | ````[ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{clinicalContextJwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ]```` |
| Requester | `ServiceRequest.requester` | ````{ "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN" }```` |
| Validity start | `ServiceRequest.extension (be-ext-validity-period)` | ````{ "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "{{validityStartDate}}" } }```` |
| Priority | `ServiceRequest.priority` | ````{ "priority": "{{imagingPriority}}" }```` |
| Creation date | `ServiceRequest.authoredOn` | ````{ "authoredOn": "{{createdAt}}" }```` |

#### Complete FHIR Payload

```
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    ],
    "extension": [
      {
        "id": "{{kid}}",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}",
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
      }
    ]
  },
  "contained": [
    {
      "resourceType": "Patient",
      "id": "patient",
      "meta": {
        "profile": [
          "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"
        ]
      },
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
                    "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{sexAtBirthJwe}}"
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
      ],
      "_birthDate": {
        "extension": [
          {
            "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content",
            "extension": [
              {
                "url": "encryptedValue",
                "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{birthDateJwe}}"
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
    },
    {
      "resourceType": "QuestionnaireResponse",
      "id": "safety-checklist",
      "meta": {
        "profile": [
          "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"
        ]
      },
      "questionnaire": "https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions",
      "status": "completed",
      "authored": "{{createdAt}}",
      "item": [
        {
          "linkId": "diabetes",
          "answer": [
            {
              "valueBoolean": "{{hasDiabetes}}"
            }
          ]
        },
        {
          "linkId": "allergy-contrast-agent",
          "answer": [
            {
              "valueBoolean": false
            }
          ]
        },
        {
          "linkId": "metallic-debris",
          "answer": [
            {
              "valueBoolean": "{{hasMetallicDebris}}"
            }
          ]
        },
        {
          "linkId": "renal-dysfunction",
          "answer": [
            {
              "valueBoolean": "{{hasRenalDysfunction}}"
            }
          ]
        },
        {
          "linkId": "none",
          "answer": [
            {
              "valueBoolean": "{{noAttentionCondition}}"
            }
          ]
        }
      ]
    }
  ],
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "{{validityStartDate}}"
      }
    }
  ],
  "status": "active",
  "intent": "order",
  "priority": "{{imagingPriority}}",
  "category": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "363679005"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
          "code": "diagnostic-imaging-appendix-82"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track",
          "code": "{{careTrack}}"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "399208008"
      }
    ],
    "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{imagingDescriptionJwe}}",
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
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}",
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
    },
    "reference": "#patient"
  },
  "authoredOn": "{{createdAt}}",
  "requester": {
    "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN"
  },
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{clinicalContextJwe}}",
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
  ],
  "supportingInfo": [
    {
      "reference": "#safety-checklist",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
          "valueCode": "safety-checklist"
        }
      ]
    },
    {
      "display": "Patient condition",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
          "valueCode": "patient-condition"
        },
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
          "valueCodeableConcept": {
            "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{indication1Jwe}}",
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
        }
      ]
    }
  ]
}

```

