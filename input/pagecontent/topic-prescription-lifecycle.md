This page describes the lifecycle of an eReferral prescription: how business statuses map to the
FHIR statuses of the resources that represent a prescription, the state flows for the prescription
and for a performer execution, and how the Task resources link back to the `ServiceRequest`.

Business statuses are used throughout the operation pages to stay aligned with the business
requirements and to avoid repeating the value of each underlying FHIR field.

### Resources Representing a Prescription

A Belgian referral prescription is represented by a `ServiceRequest` (profiled as
`eReferralServiceRequestNursing`, `eReferralAnnex81`, or
`eReferralServiceRequestDiagnosticImaging`).

- A `BeReferralTask` is always created together with the prescription. It has the **same logical
  ID** as the `ServiceRequest` and references it through `Task.focus`. It can be read with
  `GET /Task/{id}`.
- On creation, the related `BePractitionerRole` and `BePractitioner` resources are also made
  available for consultation (see [API Integration](api-integration.html)).

### Resource Roles

The model separates the **clinical request itself** from the **workflow tracking** required to
coordinate the healthcare professionals and organizations involved in the execution of the
prescription.

| Resource | Role |
|--------|------|
| ServiceRequest | Represents the prescription itself (the clinical order). |
| ReferralTask | Tracks the overall processing of the prescription across all assigned actors. |
| PerformerTask | Represents the assignment and progress of a healthcare professional responsible for executing the prescription. |
| OrganizationTask | Represents the assignment of an organization responsible for executing the prescription. |

The **ServiceRequest** represents the prescription created by the prescriber. It contains the
clinical intent, the requested service, the patient, and contextual information required to
perform the care, and it remains the **single source of truth for the prescription**.

The **ReferralTask** tracks the **global workflow of the prescription**. Several healthcare
professionals or organizations may participate in the execution of a prescription; the
ReferralTask aggregates the state of the workflow and represents the overall status of the
prescription processing. Its status is derived from the status of the tasks assigned to
performers or organizations.

A **PerformerTask** represents the involvement of a specific healthcare professional in the
prescription workflow: assignment of the prescription to a practitioner, progress of the work
performed, and completion or cancellation of the task. Multiple PerformerTasks may exist if
several professionals are involved in the care process.

An **OrganizationTask** represents the involvement of a healthcare organization responsible for
performing the prescription, used when the prescription is handled at the organizational level
rather than directly by an individual practitioner. An organization may assign the work internally
to one or more healthcare professionals; internal healthcare professionals are identifiable via a
`basedOn` reference to the OrganizationTask in the PerformerTask.

<div style="text-align:center;">
  <img src="simple-prescription-workflow.png" style="width:100%;"/>
</div>

Separating the prescription (`ServiceRequest`) from workflow tracking (`Task`) provides several
advantages:

- the prescription remains immutable from a clinical perspective;
- workflow changes do not modify the clinical order;
- multiple actors can participate in the execution;
- the global progress of the prescription can be calculated dynamically.

This structure aligns with the FHIR workflow pattern and allows flexible orchestration of
healthcare activities.

### Business Status ↔ FHIR Status Mapping

Every business status maps to a combination of `ServiceRequest.status`,
`ServiceRequest.statusReason`, and `BeReferralTask.status`:

| Business status | `ServiceRequest.status` | `ServiceRequest.statusReason` | `BeReferralTask.status` |
| --- | --- | --- | --- |
| Draft | `draft` | / | `draft` |
| Blacklisted | `entered-in-error` | / | `entered-in-error` |
| Pending | `active` | / | `draft` |
| Ready | `active` | / | `ready` |
| Canceled | `revoked` | `cancelingReason` | `cancelled` |
| Expired | `revoked` | `expired` | `cancelled` |
| In Progress | `active` | / | `in-progress` |
| Inactive | `active` | / | `on-hold` |
| Completed | `completed` | / | `in-progress` / `completed` |

When translating a business status into a search filter, the FHIR status values above must be
used (see the search filters in [API Operations](api-operations.html)).

### Prescription Lifecycle

<div style="text-align:center;">
  <img src="CURRENT-StatusDiagram-Prescription.svg" style="width:100%;"/>
</div>

The prescription moves from **Pending** to **Ready** when its `ValidityStartDate` is reached, and
becomes **In Progress** once a caregiver starts an execution. It ends as **Completed** when the
`TreatmentValidityEndDate` is reached, or as **Canceled**, **Expired**, or **Blacklisted**
depending on cancellation, validity expiry, or prescriber suspension.

### Execution of Caregivers on a Prescription

Clinical data in the `ServiceRequest` is fixed once created by the prescriber and must not change
afterward. Caregiver interactions are handled through the `BePerformerTask` resource:

- `BePerformerTask.focus` references the `ServiceRequest`.
- `BePerformerTask.partOf` references the `BeReferralTask`.
- `BeOrganizationTask` stores an organization assignation on a prescription.
- When a caregiver works for an organization, their `BePerformerTask` is linked to the
  `BeOrganizationTask` through `basedOn`.

A `BePerformerTask` can be created in three cases:

- when a caregiver is assigned on a prescription by the patient or by another caregiver;
- when the caregiver starts an execution and the resource was not already created;
- when the caregiver completes an execution without a prior assignation or start (a shortcut).

After creation, all further updates are done with the FHIR `PATCH` operation.

### Performer Task Status Mapping

| Business status | `BePerformerTask.status` |
| --- | --- |
| Ready | `ready` |
| In Progress | `in-progress` |
| Canceled | `cancelled` |
| Interrupted | `on-hold` |
| Completed | `completed` |

Once a `BePerformerTask.status` is `on-hold` or `completed`, the resource can no longer be updated.

<div style="text-align:center;">
  <img src="CURRENT-StatusDiagram-Execution.svg" style="width:100%;"/>
</div>

### Full Referral Graph

A prescription is composed of several resources. The recommended way to retrieve them in one call
is the `$graph` operation (see [Consult or Search Medical Documents](operation-consult-search-medical-documents.html)).
The example below shows a prescription with three assignments:
- an independent healthcare professional
- an organization
- an internal healthcare professional from the organization

<div style="text-align:center;">
  <img src="graph-prescription.png" style="width:100%;"/>
</div>

### Related Life-Cycle Pages

| Page                                                                  | Purpose |
|-----------------------------------------------------------------------| --- |
| [Proposal Life Cycle](topic-prescription-lifecycle-proposal.html)     | Annex 81 proposal creation, assignment, approval, and rejection. |
| [Prescription Extension](topic-prescription-lifecycle-extension.html) | How a prescription's validity period is extended using a new `ServiceRequest` and `ServiceRequest.replaces`. |
