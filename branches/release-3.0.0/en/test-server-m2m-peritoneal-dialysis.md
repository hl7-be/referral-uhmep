# M2M - Nursing - Chronic peritoneal dialysis - eReferral Implementation Guide v3.0.2

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **M2M - Nursing - Chronic peritoneal dialysis**

## M2M - Nursing - Chronic peritoneal dialysis

### Scenario

1. A patient with kidney failure and loss of blood pressure is treated at a convention centre and cannot change dialysis bags independently.
1. The centre's physician prescribes home nursing support three times a day for one year, up to 1095 sessions, with feedback required. The remarks specify a dialysis-fluid dwell time of two hours. The medical reason notes that support will only be needed as required once the patient learns to change the bags independently.

For M2M, the organization submits creation on behalf of its internal professional.

### Create Prescription

`POST /ServiceRequest`

Profile: [ereferral-servicerequest-nursing](StructureDefinition-ereferral-servicerequest-nursing.md).

Retain the returned ServiceRequest id. Clinical plaintext in the table is represented by encrypted values in the request.

#### Business Values

| | |
| :--- | :--- |
| Prescription / proposal type | Chronic peritoneal dialysis |
| Requested care | Chronic peritoneal dialysis |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Physician, SSIN {{prescriberSsin}}, representing organization NIHII {{organizationNihii}} |
| Validity start | {{validityStartDate}} |
| Feedback required | Yes |
| Frequency | 3 time(s) per 1 day |
| Treatment period | 1 year(s) |
| Maximum sessions | 1095 |
| Diagnosis / medical problem, before encryption | Kidney failure and loss of blood pressure |
| Medical reason, before encryption | The patient cannot change dialysis bags independently. Once trained, nursing intervention is only needed as required. |
| General remarks, before encryption | Dialysis-fluid dwell time: 2 hours |
| Creation date | {{createdAt}} |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Prescription / proposal type | `ServiceRequest.category` | ````[ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] }, { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "chronic-dialysis" } ] } ]```` |
| Requested care | `ServiceRequest.code` | ````{ "coding": [ { "system": "http://snomed.info/sct", "code": "225230008" } ] }```` |
| Patient | `ServiceRequest.subject` | ````{ "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } }```` |
| Requester | `ServiceRequest.requester` | ````{ "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN-NIHII-{{organizationNihii}}" }```` |
| Validity period | `ServiceRequest.extension (be-ext-validity-period)` | ````{ "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "{{validityStartDate}}" } }```` |
| Feedback required | `ServiceRequest.extension (be-ext-feedback-to-prescriber)` | ````{ "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber", "valueBoolean": true }```` |
| Frequency, treatment period and sessions | `ServiceRequest.occurrenceTiming` | ````{ "repeat": { "frequency": 3, "period": 1, "periodUnit": "d", "count": 1095, "boundsDuration": { "value": 1, "system": "http://unitsofmeasure.org", "code": "a" } } }```` |
| Diagnosis / medical problem, before encryption | `ServiceRequest.reasonCode` | ````[ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{diagnosisJwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ]```` |
| Medical reason | `ServiceRequest.note (medical-reason)` | ````{ "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{medical_reasonJwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] }, "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "medical-reason" } ] } } ] }```` |
| General remarks | `ServiceRequest.note (general-remarks)` | ````{ "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{remarksJwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] }, "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "general-remarks" } ] } } ] }```` |
| Creation date | `ServiceRequest.authoredOn` | ````{ "authoredOn": "{{createdAt}}" }```` |

#### Complete FHIR Payload

```
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing"
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
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "{{validityStartDate}}"
      }
    },
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber",
      "valueBoolean": true
    }
  ],
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "9632001"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
          "code": "chronic-dialysis"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "225230008"
      }
    ]
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
    }
  },
  "occurrenceTiming": {
    "repeat": {
      "frequency": 3,
      "period": 1,
      "periodUnit": "d",
      "count": 1095,
      "boundsDuration": {
        "value": 1,
        "system": "http://unitsofmeasure.org",
        "code": "a"
      }
    }
  },
  "authoredOn": "{{createdAt}}",
  "requester": {
    "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN-NIHII-{{organizationNihii}}"
  },
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{diagnosisJwe}}",
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
  "note": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{medical_reasonJwe}}",
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
      },
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
                "code": "medical-reason"
              }
            ]
          }
        }
      ]
    },
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{remarksJwe}}",
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
      },
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
      ]
    }
  ]
}

```

