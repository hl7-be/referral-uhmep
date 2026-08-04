This page describes how to complete the global referral task of a medical document.

| Item | Value |
| --- | --- |
| Business operation | Complete a medical document |
| Endpoint | `PATCH /Task/{prescriptionId}` |
| Target resource | `BeReferralTask` |
| Successful response | `200 OK` |

The operation is allowed only when no related `BePerformerTask` remains `in-progress`.

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

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-complete-medical-document-sequence.svg %}
  <figcaption>Complete Medical Document sequence</figcaption>
</figure>
