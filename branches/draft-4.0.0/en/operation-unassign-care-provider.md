# Unassign a Care Provider - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Unassign a Care Provider**

## Unassign a Care Provider

This page describes how to remove an assignment.

| | |
| :--- | :--- |
| Business operation | Unassign a care provider |
| Endpoint | `DELETE /Task/{executionID}` |
| Target resource | `BePerformerTask`or`BeOrganizationTask` |
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

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

### Sequence

Unassign Care Provider sequence

