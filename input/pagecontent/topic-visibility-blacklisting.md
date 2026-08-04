This page describes which prescriptions are returned to a user who has the right to call a
consultation or search operation. Even when a user has the correct role, the result is filtered by
template visibility, blacklisting rules, and cancelled-prescription restrictions.

### Visibility Depending on the Template

When a prescriber or caregiver can access an operation because of their role, only the
prescriptions they are allowed to see are returned. Whether they may see a given prescription is
determined by the consultation right in the [access matrix](operation-access-matrix.html).

### Blacklisted Prescriptions

Some prescriptions in the **Blacklisted** status are not returned.

A prescription can be blacklisted:

- at creation, because the prescriber was suspended (see [Suspension](operation-access-matrix.html#suspension)); or
- after creation, by a retroactive script run by eReferral when a prescriber suspension is
  received some days after creation. Only prescriptions created during the prescriber's suspension
  period are blacklisted.

Depending on the prescription's status when the blacklisting script runs, the behaviour differs:

| Status when blacklisted | Behaviour |
| --- | --- |
| Draft, Ready, Cancelled, Expired | Prescription is blacklisted and **not returned** (a specific consultation returns an error). |
| In Progress | Prescription is blacklisted; all `in-progress` executions are changed to **Interrupted**; the prescription **is returned**. |
| Inactive, Completed | Prescription is blacklisted; the prescription **is returned**. |

**Summary:** a Blacklisted prescription is returned only if it has one or more executions. If it
has nothing, or only assignations, it is not returned.

### Cancelled Prescriptions

When a referral prescription reaches the **Cancelled** (`revoked`) status, its visibility is
strictly restricted to ensure confidentiality:

| Actor | Cancelled prescription visibility |
| --- | --- |
| Patient | Can see the cancelled prescription if they are the subject. |
| Prescriber | Can see the cancelled prescription only if they are the original creator (requester). Other prescribers cannot see it. |
| Caregiver | Cannot see cancelled prescriptions. |

For cancelled **proposals**, the caregiver visibility differs (a caregiver can see a cancelled
proposal only if they are its original requester); see
[API Integration – Visibility Rules](api-integration.html#visibility-rules).
