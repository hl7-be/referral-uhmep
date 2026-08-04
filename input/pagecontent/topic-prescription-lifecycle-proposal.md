This page describes the life cycle used for **Annex 81 proposals**, including how a proposal is assigned and how it is **approved** or **rejected**.

The workflow is based on a separation between:

- the **clinical request** (`ServiceRequest`)
- the **workflow tracking** (`Task` resources)

### Key Resources

| Resource | Role |
|---|---|
| ServiceRequest (Annex81) | Represents the proposal and later the approved order. |
| BeReferralTask (Task) | Tracks the overall processing of the proposal. |
| BePerformerTask (Task) | Tracks the assignment and handling of the proposal by a specific healthcare professional (e.g. GP). |
| Patient | Subject of the proposal. |
| PractitionerRole / Practitioner | Represents the caregiver(s) involved. |

---

### Step 1 — Proposal Request (created by client)

<div style="text-align:center;">
  <img src="annex81-proposal-request.png" style="width:100%;"/>
</div>

A client system creates an Annex 81 proposal as a `ServiceRequest` with:

- `ServiceRequest.intent = proposal`
- `ServiceRequest.subject` referencing the Patient
- `ServiceRequest.requester` referencing the proposing caregiver (`PractitionerRole`)

After the proposal is created, eReferral creates the corresponding `BeReferralTask` to track the lifecycle of the proposal.

The ReferralTask references the proposal using:

- `Task.focus → ServiceRequest`

This ensures the workflow can evolve without changing the original clinical request structure.

---

### Step 2 — Proposal Assignment (performed by client)

<div style="text-align:center;">
  <img src="annex81-proposal-assignment.png" style="width:100%;"/>
</div>

When a caregiver (e.g. GP) is assigned to handle the proposal, the client creates a `BePerformerTask`:

- `BePerformerTask.partOf → BeReferralTask`
- `BePerformerTask.focus → the same ServiceRequest (proposal)`
- `BePerformerTask.owner → assigned PractitionerRole`

This assignment task represents who is responsible for reviewing/processing the proposal.

---

### Step 3 — Proposal Approval

<div style="text-align:center;">
  <img src="annex81-proposal-approval.png" style="width:100%;"/>
</div>

Approving a proposal is not just a status update. It produces a new "approved request" state.

The API provides the dedicated [Evaluate Proposal](operation-evaluate-proposal.html) operation
(`POST /ServiceRequest/{serviceRequestID}/$approve`).

When approval is performed:

- the proposal workflow is completed and the evaluation `BePerformerTask` is completed;
- a valid prescription is created and the caregiver who authored the original proposal is assigned;
- the workflow tasks are updated consistently by the server (ReferralTask and PerformerTask status).

Using the operation ensures the server can apply all workflow rules atomically and keep the resources consistent.

---

### Step 4 — Proposal Rejection

<div style="text-align:center;">
  <img src="annex81-proposal-rejection.png" style="width:100%;"/>
</div>

Rejecting a proposal is also a business transaction and must:

- capture the rejection decision
- update workflow tracking resources
- ensure the proposal cannot be treated as an order

The API provides the same dedicated [Evaluate Proposal](operation-evaluate-proposal.html) operation
(`POST /ServiceRequest/{serviceRequestID}/$reject`).

When rejection is performed:

- the proposal workflow is marked as completed (rejected outcome);
- the `BePerformerTask` is updated to reflect the rejection;
- eReferral updates the status of the related resources accordingly.

---

### Why Approval/Rejection Use Operations

Approval and rejection affect multiple resources (`ServiceRequest`, `BeReferralTask`, `BePerformerTask`) and must enforce workflow constraints.

Using operations instead of client-driven PATCH updates:

- centralizes business rules on the server
- avoids duplicated workflow logic in every integrator system
- prevents inconsistent partial updates across resources
- simplifies error handling for clients

This ensures all systems interacting with eReferral follow the same workflow semantics, while clients only need to invoke a clear domain action (approve or reject).
