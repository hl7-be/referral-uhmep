Instance: example-drp-clinical-imaging
InstanceOf: eReferralServiceRequestDiagnosticImaging
Title: "Example: Diagnostic imaging referral"
Description: "Example of a diagnostic imaging referral prescription with contained patient and imaging attention questionnaire response."
Usage: #example

* meta.extension[0].id = "{{kid}}"
* meta.extension[0].url = $be-ext-key-pseudonymization
* meta.extension[0].extension[0].url = "key"
* meta.extension[0].extension[0].valueString = "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}"
// _valueString extension: be-ext-pseudonymization (direct v2)
* meta.extension[0].extension[0].valueString.extension[0].url = $be-ext-pseudonymization
* meta.extension[0].extension[0].valueString.extension[0].extension[0].url = "marker"
* meta.extension[0].extension[0].valueString.extension[0].extension[0].valueBoolean = true
* meta.extension[0].extension[0].valueString.extension[0].extension[1].url = "format"
* meta.extension[0].extension[0].valueString.extension[0].extension[1].valueCode = #direct
* meta.extension[0].extension[0].valueString.extension[0].extension[2].url = "version"
* meta.extension[0].extension[0].valueString.extension[0].extension[2].valuePositiveInt = 2

* contained[safetyChecklist] = ci-attention-qr
* contained[patient] = patient

// validity period
* extension[validity].url = $be-ext-validity-period
* extension[validity].valuePeriod.start = "2026-03-03"
* extension[validity].valuePeriod.end = "2027-03-03"

// request-statusReason
* extension[statusReason].url = $request-statusReason
* extension[statusReason].valueCodeableConcept.text = "urn:be:fgov:pseudo:v2:status-reason-radiology-urgent"
* extension[statusReason].valueCodeableConcept.text.extension[0].url = $be-ext-pseudonymization
* extension[statusReason].valueCodeableConcept.text.extension[0].extension[0].url = "marker"
* extension[statusReason].valueCodeableConcept.text.extension[0].extension[0].valueBoolean = true
* extension[statusReason].valueCodeableConcept.text.extension[0].extension[1].url = "format"
* extension[statusReason].valueCodeableConcept.text.extension[0].extension[1].valueCode = #direct
* extension[statusReason].valueCodeableConcept.text.extension[0].extension[2].url = "version"
* extension[statusReason].valueCodeableConcept.text.extension[0].extension[2].valuePositiveInt = 2

// PSS info
* extension[pssInfo].url = "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-pss-info"
* extension[pssInfo].valueIdentifier.system = "https://www.ehealth.fgov.be/standards/fhir/pss/NamingSystem/pss-id"
* extension[pssInfo].valueIdentifier.value = "PSS-DRP-IMG-001"

// urgency justification
* extension[urgencyJustification].url = "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-urgency-justification"
* extension[urgencyJustification].valueString = "urn:be:fgov:pseudo:v2:urgent-ct-after-acute-symptoms"
* extension[urgencyJustification].valueString.extension[0].url = $be-ext-pseudonymization
* extension[urgencyJustification].valueString.extension[0].extension[0].url = "marker"
* extension[urgencyJustification].valueString.extension[0].extension[0].valueBoolean = true
* extension[urgencyJustification].valueString.extension[0].extension[1].url = "format"
* extension[urgencyJustification].valueString.extension[0].extension[1].valueCode = #direct
* extension[urgencyJustification].valueString.extension[0].extension[2].url = "version"
* extension[urgencyJustification].valueString.extension[0].extension[2].valuePositiveInt = 2

* status = #active
* intent = #order
* priority = #urgent

* category[discipline] = $sct#363679005
* category[prescriptionType] = https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type#diagnostic-imaging-appendix-82
* category[track] = BeCSRequestTrack#ambulatory

