This page describes how to interrupt an execution.

| Item | Value |
|----|----|
| Business operation | Record execution interruption |
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
        { "name": "value", "valueString": "on-hold" }
      ]
    }
  ]
}
```

### Allowed Roles

Caregiver.

### Possible Error Codes

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-record-execution-interruption-sequence.svg %}
  <figcaption>Record Execution Interruption sequence</figcaption>
</figure>

