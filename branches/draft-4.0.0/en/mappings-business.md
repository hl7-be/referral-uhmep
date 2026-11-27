# Domain & Mapping - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* **Domain & Mapping**

## Domain & Mapping

This section groups each domain’s specification and FHIR mappings. Mapping pages are organized by prescription type and relate business fields to FHIR elements, terminology, extensions and pseudonymization requirements.

### Domains

| | | |
| :--- | :--- | :--- |
| Nursing | [Nursing Specification](domain-nursing-specification.md) | [Nursing Mapping](mappings-nursing.md) |
| Radiology | [Radiology Specification](domain-radiology-specification.md) | [Radiology Mapping](mappings-radiology.md) |
| Telemonitoring | [Telemonitoring Specification](domain-telemonitoring-specification.md) | [Telemonitoring Mapping](mappings-telemonitoring.md) |

### Table Format

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Example field | `ServiceRequest.example` | `0..1` | `string` | Describe business rule or implementation note. |

