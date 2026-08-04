This page catalogues the prescription **templates** supported by eReferral, the technical
identifier used to recognize each one, the FHIR profile to use, and the template-dependent
validity rules. Templates follow INAMI's referral-prescription requirements and must be known to
eReferral; an unknown template is rejected.

Integrators are responsible for using the right profile for the prescription they want to create.

### Template Identification

The template is identified by a technical identifier carried in `ServiceRequest.category`
(slice `prescriptionType`, or `annex81TechnicalType` for Annex 81). This identifier
**must always be provided at creation**. Its code system is:

```text
https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type
```

### Technical Identifier Catalogue

| Technical identifier | Prescription type |
| --- | --- |
| `hygienic-care` | Hygienic care |
| `bloodletting` | Bloodletting |
| `chronic-dialysis` | Chronic home dialysis |
| `diabetic-education-within-care-trajectory` | Diabetes education within a care trajectory |
| `diabetic-education-within-start-trajectory` | Diabetes education within a start trajectory |
| `diabetic-education-without-care-trajectory` | Diabetes education for patients without a trajectory |
| `diabetic-education-convention-center` | Diabetes education within a convention centre |
| `glycemic-test` | Glycemic control with glucometer |
| `medication-prefill-preparation-appendix-81` | Preparing medication (Appendix 81) |
| `medication-prefill-preparation-not-refunded` | Preparation of medicines (not refunded) |
| `parameters` | Measurement of parameters |
| `sampling` | Sample collection |
| `generic-nursing` | Generic nursing care |
| `diagnostic-imaging-appendix-82` | Diagnostic imaging (Appendix 82) |

### Profiles per Domain

| Domain | Template(s) | FHIR profile |
| --- | --- | --- |
| Nursing prescriptions | Hygienic care, Bloodletting, Chronic home dialysis, all Diabetes education variants, Glycemic control, Preparation of medicines (not refunded), Measurement of parameters, Sample collection, Generic nursing care | `eReferralServiceRequestNursing` |
| Annex 81 (proposal) | Preparing medication (Appendix 81) | `eReferralAnnex81` |
| Radiology | Diagnostic imaging (Appendix 82) | `eReferralServiceRequestDiagnosticImaging` |

`generic-nursing` serves as a placeholder for the remaining templates not yet implemented on
eReferral.

The per-template business field mappings (with the concrete `code`, `orderDetail`, and
`category` codings for each type) are documented on the
[Business Field Mappings](mappings-business.html) pages.

### Coding Examples

**Nursing** — "Diabetes education via convention center" as `eReferralServiceRequestNursing`:

| Element | Code | System |
| --- | --- | --- |
| `code` | `385805005` | `http://snomed.info/sct` |
| `orderDetail` | `211141000172109` | `http://snomed.info/sct` |
| `category[discipline]` | `9632001` | `http://snomed.info/sct` |
| `category[prescriptionType]` | `diabetic-education-convention-center` | `…/be-cs-prescription-type` |

**Annex 81** — as `eReferralAnnex81`:

| Element | Code | System |
| --- | --- | --- |
| `code` | `385796006` | `http://snomed.info/sct` |
| `category[discipline]` | `9632001` | `http://snomed.info/sct` |
| `category[annex81TechnicalType]` | `medication-prefill-preparation-appendix-81` | `…/be-cs-prescription-type` |

**Radiology** — as `eReferralServiceRequestDiagnosticImaging`:

| Element | Code | System |
| --- | --- | --- |
| `code` | `116152004` (example) | `http://snomed.info/sct` |
| `category[discipline]` | `363679005` | `http://snomed.info/sct` |
| `category[prescriptionType]` | `diagnostic-imaging-appendix-82` | `…/be-cs-prescription-type` |

The `category[prescriptionType]` (or `annex81TechnicalType`) is what defines the template of the
resource.

### Validity-End Rules per Template

The maximum allowed `validity.end` depends on the template type:

| Template family | Maximum `validity.end` | Examples |
| --- | --- | --- |
| Standard nursing | `validity.start` + 2 years − 1 day | Hygienic care, Parameters, Sampling |
| 1-year templates | `validity.start` + 1 year exact | Annex 81, Diabetes education via convention centre, Medication prefill |
| End-of-year templates | 31 December of the `validity.start` year | Diabetes education with care path / model of care |

These validity rules and the related execution-date logic are consolidated in
[API Integration – Date and Validity Computation](api-integration.html#date-and-validity-computation).

For the first nursing iteration, the `TreatmentValidityEndDate` (`extension[latest]`) is computed
and locked by the backend and cannot be submitted by the prescriber (see
[API Integration – Date and Validity Computation](api-integration.html#date-and-validity-computation)).
