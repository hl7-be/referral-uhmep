This page describes how to assign a medical document to a healthcare professional or organization.

| Item | Value |
| --- | --- |
| Business operation | Assign a care provider |
| Endpoint | `POST /Task` |
| Request resource | `BePerformerTask` or `BeOrganizationTask` |
| Successful response | `201 Created` |

### Direct Healthcare Professional Assignment

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-performer-task"
    ]
  },
  "status": "ready",
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
  }
}
```

### Organization Assignment

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-organization-task"
    ]
  },
  "status": "ready",
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
    "reference": "Organization/NIHII-{nihii11Organization}"
  }
}
```

### Internal Professional Assignment After Organization Assignment

The internal professional assignment references the existing organization assignment through
`basedOn`.

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-performer-task"
    ]
  },
  "status": "ready",
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
  }
}
```

### Allowed Roles

Patient, Caregiver, Organization. (For Annex 81 proposal assignment, a Prescriber may also be assigned to evaluate.)

### Possible Error Codes

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-assign-care-provider-sequence.svg %}
  <figcaption>Assign Care Provider sequence</figcaption>
</figure>
