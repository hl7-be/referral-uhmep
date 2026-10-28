# Evaluate Radiology Prescription - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Evaluate Radiology Prescription**

## Evaluate Radiology Prescription

This page describes how a radiology performer evaluates an exam request.

| | |
| :--- | :--- |
| Business operation | Evaluate radiology prescription |
| Endpoint | `PATCH /Task/{executionId}` |
| Target resource | `BePerformerTask` |
| Successful response | `200 OK` |

### Accept Exam

#### Already Assigned (PATCH)

```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "replace"
        },
        {
          "name": "path",
          "valueString": "Task.status"
        },
        {
          "name": "value",
          "valueString": "accepted"
        }
      ]
    }
  ]
}

```

### Substitute Exam

```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "replace"
        },
        {
          "name": "path",
          "valueString": "Task.status"
        },
        {
          "name": "value",
          "valueCode": "accepted"
        }
      ]
    },
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "add"
        },
        {
          "name": "path",
          "valueString": "Task"
        },
        {
          "name": "name",
          "valueString": "output"
        }
      ]
    },
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "add"
        },
        {
          "name": "path",
          "valueString": "Task.output"
        },
        {
          "name": "name",
          "valueString": "type"
        },
        {
          "name": "value",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-task-output-type",
                "code": "substituted"
              }
            ]
          }
        }
      ]
    },
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "add"
        },
        {
          "name": "path",
          "valueString": "Task.output"
        },
        {
          "name": "name",
          "valueString": "valueCodeableConcept"
        },
        {
          "name": "value",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "{{new_exam}}"
              }
            ]
          }
        }
      ]
    }
  ]
}

```

### Refuse Exam

```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "replace"
        },
        {
          "name": "path",
          "valueString": "Task.status"
        },
        {
          "name": "value",
          "valueCode": "rejected"
        }
      ]
    },
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "add"
        },
        {
          "name": "path",
          "valueString": "Task"
        },
        {
          "name": "name",
          "valueString": "statusReason"
        },
        {
          "name": "value",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-refusal-reason",
                "code": "{{refuse_reason}}"
              }
            ]
          }
        }
      ]
    }
  ]
}

```

### POST Variant: Independent Performer

The same decision can be recorded by creating a performer task directly. Use this pattern for accept, substitute or refuse by changing `status`, `statusReason` and `output`.

```
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-performer-task"
    ]
  },
  "partOf": {
    "reference": "Task/{{serviceRequestID}}"
  },
  "focus": [{
    "reference": "ServiceRequest/{{serviceRequestID}}"
  }],
  "status": "{{status}}",
  "intent": "order",
  "authoredOn": "{{recordedDate}}",
  "owner": {
    "reference":"PractitionerRole/{{practitionerSsin}}-{{practitionerDiscipline}}"
  },
  "output": [
    {
      "type": {
        "coding": [
          {
            "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-task-output-type",
            "code": "substituted"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "{{code_of_new_exam}}"
          }
        ]
      }
    }
  ],
  "statusReason": {
    "coding": [
      {
        "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-refusal-reason",
        "code": "{{refuse_reason}}"
      }
    ]
  }
}

```

### POST Variant: Performer Of Organization

When the performer acts within an organization assignment, add `basedOn` pointing to the organization task.

```
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-performer-task"
    ]
  },
  "partOf": {
    "reference": "Task/{{serviceRequestID}}"
  },
  "focus": [{
    "reference": "ServiceRequest/{{serviceRequestID}}"
  }],
  "status": "{{status}}",
  "intent": "order",
  "authoredOn": "{{recordedDate}}",
  "owner": {
    "reference":"PractitionerRole/{{practitionerSsin}}-{{practitionerDiscipline}}-{{organizationNihii11}}"
  },
  "output": [
    {
      "type": {
        "coding": [
          {
            "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-task-output-type",
            "code": "substituted"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "{{code_of_new_exam}}"
          }
        ]
      }
    }
  ],
  "statusReason": {
    "coding": [
      {
        "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-refusal-reason",
        "code": "{{refuse_reason}}"
      }
    ]
  }
}

```

### Allowed Roles

Caregiver (radiology performer), Organization.

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

### Sequence

Evaluate Radiology Prescription sequence

