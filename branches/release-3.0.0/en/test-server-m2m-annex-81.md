# M2M - Nursing - Medication preparation, Annex 81 proposal - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **M2M - Nursing - Medication preparation, Annex 81 proposal**

## M2M - Nursing - Medication preparation, Annex 81 proposal

### Scenario

1. During regular home care for a patient with dementia, a nurse observes difficulty cooperating with treatment and confusion about the treatment.
1. The nurse creates an Annex 81 proposal for weekly medication preparation, recording both nursing diagnoses and dementia as the underlying medical problem. The validity end date is no later than one year after the validity start date.

For M2M, the organization submits creation on behalf of its internal professional.

### Create Proposal

`POST /ServiceRequest`

Profile: [ereferral-annex-81](StructureDefinition-ereferral-annex-81.md).

Retain the returned ServiceRequest id. Clinical plaintext in the table is represented by encrypted values in the request.

#### Business Values

| | |
| :--- | :--- |
| Prescription / proposal type | Medication preparation, Annex 81 proposal |
| Requested care | Medication preparation, Annex 81 proposal |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Nurse, SSIN {{nurseSsin}}, representing organization NIHII {{organizationNihii}} |
| Validity start | {{validityStartDate}} |
| Validity end | {{validityEndWithinYear}} |
| Frequency | 1 time(s) per 1 week |
| Diagnosis / medical problem, before encryption | Dementia |
| Nursing diagnoses | Expressing difficulty cooperating with treatment. Being confused about treatment. |
| Creation date | {{createdAt}} |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Prescription / proposal type | `ServiceRequest.category` | ````[ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] }, { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "medication-prefill-preparation-appendix-81" } ] } ]```` |
| Requested care | `ServiceRequest.code` | ````{ "coding": [ { "system": "http://snomed.info/sct", "code": "385796006" } ] }```` |
| Patient | `ServiceRequest.subject` | ````{ "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } }```` |
| Requester | `ServiceRequest.requester` | ````{ "reference": "PractitionerRole/{{nurseSsin}}-NURSE-NIHII-{{organizationNihii}}" }```` |
| Validity period | `ServiceRequest.extension (be-ext-validity-period)` | ````{ "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "{{validityStartDate}}", "end": "{{validityEndWithinYear}}" } }```` |
| Frequency, treatment period and sessions | `ServiceRequest.occurrenceTiming` | ````{ "repeat": { "frequency": 1, "period": 1, "periodUnit": "wk" } }```` |
| Diagnosis / medical problem, before encryption, Nursing diagnoses | `ServiceRequest.reasonCode` | ````[ { "coding": [ { "system": "http://snomed.info/sct", "code": "275928001" } ] }, { "coding": [ { "system": "http://snomed.info/sct", "code": "1290542000", "version": "http://snomed.info/sct/11000172109" } ] }, { "coding": [ { "system": "http://snomed.info/sct", "code": "52448006" } ] } ]```` |
| Creation date | `ServiceRequest.authoredOn` | ````{ "authoredOn": "{{createdAt}}" }```` |

#### Complete FHIR Payload

```
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81"
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
        "start": "{{validityStartDate}}",
        "end": "{{validityEndWithinYear}}"
      }
    }
  ],
  "status": "active",
  "intent": "proposal",
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
          "code": "medication-prefill-preparation-appendix-81"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "385796006"
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
      "frequency": 1,
      "period": 1,
      "periodUnit": "wk"
    }
  },
  "authoredOn": "{{createdAt}}",
  "requester": {
    "reference": "PractitionerRole/{{nurseSsin}}-NURSE-NIHII-{{organizationNihii}}"
  },
  "reasonCode": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "275928001"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "1290542000",
          "version": "http://snomed.info/sct/11000172109"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "52448006"
        }
      ]
    }
  ]
}

```

