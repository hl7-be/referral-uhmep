# Migration 2.1.0 to 3.0.0 - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* **Migration 2.1.0 to 3.0.0**

## Migration 2.1.0 to 3.0.0

This page collects the integration checks for moving from release 2.1.0 to 3.0.0. It complements the [release notes](changes.md), the generated profiles and the operation pages; it does not replace INAMI/RIZIV business requirements.

### Release Boundaries

| | |
| :--- | :--- |
| Documented in 3.0.0 | Radiology assignment removal on the ambulatory track, completion on the urgency track, patient cancellation, explicit required profile elements and updated PSS/QSI examples. |
| Already documented in 2.1.0 | Track-dependent radiology handling, profile rewriting and pseudonymization. These are not new security mechanisms introduced by this migration. |
| Announced for a future release | Migration from the DRP IG to the Referral IG and replacement of the eReferral canonical base. Do not apply the proposed`XXX`namespace to 3.0.0 payloads. |

The checks below describe the current 3.0.0 artefacts and the changes recorded in this IG. They are not an exhaustive compatibility certification of every 2.1.0 deployment. Confirm the deployed API version, configuration and package versions in the target environment before cutover. A client upgrading from 2.1.0 should not assume that a missing field was previously valid merely because an earlier server accepted its payload.

### Payload Compatibility Checklist

| | | |
| :--- | :--- | :--- |
| Nursing prescription type | `category[prescriptionType]`is`1..1`, with one coding and a required binding to the nursing technical-type ValueSet. | Make the template coding explicit; validate every nursing template used by the client. |
| Diagnostic-imaging prescription type | `category[prescriptionType]`is`1..1`. | Populate the prescribed imaging template rather than relying on inference. |
| Annex 81 technical type | `category[annex81TechnicalType]`is`1..1`. | Revalidate proposal and approval fixtures against the Annex 81 profile, not the generic nursing profile. |
| Nursing and diagnostic-imaging reason | `reasonCode`is`1..1`in both profiles. | Check generators that omit the reason or send multiple reasons. If the reason is patient-specific free text, retain its pseudonymization metadata. |
| Radiology track and urgency | Track is`ambulatory`,`inpatient`or`urgency`;`priority = urgent`requires an urgency justification. | Keep track and priority separate in the client model; an urgency track is not a substitute for the priority field. |
| Contained radiology resources | The diagnostic-imaging profile requires the contained patient and safety checklist, with local references. | Resolve`subject`and checklist references inside the same resource; revalidate the contained questionnaire response. |
| Profile declaration | Use the eReferral target profile or an explicitly configured legacy DRP mapping. | Check[Profile Rewriting](topic-profile-rewriting.md), including the exact Annex 81 identifier. URL rewriting does not repair payload content. |
| Organization-scoped actor references | Follow the documented`PractitionerRole`identifier and`Task.basedOn`conventions. | Recheck requester/owner references and the organization-task link in M2M fixtures. This is a compatibility check, not a claim that the identifier convention is newly introduced in 3.0.0. |

Cardinalities and terminology bindings are defined by the generated profiles, not by this summary. Start with the [nursing profile](StructureDefinition-ereferral-servicerequest-nursing.md), [Annex 81 profile](StructureDefinition-ereferral-annex-81.md) and [diagnostic-imaging profile](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md).

### Radiology Operation Matrix

