Profile: BeServiceRequestDiagnosticImaging
Parent: BeReferralServiceRequest
Id: be-referral-servicerequest-diagnosticimaging
Description: "The diagnostic imaging profile. Generic version."
* ^status = #draft

// --------------------------------------------------------
// Contained
// --------------------------------------------------------
* contained 0..2
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained contains
    patient 0..1 MS and
    safetyChecklist 0..1 MS

* contained[patient] only BePatient
* contained[patient] ^short =
    "Patient"
* contained[patient] ^definition =
    "Patient"

* contained[safetyChecklist] only BeImagingAttentionConditionsResponse
* contained[safetyChecklist] ^short =
    "Questionnaire"
* contained[safetyChecklist] ^definition =
    "Questionnaire"

// --------------------------------------------------------
// Extensions
// --------------------------------------------------------
* extension[statusReason] 0..1 MS
* extension contains BeUrgencyJustification named urgencyJustification 0..1 MS

// --------------------------------------------------------
// Categories
// --------------------------------------------------------
* category contains
    track 1..1 MS

* category[discipline].coding.system = $sct (exactly)
* category[discipline].coding.code = #363679005 (exactly)

* category[prescriptionType].coding.code = #diagnostic-imaging-appendix-82 (exactly)

* category[track].coding.system = "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track" (exactly)
* category[track] ^short = "Care setting track (inpatient, ambulatory, urgency)"
* category[track] from be-vs-request-track (required)
* category[discipline].coding.system = $sct (exactly)
* category[discipline].coding.code = #363679005 (exactly)

* category[prescriptionType] = BeCSPrescriptionType#diagnostic-imaging-appendix-82 (exactly)

* category[track] ^short = "Care setting track (inpatient, ambulatory, urgency)"
* category[track] from be-vs-request-track (required)


// --------------------------------------------------------
// Procedure Requested
// --------------------------------------------------------
* code ^binding.description = "Procedure codes for diagnostic imaging service requests."

// --------------------------------------------------------
// Priority and urgency justification
// --------------------------------------------------------
* priority 1..1 MS
* priority from be-vs-imaging-priority (required)
* priority ^short = "Priority of the imaging request (routine or urgent)"

* extension contains BePSSInfo named pssInfo 0..1 MS
* extension[urgencyJustification] ^short = "Justification for the urgency level when priority is elevated"
* extension[urgencyJustification] ^definition =
    "Free-text justification explaining why the imaging request has been assigned an elevated priority."


// --------------------------------------------------------
// 1. Diagnostic hypothesis (CodeableConcept) on reasonCode
// --------------------------------------------------------
* reasonCode 0..1 MS

// --------------------------------------------------------
// SupportingInfo
// --------------------------------------------------------

* supportingInfo MS
* supportingInfo only Reference(
    ImagingStudy or
    DiagnosticReport or
    ServiceRequest or
    Condition or
    Observation or
    BeImagingAttentionConditionsResponse
)
