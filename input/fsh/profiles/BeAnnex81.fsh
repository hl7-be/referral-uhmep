Profile: BeAnnex81
Parent: ServiceRequest
Id: be-annex-81
Description: "Annex81 proposal and approval"

* ^status = #active

// Identifier
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* insert TopLevelIndentifier

// Extensions
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    BeValidityPeriod named validity 1..1 MS and
    BeLatestEndDate named latest 0..1 MS and
    $request-statusReason named statusReason 0..1 MS

* extension[validity] ^short = "Validity period of the prescription"
* extension[latest] ^short = "Request must be executed before"

* extension[statusReason].valueCodeableConcept 1..1
* extension[statusReason].valueCodeableConcept from BeVSPrescriptionStatusReason (preferred)
* extension[statusReason].valueCodeableConcept ^binding.description = "Status reason for the prescription."

// Category
* category 1..* MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.ordered = false
* category ^slicing.description = "Slice to allow profile type category and additional use-case specific categories"


* category contains
    discipline 1..1 MS and
    annex81TechnicalType 0..1 MS
    
* category[discipline] from be-vs-categories-of-care (preferred)
* category[discipline].coding 1..1
* category[discipline].coding.system = $sct (exactly)
* category[discipline].coding.code = #9632001 (exactly)
* category[discipline].coding.version 0..1
* category[discipline] ^short = "Category that identifies nursing care"

* category[annex81TechnicalType] from be-vs-annex81-technical-type (required)
* category[annex81TechnicalType].coding 1..1
* category[annex81TechnicalType].coding.system = $be-cs-prescription-type (exactly)
* category[annex81TechnicalType].coding.code = #medication-prefill-preparation-appendix-81 (exactly)
* category[annex81TechnicalType] ^short = "Technical type for Annex 81 prescriptions"

// Requested service
* code 1..1 MS
* code.coding 1..1
* code.coding.system 1..1
* code.coding.system = $sct (exactly)
* code.coding.code 1..1
* code.coding.code = #385796006 (exactly)
* code.coding.version 0..1

// Reason codes
* reasonCode 1..* MS

// Workflow / references
* basedOn MS
* basedOn only Reference(BeAnnex81)

* authoredOn 1.. MS
* authoredOn obeys be-inv-long-date

* occurrence[x] only Timing
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #wk

* requester 1..1 MS
* requester only Reference(BePractitionerRole)

* subject MS
* status MS
* intent MS

// Notes
* note MS
* note only BeCodedAnnotation
* note.extension[https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept].valueCodeableConcept from be-vs-note-type (preferred)

* obeys be-inv-annex-81-based-on