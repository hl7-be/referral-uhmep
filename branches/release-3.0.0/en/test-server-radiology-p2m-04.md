# P2M - Radiology - New headaches during pregnancy - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **P2M - Radiology - New headaches during pregnancy**

## P2M - Radiology - New headaches during pregnancy

### Scenario

1. A pregnant 20-year-old woman presents with new headaches and no previous history of chronic headaches or migraine.
1. The physician assesses the clinical findings and selects a non-contrast head CT rather than the initially envisaged head MR angiography.
1. The physician records the pregnancy in the imaging safety checklist and creates the prescription for head CT without IV contrast.

### Create Prescription: Head CT without IV contrast

`POST /ServiceRequest`

Profile: [ereferral-servicerequest-diagnosticimaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md).

The physician completes imaging safety screening and creates the prescription. Age and sex at birth remain visible as business values, while the contained patient carries encrypted values. Safety answers not supplied by the scenario are runtime inputs, not assumed negative findings. Complete and review them before submitting the completed questionnaire.

#### Business Values

| | |
| :--- | :--- |
| Patient age | 20 years |
| Sex at birth | Female |
| Examination | Head CT without IV contrast |
| Clinical indications | New-onset headaches during pregnancy |
| Clinical context | New headaches in a pregnant patient. No previous chronic headache or migraine history, head trauma, known neurological disorder or known allergy. Blood pressure, warning signs and neurological findings require clinical assessment. |
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
| No imaging attention condition | No: pregnancy is documented |
| Pregnancy | Yes |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Imaging discipline, prescription type and care setting | `ServiceRequest.category` | ````[ { "coding": [ { "system": "http://snomed.info/sct", "code": "363679005" } ] }, { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "diagnostic-imaging-appendix-82" } ] }, { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track", "code": "{{careTrack}}" } ] } ]```` |
| Examination and protocol | `ServiceRequest.code` | ````{ "coding": [ { "system": "http://snomed.info/sct", "code": "383371000119108", "version": "http://snomed.info/sct/731000124108" } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{imagingDescriptionJwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } }```` |
| Patient age and sex at birth (encrypted) | `ServiceRequest.contained (Patient)` | ````{ "resourceType": "Patient", "id": "patient", "meta": { "profile": [ "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0" ] }, "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth", "valueCodeableConcept": { "coding": [ { "system": "http://hl7.org/fhir/administrative-gender", "code": "other" } ], "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content", "extension": [ { "url": "encryptedValue", "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{sexAtBirthJwe}}" }, { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ], "_birthDate": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content", "extension": [ { "url": "encryptedValue", "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{birthDateJwe}}" }, { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } }```` |
| Patient reference and pseudonym | `ServiceRequest.subject` | ````{ "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } }, "reference": "#patient" }```` |
| Imaging safety screening | `ServiceRequest.contained (QuestionnaireResponse)` | ````{ "resourceType": "QuestionnaireResponse", "id": "safety-checklist", "meta": { "profile": [ "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response" ] }, "questionnaire": "https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions", "status": "completed", "authored": "{{createdAt}}", "item": [ { "linkId": "pregnancy", "answer": [ { "valueBoolean": true } ] }, { "linkId": "diabetes", "answer": [ { "valueBoolean": "{{hasDiabetes}}" } ] }, { "linkId": "allergy-contrast-agent", "answer": [ { "valueBoolean": false } ] }, { "linkId": "metallic-debris", "answer": [ { "valueBoolean": "{{hasMetallicDebris}}" } ] }, { "linkId": "renal-dysfunction", "answer": [ { "valueBoolean": "{{hasRenalDysfunction}}" } ] }, { "linkId": "none", "answer": [ { "valueBoolean": false } ] } ] }```` |
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
          "linkId": "pregnancy",
          "answer": [
            {
              "valueBoolean": true
            }
          ]
        },
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
              "valueBoolean": false
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
        "code": "383371000119108",
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

