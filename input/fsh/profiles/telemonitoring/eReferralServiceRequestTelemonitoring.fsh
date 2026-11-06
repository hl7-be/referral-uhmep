Profile: eReferralServiceRequestTelemonitoring
Parent: BeReferralServiceRequest
Id: ereferral-servicerequest-telemonitoring
Description: "The telemonitoring profile."
* ^status = #draft

// --------------------------------------------------------
// Extensions
// --------------------------------------------------------
* extension[feedback] 0..0 
* extension[latest] 0..0 
* extension[performerType] 0..0 

* extension[validity] 1..1 MS
* extension[validity].valuePeriod.start 1..1
* extension[validity].valuePeriod.end 1..1

* extension[statusReason] 0..1 MS
* extension[statusReason].valueCodeableConcept from BeVSTelemonitoringCompletedStatusReason (preferred)

* extension contains BeTelemonitoringPlan named monitoringPlan 0..* MS
* extension[monitoringPlan] ^short = "Per-parameter alert thresholds and rate-of-change rules"

// --------------------------------------------------------
// Categories
// --------------------------------------------------------
* category[discipline].coding.system = $sct (exactly)
* category[discipline].coding.code = #394579002 (exactly)


* category[prescriptionType] 1..1
* category[prescriptionType] ^short = "Prescription type for routing and workflow purposes"
* category[prescriptionType].coding.system = "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type" (exactly)
* category[prescriptionType].coding.code = #telemonitoring-chronic-heart-failure (exactly)

* category[prescriptionType] from be-vs-telemonitoring-prescription-technical-type (required)

* code 1..1 MS
* code = $sct#879780004 (exactly)
* code ^short = "Prescribed telemonitoring procedure"

* occurrence[x] only Timing
* occurrenceTiming.repeat.bounds[x] only Duration
* occurrenceTiming.repeat.count MS
* occurrenceTiming.repeat.frequency MS
* occurrenceTiming.repeat.duration MS
* occurrenceTiming.repeat.durationUnit MS
* occurrenceTiming.repeat.when MS
* occurrenceTiming.repeat.boundsDuration MS


// --------------------------------------------------------
// Indication
// --------------------------------------------------------
* reasonCode 1..1 MS
* reasonCode.coding 1..1
* reasonCode.coding.system = $sct (exactly)
* reasonCode.coding.code = #48447003 (exactly)
* reasonCode ^short = "Chronic heart failure"


// Removed attributes
// --------------------------------------------------------
//* supportingInfo[priorResults] 0..0
//* supportingInfo[attentionCondition] 0..0
* implicitRules 0..0
* language 0..0
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
* category[prescriptionType].id 0..0
* category[prescriptionType].extension 0..0
* category[prescriptionType].coding.userSelected 0..0
* orderDetail.id 0..0
* orderDetail.extension 0..0
* orderDetail.coding.userSelected 0..0
* quantityQuantity.id 0..0
* quantityQuantity.extension 0..0
* quantityQuantity.comparator 0..0
* encounter 0..0
* orderDetail 0..0
* quantity[x] 0..0
* occurrenceTiming.id 0..0
* occurrenceTiming.extension 0..0
* occurrenceTiming.event 0..0
* occurrenceTiming.modifierExtension 0..0
* occurrenceTiming.code 0..0
* occurrenceTiming.repeat.offset 0..0
* occurrenceTiming.repeat.countMax 0..0
* occurrenceTiming.repeat.durationMax 0..0
* occurrenceTiming.repeat.frequencyMax 0..0
* occurrenceTiming.repeat.periodMax 0..0
* occurrenceTiming.repeat.dayOfWeek 0..0
* occurrenceTiming.repeat.timeOfDay 0..0
* extension[device] 0..0
* extension[performerType] 0..0
