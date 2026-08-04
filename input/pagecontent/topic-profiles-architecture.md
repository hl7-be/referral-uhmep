This page explains how profiles are organized in this Implementation Guide and how candidate federal profiles are separated from eReferral-specific API profiles.

The goal is twofold:

- provide a discussion support for FHIR experts and business stakeholders;
- give future implementers a clear view of the concepts, constraints, and responsibilities of each profile.

### Naming Convention

Artifacts are organized around two main profile families.

#### `Be` Profiles

Profiles prefixed with `Be` represent generic or candidate federal profiles. They describe the expected functional model for a given DRP domain without embedding every constraint that is specific to the eReferral API.

These profiles are intended to be discussed, stabilized, and ideally moved into the official DRP Implementation Guide once their content is mature and reusable at federal level.

Examples:
- BeServiceRequestDiagnosticImaging
- BeImagingAttentionConditionsResponse

#### `eReferral` Profiles

Profiles prefixed with `eReferral` represent constraints that are specific to the eReferral FHIR API. They are generally stricter than the corresponding `Be` profiles in order to support rigorous validation of resources received or exposed by the API.

These profiles may:
- forbid elements that must not be exchanged in the eReferral context;
- strengthen cardinalities;
- add invariants;
- enforce confidentiality restrictions;
- define actor-specific technical views.

Examples:
- [eReferralServiceRequestDiagnosticImaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.html)
- [eReferralServiceRequestNursing](StructureDefinition-ereferral-servicerequest-nursing.html)

### Layering Model

The model aims to keep responsibilities clearly separated.

| Layer | Role | Expected stability | Example                                  |
| --- | --- | --- |------------------------------------------|
| FHIR base | Standard FHIR resource | HL7 standard | `ServiceRequest`, `Encounter`, `Consent` |
| DRP / federal | Shared business profile | To be harmonized in the DRP IG | `BeServiceRequestNursing`                |
| eReferral | API and validation profile | Specific to the eReferral implementation | `eReferralServiceRequestNursing`             |

This separation avoids confusing API-specific constraints with federal business rules. It also helps discussions: a constraint can be analyzed as a federal business rule, a eReferral security rule, or a technical exchange rule.

### Design Principles

`Be` profiles should remain generic enough to be reused across the DRP ecosystem. When a rule is strictly tied to eReferral API behavior, it should be carried by a `eReferral` profile instead.

`eReferral` profiles should be strict enough to make incoming resource validation predictable. They may also explicitly document removed elements so that implementers understand what is not expected in exchanges.

