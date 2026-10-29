# Hygienic Care - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Business Field Mappings**](mappings-business.md)
* [**Nursing**](mappings-nursing.md)
* **Hygienic Care**

## Hygienic Care

Prescription type code: `hygienic-care`.

Example: [example-drp-nursing-hygienic-care](ServiceRequest-example-drp-nursing-hygienic-care.md).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type |   |   |   |
| Discipline |   |   |   |
| Validity period |   |   | Business validity of the prescription. |
| Patient |   |   | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |   |   | Reference to the prescribing practitioner role. |
| Frequency |   |   | Required in business template. Timing repeat block. |
| - Number of repetitions | … times per | Integer | Number of repetitions per period. |
| - Time unit | - Day- Week | Enum |   |
| Treatment period |   |   | Required in business template. Overall treatment period. |
| - Duration | … | Integer | Duration value. |
| - Time unit | - Week(s)- Month- Year(s) | Enum |   |
| Number of sessions (max) | … | Integer | Required in business template. Total number of planned sessions. |
| Diagnosis | … | String | Free text diagnosis; must be encrypted with a pseudonymized key. |
| Medical reason | … (field becomes mandatory when frequency is more than once per day) | String | Medical reason; coded value when available, otherwise pseudonymized text. |
| Contraindications | … | String | Free text; must be encrypted with a pseudonymized key. |
| General remarks | … | String | Free text; must be encrypted with a pseudonymized key. |
| Feedback required | - Yes- No (par defaut) | Boolean | Required in business template.`be-ext-feedback-to-prescriber`. |
| Validity start date | Today (default) | Date | Required in business template.`be-ext-validity-period`. |

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "hygienic-care" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/drp-1.1.1-fixed/CodeSystem-be-cs-prescription-type.html)
* code: `hygienic-care`
* binding: [`be-vs-nursing-prescription-technical-type`](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/drp-1.1.1-fixed/ValueSet-be-vs-nursing-prescription-technical-type.html)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] } ] }```` | * system: [`http://snomed.info/sct`](https://www.snomed.org/what-is-snomed-ct)
* code: `9632001`
 |
| Validity period | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18" } } ] }```` |  |
| Patient | `ServiceRequest.subject` | ````{ "subject": { "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } } }```` |  |
| Requester / prescriber | `ServiceRequest.requester` | ````{ "requester": { "reference": "PractitionerRole/72101230445-PHYSICIAN" } }```` |  |
| Frequency | `ServiceRequest.occurrenceTiming.repeat` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 3, "system": "http://unitsofmeasure.org", "code": "mo" }, "count": 39, "frequency": 3, "period": 1, "periodUnit": "wk" } } }```` | * system: [`http://unitsofmeasure.org`](http://unitsofmeasure.org)
* code: `mo`
 |
| - Number of repetitions | `ServiceRequest.occurrenceTiming.repeat.frequency` | ````{ "occurrenceTiming": { "repeat": { "frequency": 3 } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "periodUnit": "wk" } } }```` |  |
| Treatment period | `ServiceRequest.occurrenceTiming.repeat.boundsDuration` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 3, "system": "http://unitsofmeasure.org", "code": "mo" } } } }```` | * system: [`http://unitsofmeasure.org`](http://unitsofmeasure.org)
* code: `mo`
 |
| - Duration | `ServiceRequest.occurrenceTiming.repeat.boundsDuration.value` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 3 } } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "periodUnit": "wk" } } }```` |  |
| Number of sessions (max) | `ServiceRequest.occurrenceTiming.repeat.count` | ````{ "occurrenceTiming": { "repeat": { "count": 39 } } }```` |  |
| Diagnosis | `ServiceRequest.reasonCode.text` | ````{ "reasonCode": [ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}" } ] }```` |  |
| Medical reason | `ServiceRequest.reasonCode` | ````{ "reasonCode": [ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}" } ] }```` |  |
| Contraindications | `ServiceRequest.note[contraindication].text` | ````{ "note": [ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "contraindication" } ] } } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/drp-1.1.1-fixed/CodeSystem-be-cs-note-types.html)
* code: `contraindication`
 |
| General remarks | `ServiceRequest.note[general-remarks].text` | ````{ "note": [ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "general-remarks" } ] } } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/drp-1.1.1-fixed/CodeSystem-be-cs-note-types.html)
* code: `general-remarks`
 |
| Feedback required | `ServiceRequest.extension[feedback].valueBoolean` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber", "valueBoolean": false } ] }```` |  |
| Validity start date | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18" } } ] }```` |  |

