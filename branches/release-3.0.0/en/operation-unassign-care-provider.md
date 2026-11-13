# Unassign a Care Provider - eReferral Implementation Guide v3.0.0

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

For radiology prescriptions on the ambulatory track, an assignment may be removed while the prescription is in business state `READY` or `IN_PROGRESS` and the execution task is `ready` or `in-progress`. The task is deleted and the prescription returns to `READY`. Other tracks and prescription types remain subject to their applicable removal rules.

### Request

```
DELETE /Task/{executionID}
Authorization: Bearer <exchanged_ehealth_token>

```

An organization using M2M access may remove its own `BeOrganizationTask`, subject to the applicable removal rules. Removing this task also removes its dependent `BePerformerTask` assignments. It cannot selectively remove an internal professional’s `BePerformerTask` linked to that organization task through `basedOn`.

### Allowed Roles

Patient, Caregiver, Organization (for its own `BeOrganizationTask` only). For an Annex 81 proposal, a Prescriber may also remove their own assignment.

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

### Sequence

Unassign Care Provider sequence

