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

### Possible Error Codes

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-cancel-execution-sequence.svg %}
  <figcaption>Cancel Execution sequence</figcaption>
</figure>
