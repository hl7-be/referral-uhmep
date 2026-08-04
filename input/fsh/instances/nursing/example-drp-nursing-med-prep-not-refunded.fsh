Instance: example-drp-nursing-med-prep-not-refunded
InstanceOf: eReferralServiceRequestNursing
Title: "Preparation of medicines (not refunded)"
Description: "Example of non-reimbursed medication prefill preparation.

Inputs and values used in this example:
- Prescription type: medication-preparation-not-refunded
- Procedure code (SNOMED): 385796006
- Validity period: 2026-02-18 -> 2027-02-18
- Timing:
  * frequency: 3
  * period: 1 week
- Medical reason (SNOMED): 404684003
- Notes:
  * contraindication
  * general-remarks"
Usage: #example




// meta.extension: be-ext-key-pseudonymization
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

// top-level extensions
* extension[0].url = $be-ext-validity-period
* extension[0].valuePeriod.start = "2026-02-18"
* extension[0].valuePeriod.end = "2027-02-18"

* status = #draft
* intent = #order

// category
// category[0] SNOMED
//* category[discipline] = $sct#9632001
// category[1] prescription type
* category[prescriptionType] = $be-cs-prescription-type#medication-prefill-preparation-not-refunded

* priority = #routine

// code
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #385796006
* code.text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-code}}"
* code.text.extension[0].url = $be-ext-pseudonymization
* code.text.extension[0].extension[0].url = "marker"
* code.text.extension[0].extension[0].valueBoolean = true
* code.text.extension[0].extension[1].url = "format"
* code.text.extension[0].extension[1].valueCode = #encrypted
* code.text.extension[0].extension[2].url = "version"
* code.text.extension[0].extension[2].valuePositiveInt = 1

// subject.identifier
* subject.identifier.use = #official
* subject.identifier.system = $be-ns-ssin
* subject.identifier.value = "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}"
* subject.identifier.value.extension[0].url = $be-ext-pseudonymization
* subject.identifier.value.extension[0].extension[0].url = "marker"
* subject.identifier.value.extension[0].extension[0].valueBoolean = true
* subject.identifier.value.extension[0].extension[1].url = "format"
* subject.identifier.value.extension[0].extension[1].valueCode = #direct
* subject.identifier.value.extension[0].extension[2].url = "version"
* subject.identifier.value.extension[0].extension[2].valuePositiveInt = 2

// occurrenceTiming
* occurrenceTiming.repeat.frequency = 3
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #wk

* authoredOn = "2026-02-18T14:18:51+01:00"
* requester = Reference(PractitionerRole/72101230445-PHYSICIAN)

// reasonCode
* reasonCode[0].text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-reason}}"
* reasonCode[0].text.extension[0].url = $be-ext-pseudonymization
* reasonCode[0].text.extension[0].extension[0].url = "marker"
* reasonCode[0].text.extension[0].extension[0].valueBoolean = true
* reasonCode[0].text.extension[0].extension[1].url = "format"
* reasonCode[0].text.extension[0].extension[1].valueCode = #encrypted
* reasonCode[0].text.extension[0].extension[2].url = "version"
* reasonCode[0].text.extension[0].extension[2].valuePositiveInt = 1

// notes (2 entries)
* note[0].extension[0].url = $be-ext-codeable-concept
* note[0].extension[0].valueCodeableConcept.coding[0].system = $be-cs-note-types
* note[0].extension[0].valueCodeableConcept.coding[0].code = #contraindication
* note[0].text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-contraindication}}"
* note[0].text.extension[0].url = $be-ext-pseudonymization
* note[0].text.extension[0].extension[0].url = "marker"
* note[0].text.extension[0].extension[0].valueBoolean = true
* note[0].text.extension[0].extension[1].url = "format"
* note[0].text.extension[0].extension[1].valueCode = #encrypted
* note[0].text.extension[0].extension[2].url = "version"
* note[0].text.extension[0].extension[2].valuePositiveInt = 1

* note[1].extension[0].url = $be-ext-codeable-concept
* note[1].extension[0].valueCodeableConcept.coding[0].system = $be-cs-note-types
* note[1].extension[0].valueCodeableConcept.coding[0].code = #general-remarks
* note[1].text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-general-remarks}}"
* note[1].text.extension[0].url = $be-ext-pseudonymization
* note[1].text.extension[0].extension[0].url = "marker"
* note[1].text.extension[0].extension[0].valueBoolean = true
* note[1].text.extension[0].extension[1].url = "format"
* note[1].text.extension[0].extension[1].valueCode = #encrypted
* note[1].text.extension[0].extension[2].url = "version"
* note[1].text.extension[0].extension[2].valuePositiveInt = 1
