This page describes how to record the end of execution.

| Item | Value |
|----|----|
| Business operation | Record execution end |
| Endpoints | `POST /Task` or `PATCH /Task/{executionID}` |
| Target resource | `BePerformerTask` |
| Successful response | `201 Created` or `200 OK` |

### Finish Without Existing Assignment

```json
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

```json
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

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-record-execution-end-sequence.svg %}
  <figcaption>Record Execution End sequence</figcaption>
</figure>

