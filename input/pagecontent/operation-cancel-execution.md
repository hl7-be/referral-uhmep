This page describes how to cancel an execution task.

| Item | Value |
| --- | --- |
| Business operation | Cancel execution |
| Endpoint | `PATCH /Task/{executionID}` |
| Target resource | `BePerformerTask` |
| Successful response | `200 OK` |

### Payload

```json
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

An Organization may use this operation only for a caregiver execution whose `basedOn` references an organization task assigned to that Organization. The eligible prescription states map to `ServiceRequest.status = active` and `BeReferralTask.status = in-progress` or `on-hold`; see [Prescription Lifecycle](topic-prescription-lifecycle.html#business-status--fhir-status-mapping).

The request changes the execution `Task.status` to `cancelled`. It does not cancel the `ServiceRequest`; read the related resources after the operation to determine their resulting state.

An Organization that is not assigned to the parent organization task receives `ORGANIZATION_NOT_ASSIGNED` (`403`). A prescription that is not eligible for execution cancellation receives `EXECUTION_NOT_USABLE` (`409`). An authorization or operation guard may return `ACCESS_DENIED` (`403`). Availability of this route in a deployment has not been verified.

### Possible Error Codes

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-cancel-execution-sequence.svg %}
  <figcaption>Cancel Execution sequence</figcaption>
</figure>
