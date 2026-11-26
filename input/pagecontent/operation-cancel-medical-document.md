This page describes how to cancel a prescription or proposal.

| Item | Value |
|----|----|
| Business operation | Cancel a medical document |
| Endpoint | `PATCH /ServiceRequest/{prescriptionId}` |
| Target resource | `ServiceRequest` |
| Successful response | `200 OK` |

Cancellation is allowed only while the prescription is in business state `DRAFT`, `PENDING` or `READY`. A Patient may cancel only their own prescription. A Prescriber may cancel only a prescription they created. These status and ownership rules apply across prescription templates, including radiology.

### Payload

```json
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        { "name": "type", "valueCode": "replace" },
        { "name": "path", "valueString": "ServiceRequest.status" },
        { "name": "value", "valueString": "revoked" }
      ]
    }
  ]
}
```

### Allowed Roles

- Prescription: the creating Prescriber or the Patient who owns it.
- Proposal (Annex 81): the assigned Caregiver or the Patient who owns it. The proposal must be `READY`.

### Possible Error Codes

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-cancel-medical-document-sequence.svg %}
  <figcaption>Cancel Medical Document sequence</figcaption>
</figure>

