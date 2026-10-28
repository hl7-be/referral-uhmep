# Cancel a Medical Document - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Cancel a Medical Document**

## Cancel a Medical Document

This page describes how to cancel a prescription or proposal.

| | |
| :--- | :--- |
| Business operation | Cancel a medical document |
| Endpoint | `PATCH /ServiceRequest/{prescriptionId}` |
| Target resource | `ServiceRequest` |
| Successful response | `200 OK` |

For radiology prescriptions, a Patient may cancel while the prescription is in business state `PENDING` or `READY`. This is a radiology-specific rule and should not be inferred for other prescription types.

### Payload

```
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

* Prescription: Prescriber, Patient, Organization.
* Proposal (Annex 81): Caregiver, Patient, Organization.

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

### Sequence

Cancel Medical Document sequence

