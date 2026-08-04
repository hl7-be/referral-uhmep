This page defines the terminology used throughout the eReferral Implementation Guide. It focuses on the business concepts, FHIR relationships, and eReferral-specific mechanisms that implementers need to understand.

Support contacts, certificates, required headers, authentication details, and API entry points are documented on the [Technical](technical.html) page.

## Business Terms

| Term | Definition |
| --- | --- |
| Referral prescription | A `ServiceRequest` with `intent = order`, issued by a prescriber to authorize the provision of care, such as wound care, an Annex 81 prescription, or diagnostic imaging. |
| Proposal | A `ServiceRequest` with `intent = proposal`, created by a healthcare professional and submitted to a prescriber for approval or rejection. Once approved, it may result in an effective referral prescription. See [Proposal Life Cycle](topic-prescription-lifecycle-proposal.html). |
| Prescriber | An authorized healthcare professional who issues a referral prescription or approves a proposal for a patient. |
| Treatment provider | A healthcare professional who assesses a proposed treatment or provides the care authorized by a referral prescription. |
| Assignment | The act of assigning a healthcare professional or organization to provide the prescribed care or assess the proposed treatment. It is represented by a `BePerformerTask` or `BeOrganizationTask`. |
| Organization assignment | An assignment represented by a `BeOrganizationTask`, through which a healthcare organization takes responsibility for the prescribed care or the assessment of a proposed treatment. |
| Internal performer | A healthcare professional acting within an organization assignment. The corresponding `BePerformerTask` references its parent `BeOrganizationTask` through `Task.basedOn`. |
| Execution | The performance of the care covered by an assignment. Its current state is represented by `Task.status`, while `Task.executionPeriod` records when execution started and, when applicable, ended. |
| Prescription type | The eReferral category identifying the specific kind of prescription, such as hygienic care, phlebotomy, or diagnostic imaging. It is represented by the prescription-type coding in `ServiceRequest.category`. See [Prescription Templates](topic-prescription-templates.html). |
| Validity period | The eReferral-defined period during which the prescribed care may be performed, expressed through `validity.start` and `validity.end` or `validity.latest`. See [API Integration – Date and Validity Computation](api-integration.html#date-and-validity-computation). |
| Prescription extension | The creation of a new prescription that supersedes and extends a previous prescription. The new `ServiceRequest` references the original one through `ServiceRequest.replaces`. See [Prescription Extension](topic-prescription-lifecycle-replacement.html). |

## FHIR and Technical Terms

| Term | Definition |
| --- | --- |
| DRP | The federal *Digital Referral Profile* Implementation Guide (`hl7.fhir.be.drp`), which defines the parent FHIR profiles further constrained by eReferral. |
| Pseudonymization | The protection mechanism applied to patient-identifying information before transmission. In eReferral, the patient's SSIN is transmitted as a direct pseudonym, while identifying free text is encrypted and represented by an encrypted reference. See [Guidance – Pseudonymization and Free Text](guidance.html#pseudonymization-and-free-text) and [API Integration – Pseudonymization](api-integration.html#pseudonymization). |
| Direct pseudonym | A pseudonymized representation of the patient's SSIN transmitted using the format `urn:be:fgov:pseudo:v2:{SEC1}:{transitInfo}`. |
| Encrypted free text | Free-text content that may contain identifying information, such as notes, reasons, or status descriptions, encrypted through the eHealth Pseudonymization service and represented by a `urn:be:fgov:pseudo-encrypted:v1:{kid}:{encrypted-text}` value. |
| `kid` (key identifier) | The identifier of the encryption key used for encrypted free text. It is carried once in `ServiceRequest.meta` through `be-ext-key-pseudonymization` and must match the `kid` contained in every encrypted free-text reference in the resource. |
| `Task.focus` | The element used by a `BeReferralTask`, `BePerformerTask`, or `BeOrganizationTask` to reference the `ServiceRequest` concerned by the task. In eReferral, tasks link to the prescription through `focus`; `basedOn` is not used for this relationship. |
| `Task.basedOn` | The element used by an internal `BePerformerTask` to reference the parent `BeOrganizationTask` that authorized its creation. This identifies the performer assignment as internal to the organization assignment. |
| `ServiceRequest.replaces` | The element used to link a replacement prescription to the completed or terminated prescription it supersedes. In eReferral, it is used for prescription extension. |
| eReferral error code | An eReferral-specific error code defined in the `urn:uhmep:errors` code system and returned in `OperationOutcome.issue.details`. The codes are documented on the [Error Codes](error-codes.html) page and in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). |
