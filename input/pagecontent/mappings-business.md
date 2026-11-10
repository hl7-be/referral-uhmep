This section groups each domain's specification and FHIR mappings. Mapping pages are organized by prescription type and relate business fields to FHIR elements, terminology, extensions and pseudonymization requirements.

### Domains

| Domain | Specification | Mapping |
| --- | --- | --- |
| Nursing | [Nursing Specification](domain-nursing-specification.html) | [Nursing Mapping](mappings-nursing.html) |
| Radiology | [Radiology Specification](domain-radiology-specification.html) | [Radiology Mapping](mappings-radiology.html) |
| Telemonitoring | [Telemonitoring Specification](domain-telemonitoring-specification.html) | [Telemonitoring Mapping](mappings-telemonitoring.html) |

### Table Format

| Business field | FHIR path | Cardinality | Type / binding | Notes |
| --- | --- | --- | --- | --- |
| Example field | `ServiceRequest.example` | `0..1` | `string` | Describe business rule or implementation note. |
