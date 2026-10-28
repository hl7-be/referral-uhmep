# Diabetes Education within Start Trajectory - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Business Field Mappings**](mappings-business.md)
* [**Nursing**](mappings-nursing.md)
* **Diabetes Education within Start Trajectory**

## Diabetes Education within Start Trajectory

Prescription type code: `diabetic-education-within-start-trajectory`.

Example: [example-drp-nursing-de-within-start-trajectory](ServiceRequest-example-drp-nursing-de-within-start-trajectory.md).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type |   |   |   |
| Discipline |   |   |   |
| Validity period |   |   | Business validity of the prescription. |
| Patient |   |   | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |   |   | Reference to the prescribing practitioner role. |
| Educator type | - Home nurse- Diabetes educator | List |   |
| Session type | - Individual session (30 min)- Group session (2 hours) | Enum | or be-vs-session-type-extended. |
| Number of sessions (max) | - … (max. 4 educational services per year)- (choice from 1 to 4, with 4 as the default value) | Integer | Required in business template. Total number of planned sessions. |
| General remarks | … | String | Free text; must be encrypted with a pseudonymized key. |
| Feedback required | - Yes- No (par defaut) | Boolean | Required in business template.`be-ext-feedback-to-prescriber`. |
| Prescription validity |   |   | `be-ext-validity-period`. |
| - Start date | Today (default, max. January 1 of the next calendar year) | Date | Required in business template. Start of prescription validity. |
| - End date | December 31 20xx (year of the start date) | Date | Required in business template. End of prescription validity. |

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "diabetic-education-within-start-trajectory" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type)
* code: `diabetic-education-within-start-trajectory`
* binding: [`be-vs-nursing-prescription-technical-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `9632001`
 |
| Validity period | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2026-12-31" } } ] }```` |  |
| Patient | `ServiceRequest.subject` | ````{ "subject": { "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } } }```` |  |
| Requester / prescriber | `ServiceRequest.requester` | ````{ "requester": { "reference": "PractitionerRole/72101230445-PHYSICIAN" } }```` |  |
| Educator type | `ServiceRequest.extension[performerType]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-performer-type", "valueCodeableConcept": { "coding": [ { "system": "http://snomed.info/sct", "code": "224543004" } ] } } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `224543004`
 |
| Session type | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "211151000172106" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `211151000172106`
* binding: [`be-vs-session-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-session-type)
 |
| Number of sessions (max) | `ServiceRequest.occurrenceTiming.repeat.count` | ````{ "occurrenceTiming": { "repeat": { "count": 4 } } }```` |  |
| General remarks | `ServiceRequest.note[general-remarks].text` | ````{ "note": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "general-remarks" } ] } } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types)
* code: `general-remarks`
 |
| Feedback required | `ServiceRequest.extension[feedback].valueBoolean` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber", "valueBoolean": false } ] }```` |  |
| Prescription validity | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2026-12-31" } } ] }```` |  |
| - Start date | `ServiceRequest.extension[validity].valuePeriod.start` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2026-12-31" } } ] }```` |  |
| - End date | `ServiceRequest.extension[validity].valuePeriod.end` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2026-12-31" } } ] }```` |  |

