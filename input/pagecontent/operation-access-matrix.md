This page describes how eReferral authorizes an incoming request: the connected user's **role**, the INAMI **access matrix**, the effect of **suspension**, and the **search-filter  access control** applied to prescription/proposal list searches.

This page replaces the access-control narrative previously spread across the eReferral cookbook.

### Roles

A connected user is assigned exactly **one** role, which acts as the first layer of access control.

| Role | Capabilities                                                                                                                                                                                                                                                                                              |
| --- |-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Patient | Consult own prescriptions, tasks and lists. Resolve exposed `Practitioner` and `PractitionerRole` references. Assign/remove caregivers or organizations. Cancel own prescriptions.                                                                                                                        |
| Prescriber | Create, consult and cancel prescriptions. Consult lists and caregiver execution tasks.                                                                                                                                                                                                                    |
| Caregiver | Consult prescriptions/lists/tasks. Execute treatments (start, finish, interrupt, cancel). Assign/remove caregivers or organizations. Transfer assignations.                                                                                                                                               |
| Organization | Create prescriptions and proposals. Consult list/details/execution tasks of prescriptions and proposals. Assign them to itself, to internal healthcare professionals or to external healthcare professionals. Remove an assignation (own or internal healthcare professional) on a prescription/proposal. |
| Restricted | If a healthcare professional's token contains only the "Restricted" role, their licence is suspended and they have strictly limited access (see [Suspension](#suspension)).                                                                                                                               |

### Access Matrix

Beyond the base role, eReferral enforces an **access matrix** defined by INAMI. Before allowing an
action, the API evaluates:

1. the **operation** requested;
2. the **prescription template type** (defined by INAMI — see [Prescription Templates](topic-prescription-templates.html));
3. the **discipline** of the professional (from the token) or of the organization.

If the user's or organization's discipline is not authorized for the requested template/action,
the API returns `403 Forbidden`.

### Suspension

If a healthcare professional is suspended, they lose active working privileges. However, they may
still **retroactively log work** that was completed before their suspension date. When suspended:

- certain operations are completely blocked;
- others have modified behaviour (documented on the relevant operation pages);
- a suspended prescriber can only see prescriptions they created; a suspended caregiver can only
  see prescriptions on which they are assigned or work.

In machine-to-machine (M2M) integrations, eReferral does not enforce these verifications — they
are the responsibility of each organization.

### Search-Filter Access Control

When searching for a list of prescriptions/proposals (`POST /ServiceRequest/_search`), each filter
has an access rule that depends on the connected user's role.

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

- **Free** — the filter may be used or ignored.
- **Forbidden** — the filter may not be used; using it returns `SEARCH_CRITERIA_NOT_ALLOWED`.
- **Mandatory** — the filter must be provided; otherwise `REQUIRED_SEARCH_CRITERIA_MISSING`.
- **Partially Mandatory** — at least one of the partially-mandatory filters must be used;
  otherwise `REQUIRED_SEARCH_CRITERIA_MISSING`.
- **Partially Mandatory + Partial Token Verification** — if `patient` is not provided, one of the
  partial-token-verification filters must match the connected user's token; otherwise
  `WRONG_REFERENCE_HEALTHCARE_PROFESSIONAL`. If `patient` **is** provided, no token-correspondence
  check is performed.

**Example.** 
A prescriber searching without a `patient` filter must provide at least `requester` or `_has:Task:focus:owner=PractitionerRole/…`, and one of those must match their token; otherwise they receive `REQUIRED_SEARCH_CRITERIA_MISSING` or `WRONG_REFERENCE_HEALTHCARE_PROFESSIONAL`.
