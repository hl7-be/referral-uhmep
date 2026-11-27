# Telemonitoring Mapping - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Domain & Mapping**](mappings-business.md)
* [**Telemonitoring**](domain-telemonitoring.md)
* **Telemonitoring Mapping**

## Telemonitoring Mapping

This page groups the business field mappings for telemonitoring prescription types.

| | | |
| :--- | :--- | :--- |
| Chronic heart failure telemonitoring | [Chronic heart failure telemonitoring](mapper-telemonitoring-chronic-heart-failure.md) | [example-drp-telemonitoring-chronic-heart-failure](ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.md) |

The prescription uses a single `ServiceRequest.reasonCode`, fixed to SNOMED CT `48447003` (chronic heart failure). Detailed diagnosis categories and contained Conditions are not used.

**Terminology URL sources used on this page**

| | | |
| :--- | :--- | :--- |
| Official eHealth FHIR publication | `https://www.ehealth.fgov.be/standards/fhir/` | Preferred source for stable published eHealth terminology artifacts. |
| eHealth branch build | `https://build.fhir.org/ig/hl7-be/` | Temporary source for artifacts available only in an eHealth build branch. |
| Local eReferral IG | `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/` | Preferred source when an artifact is defined or duplicated in this eReferral IG. |

### Telemonitoring terminology

| | |
| :--- | :--- |
| [be-vs-telemonitoring-parameter-type](ValueSet-be-vs-telemonitoring-parameter-type.md) | SNOMED CT codes for the monitored clinical parameters configured in the monitoring plan. |
| `be-cs-monitoring-comparator` | Business comparator semantics for threshold and change rules. |
| [be-cs-telemonitoring-completed-status-reason](CodeSystem-be-cs-telemonitoring-completed-status-reason.md) | Status reasons allowed when a telemonitoring prescription is completed. |

