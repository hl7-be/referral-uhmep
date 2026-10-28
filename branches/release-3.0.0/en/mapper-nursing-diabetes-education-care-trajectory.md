# Diabetes Education within Care Trajectory - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Business Field Mappings**](mappings-business.md)
* [**Nursing**](mappings-nursing.md)
* **Diabetes Education within Care Trajectory**

## Diabetes Education within Care Trajectory

Prescription type code: `diabetic-education-within-care-trajectory`.

Example: [example-drp-nursing-de-within-care-trajectory](ServiceRequest-example-drp-nursing-de-within-care-trajectory.md).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type |   |   |   |
| Discipline |   |   |   |
| Validity period |   |   | Business validity of the prescription. |
| Patient |   |   | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |   |   | Reference to the prescribing practitioner role. |
| Recommended education | - Information about the disease and a healthy lifestyle- Follow-up for a patient who does not move to self-management- Start of insulin or GLP-1 agonist treatment- Additional education for HbA1c > 7.5- Additional education when moving from 1 to 2 injections- Education for patient on oral treatment- Educational material- Use of blood glucose meter | Enum |   |
| This field appears when “Recommended education” = “Use of blood glucose meter” |   |   |   |
| Educator type | - Nurse- Diabetes educator | List |   |
| Session type | - Individual session (30 min)- Group session (2 hours)- Combination | Enum | or be-vs-session-type-extended. |
| This field appears when “Session type” = “Individual session (30 min)” |   |   |   |
| Number of sessions (max) | - First five sessions- Five additional sessions | Enum | Required in business template. Total number of planned sessions. |
| General remarks | … | String | Free text; must be encrypted with a pseudonymized key. |
| Feedback required | - Yes- No | Boolean | Required in business template.`be-ext-feedback-to-prescriber`. |
| Prescription validity |   |   | `be-ext-validity-period`. |
| - Start date | Today (default, max. January 1 of the next calendar year) | Date | Required in business template. Start of prescription validity. |
| - End date | December 31 20xx (year of the start date) | Date | Required in business template. End of prescription validity. |

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "diabetic-education-within-care-trajectory" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type)
* code: `diabetic-education-within-care-trajectory`
* binding: [`be-vs-nursing-prescription-technical-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `9632001`
 |
| Validity period | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2026-12-31" } } ] }```` |  |
| Patient | `ServiceRequest.subject` | ````{ "subject": { "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } } }```` |  |
| Requester / prescriber | `ServiceRequest.requester` | ````{ "requester": { "reference": "PractitionerRole/72101230445-PHYSICIAN" } }```` |  |
| Recommended education | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "370858005" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `370858005`
 |
| This field appears when "Recommended education" = "Use of blood glucose meter" | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "370858005" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `370858005`
 |
| Educator type | `ServiceRequest.extension[performerType]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-performer-type", "valueCodeableConcept": { "coding": [ { "system": "http://snomed.info/sct", "code": "106292003" } ] } } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `106292003`
 |
| Session type | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "370858005" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `370858005`
* binding: [`be-vs-session-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-session-type)
 |
| This field appears when "Session type" = "Individual session (30 min)" | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "370858005" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `370858005`
* binding: [`be-vs-session-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-session-type)
* binding: [`be-vs-session-type-extended`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-session-type-extended)
 |
| Number of sessions (max) | `ServiceRequest.occurrenceTiming.repeat.count` | ````{ "occurrenceTiming": { "repeat": { "count": 5 } } }```` |  |
| General remarks | `ServiceRequest.note[general-remarks].text` | ````{ "note": [ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "general-remarks" } ] } } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types)
* code: `general-remarks`
 |
| Feedback required | `ServiceRequest.extension[feedback]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber", "valueBoolean": false } ] }```` |  |
| Prescription validity | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2026-12-31" } } ] }```` |  |
| - Start date | `ServiceRequest.extension[validity].valuePeriod.start` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2026-12-31" } } ] }```` |  |
| - End date | `ServiceRequest.extension[validity].valuePeriod.end` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2026-12-31" } } ] }```` |  |