* code = $sct#77477000
* subject.reference = "#patient"
* subject.identifier.use = #official
* subject.identifier.system = $be-ns-ssin
* subject.identifier.value = "urn:be:fgov:pseudo:v2:79012312345"
* subject.identifier.value.extension[0].url = $be-ext-pseudonymization
* subject.identifier.value.extension[0].extension[0].url = "marker"
* subject.identifier.value.extension[0].extension[0].valueBoolean = true
* subject.identifier.value.extension[0].extension[1].url = "format"
* subject.identifier.value.extension[0].extension[1].valueCode = #direct
* subject.identifier.value.extension[0].extension[2].url = "version"
* subject.identifier.value.extension[0].extension[2].valuePositiveInt = 2
* authoredOn = "2026-03-03T10:15:00+01:00"
* requester = Reference(PractitionerRole/72101230445-PHYSICIAN)

* reasonCode[0].text = "urn:be:fgov:pseudo:v2:suspected-pulmonary-embolism"
* reasonCode[0].text.extension[0].url = $be-ext-pseudonymization
* reasonCode[0].text.extension[0].extension[0].url = "marker"
* reasonCode[0].text.extension[0].extension[0].valueBoolean = true
* reasonCode[0].text.extension[0].extension[1].url = "format"
* reasonCode[0].text.extension[0].extension[1].valueCode = #direct
* reasonCode[0].text.extension[0].extension[2].url = "version"
* reasonCode[0].text.extension[0].extension[2].valuePositiveInt = 2

// --------------------------------------------------------
// supportingInfo[priorRequest] - reference to prior ServiceRequest
// --------------------------------------------------------
* supportingInfo[priorRequest][0].reference = "ServiceRequest/550e8400-e29b-41d4-a716-446655440000"
* supportingInfo[priorRequest][0].extension[role].url = "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role"
* supportingInfo[priorRequest][0].extension[role].valueCode = #prior-request

// --------------------------------------------------------
// supportingInfo[priorRequest] - coded concept only
// --------------------------------------------------------
* supportingInfo[priorRequest][1].extension[role].url = "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role"
* supportingInfo[priorRequest][1].extension[role].valueCode = #prior-request
* supportingInfo[priorRequest][1].extension[priorRequestCodeableConcept].url = $BeDRPCodeableConcept
* supportingInfo[priorRequest][1].extension[priorRequestCodeableConcept].valueCodeableConcept = $sct#77477000

// --------------------------------------------------------
// supportingInfo[patientCondition]
// --------------------------------------------------------
* supportingInfo[patientCondition][0].extension[role].url = "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role"
* supportingInfo[patientCondition][0].extension[role].valueCode = #patient-condition
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].url = $BeDRPCodeableConcept
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.coding[0].system = "https://www.riziv-inami.be/standards/fhir/ereferral/CodeSystem/be-cs-pss-indication"
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.coding[0].code = #2506
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.coding[0].display = "AAA screening, family history of AAA"
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.text = "urn:be:fgov:pseudo:v2:free-text-indication"
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.text.extension[0].url = $be-ext-pseudonymization
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.text.extension[0].extension[0].url = "marker"
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.text.extension[0].extension[0].valueBoolean = true
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.text.extension[0].extension[1].url = "format"
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.text.extension[0].extension[1].valueCode = #direct
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.text.extension[0].extension[2].url = "version"
* supportingInfo[patientCondition][0].extension[patientConditionCodeableConcept].valueCodeableConcept.text.extension[0].extension[2].valuePositiveInt = 2

// --------------------------------------------------------
// supportingInfo[safetyChecklist]
// --------------------------------------------------------
* supportingInfo[safetyChecklist].reference = "#ci-attention-qr"
* supportingInfo[safetyChecklist].extension[role].url = "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role"
* supportingInfo[safetyChecklist].extension[role].valueCode = #safety-checklist

// body site
* bodySite[0].extension[bodyLaterality].url = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality"
* bodySite[0].extension[bodyLaterality].valueCoding = $sct#24028007 "Right"


Instance: ci-attention-qr
InstanceOf: eReferralImagingAttentionConditionsResponse
Usage: #inline

* meta.profile[0] = "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"
* questionnaire = "https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions"
* status = #completed
* authored = "2026-03-03T10:15:00+01:00"

