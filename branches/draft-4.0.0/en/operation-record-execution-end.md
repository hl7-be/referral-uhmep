# Record Execution End - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Record Execution End**

## Record Execution End

This page describes how to record the end of execution.

| | |
| :--- | :--- |
| Business operation | Record execution end |
| Endpoints | `POST /Task`or`PATCH /Task/{executionID}` |
| Target resource | `BePerformerTask` |
| Successful response | `201 Created`or`200 OK` |

### Finish Without Existing Assignment

```
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-performer-task"
    ]
  },
  "status": "completed",
  "intent": "order",
  "focus": {
    "reference": "ServiceRequest/{serviceRequestId}"
  },
  "partOf": [
    {
      "reference": "Task/{referralTaskId}"
    }
  ],
  "owner": {
    "reference": "PractitionerRole/{SSIN}-{DISCIPLINE}"
  },
  "executionPeriod": {
    "start": "2026-07-03T09:00:00+02:00",
    "end": "2026-07-03T10:30:00+02:00"
  }
}

```

For an internal professional, add `basedOn` pointing to the organization task and use the organization-scoped `PractitionerRole` in `owner`.

### Finish Existing Execution

```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "add" },
        { "name": "path", "valueString": "Task.executionPeriod" },
        { "name": "name", "valueString": "end" },
        { "name": "value", "valueDateTime": "2026-07-03T10:30:00+02:00" }
      ]
    }
  ]
}

```

### Allowed Roles

Caregiver, Organization.

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

### Sequence

Record Execution End sequence

