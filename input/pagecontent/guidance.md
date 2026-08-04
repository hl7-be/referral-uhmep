This page describes the modelling rules used by the local eReferral referral profiles.

### General Principles

eReferral referral prescriptions are represented primarily as FHIR `ServiceRequest` resources. Each prescription profile constrains a parent Belgian DRP profile and adds eReferral-specific rules for contained resources, pseudonymization, supporting information, and removed fields.

Business-facing field mappings are documented separately in [Business Field Mappings](mappings-business.html). Those pages are useful when implementing screens or APIs from prescription templates.

### Must Support

Fields marked as Must Support shall not be ignored by receiving systems. This does not mean the sender must always populate the field, but if the business information is available, the sender should provide it according to the profile.

When a coded value cannot safely or accurately represent the business information, the profile usually allows a text representation. Patient-specific free text must follow the pseudonymization rules described below.

### Pseudonymization and Free Text

Several fields can contain patient-specific free text, such as:

| Business content | Typical FHIR location |
| --- | --- |
| Reason or diagnosis text | `ServiceRequest.reasonCode.text` |
| Note text | `ServiceRequest.note.text` |
| Status reason text | `request-statusReason.valueCodeableConcept.text` |
| Urgency justification | `be-ext-urgency-justification.valueString` |
| Patient condition text in radiology | `supportingInfo[patientCondition].extension[patientConditionCodeableConcept].valueCodeableConcept.text` |

When such text is present, it must carry the eHealth pseudonymization extension. The local invariants under `input/fsh/invariants` enforce these rules for the active profiles.

See [API Integration – Pseudonymization](api-integration.html#pseudonymization) for the exact wire
format of pseudonymized identifiers and encrypted free text, and the
[Technical](technical.html#encryption) page for the underlying encryption mechanism.

### Nursing Prescriptions

Generic nursing prescriptions use `eReferralServiceRequestNursing`, which is based on the Belgian DRP nursing ServiceRequest profile.

Key modelling points:

| Concept | FHIR representation |
| --- | --- |
| Nursing discipline | `ServiceRequest.category[discipline]` |
| Prescription type | `ServiceRequest.category[prescriptionType]` |
| Requested care | `ServiceRequest.code` |
| Additional care detail | `ServiceRequest.orderDetail` |
| Validity period | `ServiceRequest.extension[validity].valuePeriod` |
| Timing | `ServiceRequest.occurrenceTiming` |
| Quantity, when relevant | `ServiceRequest.quantityQuantity` |
| Feedback requested | `ServiceRequest.extension[feedback].valueBoolean` |

The nursing business mapping pages provide one page per prescription type, including generic nursing, bloodletting, chronic dialysis, diabetes education variants, glycemic testing, hygienic care, medication prefill preparation, parameters, sampling, and Annex 81 medication preparation.

### Annex 81

Annex 81 is modelled separately with `eReferralAnnex81`. It supports the proposal/approval flow for medication preparation.

The profile constrains the prescription as an Annex 81 request and uses specific reason slices for nursing diagnosis and medical problem information. The workflow is described in [Proposal Life Cycle](topic-prescription-lifecycle-proposal.html), and the business mapping is available on [Annex 81 medication preparation](mapper-nursing-annex81-medication-preparation.html).

### Diagnostic Imaging

Diagnostic imaging prescriptions use `eReferralServiceRequestDiagnosticImaging`.

Key modelling points:

| Concept | FHIR representation |
| --- | --- |
| Contained patient | `ServiceRequest.contained[patient]` and `ServiceRequest.subject` |
| Safety checklist | Contained `eReferralImagingAttentionConditionsResponse` referenced from `supportingInfo[safetyChecklist]` |
| Supporting information role | `supportingInfo.extension[role]` |
| Patient condition indication | `supportingInfo[patientCondition].extension[patientConditionCodeableConcept]` |
| Urgency justification | Required when `ServiceRequest.priority = urgent` |
| Status reason | `request-statusReason` extension |

The profile enforces that the subject references the contained patient and that the safety checklist supportingInfo references the contained questionnaire response. Patient condition information can be coded using the local indication ValueSet or represented as pseudonymized text.

### Supporting Information in Radiology

Radiology supporting information is sliced by role. Each relevant `supportingInfo` entry carries a role extension that identifies the purpose of the entry, such as prior request, safety checklist, or patient condition.

Supporting information should contain only information relevant to the current prescription. It should not be used as a general patient dossier.

### Contained Resources

The diagnostic imaging profile requires contained resources for the patient and safety checklist response. This keeps the prescription self-contained for the information that is required to validate and process the request.

References to contained resources must use local references such as `#patient-id`.

### Terminology

This IG uses terminology from the Belgian DRP, Belgian core packages, SNOMED CT, and local eReferral ValueSets where needed.
