# Diagnostic Imaging - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Business Field Mappings**](mappings-business.md)
* [**Radiology**](mappings-radiology.md)
* **Diagnostic Imaging**

## Diagnostic Imaging

Prescription type code: diagnostic imaging prescription type from [`be-vs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-prescription-type).

Example: [example-drp-clinical-imaging](ServiceRequest-example-drp-clinical-imaging.md).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | Required | code | Required imaging prescription type. |
| Discipline | Required | code | Required diagnostic imaging discipline. |
| Track | Required.Possible values:- inpatient- ambulatory- urgency | code | Required request track. |
| Requested imaging | Required | code | Imaging request. |
| Priority | Required | code | Optional request priority. When the value is`urgent`, an urgency justification must also be present. |
| Urgency justification | Required when priority is`urgent`. | String | Value must be encrypted with a pseudonymized key |
| Patient | Required | Reference / Identifier | Contained Patient reference; SSIN identifier must follow pseudonymization rules. |
| Patient birthdate | Required | Date | `Patient.birthDate`must not carry a clear value; the encrypted date is carried in`_birthDate`with`be-ext-pseudonymized-content`. |
| Patient gender at birth | Required | code | The visible code is fixed to administrative gender`other`; the actual value is encrypted in`be-ext-pseudonymized-content`. |
| Additionnal relevant information | Required | Reference | Must reference the contained`eReferralImagingAttentionConditionsResponse`. |
| Patient condition | One or more Patient conditions. Use either an allowed code or encrypted free text in`CodeableConcept.text`. | code |   |
| Prior request | Zero or more prior imaging request references or coded/textual prior-request details. | Reference / code | Captures relevant prior imaging request information. |

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "diagnostic-imaging-appendix-82" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type)
* code: `diagnostic-imaging-appendix-82`
* binding: [`be-vs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-prescription-type)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "code": "363679005", "system": "http://snomed.info/sct" } ] } ] }```` | * system: [`http://snomed.info/sct`](http://snomed.info/sct)
* code: `363679005`
 |
| Track | `ServiceRequest.category[track]` | ````{ "category": [ { "coding": [ { "code": "ambulatory", "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track)
* binding: [`be-vs-request-track`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-request-track)
 |
| Requested imaging | `ServiceRequest.code` | ````{ "code": { "coding": [ { "code": "77477000", "system": "http://snomed.info/sct" } ] } }```` | * binding: [`DiagnosticImagingProcedure`](https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diagnostic-imaging-procedure)
 |
| Priority | `ServiceRequest.priority` | ````{ "priority": "urgent" }```` | * binding: [`ImagingPriority`](https://www.ehealth.fgov.be/standards/fhir/referral/ValueSet/be-vs-imaging-priority)
 |
| Urgency justification | `ServiceRequest.extension[urgencyJustification]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-urgency-justification", "valueString": "urn:be:fgov:pseudo:v1:{{kid}}:{{jwe}}", "_valueString": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` |  |
| Patient | `ServiceRequest.subject.reference` | ````{ "subject": { "reference": "#patient", "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } }, "contained": [ { "id": "patient", "resourceType": "Patient" } ] }```` |  |
| Patient birthdate | `ServiceRequest.contained[Patient].birthDate` | ````{ "contained": [ { "resourceType": "Patient", "id": "patient", "_birthDate": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content", "extension": [ { "url": "encryptedValue", "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}" }, { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] }```` | * The clear `birthDate` value is omitted.
* The encrypted value uses [`be-ext-pseudonymized-content`](https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content).
 |
| Patient gender at birth | `ServiceRequest.contained[Patient].extension[genderAtBirth]` | ````{ "contained": [ { "resourceType": "Patient", "id": "patient", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth", "valueCodeableConcept": { "coding": [ { "system": "http://hl7.org/fhir/administrative-gender", "code": "other" } ], "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content", "extension": [ { "url": "encryptedValue", "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}" }, { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } ] } ] }```` | * extension: [`be-ext-gender-at-birth`](https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth)
* visible coding: `http://hl7.org/fhir/administrative-gender#other`
* The encrypted value uses [`be-ext-pseudonymized-content`](https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content).
 |
| Additionnal relevant information | `ServiceRequest.supportingInfo[safetyChecklist].reference` | ````{ "supportingInfo": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role", "valueCode": "safety-checklist" } ], "reference": "#ci-attention-qr" } ] }```` |  |
| Patient condition | `ServiceRequest.supportingInfo[patientCondition]` | ````{ "supportingInfo": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role", "valueCode": "patient-condition" }, { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-pss-qsi-indications", "code": "2506", "display": "AAA screening, family history of AAA" } ], "text": "urn:be:fgov:pseudo:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-pss-qsi-indications`](CodeSystem-be-cs-pss-qsi-indications.md)
* binding: [`EReferralVSImagingPatientConditionIndication`](ValueSet-ereferral-vs-imaging-patient-condition-indication.md)
 |
| Prior request | `ServiceRequest.supportingInfo[priorRequest]` | ````{ "supportingInfo": [ { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role", "valueCode": "prior-request" } ], "reference": "ServiceRequest/example-prior-drp-clinical-imaging" } ] }```` |  |
| Status reason | `ServiceRequest.extension[request-statusReason]` | ````{ "extension": [ { "url": "http://hl7.org/fhir/StructureDefinition/request-statusReason", "valueCodeableConcept": { "text": "urn:be:fgov:pseudo:v1:{{kid}}:{{jwe}}", "_text": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "encrypted" }, { "url": "version", "valuePositiveInt": 1 } ] } ] } } } ] }```` |  |

