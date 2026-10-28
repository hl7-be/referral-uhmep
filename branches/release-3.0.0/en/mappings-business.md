# Business Field Mappings - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* **Business Field Mappings**

## Business Field Mappings

This section documents how prescription business fields are represented in FHIR.

Mappings are organized by domain and then by prescription type. Each prescription type page contains a table from business field to FHIR element, with notes about cardinality, coding systems, ValueSets, extensions, and pseudonymization requirements.

### Domains

| | |
| :--- | :--- |
| Nursing | [Nursing mappings](mappings-nursing.md) |
| Radiology | [Radiology mappings](mappings-radiology.md) |

### Table Format

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Example field | `ServiceRequest.example` | `0..1` | `string` | Describe business rule or implementation note. |