* item[0].linkId = "implants"
* item[0].text = "Implants"
* item[0].answer[0].valueCoding = $sct#40388003
* item[0].answer[0].item[0].linkId = "implants-other"
* item[0].answer[0].item[0].text = "Other implant type"
* item[0].answer[0].item[0].answer[0].valueString = "urn:be:fgov:pseudo:v1:{{kid}}:{{encrypted_cardiac_stent}}"
* item[0].answer[0].item[0].answer[0].valueString.extension[0].url = $be-ext-pseudonymization
* item[0].answer[0].item[0].answer[0].valueString.extension[0].extension[0].url = "marker"
* item[0].answer[0].item[0].answer[0].valueString.extension[0].extension[0].valueBoolean = true
* item[0].answer[0].item[0].answer[0].valueString.extension[0].extension[1].url = "format"
* item[0].answer[0].item[0].answer[0].valueString.extension[0].extension[1].valueCode = #encrypted
* item[0].answer[0].item[0].answer[0].valueString.extension[0].extension[2].url = "version"
* item[0].answer[0].item[0].answer[0].valueString.extension[0].extension[2].valuePositiveInt = 1

* item[1].linkId = "pregnancy"
* item[1].text = "Pregnancy"
* item[1].answer[0].valueBoolean = false

* item[2].linkId = "diabetes"
* item[2].text = "Diabetes"
* item[2].answer[0].valueBoolean = false

* item[3].linkId = "allergy-contrast-agent"
* item[3].text = "Allergy to contrast agent"
* item[3].answer[0].valueBoolean = true

* item[4].linkId = "metallic-debris"
* item[4].text = "Metallic debris"
* item[4].answer[0].valueBoolean = false

* item[5].linkId = "renal-dysfunction"
* item[5].text = "Renal dysfunction"
* item[5].answer[0].valueBoolean = false

* item[6].linkId = "other"
* item[6].text = "Other"
* item[6].answer[0].valueString = "urn:be:fgov:pseudo:v2:claustrophobia-reported"
* item[6].answer[0].valueString.extension[0].url = $be-ext-pseudonymization
* item[6].answer[0].valueString.extension[0].extension[0].url = "marker"
* item[6].answer[0].valueString.extension[0].extension[0].valueBoolean = true
* item[6].answer[0].valueString.extension[0].extension[1].url = "format"
* item[6].answer[0].valueString.extension[0].extension[1].valueCode = #direct
* item[6].answer[0].valueString.extension[0].extension[2].url = "version"
* item[6].answer[0].valueString.extension[0].extension[2].valuePositiveInt = 2

* item[7].linkId = "none"
* item[7].text = "None"
* item[7].answer[0].valueBoolean = false


Instance: patient
InstanceOf: BePatient
Usage: #inline

* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"

* extension[genderAtBirth].url = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth"
* extension[genderAtBirth].valueCodeableConcept.coding[0].system = "http://hl7.org/fhir/administrative-gender"
* extension[genderAtBirth].valueCodeableConcept.coding[0].code = #other
* extension[genderAtBirth].valueCodeableConcept.extension[0].url = $be-ext-pseudonymized-content
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[0].url = "encryptedValue"
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[0].valueString = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted_gender_at_birth}}"
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[0].url = "marker"
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[0].valueBoolean = true
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[1].url = "format"
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[1].valueCode = #encrypted
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[2].url = "version"
* extension[genderAtBirth].valueCodeableConcept.extension[0].extension[2].valuePositiveInt = 1 

* birthDate.extension[0].url = $be-ext-pseudonymized-content
* birthDate.extension[0].extension[0].url = "encryptedValue"
* birthDate.extension[0].extension[0].valueString = "urn:be:fgov:pseudo:v2:{{kid}}:{{encrypted_birth_date}}"
* birthDate.extension[0].extension[1].url = "marker"
* birthDate.extension[0].extension[1].valueBoolean = true
* birthDate.extension[0].extension[2].url = "format"
* birthDate.extension[0].extension[2].valueCode = #direct
* birthDate.extension[0].extension[3].url = "version"
* birthDate.extension[0].extension[3].valuePositiveInt = 2
