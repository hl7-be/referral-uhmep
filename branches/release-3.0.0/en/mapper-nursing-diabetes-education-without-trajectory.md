# Diabetes Education without Trajectory - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Business Field Mappings**](mappings-business.md)
* [**Nursing**](mappings-nursing.md)
* **Diabetes Education without Trajectory**

## Diabetes Education without Trajectory

Prescription type code: `diabetic-education-without-care-trajectory`.

Example: [example-drp-nursing-de-without-care-trajectory](ServiceRequest-example-drp-nursing-de-without-care-trajectory.md).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type |   |   |   |
| Discipline |   |   |   |
| Validity period |   |   | Business validity of the prescription. |
| Patient |   |   | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |   |   | Reference to the prescribing practitioner role. |
| Education type | - Self-management education- Education for understanding diabetes- Support when self-management is absent- Follow-up after education- Other (not reimbursed) | Enum |   |
| This field appears when “Education type” = “Other (not reimbursed)” |   |   |   |
| Other: | … | String | Required in business template. Conditional free text for “other”; must be encrypted with a pseudonymized key. |
| Frequency |   |   | Timing repeat block. |
| - Number of repetitions | … times per | Integer | Number of repetitions per period. |
| - Time unit | - Day- Week- Month | Enum |   |
| Treatment period |   |   | Overall treatment period. |
| - Duration | … | Integer | Duration value. |
| - Time unit | - Day(s)- Week(s)- Month- Year(s) | Enum |   |
| Number of sessions (max) | … | Integer | Required in business template. Total number of planned sessions. |
| General remarks | … | String | Free text; must be encrypted with a pseudonymized key. |
| Feedback required | - Yes- No (par defaut) | Boolean | Required in business template.`be-ext-feedback-to-prescriber`. |
| Validity start date | Today (default) | Date | Required in business template.`be-ext-validity-period`. |

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "diabetic-education-without-care-trajectory" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type)
* code: `diabetic-education-without-care-trajectory`
* binding: [`be-vs-nursing-prescription-technical-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `9632001`
 |
| Validity period | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18" } } ] }```` |  |
| Patient | `ServiceRequest.subject` | ````{ "subject": { "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } } }```` |  |
| Requester / prescriber | `ServiceRequest.requester` | ````{ "requester": { "reference": "PractitionerRole/72101230445-PHYSICIAN" } }```` |  |
| Education type | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "211161000172108" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `211161000172108`
 |
| This field appears when "Education type" = "Other (not reimbursed)" | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "211161000172108" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `211161000172108`
 |
| Other: | `CodeableConcept.text` | ````{ "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}" }```` |  |
| Frequency | `ServiceRequest.occurrenceTiming.repeat` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 3, "system": "http://unitsofmeasure.org", "code": "wk" }, "count": 21, "frequency": 1, "period": 1, "periodUnit": "d" } } }```` | * system: [`http://unitsofmeasure.org`](http://unitsofmeasure.org)
* code: `wk`
 |
| - Number of repetitions | `ServiceRequest.occurrenceTiming.repeat.frequency` | ````{ "occurrenceTiming": { "repeat": { "frequency": 1 } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "periodUnit": "d" } } }```` |  |
| Treatment period | `ServiceRequest.occurrenceTiming.repeat.boundsDuration` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 3, "system": "http://unitsofmeasure.org", "code": "wk" } } } }```` | * system: [`http://unitsofmeasure.org`](http://unitsofmeasure.org)
* code: `wk`
 |
| - Duration | `ServiceRequest.occurrenceTiming.repeat.boundsDuration.value` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 3 } } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "periodUnit": "d" } } }```` |  |
| Number of sessions (max) | `ServiceRequest.occurrenceTiming.repeat.count` | ````{ "occurrenceTiming": { "repeat": { "count": 21 } } }```` |  |
| General remarks | `ServiceRequest.note[general-remarks].text` | ````{ "note": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "general-remarks" } ] } } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types)
* code: `general-remarks`
 |
| Feedback required | `ServiceRequest.extension[feedback].valueBoolean` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber", "valueBoolean": true } ] }```` |  |
| Validity start date | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18" } } ] }```` |  |

