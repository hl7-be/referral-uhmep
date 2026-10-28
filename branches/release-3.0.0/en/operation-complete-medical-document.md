# Complete a Medical Document - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Complete a Medical Document**

## Complete a Medical Document

This page describes how to complete the global referral task of a medical document.

| | |
| :--- | :--- |
| Business operation | Complete a medical document |
| Endpoint | `PATCH /Task/{prescriptionId}` |
| Target resource | `BeReferralTask` |
| Successful response | `200 OK` |

The operation is allowed only when no related `BePerformerTask` remains `in-progress`.

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
        { "name": "value", "valueString": "completed" }
      ]
    }
  ]
}

```

The server derives `Task.executionPeriod.start` from the oldest performer execution start and `Task.executionPeriod.end` from the most recent performer execution end.

### Allowed Roles

Caregiver, Organization.

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

### Sequence

Complete Medical Document sequence

