This page describes how eReferral authorizes an incoming request: the connected user's **role**, the INAMI **access matrix**, the effect of **suspension**, and the **search-filter  access control** applied to prescription/proposal list searches.

This page replaces the access-control narrative previously spread across the eReferral cookbook.

### Roles

A connected user is assigned exactly **one** role, which acts as the first layer of access control.

| Role | Capabilities                                                                                                                                                                                                                                                                                              |
| --- |-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Patient | Consult own prescriptions, tasks and lists. Resolve exposed `Practitioner` and `PractitionerRole` references. Assign/remove caregivers or organizations. Cancel own prescriptions.                                                                                                                        |
| Prescriber | Create, consult and cancel prescriptions. Consult lists and caregiver execution tasks.                                                                                                                                                                                                                    |
| Caregiver | Consult prescriptions/lists/tasks. Execute treatments (start, finish, interrupt, cancel). Assign/remove caregivers or organizations. Transfer assignations.                                                                                                                                               |
| Organization | Create prescriptions and proposals. Consult lists, details and execution tasks only for templates and actions authorized for its organization identity. Assign prescriptions and proposals to itself, to internal healthcare professionals or to external healthcare professionals. Remove its own organization assignment on a prescription, subject to the applicable rules. |
| Restricted | If a healthcare professional's token contains only the "Restricted" role, their licence is suspended and they have strictly limited access (see [Suspension](#suspension)).                                                                                                                               |

These are role summaries, not unconditional permissions. For radiology, a Patient cannot remove
an assignment. An Organization can remove its own `BeOrganizationTask`, but cannot selectively
remove a linked internal professional's `BePerformerTask` through `DELETE /Task/{executionID}`.
Removing the organization task also removes its dependent assignments. See
[Unassign a Care Provider](operation-unassign-care-provider.html) for the applicable restrictions.

### Access Matrix

Beyond the base role, eReferral enforces an **access matrix** defined by INAMI. Before allowing an
action, the API evaluates:

1. the **operation** requested.
2. the **prescription template type** (defined by INAMI: see [Prescription Templates](topic-prescription-templates.html)).
3. for professionals, the **discipline** associated with the token; for Organizations, the organization identity used by the authorization policy.

For professionals, the matrix evaluates the discipline associated with the token. For an Organization, the authorization-policy match uses the prescription template, requested action and organization's OIDC identity; organization type is not part of this match. This is separate from resolving the organization and its type through CoBRHA when an API flow requires that information. An unauthorized template/action combination returns `403 Forbidden`.

For Annex 81, organization policy covers prescription consultation and list access, execution, interruption, assignment and assignment withdrawal, in addition to the separately governed proposal actions. These permissions are policy-dependent: they do not imply that every Organization is authorized, and they do not change the Annex 81 FHIR profile.

### Suspension

If a healthcare professional is suspended, they lose active working privileges. However, they may
still **retroactively log work** that was completed before their suspension date. When suspended:

- certain operations are completely blocked.
- others have modified behaviour (documented on the relevant operation pages).
- a suspended prescriber can only see prescriptions they created. A suspended caregiver can only
  see prescriptions on which they are assigned or work.

In machine-to-machine (M2M) integrations, eReferral does not enforce these verifications. Each
organization is responsible for them.

### Search-Filter Access Control

When searching for a list of prescriptions/proposals (`POST /ServiceRequest/_search`), each filter
has an access rule that depends on the connected user's role.

For Organizations, list visibility is governed by separate authorization for prescription lists and proposal lists. Permission to consult an individual document does not by itself grant access to its list. The backend filters the accessible templates using those list permissions; a template without a matching list permission is excluded. Other roles use their individual document-consultation permissions.

| Filter | Prescriber | Caregiver | Patient | Organization |
| --- | --- | --- | --- | --- |
| `patient` | Partially Mandatory | Partially Mandatory | Mandatory | Free |
| `status` | Free | Free | Free | Free |
| `statusReason` | Free | Free | Free | Free |
| `_has:Task:focus:status` + `_profile` | Free | Free | Free | Free |
| `requester` | Partially Mandatory + Partial Token Verification | Partially Mandatory + Partial Token Verification | Free | Free |
| `_has:Task:focus:owner` (professional) | Partially Mandatory + Partial Token Verification | Partially Mandatory + Partial Token Verification | Free | Free |
| `_has:Task:focus:owner` (organization) | Free | Free | Free | Mandatory |
| `code` | Free | Free | Free | Free |
| `intent` | Free | Free | Free | Free |
| `_count` | Free | Free | Free | Free |
| `_offset` | Free | Free | Free | Free |

Rule meanings:

- **Free:** The filter may be used or ignored.
- **Forbidden:** The filter may not be used. Using it returns `SEARCH_CRITERIA_NOT_ALLOWED`.
- **Mandatory:** The filter must be provided. Otherwise `REQUIRED_SEARCH_CRITERIA_MISSING`.
- **Partially Mandatory:** At least one of the partially mandatory filters must be used. Otherwise `REQUIRED_SEARCH_CRITERIA_MISSING`.
- **Partially Mandatory + Partial Token Verification:** If `patient` is not provided, one of the
  partial-token-verification filters must match the connected user's token. Otherwise
  `WRONG_REFERENCE_HEALTHCARE_PROFESSIONAL`. If `patient` **is** provided, no token-correspondence
  check is performed.

**Example.** 
A prescriber searching without a `patient` filter must provide at least `requester` or `_has:Task:focus:owner=PractitionerRole/…`, and one of those must match their token. Otherwise they receive `REQUIRED_SEARCH_CRITERIA_MISSING` or `WRONG_REFERENCE_HEALTHCARE_PROFESSIONAL`.
