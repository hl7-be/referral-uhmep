# Evaluate Proposal - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Evaluate Proposal**

## Evaluate Proposal

This page describes how a prescriber approves or rejects an Annex 81 proposal.

| | | |
| :--- | :--- | :--- |
| Business operation | Approve proposal | Reject proposal |
| Endpoint | `POST /ServiceRequest/{serviceRequestID}/$approve` | `POST /ServiceRequest/{serviceRequestID}/$reject` |
| Successful response | `200 OK`with`Parameters.parameter[location]` | `200 OK`with`Parameters.parameter[location]` |

### Approve Payload

#### Approve propasal without a note

```
{
  "resourceType": "Parameters",
  "meta": {
    "extension": [
      {
        "id": "{{kid}}",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
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
  "parameter": [
    {
      "name": "requester",
      "valueReference": {
        "reference": "PractitionerRole/{{requesterSsin}}-{{prescriberDiscipline}}{{requesterOrganization}}"
      }
    }
  ]
}

```

#### Approve proposal with a note

```
{
  "resourceType": "Parameters",
  "meta": {
    "extension": [
      {
        "id": "{{kid}}",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
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
  "parameter": [
    {
      "name": "requester",
      "valueReference": {
        "reference": "PractitionerRole/{{requesterSsin}}-{{prescriberDiscipline}}{{requesterOrganization}}"
      }
    },
    {
      "name": "note",
      "valueCodeableConcept": {
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
    }
  ]
}

```

Approval completes the proposal workflow, creates a valid prescription and assigns the caregiver who authored the proposal. The `requester` parameter is used when the operation is performed by an organization on behalf of an internal prescriber.

If no note is needed, the request may be sent with no body, an empty body, or an empty `Parameters.parameter` list.

### Reject Payload

#### Reject Proposal without a note

```
{
  "resourceType": "Parameters",
  "meta": {
    "extension": [
      {
        "id": "{{kid}}",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
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
  "parameter": [
    {
      "name": "requester",
      "valueReference": {
        "reference": "PractitionerRole/{{requesterSsin}}-{{prescriberDiscipline}}{{requesterOrganization}}"
      }
    }
  ]
}

```

#### Reject Proposal with a note

```
{
  "resourceType": "Parameters",
  "meta": {
    "extension": [
      {
        "id": "{{kid}}",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
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
  "parameter": [
    {
      "name": "requester",
      "valueReference": {
        "reference": "PractitionerRole/{{requesterSsin}}-{{prescriberDiscipline}}{{requesterOrganization}}"
      }
    },
    {
      "name": "note",
      "valueCodeableConcept": {
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
    }
  ]
}

```

The note parameter is optional. If present, clinical free text must be encrypted.

### Response

Approve returns the id of the created prescription.

```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "location",
      "valueId": "{prescription-id}"
    }
  ]
}

```

Reject returns the proposal id.

```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "location",
      "valueId": "{proposal-id}"
    }
  ]
}

```

### Allowed Roles

Prescriber.

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

On **approve**, the backend: (1) sets the proposal to `completed`; (2) sets the evaluation `BePerformerTask` to `completed`; (3) creates a valid prescription and assigns the caregiver who authored the original proposal.

### Sequence

Evaluate Proposal sequence

