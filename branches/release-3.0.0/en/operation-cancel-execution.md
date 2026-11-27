# Cancel Execution - eReferral Implementation Guide v3.0.2

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Cancel Execution**

## Cancel Execution

This page describes how to cancel an execution task.

| | |
| :--- | :--- |
| Business operation | Cancel execution |
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
        { "name": "value", "valueString": "cancelled" }
      ]
    }
  ]
}

```

### Allowed Roles

Caregiver, Organization.

### Organization cancellation

An Organization may use this operation only for a caregiver execution whose `basedOn` references an organization task assigned to that Organization. The eligible prescription states map to `ServiceRequest.status = active` and `BeReferralTask.status = in-progress` or `on-hold`; see [Prescription Lifecycle](topic-prescription-lifecycle.md#business-status--fhir-status-mapping).

The request changes the execution `Task.status` to `cancelled`. It does not cancel the `ServiceRequest`; read the related resources after the operation to determine their resulting state.

An Organization that is not assigned to the parent organization task receives `ORGANIZATION_NOT_ASSIGNED` (`403`). A prescription that is not eligible for execution cancellation receives `EXECUTION_NOT_USABLE` (`409`). An authorization or operation guard may return `ACCESS_DENIED` (`403`). Availability of this route in a deployment has not been verified.

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

### Sequence

Cancel Execution sequence

