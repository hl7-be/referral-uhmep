This page describes how to remove an assignment.

| Item | Value |
|----|----|
| Business operation | Unassign a care provider |
| Endpoint | `DELETE /Task/{executionID}` |
| Target resource | `BePerformerTask` or `BeOrganizationTask` |
| Successful response | `204 No Content` |

An assignment can be removed only while the execution task is still `ready`.

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

