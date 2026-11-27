# Cancel a Medical Document - eReferral Implementation Guide v3.0.2

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

Cancellation is allowed only while the prescription is in business state `DRAFT`, `PENDING` or `READY`. A Patient may cancel only their own prescription. A Prescriber may cancel only a prescription they created. These status and ownership rules apply across prescription templates, including radiology.

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

* Prescription: the creating Prescriber or the Patient who owns it.
* Proposal (Annex 81): the assigned Caregiver or the Patient who owns it. The proposal must be `READY`.

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

### Sequence

Cancel Medical Document sequence

