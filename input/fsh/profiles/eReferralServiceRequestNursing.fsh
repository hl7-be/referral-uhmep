Profile: eReferralServiceRequestNursing
Parent: BeReferralServiceRequestNursing
Id: ereferral-servicerequest-nursing
Description: "The nursing profile, generic version. Please note the nursing referral for medication does NOT depend on this generic version but is a FHIR prodfile on a different FHIR resource (MedicationRequest)"

* category[prescriptionType].coding 1..1
* category[prescriptionType] from be-vs-nursing-prescription-technical-type (required)

* occurrence[x] only Timing
* occurrenceTiming.repeat.bounds[x] only Duration
* occurrenceTiming.repeat.count MS
* occurrenceTiming.repeat.frequency MS
* occurrenceTiming.repeat.duration MS
* occurrenceTiming.repeat.durationUnit MS
* occurrenceTiming.repeat.when MS
* occurrenceTiming.repeat.boundsDuration MS
* quantity[x] only Quantity
* quantityQuantity.value MS
* quantityQuantity.code MS
* quantityQuantity.system MS

// --------------------------------------------------------
// Removed attributes
// --------------------------------------------------------
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
* extension[device] 0..0
* contained 0..0
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
* reasonReference 0..0
* bodySite.id 0..0
* note.author[x] 0..0
* note.time 0..0
* extension[latest] 0..0
