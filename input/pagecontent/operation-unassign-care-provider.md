This page describes how to remove an assignment.

| Item | Value |
|----|----|
| Business operation | Unassign a care provider |
| Endpoint | `DELETE /Task/{executionID}` |
| Target resource | `BePerformerTask` or `BeOrganizationTask` |
| Successful response | `204 No Content` |

An assignment can be removed only while the execution task is still `ready`. For radiology prescriptions on the ambulatory track, removal is also allowed while the prescription is in business state `READY` or `IN_PROGRESS` and the execution task is `in-progress`. The task is deleted and the prescription returns to `READY`. Other tracks and prescription types remain subject to their applicable removal rules.

### Request

```
DELETE /Task/{executionID}
Authorization: Bearer <exchanged_ehealth_token>
```

An organization using M2M access may remove its own `BeOrganizationTask`, subject to the applicable removal rules. Removing this task also removes its dependent `BePerformerTask` assignments. It cannot selectively remove an internal professional's `BePerformerTask` linked to that organization task through `basedOn`.

### Allowed Roles

Patient, Caregiver, Organization (for its own `BeOrganizationTask` only). For an Annex 81 proposal, a Prescriber may also remove their own assignment.

* A Caregiver can remove only their own assignment.
* An Organization can currently remove only its own organization assignment (`BeOrganizationTask`), not the `BePerformerTask` of one of its internal professionals. An internal professional's assignment is removed by that professional, or together with the organization assignment it references.
* For radiology prescriptions, only an authorized Caregiver removing their own assignment or an Organization removing its own organization assignment may unassign. A Patient cannot remove a radiology assignment.

### Possible Error Codes

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-unassign-care-provider-sequence.svg %}
  <figcaption>Unassign Care Provider sequence</figcaption>
</figure>

