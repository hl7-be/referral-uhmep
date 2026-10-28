Instance: example-pss-radiology-scenario-05
InstanceOf: EReferralServiceRequestDiagnosticImaging
Title: "PSS radiology scenario 05"
Description: "Example of a diagnostic imaging prescription.

Inputs and values used in this example:
- Patient: Amhet Dine El Ottomani, male, 25 years old
- Indication: tongue weakness with no other focal neurological deficits
- Selected examination: MRI of the head with and without contrast
- Procedure code (SNOMED): 432874000, using the Excel mapping for MR head wo/w IV contrast
- Predefined examination: none
- Clinical context from Excel: recent tongue weakness; assess dysarthria, dysphagia, tongue deviation, atrophy and fasciculations; no known neurological disease, recent trauma or surgery, stroke, TIA, neuromuscular disease, head or neck cancer, radiation or known allergies

Fictitious completions (not specified in Excel): date of birth 2001-04-12, PSS identifier PSS-RAD-005, prescription and validity dates, requester, ambulatory track and routine priority; no implants, diabetes, metallic debris or renal dysfunction and no other safety concern.
Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx, row 518."
Usage: #example
* insert PSSRadiologyBusinessCaseDetails(PSS-RAD-005)
* supportingInfo[patientCondition].extension[patientConditionCodeableConcept].valueCodeableConcept.coding[0] = https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-pss-qsi-indications#3106878 "Tongue weakness"
* contained[patient] = pss-radiology-scenario-05-patient
* contained[safetyChecklist] = pss-radiology-scenario-05-checklist
* extension[validity].url = $be-ext-validity-period
* extension[validity].valuePeriod.start = "2026-09-24"
* extension[validity].valuePeriod.end = "2027-09-24"
* status = #active
* intent = #order
* priority = #routine
* category[discipline] = $sct#363679005
* category[prescriptionType] = https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type#diagnostic-imaging-appendix-82
* category[track] = BeCSRequestTrack#ambulatory
* code = $sct#432874000 "Magnetic resonance imaging of head with contrast (procedure)"
* subject.reference = "#pss-radiology-scenario-05-patient"
* subject.identifier.system = $be-ns-ssin
* subject.identifier.value = "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}"
* authoredOn = "2026-09-24T10:15:00+02:00"
* requester = Reference(PractitionerRole/72101230445-PHYSICIAN)
* reasonCode[0].text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
* reasonCode[0].text.extension[0].url = $be-ext-pseudonymization
* reasonCode[0].text.extension[0].extension[0].url = "marker"
* reasonCode[0].text.extension[0].extension[0].valueBoolean = true
* reasonCode[0].text.extension[0].extension[1].url = "format"
* reasonCode[0].text.extension[0].extension[1].valueCode = #encrypted
* reasonCode[0].text.extension[0].extension[2].url = "version"
* reasonCode[0].text.extension[0].extension[2].valuePositiveInt = 1
* supportingInfo[safetyChecklist].reference = "#pss-radiology-scenario-05-checklist"
* supportingInfo[safetyChecklist].extension[role].url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role"
* supportingInfo[safetyChecklist].extension[role].valueCode = #safety-checklist

Instance: pss-radiology-scenario-05-checklist
InstanceOf: EReferralImagingAttentionConditionsResponse
Usage: #inline
* questionnaire = "https://www.ehealth.fgov.be/standards/fhir/referral/Questionnaire/be-questionnaire-imaging-attention-conditions"
* status = #completed
* authored = "2026-09-24T10:15:00+02:00"
* item[0].linkId = "implants"
* item[0].text = "Implants"
* item[1].linkId = "pregnancy"
* item[1].text = "Pregnancy"
* item[1].answer[0].valueBoolean = false
* item[2].linkId = "diabetes"
* item[2].text = "Diabetes"
* item[2].answer[0].valueBoolean = false
* item[3].linkId = "allergy-contrast-agent"
* item[3].text = "Allergy to contrast agent"
* item[3].answer[0].valueBoolean = false
* item[4].linkId = "metallic-debris"
* item[4].text = "Metallic debris"
* item[4].answer[0].valueBoolean = false
* item[5].linkId = "renal-dysfunction"
* item[5].text = "Renal dysfunction"
* item[5].answer[0].valueBoolean = false
* item[6].linkId = "other"
* item[6].text = "Other"
* item[7].linkId = "none"
* item[7].text = "None"
* item[7].answer[0].valueBoolean = true

Instance: pss-radiology-scenario-05-patient
InstanceOf: BePatient
Usage: #inline
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"
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