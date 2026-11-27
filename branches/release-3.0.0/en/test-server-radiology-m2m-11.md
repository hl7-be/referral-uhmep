# M2M - Radiology - New cough with two selected examinations - eReferral Implementation Guide v3.0.2

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **M2M - Radiology - New cough with two selected examinations**

## M2M - Radiology - New cough with two selected examinations

### Scenario

1. A 40-year-old man is investigated for a new cough.
1. The physician selects two examinations: a chest X-ray and a chest CT without IV contrast.
1. After completing safety screening, the physician creates a separate eReferral prescription for each examination. The two SNOMED codes are not placed together as if they were equivalent codings of one examination.

Business Data has no narrative for this test. Only the age, sex, indication and two selected examinations from Technical Data are used. No additional symptoms, safety answers or reason for selecting two examinations are invented.

### Create Prescription 1: Chest X-ray

`POST /ServiceRequest`

Profile: [ereferral-servicerequest-diagnosticimaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md).

The physician completes imaging safety screening and creates the prescription. Age and sex at birth remain visible as business values, while the contained patient carries encrypted values. Safety answers not supplied by the scenario are runtime inputs, not assumed negative findings. Complete and review them before submitting the completed questionnaire. The representing organization is identified in the requester reference. Use distinct ServiceRequest ids for the two examinations.

#### Business Values