This matrix focuses on migration-sensitive paths. It is not a complete authorization matrix: the [Access Matrix](operation-access-matrix.md), privacy checks, assignment ownership and operation-specific preconditions still apply. Business prescription states are not literal values for `ServiceRequest.status`; see the [status mapping](topic-prescription-lifecycle.md#business-status--fhir-status-mapping).

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Remove assignment | Ambulatory | Patient, Caregiver or Organization, subject to removal rights | Prescription`READY`or`IN_PROGRESS`; task`ready`or`in-progress` | Assignment is removed; prescription returns to`READY`. Dependent assignments can also be affected. |
| Remove assignment | Inpatient | Any caller | Do not reuse the ambulatory exception | Radiology track guard rejects assignment removal. |
| Remove assignment | Urgency | Any caller | Do not reuse the ambulatory exception | Radiology track guard rejects assignment removal. |
| Complete an existing execution | Ambulatory | Caregiver or Organization | Prescription`IN_PROGRESS`; caregiver task`in-progress` | Caregiver execution and radiology prescription become completed. |
| Complete an existing execution | Inpatient | Caregiver or Organization | Prescription`IN_PROGRESS`; caregiver task`in-progress`, with applicable organization linkage | Caregiver execution and radiology prescription become completed. |
| Complete an existing execution | Urgency | Caregiver or Organization | The documented exception also permits prescription`READY`without an already-started caregiver task | The backend starts the caregiver activity when necessary, then completes it and the prescription. |
| Patient cancellation | Ambulatory | Patient | Prescription`PENDING`or`READY` | Prescription becomes canceled. |
| Patient cancellation | Inpatient | Patient | Prescription`PENDING`or`READY` | Prescription becomes canceled. |
| Patient cancellation | Urgency | Patient | Prescription`PENDING`or`READY` | Prescription becomes canceled. |

For other actors, terminal states, missing assignments and POST-based creation/completion shortcuts, use the relevant operation page rather than extrapolating from these rows. In particular, an existing-task completion and creating a task already marked `completed` are separate routes with their own preconditions.

### Before and After Operation Examples

These are illustrative state projections, not complete FHIR payloads or executable clinical scenarios. IDs are placeholders. Execute the documented request against a valid resource and read back the related resources to obtain the authoritative state, dates and task dependencies.

#### Ambulatory Assignment Removal

Example: an authorized caller removes an existing, in-progress ambulatory caregiver assignment.

```
DELETE /Task/{executionID}

```

| | | |
| :--- | :--- | :--- |
| Prescription business state | `IN_PROGRESS` | `READY` |
| `ServiceRequest.status` | `active` | `active` |
| `BeReferralTask.status` | `in-progress` | `ready`according to the documented business-state projection |
| Removed execution task | `status = in-progress` | Assignment deleted, not changed to`cancelled` |

The unchanged `ServiceRequest.status` does not mean that no workflow transition occurred. Refresh the referral task and assignment list. Do not use the removed assignment as an active execution identifier; [Unassign a Care Provider](operation-unassign-care-provider.md) describes the operation.

#### Urgency Completion from Ready

Example: an organization completes an existing urgency-track caregiver execution while the prescription is still `READY`. Use the PATCH payload under [Finish Existing Execution](operation-record-execution-end.md#finish-existing-execution).

| | | |
| :--- | :--- | :--- |
| Prescription business state | `READY` | `COMPLETED` |
| `ServiceRequest.status` | `active` | `completed` |
| Existing caregiver execution | Not yet started, for example task`ready` | Task`completed`; the backend starts the activity if necessary before finishing it |
| Global referral task and dates | Current server values | Read back the aggregate task and execution dates; do not infer them solely from the submitted end date |

This exception is specific to the urgency track. It does not establish a general right to complete an ambulatory or inpatient prescription directly from `READY`, nor does it mean the client must issue a separate start request for this existing-task path.

#### Patient Cancellation

Example: the patient cancels their own radiology prescription in business state `READY` using [Cancel a Medical Document](operation-cancel-medical-document.md).

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

| | | |
| :--- | :--- | :--- |
| Prescription business state | `READY` | Canceled |
| `ServiceRequest.status` | `active` | `revoked` |
| `BeReferralTask.status` | `ready` | `cancelled`according to the documented business-state projection |

Requery the server after the operation. Do not infer the final state of every related performer or organization task from the prescription status alone. The same documented patient-cancellation permission also covers `PENDING`; other prescription types retain their own rules.

### Terminology and Validation Baseline

| | | |
| :--- | :--- | :--- |
| FHIR | R4,`4.0.1` | Use an R4 validator and the target profile set. |
| Local IG | `inami.fhir.be.ereferral#3.0.0` | Pin a tested build for reproducible integration tests. |
| DRP parent | `be.smals.fhir.drp-fix`, version`1.1.1`; configured dependency`current$drp-1.1.1-fixed` | The branch alias is mutable. Record the resolved package version, build date and package checksum used for testing. |
| Belgian dependencies | Core`2.2.0`, Core Clinical`1.3.0`, INFSEC`1.3.0` | Keep validator dependencies aligned with the package under test. |
| Requested diagnostic-imaging procedure | Current profile has a required binding to the SNOMED-based local procedure ValueSet. | The presence of PSS/QSI or hybrid artefacts in the package does not itself permit PSS/QSI codes in`ServiceRequest.code`. |
| Patient-condition indication | Preferred binding plus local constraints in the diagnostic-imaging profile. | Review both the binding and applicable invariants; do not assume the preferred binding overrides a stricter invariant. |
| SNOMED edition | Must match the coded content and the terminology service used by the target environment. | An international-edition validation failure does not alone establish that a Belgian-extension code is invalid. Confirm edition/version support before changing codes. |
| Demonstrative terminology | The homepage disclaimer distinguishes example artefacts from the future operational terminology package. | Package conformance is not evidence that every coded service is operationally supported by the API or reimbursable. |

Do not silently remove or replace clinical codes to eliminate QA errors. Confirm the intended edition, release and source mapping first. The ten [PSS radiology scenarios](artifacts.md) are illustrative inputs, not evidence that every code combination is accepted by the deployed backend.

### Regression Test Checklist

| | |
| :--- | :--- |
| Exact legacy profile mappings | Test each of the three configured DRP sources and the corresponding eReferral target. Test an unconfigured URL separately; it must not be assumed to receive the same rewrite. |
| Required elements | Validate representative nursing, Annex 81 and imaging fixtures. Include omitted template category, absent reason and excessive reason cardinality as negative profile tests. |
| Track versus priority | Cover all three tracks independently of`priority`; test an urgent request without urgency justification. |
| Ambulatory removal | Cover the documented`READY`/`IN_PROGRESS`prescription and`ready`/`in-progress`task cases, then read back the referral task and assignments. |
| Other-track removal | Verify rejection on inpatient and urgency tracks; capture the actual OperationOutcome and applicable error-code entry. |
| Urgency completion | Cover the existing-task path from`READY`, the normal in-progress path and valid execution dates. Test POST shortcuts separately. |
| Patient cancellation | Test an authorized patient in`PENDING`and`READY`, a different patient and a state outside those documented permissions. Confirm errors against the operation contract rather than inventing HTTP statuses. |
| Organization and internal professional | Exercise the organization-scoped actor reference, parent organization task and access checks; include an incoherent`basedOn`reference. |
| Privacy | Verify pseudonymized identifiers, encrypted free text and matching key references; never substitute real patient data into public fixtures. |
| Terminology | Test with the target edition and package versions; distinguish invalid codes from unavailable terminology validation. |
| Retry and concurrent updates | Record behavior when an execution is already completed, an assignment was removed or the resource changes between reads. No new retry/idempotency guarantee is established by this page. |

### Cutover and Open Decisions

1. Agree the environment-specific API release and package baseline with the platform owner.
1. Revalidate stored test fixtures and generated payloads against the target profiles; do not bulk-rewrite historical production resources without an agreed policy.
1. Execute the regression checklist and capture responses and read-back resource states using non-identifying data.
1. Confirm operational terminology support, encrypted-text wire-format consistency and any known validation limitations before sign-off. The current QA includes terminology, extension-context and FHIRPath issues; a generated example is not a compatibility certificate.
1. Agree partner coexistence, rollback and legacy-profile acceptance arrangements. No coexistence duration, production deployment date or automatic redirect policy is promised here.

The future Referral IG migration and new canonical base require their own final mapping and effective release announcement. They must not be treated as prerequisites already effective in 3.0.0.

