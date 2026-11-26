{% raw %}

This page describes how a radiology performer evaluates an exam request: **accept**, **substitute** or **refuse** it.

Each decision is recorded on a `BePerformerTask`. Which request to use depends on whether a `BePerformerTask` is already linked to the prescription for the connected user:

| Situation | Endpoint | Successful response |
|----|----|----|
| A `BePerformerTask` already exists for the connected user on this prescription | `PATCH /Task/{executionId}` (on the performer task itself) | `200 OK` |
| No `BePerformerTask` exists yet for the connected user on this prescription | `POST /Task` | `201 Created` |

| Item | Value |
|----|----|
| Business operation | Evaluate radiology prescription |
| Target resource | `BePerformerTask` |

| Decision | `Task.status` | Additional content |
|----|----|----|
| Accept | `accepted` | none |
| Substitute | `accepted` | `Task.output` with type `substituted` and the new exam |
| Refuse | `rejected` | `Task.statusReason` with the refusal reason |

## PATCH: a performer task already exists

`PATCH /Task/{executionId}`

### Accept Exam (PATCH)

```json
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "replace"
        },
        {
          "name": "path",
          "valueString": "Task.status"
        },
        {
          "name": "value",
          "valueCode": "accepted"
        }
      ]
    }
  ]
}
```

### Substitute Exam (PATCH)

```json
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "replace"
        },
        {
          "name": "path",
          "valueString": "Task.status"
        },
        {
          "name": "value",
          "valueCode": "accepted"
        }
      ]
    },
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "add"
        },
        {
          "name": "path",
          "valueString": "Task"
        },
        {
          "name": "name",
          "valueString": "output"
        }
      ]
    },
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "add"
        },
        {
          "name": "path",
          "valueString": "Task.output"
        },
        {
          "name": "name",
          "valueString": "type"
        },
        {
          "name": "value",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-task-output-type",
                "code": "substituted"
              }
            ]
          }
        }
      ]
    },
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "add"
        },
        {
          "name": "path",
          "valueString": "Task.output"
        },
        {
          "name": "name",
          "valueString": "valueCodeableConcept"
        },
        {
          "name": "value",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "{{new_exam}}"
              }
            ]
          }
        }
      ]
    }
  ]
}
```

### Refuse Exam (PATCH)

```json
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "replace"
        },
        {
          "name": "path",
          "valueString": "Task.status"
        },
        {
          "name": "value",
          "valueCode": "rejected"
        }
      ]
    },
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "add"
        },
        {
          "name": "path",
          "valueString": "Task"
        },
        {
          "name": "name",
          "valueString": "statusReason"
        },
        {
          "name": "value",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-refusal-reason",
                "code": "{{refuse_reason}}"
              }
            ]
          }
        }
      ]
    }
  ]
}
```

## POST: no performer task exists yet

`POST /Task`

A new `BePerformerTask` is created that carries the decision. `focus` points to the prescription, `partOf` to the related referral task (same id as the prescription), and `owner` to the connected performer.

### Accept Exam (POST)

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-performer-task"
    ]
  },
  "partOf": [{
    "reference": "Task/{{serviceRequestID}}"
  }],
  "focus": {
    "reference": "ServiceRequest/{{serviceRequestID}}"
  },
  "status": "accepted",
  "intent": "order",
  "authoredOn": "{{recordedDate}}",
  "owner": {
    "reference": "PractitionerRole/{{practitionerSsin}}-{{practitionerDiscipline}}"
  }
}
```

### Substitute Exam (POST)

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-performer-task"
    ]
  },
  "partOf": [{
    "reference": "Task/{{serviceRequestID}}"
  }],
  "focus": {
    "reference": "ServiceRequest/{{serviceRequestID}}"
  },
  "status": "accepted",
  "intent": "order",
  "authoredOn": "{{recordedDate}}",
  "owner": {
    "reference": "PractitionerRole/{{practitionerSsin}}-{{practitionerDiscipline}}"
  },
  "output": [
    {
      "type": {
        "coding": [
          {
            "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-task-output-type",
            "code": "substituted"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "{{code_of_new_exam}}"
          }
        ]
      }
    }
  ]
}
```

### Refuse Exam (POST)

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-performer-task"
    ]
  },
  "partOf": [{
    "reference": "Task/{{serviceRequestID}}"
  }],
  "focus": {
    "reference": "ServiceRequest/{{serviceRequestID}}"
  },
  "status": "rejected",
  "intent": "order",
  "authoredOn": "{{recordedDate}}",
  "owner": {
    "reference": "PractitionerRole/{{practitionerSsin}}-{{practitionerDiscipline}}"
  },
  "statusReason": {
    "coding": [
      {
        "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-refusal-reason",
        "code": "{{refuse_reason}}"
      }
    ]
  }
}
```

## Performer that is part of an organization

When the organization has been assigned to the prescription (`BeOrganizationTask`) and the performer acts as an internal professional of that organization, the three decisions above work exactly the same way. The only difference is how the performer task is linked to the organization assignment:

- **POST** (no performer task yet): add `basedOn` pointing to the `BeOrganizationTask`. `owner` stays the same (`PractitionerRole/{ssin}-{discipline}`).
- **PATCH** (performer task already exists): nothing changes. The `basedOn` link was set when the performer task was created, and the task is patched exactly as shown above.

Only the additional content is shown below. Combine it with the matching Accept, Substitute or Refuse POST example above; everything else stays as defined there.

```json
{
  "resourceType": "Task",
  "basedOn": [
    {
      "reference": "Task/{{organizationTaskId}}"
    }
  ]
}
```

### Preconditions and Decision Rules

- **Accept:** Radiology only. The prescription must be `READY` and the performer task must be `ready`. Emergency-track acceptance is not supported. A Caregiver must own the task. A Caregiver cannot accept an inpatient exam. An Organization must be assigned to the prescription and use an authorized discipline.
- **Substitute:** The prescription and performer task must be `READY` or `IN_PROGRESS`. A Caregiver must own the task, or an Organization must match the linked organization task referenced by `basedOn`. The new exam is recorded in `Task.output`.
- **Refuse:** The prescription and performer task must be `READY` or `IN_PROGRESS`. A Caregiver must own the task, or an Organization must match the linked organization task referenced by `basedOn`. The refusal reason is recorded in `Task.statusReason`.

For all three decisions, the applicable access-matrix permission is enforced. Organization decisions also depend on the corresponding organization feature being enabled.

### Allowed Roles

Assigned radiology Caregiver, Organization assigned to the task or its `basedOn` organization task.

### Possible Error Codes

{% endraw %}

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-evaluate-radiology-prescription-sequence.svg %}
  <figcaption>Evaluate Radiology Prescription sequence</figcaption>
</figure>
