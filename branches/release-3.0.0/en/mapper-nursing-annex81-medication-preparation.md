# Annex 81 Medication Preparation - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Business Field Mappings**](mappings-business.md)
* [**Nursing**](mappings-nursing.md)
* **Annex 81 Medication Preparation**

## Annex 81 Medication Preparation

Prescription type code: `medication-prefill-preparation-appendix-81`.

Example: [example-drp-nursing-med-preparation-appendix-81](ServiceRequest-example-drp-nursing-med-preparation-appendix-81.md).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Profile |   |   |   |
| Intent |   |   | Must be “proposal” at creation of the annex 81. |
| Prescription type |   |   |   |
| Discipline |   |   |   |
| Validity period |   |   | Business validity of the prescription. (Period to at least start the treatment) |
| Patient |   |   | Value must follow pseudonymization rules. |
| Requester / prescriber |   |   | Reference to the prescribing practitioner role. |
| Reason | - States difficulty cooperating with the prescribed treatment- Confusion about the treatment- Behaviour indicating that the patient does not adhere to treatment- Medication taken only partially or not at all- Persistence of complaints- Progression of the disease process- Occurrence of adverse effects- Lack of support from family, friends, or social network | List |   |
| Treatment non-adherence related to: | - Dementia (diagnosis of dementia made by a physician)- Uncorrected visual function deficit- Temporary motor impairment of one or both upper limbs- Permanent motor impairment of one or both upper limbs- Complex medication | List |   |
| Physician comment |   | String | This field appears when the physician approves or rejects the annex 81. |

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Profile | `ServiceRequest.meta.profile` | ````{ "meta": { "profile": [ "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81" ] } }```` |  |
| Intent | `ServiceRequest.intent` | ````{ "intent": "proposal" }```` |  |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "medication-prefill-preparation-appendix-81" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type)
* code: `medication-prefill-preparation-appendix-81`
* binding: [`be-vs-nursing-prescription-technical-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "9632001" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `9632001`
 |
| Validity period | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-02-18", "end": "2027-02-18" } } ] }```` |  |
| Patient | `ServiceRequest.subject` | ````{ "subject": { "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } } }```` |  |
| Requester / prescriber | `ServiceRequest.requester` | ````{ "requester": { "reference": "PractitionerRole/67120919457-NURSE" } }```` |  |
| Reason | `ServiceRequest.reasonCode[nursingDiagnosis]` | ````{ "reasonCode": [ { "coding": [ { "code": "708014007", "system": "http://snomed.info/sct" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `708014007`
* binding: [`be-vs-annex81-nursing-diagnosis`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-annex81-nursing-diagnosis)
 |
| Treatment non-adherence related to: | ServiceRequest.reasonCode[medicalProblem] | ````{ "reasonCode": [ { "coding": [ { "code": "52448006", "system": "http://snomed.info/sct" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `52448006`
* binding: [`be-vs-annex81-medical-problem`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-annex81-medical-problem)
 |
| Physician comment | `ServiceRequest.note[general-remarks].text` | ````{ "note": [ { "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "comment-prescriber" } ] } } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types)
* code: `comment-prescriber`
 |

