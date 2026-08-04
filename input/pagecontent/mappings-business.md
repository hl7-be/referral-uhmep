This section documents how prescription business fields are represented in FHIR.

Mappings are organized by domain and then by prescription type. Each prescription type page contains a table from business field to FHIR element, with notes about cardinality, coding systems, ValueSets, extensions, and pseudonymization requirements.

### Domains

| Domain | Mapping pages |
| --- | --- |
| Nursing | [Nursing mappings](mappings-nursing.html) |
| Radiology | [Radiology mappings](mappings-radiology.html) |

### Table Format

| Business field | FHIR path | Cardinality | Type / binding | Notes |
| --- | --- | --- | --- | --- |
| Example field | `ServiceRequest.example` | `0..1` | `string` | Describe business rule or implementation note. |
