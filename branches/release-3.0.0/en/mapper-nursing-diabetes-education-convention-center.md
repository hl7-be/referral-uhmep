# Diabetes Education via Convention Centre - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Business Field Mappings**](mappings-business.md)
* [**Nursing**](mappings-nursing.md)
* **Diabetes Education via Convention Centre**

## Diabetes Education via Convention Centre

Prescription type code: `diabetic-education-convention-center`.

Example: [example-drp-nursing-de-convention-center](ServiceRequest-example-drp-nursing-de-convention-center.md).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type |   |   |   |
| Discipline |   |   |   |
| Validity period |   |   | Business validity of the prescription. |
| Patient |   |   | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |   |   | Reference to the prescribing practitioner role. |
| Education type | … | String |   |
| Frequency |   |   | Required in business template. Timing repeat block. |
| - Number of repetitions | … times per | Integer | Number of repetitions per period. |
| - Time unit | - Day- Week- Month | Enum |   |
| Treatment period |   |   | Required in business template. Overall treatment period. |
| - Duration | … | Integer | Duration value. |
| - Time unit | - Day(s)- Week(s)- Month- Year(s) | Enum |   |
| Number of sessions (max) | … | Integer | Required in business template. Total number of planned sessions. |
| General remarks | … | String | Free text; must be encrypted with a pseudonymized key. |
| Feedback required | - Yes- No (par defaut) | Boolean | Required in business template.`be-ext-feedback-to-prescriber`. |
| Prescription validity |   |   | `be-ext-validity-period`. |
| - Start date | Today (default) | Date | Required in business template. Start of prescription validity. |
| - End date | Start date + 1 year (max) | Date | Required in business template. End of prescription validity. |

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "diabetic-education-convention-center" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type)
* code: `diabetic-education-convention-center`
* binding: [`be-vs-nursing-prescription-technical-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `9632001`
 |
| Validity period | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2027-02-18" } } ] }```` |  |
| Patient | `ServiceRequest.subject` | ````{ "subject": { "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } } }```` |  |
| Requester / prescriber | `ServiceRequest.requester` | ````{ "requester": { "reference": "PractitionerRole/72101230445-PHYSICIAN" } }```` |  |
| Education type | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "211141000172109" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `211141000172109`
 |
| Frequency | `ServiceRequest.occurrenceTiming.repeat` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 4, "system": "http://unitsofmeasure.org", "code": "mo" }, "count": 52, "frequency": 3, "period": 1, "periodUnit": "wk" } } }```` | * system: [`http://unitsofmeasure.org`](http://unitsofmeasure.org)
* code: `mo`
 |
| - Number of repetitions | `ServiceRequest.occurrenceTiming.repeat.frequency` | ````{ "occurrenceTiming": { "repeat": { "frequency": 3 } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "periodUnit": "wk" } } }```` |  |
| Treatment period | `ServiceRequest.occurrenceTiming.repeat.boundsDuration` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 4, "system": "http://unitsofmeasure.org", "code": "mo" } } } }```` | * system: [`http://unitsofmeasure.org`](http://unitsofmeasure.org)
* code: `mo`
 |
| - Duration | `ServiceRequest.occurrenceTiming.repeat.boundsDuration.value` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 4 } } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "periodUnit": "wk" } } }```` |  |
| Number of sessions (max) | `ServiceRequest.occurrenceTiming.repeat.count` | ````{ "occurrenceTiming": { "repeat": { "count": 52 } } }```` |  |
| General remarks | `ServiceRequest.note[general-remarks].text` | ````{ "note": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "general-remarks" } ] } } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types)
* code: `general-remarks`
 |
| Feedback required | `ServiceRequest.extension[feedback].valueBoolean` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber", "valueBoolean": false } ] }```` |  |
| Prescription validity | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2027-02-18" } } ] }```` |  |
| - Start date | `ServiceRequest.extension[validity].valuePeriod.start` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2027-02-18" } } ] }```` |  |
| - End date | `ServiceRequest.extension[validity].valuePeriod.end` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2027-02-18" } } ] }```` |  |

