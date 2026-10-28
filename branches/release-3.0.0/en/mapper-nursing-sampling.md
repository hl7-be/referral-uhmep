# Sampling - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Business Field Mappings**](mappings-business.md)
* [**Nursing**](mappings-nursing.md)
* **Sampling**

## Sampling

Prescription type code: `sampling`.

Example: [example-drp-nursing-sampling](ServiceRequest-example-drp-nursing-sampling.md).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type |   |   |   |
| Discipline |   |   |   |
| Validity period |   |   | Business validity of the prescription. |
| Patient |   |   | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |   |   | Reference to the prescribing practitioner role. |
| Sample type | - Sputum- Urine- Blood- Stool- Nasal fluid- Saliva- Other | List |   |
| This field appears when “Sample type” = “Other” |   |   |   |
| Other: | … | String | Required in business template. Conditional free text for “other”; must be encrypted with a pseudonymized key. |
| Body location | - Posterior region of head- Occipital condyle structure- Temporal lobe- … (see list below the table) | List | `ServiceRequest.bodySite`base coding (SNOMED). Compare business values with current ValueSets before finalizing. |
| Body laterality | - Left- Right- Bilateral | List | `ServiceRequest.bodySite.extension:laterality`(`be-ext-laterality`). |
| Body topography | - Top- Bottom- Medial- Lateral- Superior- Inferior- Posterior/rear- Anterior/front- Below- Above- Internal- External | List | `ServiceRequest.bodySite.extension:topography`(`be-ext-body-topography`). Note: this extension’s formal FHIR context does not list`ServiceRequest.bodySite`explicitly (only`Condition`/`Observation`/`DeviceUseStatement`/`Procedure.bodySite`); to be validated against the IG Publisher build. |
| Diagnosis | … | String | Required in business template. Free text diagnosis; must be encrypted with a pseudonymized key. |
| Sampling nature | - Single sampling- Recurring sampling | Enum | Compare business values with current ValueSets before finalizing. |
| These fields appear only when “Sampling nature” = “Recurring sampling” |   |   | No direct mapping inferred automatically from the business label. |
| Frequency |   |   | Required in business template. Timing repeat block. |
| - Number of repetitions | … times per | Integer | Number of repetitions per period. |
| - Time unit | - Day- Week- Month- An | Enum |   |
| Treatment period |   |   | Required in business template. Overall treatment period. |
| - Duration | … | Integer | Duration value. |
| - Time unit | - Day(s)- Week(s)- Month- Year(s) | Enum |   |
| Number of sessions (max) | - …- (if “sampling nature” = “single sampling”, the number of sessions is 1; otherwise, the number of sessions should be calculated automatically from the frequency and treatment period) | Integer | Required in business template. Total number of planned sessions. |
| Medical reason | … (field becomes mandatory when frequency is more than once per day) | String | Medical reason; coded value when available, otherwise pseudonymized text. |
| Contraindications | … | String | Free text; must be encrypted with a pseudonymized key. |
| General remarks | … | String | Free text; must be encrypted with a pseudonymized key. |
| Feedback required | - Yes- No | Boolean | Required in business template.`be-ext-feedback-to-prescriber`. |
| Validity start date | Today (default) | Date | Required in business template.`be-ext-validity-period`. |

Body location values (see SNOMED codes table below): Head, Eye, Ear, Mouth, Nose, External naris, Lip, Cheek, Chest, Abdomen, Entire back, Upper limb, Forearm, Elbow, Hand, Shoulder, Leg, Tibia, Knee, Thigh, Greater trochanter, Fibula, Fibular malleolus structure, Entire calf of leg, Malleolar region, Ankle, Heel, Skin of instep, Foot, Big toe, Toe: 2nd, Toe: 3rd, Toe: 4th, Toe: 5th, Scapula, Ischium, Entire iliac crest, Penis, Vagina, Anus, Forehead, Facial structure, Neck, Thumb, Index finger, Middle finger, Ring finger, Little finger, Hip, Sacrum, Pubis.

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "sampling" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type)
* code: `sampling`
* binding: [`be-vs-nursing-prescription-technical-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `9632001`
 |
| Validity period | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18" } } ] }```` |  |
| Patient | `ServiceRequest.subject` | ````{ "subject": { "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } } }```` |  |
| Requester / prescriber | `ServiceRequest.requester` | ````{ "requester": { "reference": "PractitionerRole/72101230445-PHYSICIAN" } }```` |  |
| Sample type | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "78014005" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `78014005`
* binding: [`be-vs-sample-substance-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-sample-substance-type)
 |
