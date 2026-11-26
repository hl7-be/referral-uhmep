This page describes how to record the start of execution.

| Item | Value |
| --- | --- |
| Business operation | Record execution start |
| Endpoints | `POST /Task` or `PATCH /Task/{executionID}` |
| Target resource | `BePerformerTask` |
| Successful response | `201 Created` or `200 OK` |

### Start Without Existing Assignment

Independent professional:

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-performer-task"
    ]
  },
  "partOf": [{
    "reference": "Task/{referralTaskId}"
  }],
  "focus": {
    "reference": "ServiceRequest/{serviceRequestId}"
  },
  "status": "in-progress",
  "intent": "order",
  "executionPeriod": {
    "start": "2026-11-12"
  },
  "authoredOn": "2026-11-12",
  "owner": {
    "reference": "PractitionerRole/{SSIN}-{DISCIPLINE}"
  }
}
```

Internal professional represented by an organization (adds `basedOn`):

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-performer-task"
    ]
  },
  "partOf": [{
    "reference": "Task/{referralTaskId}"
  }],
  "focus": {
    "reference": "ServiceRequest/{serviceRequestId}"
  },
  "basedOn": [
    {
      "reference": "Task/{organizationTaskId}"
    }
  ],
  "status": "in-progress",
  "intent": "order",
  "executionPeriod": {
    "start": "2026-11-12"
  },
  "authoredOn": "2026-11-12",
  "owner": {
    "reference": "PractitionerRole/{SSIN}-{DISCIPLINE}"
  }
}
```

### Start An Existing Assignment

```json
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

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-record-execution-start-sequence.svg %}
  <figcaption>Record Execution Start sequence</figcaption>
</figure>
