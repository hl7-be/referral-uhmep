# Nursing Mapping - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Domain & Mapping**](mappings-business.md)
* [**Nursing**](domain-nursing.md)
* **Nursing Mapping**

## Nursing Mapping

This page groups the business field mappings for nursing prescription types.

The [Annex 81 profile](StructureDefinition-ereferral-annex-81.md) binds `category[annex81TechnicalType]` to `be-vs-annex81-technical-type` and `code` to `be-vs-annex81-care-requested`, both with required strength. These bindings make the terminology of the inherited coded constraints explicit; they do not change element cardinalities or establish runtime enforcement.

| | | |
| :--- | :--- | :--- |
| Generic nursing | [Generic nursing](mapper-nursing-generic.md) | [example-drp-nursing-generic](ServiceRequest-example-drp-nursing-generic.md) |
| Bloodletting | [Bloodletting](mapper-nursing-bloodletting.md) | [example-drp-nursing-bloodletting](ServiceRequest-example-drp-nursing-bloodletting.md) |
| Chronic dialysis | [Chronic dialysis](mapper-nursing-chronic-dialysis.md) | [example-drp-nursing-chronic-dialysis](ServiceRequest-example-drp-nursing-chronic-dialysis.md) |
| Diabetes education via convention centre | [Diabetes education via convention centre](mapper-nursing-diabetes-education-convention-center.md) | [example-drp-nursing-de-convention-center](ServiceRequest-example-drp-nursing-de-convention-center.md) |
| Diabetes education within start trajectory | [Diabetes education within start trajectory](mapper-nursing-diabetes-education-start-trajectory.md) | [example-drp-nursing-de-within-start-trajectory](ServiceRequest-example-drp-nursing-de-within-start-trajectory.md) |
| Diabetes education within care trajectory | [Diabetes education within care trajectory](mapper-nursing-diabetes-education-care-trajectory.md) | [example-drp-nursing-de-within-care-trajectory](ServiceRequest-example-drp-nursing-de-within-care-trajectory.md) |
| Diabetes education without trajectory | [Diabetes education without trajectory](mapper-nursing-diabetes-education-without-trajectory.md) | [example-drp-nursing-de-without-care-trajectory](ServiceRequest-example-drp-nursing-de-without-care-trajectory.md) |
| Glycemic test | [Glycemic test](mapper-nursing-glycemic-test.md) | [example-drp-nursing-glycemic-test](ServiceRequest-example-drp-nursing-glycemic-test.md) |
| Hygienic care | [Hygienic care](mapper-nursing-hygienic-care.md) | [example-drp-nursing-hygienic-care](ServiceRequest-example-drp-nursing-hygienic-care.md) |
| Medication prefill preparation not refunded | [Medication prefill preparation not refunded](mapper-nursing-medication-prefill-not-refunded.md) | [example-drp-nursing-med-prep-not-refunded](ServiceRequest-example-drp-nursing-med-prep-not-refunded.md) |
| Parameters | [Parameters](mapper-nursing-parameters.md) | [example-drp-nursing-parameters](ServiceRequest-example-drp-nursing-parameters.md) |
| Sampling | [Sampling](mapper-nursing-sampling.md) | [example-drp-nursing-sampling](ServiceRequest-example-drp-nursing-sampling.md) |
| Annex 81 medication preparation | [Annex 81 medication preparation](mapper-nursing-annex81-medication-preparation.md) | [example-drp-nursing-med-preparation-appendix-81](ServiceRequest-example-drp-nursing-med-preparation-appendix-81.md) |

**Terminology URL sources used on this page**

| | | |
| :--- | :--- | :--- |
| Official eHealth FHIR publication | `https://www.ehealth.fgov.be/standards/fhir/` | Preferred source for stable published eHealth terminology artifacts. |
| eHealth branch build | `https://build.fhir.org/ig/hl7-be/` | Temporary source for artifacts available only in an eHealth build branch. |
| Local eReferral IG | `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/` | Preferred source when an artifact is defined or duplicated in this eReferral IG. |

### Nursing terminology

| | | | |
| :--- | :--- | :--- | :--- |
| [`be-vs-nursing-prescription-technical-type`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-nursing-prescription-technical-type.html) | eHealth branch build | Technical prescription type codes carried in`ServiceRequest.category[prescriptionType]`. | All nursing prescription pages. |
| [`be-vs-nursing-care-requested`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-nursing-care-requested.html) | eHealth branch build | SNOMED CT nursing care requested in`ServiceRequest.code`. | All nursing prescription pages. |
| [`be-cs-generic-care-types`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/CodeSystem-be-cs-generic-care-types.html) | eHealth branch build | Generic nursing care details represented in`ServiceRequest.orderDetail`. | [Generic nursing](mapper-nursing-generic.md). |
| [`be-cs-glycemia-measurement-timing`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/CodeSystem-be-cs-glycemia-measurement-timing.html)/[`be-vs-glycemia-measurement-time`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-glycemia-measurement-time.html) | eHealth branch build | Timing of glycemia measurements. | [Glycemic test](mapper-nursing-glycemic-test.md). |
| [`be-cs-diabetic-education-type`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/CodeSystem-be-cs-diabetic-education-type.html) | eHealth branch build | Diabetes education type and subtype coding. | Diabetes education pages. |
| [`be-vs-session-type`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-session-type.html)/[`be-vs-session-type-extended`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-session-type-extended.html) | eHealth branch build | Session type coding for education activities. | Diabetes education pages. |
| [`be-vs-educator-type`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-educator-type.html) | eHealth branch build | Healthcare professional types involved in education. | Diabetes education pages. |
| [`be-vs-parameter-type`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-parameter-type.html) | eHealth branch build | Clinical parameter / vital sign measured by the nursing care. | [Parameters](mapper-nursing-parameters.md). |
| [`be-vs-sample-substance-type`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-sample-substance-type.html) | eHealth branch build | Sample or substance type for sampling requests. | [Sampling](mapper-nursing-sampling.md). |
| [`be-cs-note-types`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/CodeSystem-be-cs-note-types.html)/[`be-vs-note-type`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-note-type.html) | eHealth branch build | Typed clinical notes such as contraindication, medical reason, and general remarks. | Most nursing prescription pages. |
| [`be-vs-annex81-care-requested`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-annex81-care-requested.html),[`be-vs-annex81-nursing-diagnosis`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-annex81-nursing-diagnosis.html),[`be-vs-annex81-medical-problem`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-annex81-medical-problem.html) | eHealth branch build | Annex 81 care, nursing diagnosis, and medical-problem coding. | [Annex 81 medication preparation](mapper-nursing-annex81-medication-preparation.md). |

