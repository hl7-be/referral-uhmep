# Record Execution Interruption - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Record Execution Interruption**

## Record Execution Interruption

This page describes how to interrupt an execution.

| | |
| :--- | :--- |
| Business operation | Record execution interruption |
| Endpoint | `PATCH /Task/{executionID}` |
| Target resource | `BePerformerTask` |
| Successful response | `200 OK` |

### Payload

```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "replace" },
        { "name": "path", "valueString": "Task.status" },
        { "name": "value", "valueString": "on-hold" }
      ]
    }
  ]
}

```

### Allowed Roles

Caregiver.

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

### Sequence

Record Execution Interruption sequence

