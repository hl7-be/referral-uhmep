Instance: example-prior-drp-clinical-imaging
InstanceOf: EReferralServiceRequestDiagnosticImaging
Title: "Example: Prior diagnostic imaging referral"
Description: "A complete prior diagnostic imaging prescription referenced by the main diagnostic imaging example."
Usage: #example

* meta.extension[0].id = "{{kid}}"
* meta.extension[0].url = $be-ext-key-pseudonymization
* meta.extension[0].extension[0].url = "key"
* meta.extension[0].extension[0].valueString = "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}"
* meta.extension[0].extension[0].valueString.extension[0].url = $be-ext-pseudonymization
* meta.extension[0].extension[0].valueString.extension[0].extension[0].url = "marker"
* meta.extension[0].extension[0].valueString.extension[0].extension[0].valueBoolean = true
* meta.extension[0].extension[0].valueString.extension[0].extension[1].url = "format"
* meta.extension[0].extension[0].valueString.extension[0].extension[1].valueCode = #direct
* meta.extension[0].extension[0].valueString.extension[0].extension[2].url = "version"
* meta.extension[0].extension[0].valueString.extension[0].extension[2].valuePositiveInt = 2

* contained[patient] = prior-imaging-patient
* contained[safetyChecklist] = prior-imaging-attention-qr

* extension[validity].url = $be-ext-validity-period
* extension[validity].valuePeriod.start = "2025-11-18"
* extension[validity].valuePeriod.end = "2026-11-18"

* status = #completed
* intent = #order
* priority = #routine
* category[discipline] = $sct#363679005
* category[prescriptionType] = https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type#diagnostic-imaging-appendix-82
* category[track] = BeCSRequestTrack#ambulatory
* code = $sct#32962002 "Computed tomography of abdomen with contrast (procedure)"
* subject.reference = "#prior-imaging-patient"
* authoredOn = "2025-11-18T09:30:00+01:00"
* requester = Reference(PractitionerRole/72101230445-PHYSICIAN)

* supportingInfo[safetyChecklist].reference = "#prior-imaging-attention-qr"
* supportingInfo[safetyChecklist].extension[role].url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role"
* supportingInfo[safetyChecklist].extension[role].valueCode = #safety-checklist

Instance: prior-imaging-attention-qr
InstanceOf: EReferralImagingAttentionConditionsResponse
Usage: #inline

* questionnaire = "https://www.ehealth.fgov.be/standards/fhir/referral/Questionnaire/be-questionnaire-imaging-attention-conditions"
* status = #completed
* authored = "2025-11-18T09:30:00+01:00"
* item[0].linkId = "pregnancy"
* item[0].text = "Pregnancy"
* item[0].answer[0].valueBoolean = false
* item[1].linkId = "diabetes"
* item[1].text = "Diabetes"
* item[1].answer[0].valueBoolean = false
* item[2].linkId = "allergy-contrast-agent"
* item[2].text = "Allergy to contrast agent"
* item[2].answer[0].valueBoolean = false
* item[3].linkId = "metallic-debris"
* item[3].text = "Metallic debris"
* item[3].answer[0].valueBoolean = false
* item[4].linkId = "renal-dysfunction"
* item[4].text = "Renal dysfunction"
* item[4].answer[0].valueBoolean = false
* item[5].linkId = "none"
* item[5].text = "None"
* item[5].answer[0].valueBoolean = true

Instance: prior-imaging-patient
InstanceOf: BePatient
Usage: #inline

* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"
* identifier[SSIN].use = #official
* identifier[SSIN].system = $be-ns-ssin
* identifier[SSIN].value = "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}"
* identifier[SSIN].value.extension[0].url = $be-ext-pseudonymization
* identifier[SSIN].value.extension[0].extension[0].url = "marker"
* identifier[SSIN].value.extension[0].extension[0].valueBoolean = true
* identifier[SSIN].value.extension[0].extension[1].url = "format"
* identifier[SSIN].value.extension[0].extension[1].valueCode = #direct
* identifier[SSIN].value.extension[0].extension[2].url = "version"
* identifier[SSIN].value.extension[0].extension[2].valuePositiveInt = 2

* extension[genderAtBirth].url = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth"
* extension[genderAtBirth].valueCodeableConcept.coding[0].system = "http://hl7.org/fhir/administrative-gender"
* extension[genderAtBirth].valueCodeableConcept.coding[0].code = #other
* extension[genderAtBirth].valueCodeableConcept.extension[0].url = $be-ext-pseudonymized-content
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[0].url = "encryptedValue"
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[0].valueString = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[1].url = "marker"
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[1].valueBoolean = true
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[2].url = "format"
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[2].valueCode = #encrypted
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[3].url = "version"
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[3].valuePositiveInt = 1

* birthDate.extension[0].url = $be-ext-pseudonymized-content
* birthDate.extension[0].extension[0].url = "encryptedValue"
* birthDate.extension[0].extension[0].valueString = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
* birthDate.extension[0].extension[1].url = "marker"
* birthDate.extension[0].extension[1].valueBoolean = true
* birthDate.extension[0].extension[2].url = "format"
* birthDate.extension[0].extension[2].valueCode = #encrypted
* birthDate.extension[0].extension[3].url = "version"
* birthDate.extension[0].extension[3].valuePositiveInt = 1
