# Record Execution Start - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Record Execution Start**

## Record Execution Start

This page describes how to record the start of execution.

| | |
| :--- | :--- |
| Business operation | Record execution start |
| Endpoints | `POST /Task`or`PATCH /Task/{executionID}` |
| Target resource | `BePerformerTask` |
| Successful response | `201 Created`or`200 OK` |

### Start Without Existing Assignment

Independent professional:

```
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-performer-task"
    ]
  },
  "status": "in-progress",
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
    "start": "2026-07-03T09:00:00+02:00"
  }
}

```

Internal professional represented by an organization:

```
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-performer-task"
    ]
  },
  "status": "in-progress",
  "intent": "order",
  "focus": {
    "reference": "ServiceRequest/{serviceRequestId}"
  },
  "partOf": [
    {
      "reference": "Task/{referralTaskId}"
    }
  ],
  "basedOn": [
    {
      "reference": "Task/{organizationTaskId}"
    }
  ],
  "owner": {
    "reference": "PractitionerRole/{SSIN}-{DISCIPLINE}"
  },
  "executionPeriod": {
    "start": "2026-07-03T09:00:00+02:00"
  }
}

```

### Start An Existing Assignment

```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "add" },
        { "name": "path", "valueString": "Task.executionPeriod" },
        { "name": "name", "valueString": "start" },
        { "name": "value", "valueDateTime": "2026-07-03T09:00:00+02:00" }
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

Record Execution Start sequence

