# eReferral Implementation Guide - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* **eReferral Implementation Guide**

## eReferral Implementation Guide

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/ImplementationGuide/inami.fhir.be.ereferral | *Version*:4.0.0-draft |
| Draft as of 2026-10-29 | *Computable Name*:EReferral |

This implementation guide defines the local eReferral FHIR profiles, examples, mappings, and guidance for referral prescriptions.

**4.0.0-draft: the intended integration target.** This draft describes the FHIR contract and package direction proposed for 4.0, including the published Referral parent and Telemonitoring. It is not a statement of current gateway behavior or production availability. The provisional local canonical base is `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral`. Redirects and runtime acceptance are not implied.

**This documentation and set of artefacts are still undergoing development.**

**The canonical URL and publication address of this Implementation Guide are provisional and subject to change.**

**This Implementation Guide contains only demonstrative examples of terminology resources.**
ValueSets and CodeSystems in this Implementation Guide are provided as examples only. The actual ValueSets and CodeSystems will be made available from a terminology package and can then be consulted in the FHIR terminology ecosystem.

**Technical scope only.**This Implementation Guide has a
**technical purpose**: it helps integrators implement the eReferral FHIR API. It does
**not**define, and is not the guarantor of, the
**business rules**(eligibility, reimbursement, therapeutic-relationship, consent, or other INAMI-defined business logic). For business rules, integrators must always refer to INAMI/RIZIV.

The current scope is focused on:

| | |
| :--- | :--- |
| Nursing | Generic nursing ServiceRequest prescriptions and Annex 81 proposal/approval flows. |
| Radiology | Diagnostic imaging ServiceRequest prescriptions and the imaging attention conditions response. |
| Telemonitoring | Chronic-heart-failure medical prescriptions and repeatable monitoring parameters. |
| Cross-domain | Pseudonymization rules, validity and feedback extensions, requester/subject handling, and example validation. |

### What This IG Contains

| | |
| :--- | :--- |
| [Guidance](guidance.md) | Implementation rules and modelling choices used across the local profiles. |
| [Migration 3.0 to 4.0](migration-3-0-to-4-0.md) | Referral and canonical migration, verified changes and regression checks. |
| [Telemonitoring](domain-telemonitoring.md) | Medical prescription profile, monitoring parameters and implementation boundaries. |
| [API Integration](api-integration.md) | Authentication, identifiers, pseudonymization, validations, and errors. |
| [API Operations](api-operations.md) | Operation-by-operation map, with allowed roles and links to the error-code workbook. |
| [Access Matrix](operation-access-matrix.md) | Roles, INAMI access matrix, suspension, and search-filter access control. |
| [Life Cycle](topic-prescription-lifecycle.md) | Business↔FHIR status mapping, lifecycle and task diagrams, proposal life cycle, and prescription extension. |
| [Prescription Templates](topic-prescription-templates.md) | Technical-identifier catalogue, profiles, and validity rules per template. |
| [Visibility & Blacklisting](topic-visibility-blacklisting.md) | Template visibility, blacklisting behaviour, and cancelled-prescription rules. |
| [Business Field Mappings](mappings-business.md) | Business field to FHIR mappings, grouped by domain and prescription type. |
| [Artifacts](artifacts.md) | Generated FHIR profiles, extensions, ValueSets, CodeSystems, and examples. |
| [Technical](technical.md) | Entry points, required headers, reference documents, support contacts, and certificates. |
| [Glossary](glossary.md) | Terminology used across this IG. |
| [Downloads](downloads.md) | Downloadable packages and generated resources. |
| [Changes](changes.md) | Change notes for this local IG. |

### Profiles

| | |
| :--- | :--- |
| `eReferralServiceRequestNursing` | Generic nursing ServiceRequest prescriptions. |
| `eReferralAnnex81` | Annex 81 nursing medication preparation proposal/approval. |
| `eReferralServiceRequestDiagnosticImaging` | Diagnostic imaging ServiceRequest prescriptions. |
| `eReferralImagingAttentionConditionsResponse` | Contained response for radiology attention/safety checklist information. |
| `eReferralServiceRequestTelemonitoring` | Medical telemonitoring prescription for chronic heart failure. |

### Domain & Mapping

Each domain page introduces its scope and links to the domain specification and FHIR mapping.

| | | |
| :--- | :--- | :--- |
| Nursing | [Nursing Specification](domain-nursing-specification.md) | [Nursing Mapping](mappings-nursing.md) |
| Radiology | [Radiology Specification](domain-radiology-specification.md) | [Radiology Mapping](mappings-radiology.md) |
| Telemonitoring | [Telemonitoring Specification](domain-telemonitoring-specification.md) | [Telemonitoring Mapping](mappings-telemonitoring.md) |

