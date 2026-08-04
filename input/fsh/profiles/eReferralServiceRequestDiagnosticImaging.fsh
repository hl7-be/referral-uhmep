Profile: eReferralServiceRequestDiagnosticImaging
Parent: BeServiceRequestDiagnosticImaging
Id: ereferral-servicerequest-diagnosticimaging
Description: "The diagnostic imaging profile. eReferral version."
* ^status = #draft

// --------------------------------------------------------
// Contained
// --------------------------------------------------------
* contained 2..2
* contained[patient] 1..1
* contained[safetyChecklist] 1..1
* contained[safetyChecklist] only eReferralImagingAttentionConditionsResponse

//Snomed CT Only
* code from be-vs-diagnostic-imaging-procedure (required)
//Hybrid Snomed CT and PSS/QSI Codes
// code from be-vs-hybrid-diagnostic-imaging-procedure (required)
// PSS/QSI Codes Only
//* code from be-vs-pss-qsi-diagnostic-imaging-procedure (required)

// --------------------------------------------------------
// SupportingInfo slicing eReferral
// --------------------------------------------------------
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path =
    "extension('https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role').value"
* supportingInfo ^slicing.rules = #open

* supportingInfo contains
    priorRequest 0..* MS and
    safetyChecklist 1..1 MS and
    patientCondition 0..* MS
    //priorResults 0..* MS
    //attentionCondition 0..* MS


// --------------------------------------------------------
// Prior request
// --------------------------------------------------------
* supportingInfo[priorRequest] only Reference(ServiceRequest)
* supportingInfo[priorRequest].extension contains
    BeRadiologySupportingInfoRole named role 1..1
* supportingInfo[priorRequest].extension[role].valueCode = #prior-request

* supportingInfo[priorRequest].extension contains
    BeExtCodeableConcept named priorRequestCodeableConcept 0..1 MS
* supportingInfo[priorRequest].extension[priorRequestCodeableConcept].valueCodeableConcept from BeVSImagingModality (required)

// --------------------------------------------------------
// Safety checklist
// --------------------------------------------------------
* supportingInfo[safetyChecklist] only Reference(eReferralImagingAttentionConditionsResponse)
* supportingInfo[safetyChecklist].extension contains
    BeRadiologySupportingInfoRole named role 1..1
* supportingInfo[safetyChecklist].extension[role].valueCode = #safety-checklist

// --------------------------------------------------------
// Patient condition
// --------------------------------------------------------
* supportingInfo[patientCondition] only Reference(Condition)
* supportingInfo[patientCondition].extension contains
    BeRadiologySupportingInfoRole named role 1..1
* supportingInfo[patientCondition].extension[role].valueCode = #patient-condition

* supportingInfo[patientCondition].extension contains
    BeExtCodeableConcept named patientConditionCodeableConcept 0..1 MS
* supportingInfo[patientCondition].extension[patientConditionCodeableConcept].valueCodeableConcept from eReferralVSImagingPatientConditionIndication (preferred)
* supportingInfo[patientCondition].extension[patientConditionCodeableConcept].valueCodeableConcept obeys ereferral-inv-patient-condition-strict
// --------------------------------------------------------
// Removed attributes
// --------------------------------------------------------
//* supportingInfo[priorResults] 0..0
//* supportingInfo[attentionCondition] 0..0
* implicitRules 0..0
* language 0..0
* text 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* requisition 0..0
* doNotPerform 0..0
* asNeeded[x] 0..0
* locationCode 0..0
* locationReference 0..0
* insurance 0..0
* patientInstruction 0..0
* relevantHistory 0..0
* specimen 0..0
* meta.security 0..0
* meta.lastUpdated 0..0
* meta.source 0..0
* meta.tag 0..0
* meta.versionId 0..0
* category[discipline].id 0..0
* category[discipline].extension 0..0
* category[discipline].coding.userSelected 0..0
* orderDetail.id 0..0
* orderDetail.extension 0..0
* orderDetail.coding.userSelected 0..0
* quantityQuantity.id 0..0
* quantityQuantity.extension 0..0
* quantityQuantity.comparator 0..0
* encounter 0..0
* orderDetail 0..0
* quantity[x] 0..0
* occurrence[x] 0..0
* extension[device] 0..0
* extension[performerType] 0..0
* extension[feedback] 0..0
* category[track].id 0..0
* category[track].extension 0..0
* category[track].coding.userSelected 0..0


// --------------------------------------------------------
// Application of invariants
// --------------------------------------------------------
* obeys ereferral-inv-subject-contained
* obeys ereferral-inv-supportingInfo-safetyChecklist-contained
* obeys ereferral-inv-status-reason-text-pseudonymized
* obeys ereferral-inv-urgent-requires-urgency-justification
* obeys ereferral-inv-urgency-justification-value-pseudonymized
* obeys ereferral-inv-patient-condition-concept-text-pseudonymized
* obeys ereferral-inv-patient-condition-code-or-text
* obeys ereferral-inv-contained-patient-birthdate-encrypted
* obeys ereferral-inv-contained-patient-gender-at-birth-encrypted
