This page describes how to remove an assignment.

| Item | Value |
|----|----|
| Business operation | Unassign a care provider |
| Endpoint | `DELETE /Task/{executionID}` |
| Target resource | `BePerformerTask` or `BeOrganizationTask` |
| Successful response | `204 No Content` |

For radiology prescriptions on the ambulatory track, an assignment may be removed while the prescription is in business state `READY` or `IN_PROGRESS` and the execution task is `ready` or `in-progress`. The task is deleted and the prescription returns to `READY`. Other tracks and prescription types remain subject to their applicable removal rules.

### Request

```
DELETE /Task/{executionID}
Authorization: Bearer <exchanged_ehealth_token>
```

For an internal professional assignment, the server also verifies that the deleted `BePerformerTask` remains coherent with the parent `BeOrganizationTask`.

### Allowed Roles

Patient, Caregiver, Organization. (For an Annex 81 proposal, a Prescriber may also remove their own assignment.)

### Possible Error Codes

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-unassign-care-provider-sequence.svg %}
  <figcaption>Unassign Care Provider sequence</figcaption>
</figure>

