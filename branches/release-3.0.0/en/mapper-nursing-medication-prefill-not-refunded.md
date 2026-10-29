# Medication Prefill Preparation Not Refunded - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Business Field Mappings**](mappings-business.md)
* [**Nursing**](mappings-nursing.md)
* **Medication Prefill Preparation Not Refunded**

## Medication Prefill Preparation Not Refunded

Prescription type code: `medication-prefill-preparation-not-refunded`.

Example: [example-drp-nursing-med-prep-not-refunded](ServiceRequest-example-drp-nursing-med-prep-not-refunded.md).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type |   |   |   |
| Discipline |   |   |   |
| Validity period |   |   | Business validity of the prescription. |
| Patient |   |   | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |   |   | Reference to the prescribing practitioner role. |
| Diagnosis | … | String | Required in business template. Free text diagnosis; must be encrypted with a pseudonymized key. |
| Frequency |   |   | Required in business template. Timing repeat block. |
| - Number of repetitions | … times per (default = 1, max. 7) | Integer | Number of repetitions per period. |
| - Time unit | Week | String |   |
| Contraindications | … | String | Free text; must be encrypted with a pseudonymized key. |
| General remarks | … | String | Free text; must be encrypted with a pseudonymized key. |
| Prescription validity |   |   | `be-ext-validity-period`. |
| - Start date | Today (default) | Date | Required in business template. Start of prescription validity. |
| - End date | Start date + 1 year | Date | Required in business template. End of prescription validity. |

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "medication-prefill-preparation-not-refunded" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/drp-1.1.1-fixed/CodeSystem-be-cs-prescription-type.html)
* code: `medication-prefill-preparation-not-refunded`
* binding: [`be-vs-nursing-prescription-technical-type`](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/drp-1.1.1-fixed/ValueSet-be-vs-nursing-prescription-technical-type.html)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] } ] }```` | * system: [`http://snomed.info/sct`](https://www.snomed.org/what-is-snomed-ct)
* code: `9632001`
 |
| Validity period | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2027-02-18" } } ] }```` |  |
| Patient | `ServiceRequest.subject` | ````{ "subject": { "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } } }```` |  |
| Requester / prescriber | `ServiceRequest.requester` | ````{ "requester": { "reference": "PractitionerRole/72101230445-PHYSICIAN" } }```` |  |
| Diagnosis | `ServiceRequest.reasonCode.text` | ````{ "reasonCode": [ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` |  |
| Frequency | `ServiceRequest.occurrenceTiming.repeat` | ````{ "occurrenceTiming": { "repeat": { "frequency": 3, "period": 1, "periodUnit": "wk" } } }```` |  |
| - Number of repetitions | `ServiceRequest.occurrenceTiming.repeat.frequency` | ````{ "occurrenceTiming": { "repeat": { "frequency": 3 } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "periodUnit": "wk" } } }```` |  |
| Contraindications | `ServiceRequest.note[contraindication].text` | ````{ "note": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "contraindication" } ] } } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/drp-1.1.1-fixed/CodeSystem-be-cs-note-types.html)
* code: `contraindication`
 |
| General remarks | `ServiceRequest.note[general-remarks].text` | ````{ "note": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "general-remarks" } ] } } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/drp-1.1.1-fixed/CodeSystem-be-cs-note-types.html)
* code: `general-remarks`
 |
| Prescription validity | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2027-02-18" } } ] }```` |  |
| - Start date | `ServiceRequest.extension[validity].valuePeriod.start` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2027-02-18" } } ] }```` |  |
| - End date | `ServiceRequest.extension[validity].valuePeriod.end` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2027-02-18" } } ] }```` |  |

