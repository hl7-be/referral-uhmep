This page describes business operations that cannot be represented by a single FHIR interaction. They must be implemented as a controlled sequence of API calls.

The individual operation pages remain the reference for each call payload. This page explains how to combine them.

### Transfer An Assignment To Another Professional

Transferring an assignment from one professional to another is not a single API operation. The client removes the existing assignment and creates a new assignment.

| Step | API call | Expected result |
|----|----|----|
| 1 | `DELETE /Task/{oldExecutionID}` | The old `BePerformerTask` is removed if it is still `ready`. |
| 2 | `POST /Task` | A new `BePerformerTask` is created for the new professional. |
| 3 | `GET /Task?focus={ServiceRequestID}` | Optional verification of the updated assignment graph. |

The transfer is possible only while the old assignment can still be removed. If execution already started, the old task must be cancelled or completed according to the execution workflow instead of being deleted.

#### Sequence

<figure>
  {% include api-complex-operations-sequence.svg %}
  <figcaption>Complex Operations sequence</figcaption>
</figure>

### Transfer An Internal Organization Assignment

When the assignment is internal to an organization, the new `BePerformerTask` must keep the same `basedOn` reference to the organization task.

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
    "reference": "PractitionerRole/{newSSIN}-{DISCIPLINE}"
  }
}
```

### Operational Guidance

* Do not model multi-call business operations as a single client-side PATCH on multiple resources.
* After a multi-call workflow, read the task graph to verify the resulting state.
* If one step fails, use the returned `OperationOutcome` to decide whether the client can retry or must refresh the current state first.
* For operations that need atomicity across several resources, use a dedicated server operation when one exists, such as proposal approval or rejection.


