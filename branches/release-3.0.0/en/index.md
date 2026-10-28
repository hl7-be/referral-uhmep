# eReferral Implementation Guide - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* **eReferral Implementation Guide**

## eReferral Implementation Guide

| | |
| :--- | :--- |
| *Official URL*:https://www.riziv-inami.be/standards/fhir/ereferral/ImplementationGuide/inami.fhir.be.ereferral | *Version*:3.0.0 |
| Draft as of 2026-09-02 | *Computable Name*:EReferral |

This implementation guide defines the local eReferral FHIR profiles, examples, mappings, and guidance for referral prescriptions.

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
| Cross-domain | Pseudonymization rules, validity and feedback extensions, requester/subject handling, and example validation. |

### What This IG Contains

| | |
| :--- | :--- |
| [Guidance](guidance.md) | Implementation rules and modelling choices used across the local profiles. |
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

### Business Mappings

The IG includes mapping pages generated from the nursing template Excel. These pages map business fields and allowed values to proposed FHIR elements and candidate terminologies.

Start with:

| | |
| :--- | :--- |
| Nursing | [Nursing mappings](mappings-nursing.md) |
| Radiology | [Radiology mappings](mappings-radiology.md) |

Terminology notes in the mapping pages are intentionally conservative. Some Excel value lists predate the current ValueSets and may require reconciliation before being treated as normative coded values.