| This field appears when "Sample type" = "Other" | `ServiceRequest.orderDetail` | ````{ "orderDetail": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "78014005" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `78014005`
* binding: [`be-vs-sample-substance-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-sample-substance-type)
 |
| Other: | `CodeableConcept.text` | ````{ "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}" }```` |  |
| Body location | `ServiceRequest.bodySite` | ````{ "bodySite": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "78277001" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `78277001`
 |
| Body laterality | `ServiceRequest.bodySite.extension:laterality` | ````{ "bodySite": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "78277001" } ], "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality", "valueCoding": { "system": "http://snomed.info/sct", "code": "24028007" } } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality`](https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality)
* binding: [`be-vs-laterality`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-laterality) (required)
 |
| Body topography | `ServiceRequest.bodySite.extension:topography` | ````{ "bodySite": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "78277001" } ], "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography", "valueCodeableConcept": { "coding": [ { "system": "http://snomed.info/sct", "code": "255561001" } ] } } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography`](https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography)
* binding: [`be-vs-body-topography`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-topography) (preferred)
* Note: this extension's declared FHIR context does not list `ServiceRequest.bodySite` explicitly (only `Condition`/`Observation`/`DeviceUseStatement`/`Procedure.bodySite`); to be validated against the IG Publisher build.
 |
| Diagnosis | `ServiceRequest.reasonCode.text` | ````{ "reasonCode": [ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` |  |
| Sampling nature | Coded field; mapping to be confirmed |  |  |
| These fields appear only when "Sampling nature" = "Recurring sampling" | To be confirmed |  |  |
| Frequency | `ServiceRequest.occurrenceTiming.repeat` | ````{ "occurrenceTiming": { "repeat": { "count": 1 } } }```` |  |
| - Number of repetitions | `ServiceRequest.occurrenceTiming.repeat.frequency` | ````{ "occurrenceTiming": { "repeat": { "count": 1 } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "count": 1 } } }```` |  |
| Treatment period | `ServiceRequest.occurrenceTiming.repeat.boundsDuration` | ````{ "occurrenceTiming": { "repeat": { "count": 1 } } }```` |  |
| - Duration | `ServiceRequest.occurrenceTiming.repeat.boundsDuration.value` | ````{ "occurrenceTiming": { "repeat": { "count": 1 } } }```` |  |
| - Time unit | `ServiceRequest.occurrenceTiming.repeat.periodUnit` | ````{ "occurrenceTiming": { "repeat": { "count": 1 } } }```` |  |
| Number of sessions (max) | `ServiceRequest.occurrenceTiming.repeat.count` | ````{ "occurrenceTiming": { "repeat": { "count": 1 } } }```` |  |
| Medical reason | `ServiceRequest.reasonCode` | ````{ "reasonCode": [ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` |  |
| Contraindications | `ServiceRequest.note[contraindication].text` | ````{ "note": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "contraindication" } ] } } ], "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types)
* code: `contraindication`
 |
| General remarks | `ServiceRequest.note[general-remarks].text` | ````{ "note": [ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "general-remarks" } ] } } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types)
* code: `general-remarks`
 |
| Feedback required | `ServiceRequest.extension[feedback]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber", "valueBoolean": false } ] }```` |  |
| Validity start date | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18" } } ] }```` |  |