| | |
| :--- | :--- |
| Patient age | 40 years |
| Sex at birth | Male |
| Examination | Chest X-ray |
| Clinical indications | New-onset cough |
| Clinical context | A forty-year-old man is investigated for a new cough. No additional clinical history or safety answers are provided in the workbook. |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Physician, SSIN {{prescriberSsin}}, representing organization NIHII {{organizationNihii}} |
| Creation date | {{createdAt}} |
| Validity start | {{validityStartDate}} |
| Priority | {{imagingPriority}} |
| Care setting | {{careTrack}} |
| Diabetes | {{hasDiabetes}} |
| Contrast-agent allergy | {{hasContrastAllergy}} |
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
| Imaging safety screening | `ServiceRequest.contained (QuestionnaireResponse)` | ````{ "resourceType": "QuestionnaireResponse", "id": "safety-checklist", "meta": { "profile": [ "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response" ] }, "questionnaire": "https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions", "status": "completed", "authored": "{{createdAt}}", "item": [ { "linkId": "diabetes", "answer": [ { "valueBoolean": "{{hasDiabetes}}" } ] }, { "linkId": "allergy-contrast-agent", "answer": [ { "valueBoolean": "{{hasContrastAllergy}}" } ] }, { "linkId": "metallic-debris", "answer": [ { "valueBoolean": "{{hasMetallicDebris}}" } ] }, { "linkId": "renal-dysfunction", "answer": [ { "valueBoolean": "{{hasRenalDysfunction}}" } ] }, { "linkId": "none", "answer": [ { "valueBoolean": "{{noAttentionCondition}}" } ] } ] }```` |
| Clinical indications and checklist reference | `ServiceRequest.supportingInfo` | ````[ { "reference": "#safety-checklist", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role", "valueCode": "safety-checklist" } ] }, { "display": "Patient condition", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role", "valueCode": "patient-condition" }, { "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept", "valueCodeableConcept": { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{indication1Jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } } ] } ]```` |
| Clinical context | `ServiceRequest.reasonCode` | ````[ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{clinicalContextJwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ]```` |
| Requester | `ServiceRequest.requester` | ````{ "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN-NIHII-{{organizationNihii}}" }```` |
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
              "valueBoolean": "{{hasContrastAllergy}}"
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
    "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN-NIHII-{{organizationNihii}}"
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

### Create Prescription 2: Chest CT without IV contrast

`POST /ServiceRequest`

Profile: [ereferral-servicerequest-diagnosticimaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md).

The physician completes imaging safety screening and creates the prescription. Age and sex at birth remain visible as business values, while the contained patient carries encrypted values. Safety answers not supplied by the scenario are runtime inputs, not assumed negative findings. Complete and review them before submitting the completed questionnaire. The representing organization is identified in the requester reference. Use distinct ServiceRequest ids for the two examinations.

#### Business Values

| | |
| :--- | :--- |
| Patient age | 40 years |
| Sex at birth | Male |
| Examination | Chest CT without IV contrast |
| Clinical indications | New-onset cough |
| Clinical context | A forty-year-old man is investigated for a new cough. No additional clinical history or safety answers are provided in the workbook. |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Physician, SSIN {{prescriberSsin}}, representing organization NIHII {{organizationNihii}} |
| Creation date | {{createdAt}} |
| Validity start | {{validityStartDate}} |
| Priority | {{imagingPriority}} |
| Care setting | {{careTrack}} |
| Diabetes | {{hasDiabetes}} |
| Contrast-agent allergy | {{hasContrastAllergy}} |
| Metallic debris | {{hasMetallicDebris}} |
| Renal dysfunction | {{hasRenalDysfunction}} |
| No imaging attention condition | {{noAttentionCondition}} |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Imaging discipline, prescription type and care setting | `ServiceRequest.category` | ````[ { "coding": [ { "system": "http://snomed.info/sct", "code": "363679005" } ] }, { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "diagnostic-imaging-appendix-82" } ] }, { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track", "code": "{{careTrack}}" } ] } ]```` |
| Examination and protocol | `ServiceRequest.code` | ````{ "coding": [ { "system": "http://snomed.info/sct", "code": "395081000119108", "version": "http://snomed.info/sct/731000124108" } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{imagingDescriptionJwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } }```` |
| Patient age and sex at birth (encrypted) | `ServiceRequest.contained (Patient)` | ````{ "resourceType": "Patient", "id": "patient", "meta": { "profile": [ "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0" ] }, "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth", "valueCodeableConcept": { "coding": [ { "system": "http://hl7.org/fhir/administrative-gender", "code": "other" } ], "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content", "extension": [ { "url": "encryptedValue", "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{sexAtBirthJwe}}" }, { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ], "_birthDate": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content", "extension": [ { "url": "encryptedValue", "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{birthDateJwe}}" }, { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } }```` |
| Patient reference and pseudonym | `ServiceRequest.subject` | ````{ "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } }, "reference": "#patient" }```` |
| Imaging safety screening | `ServiceRequest.contained (QuestionnaireResponse)` | ````{ "resourceType": "QuestionnaireResponse", "id": "safety-checklist", "meta": { "profile": [ "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response" ] }, "questionnaire": "https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions", "status": "completed", "authored": "{{createdAt}}", "item": [ { "linkId": "diabetes", "answer": [ { "valueBoolean": "{{hasDiabetes}}" } ] }, { "linkId": "allergy-contrast-agent", "answer": [ { "valueBoolean": "{{hasContrastAllergy}}" } ] }, { "linkId": "metallic-debris", "answer": [ { "valueBoolean": "{{hasMetallicDebris}}" } ] }, { "linkId": "renal-dysfunction", "answer": [ { "valueBoolean": "{{hasRenalDysfunction}}" } ] }, { "linkId": "none", "answer": [ { "valueBoolean": "{{noAttentionCondition}}" } ] } ] }```` |
| Clinical indications and checklist reference | `ServiceRequest.supportingInfo` | ````[ { "reference": "#safety-checklist", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role", "valueCode": "safety-checklist" } ] }, { "display": "Patient condition", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role", "valueCode": "patient-condition" }, { "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept", "valueCodeableConcept": { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{indication1Jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } } ] } ]```` |
| Clinical context | `ServiceRequest.reasonCode` | ````[ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{clinicalContextJwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ]```` |
| Requester | `ServiceRequest.requester` | ````{ "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN-NIHII-{{organizationNihii}}" }```` |
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
              "valueBoolean": "{{hasContrastAllergy}}"
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
        "code": "395081000119108",
        "version": "http://snomed.info/sct/731000124108"
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
    "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN-NIHII-{{organizationNihii}}"
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

