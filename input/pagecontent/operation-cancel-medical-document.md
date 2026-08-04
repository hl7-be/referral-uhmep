This page describes how to cancel a prescription or proposal.

| Item | Value |
|----|----|
| Business operation | Cancel a medical document |
| Endpoint | `PATCH /ServiceRequest/{prescriptionId}` |
| Target resource | `ServiceRequest` |
| Successful response | `200 OK` |

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

- Prescription: Prescriber, Patient, Organization.
- Proposal (Annex 81): Caregiver, Patient, Organization.

### Possible Error Codes

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-cancel-medical-document-sequence.svg %}
  <figcaption>Cancel Medical Document sequence</figcaption>
</figure>

