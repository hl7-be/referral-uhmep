# Generic Nursing - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Business Field Mappings**](mappings-business.md)
* [**Nursing**](mappings-nursing.md)
* **Generic Nursing**

## Generic Nursing

Prescription type code: `generic-nursing`.

Example: [example-drp-nursing-generic](ServiceRequest-example-drp-nursing-generic.md).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type |   |   |   |
| Discipline |   |   |   |
| Validity period |   |   | Business validity of the prescription. |
| Patient |   |   | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |   |   | Reference to the prescribing practitioner role. |
| Care type | - Medication administration- Respiratory care- Gastrointestinal care- Urogenital care- Catheter care- Wound care- Compression therapy- Other | List |   |
| This field appears when “Care type” = “Other” |   |   |   |
| Other: |   | String | Required in business template. Conditional free text for “other”; must be encrypted with a pseudonymized key. |
| Diagnosis | … | String | Required in business template. Free text diagnosis; must be encrypted with a pseudonymized key. |
| Frequency |   |   | Required in business template. Timing repeat block. |
| - Number of repetitions | … times per | Integer | Number of repetitions per period. |
| - Time unit | - Day- Week- Month | Enum |   |
| Treatment period |   |   | Required in business template. Overall treatment period. |
| - Duration | … | Integer | Duration value. |
| - Time unit | - Day- Week- Month- Year(s) | Enum |   |
| Number of sessions (max) | … | Integer | Required in business template. Total number of planned sessions. |
| Medical reason | … (field becomes mandatory when frequency is more than once per day) | String | Medical reason; coded value when available, otherwise pseudonymized text. |
| Contraindications | … | String | Free text; must be encrypted with a pseudonymized key. |
| General remarks | … | String | Free text; must be encrypted with a pseudonymized key. |
| Medical reason | … | String | Medical reason; coded value when available, otherwise pseudonymized text. |
| Feedback required | - Yes- No | Boolean | Required in business template.`be-ext-feedback-to-prescriber`. |
| Validity start date | Today (default) | Date | Required in business template.`be-ext-validity-period`. |

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "generic-nursing" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type)
* code: `generic-nursing`
* binding: [`be-vs-nursing-prescription-technical-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `9632001`
 |
| Validity period | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18" } } ] }```` |  |
| Patient | `ServiceRequest.subject` | ````{ "subject": { "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } } }```` |  |
| Requester / prescriber | `ServiceRequest.requester` | ````{ "requester": { "reference": "PractitionerRole/72101230445-PHYSICIAN" } }```` |  |
| Care type | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-generic-care-types", "code": "preparation-and-administration-of-medication-for-psychiatric-patient" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-generic-care-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-generic-care-types)
* code: `preparation-and-administration-of-medication-for-psychiatric-patient`
 |
| This field appears when "Care type" = "Other" | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-generic-care-types", "code": "preparation-and-administration-of-medication-for-psychiatric-patient" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-generic-care-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-generic-care-types)
* code: `preparation-and-administration-of-medication-for-psychiatric-patient`
 |
| Other: | `CodeableConcept.text` | ````{ "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}" }```` |  |
| Diagnosis | `ServiceRequest.reasonCode.text` | ````{ "reasonCode": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "404684003" } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `404684003`
 |
| Frequency | `ServiceRequest.occurrenceTiming.repeat` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 4, "system": "http://unitsofmeasure.org", "code": "mo" }, "count": 360, "frequency": 3, "period": 1, "periodUnit": "d" } } }```` | * system: [`http://unitsofmeasure.org`](http://unitsofmeasure.org)
* code: `mo`
 |
| - Number of repetitions | `ServiceRequest.occurrenceTiming.repeat.frequency` | ````{ "occurrenceTiming": { "repeat": { "frequency": 3 } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "periodUnit": "d" } } }```` |  |
| Treatment period | `ServiceRequest.occurrenceTiming.repeat.boundsDuration` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 4, "system": "http://unitsofmeasure.org", "code": "mo" } } } }```` | * system: [`http://unitsofmeasure.org`](http://unitsofmeasure.org)
* code: `mo`
 |
| - Duration | `ServiceRequest.occurrenceTiming.repeat.boundsDuration.value` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 4 } } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "periodUnit": "d" } } }```` |  |
| Number of sessions (max) | `ServiceRequest.occurrenceTiming.repeat.count` | ````{ "occurrenceTiming": { "repeat": { "count": 360 } } }```` |  |
| Medical reason | `ServiceRequest.reasonCode` | ````{ "reasonCode": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "404684003" } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `404684003`
 |
| Contraindications | `ServiceRequest.note[contraindication].text` | ````{ "note": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "contraindication" } ] } } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types)
* code: `contraindication`
 |
| General remarks | `ServiceRequest.note[general-remarks].text` | ````{ "note": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "general-remarks" } ] } } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types)
* code: `general-remarks`
 |
| Medical reason | `ServiceRequest.reasonCode` | ````{ "reasonCode": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "404684003" } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `404684003`
 |
| Feedback required | `ServiceRequest.extension[feedback]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber", "valueBoolean": false } ] }```` |  |
| Validity start date | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18" } } ] }```` |  |

