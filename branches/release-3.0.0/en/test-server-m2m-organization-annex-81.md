# M2M - Nursing - Create an annex 81 proposal by a nurse from an organization - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **M2M - Nursing - Create an annex 81 proposal by a nurse from an organization**

## M2M - Nursing - Create an annex 81 proposal by a nurse from an organization

### Scenario

The nurse creates a proposal for a patient who needs weekly medication preparation. The standalone Word business data do not specify nursing diagnoses or the medical problem, although the local Annex 81 profile requires both. This executable template explicitly reuses the dementia and two nursing diagnoses from the detailed Annex 81 scenario. This additional fixture choice is not attributed to the standalone Word test.

### Create Proposal

`POST /ServiceRequest`

Profile: [ereferral-annex-81](StructureDefinition-ereferral-annex-81.md).

Substitute the test nurse SSIN and, for M2M, the representing organization NIHII. No prescription focus or organization Task is added to the ServiceRequest solely because unrelated Task variables appear in the Word.

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
| Fixture medical problem | Dementia |
| Fixture nursing diagnoses | Expressing difficulty cooperating with treatment. Being confused about treatment. |
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
| Fixture medical problem, Fixture nursing diagnoses | `ServiceRequest.reasonCode` | ````[ { "coding": [ { "system": "http://snomed.info/sct", "code": "275928001" } ] }, { "coding": [ { "system": "http://snomed.info/sct", "code": "1290542000", "version": "http://snomed.info/sct/11000172109" } ] }, { "coding": [ { "system": "http://snomed.info/sct", "code": "52448006" } ] } ]```` |
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

