Instance: example-drp-nursing-chronic-dialysis
InstanceOf: eReferralServiceRequestNursing
Title: "Chronic home dialysis"
Description: "Example of chronic home dialysis prescription.

Inputs and values used in this example:
- Prescription type: chronic-dialysis
- Procedure code (SNOMED): 225230008
- Validity start date: 2026-02-18
- Timing:
  * boundsDuration: 2 months
  * count: 9
  * frequency: 1
  * period: 1 week
- Feedback to prescriber: true
- Medical reason (SNOMED): 404684003
- Notes:
  * medical-reason
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

* extension[1].url = $be-ext-feedback-to-prescriber
* extension[1].valueBoolean = true

* status = #draft
* intent = #order

// category
// category[0] SNOMED
//* category[discipline] = $sct#9632001
// category[1] prescription type
* category[prescriptionType] = $be-cs-prescription-type#chronic-dialysis

* priority = #routine

// code
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #225230008
* code.text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
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
* occurrenceTiming.repeat.boundsDuration.value = 2
* occurrenceTiming.repeat.boundsDuration.system = "http://unitsofmeasure.org"
* occurrenceTiming.repeat.boundsDuration.code = #mo
* occurrenceTiming.repeat.count = 9
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #wk

* authoredOn = "2026-02-18T14:44:19+01:00"
* requester = Reference(PractitionerRole/72101230445-PHYSICIAN)

// reasonCode
* reasonCode[0].text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
* reasonCode[0].text.extension[0].url = $be-ext-pseudonymization
* reasonCode[0].text.extension[0].extension[0].url = "marker"
* reasonCode[0].text.extension[0].extension[0].valueBoolean = true
* reasonCode[0].text.extension[0].extension[1].url = "format"
* reasonCode[0].text.extension[0].extension[1].valueCode = #encrypted
* reasonCode[0].text.extension[0].extension[2].url = "version"
* reasonCode[0].text.extension[0].extension[2].valuePositiveInt = 1

// notes (3 entries)
* note[0].extension[0].url = $be-ext-codeable-concept
* note[0].extension[0].valueCodeableConcept.coding[0].system = $be-cs-note-types
* note[0].extension[0].valueCodeableConcept.coding[0].code = #medical-reason
* note[0].text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
* note[0].text.extension[0].url = $be-ext-pseudonymization
* note[0].text.extension[0].extension[0].url = "marker"
* note[0].text.extension[0].extension[0].valueBoolean = true
* note[0].text.extension[0].extension[1].url = "format"
* note[0].text.extension[0].extension[1].valueCode = #encrypted
* note[0].text.extension[0].extension[2].url = "version"
* note[0].text.extension[0].extension[2].valuePositiveInt = 1

* note[1].extension[0].url = $be-ext-codeable-concept
* note[1].extension[0].valueCodeableConcept.coding[0].system = $be-cs-note-types
* note[1].extension[0].valueCodeableConcept.coding[0].code = #contraindication
* note[1].text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
* note[1].text.extension[0].url = $be-ext-pseudonymization
* note[1].text.extension[0].extension[0].url = "marker"
* note[1].text.extension[0].extension[0].valueBoolean = true
* note[1].text.extension[0].extension[1].url = "format"
* note[1].text.extension[0].extension[1].valueCode = #encrypted
* note[1].text.extension[0].extension[2].url = "version"
* note[1].text.extension[0].extension[2].valuePositiveInt = 1

* note[2].extension[0].url = $be-ext-codeable-concept
* note[2].extension[0].valueCodeableConcept.coding[0].system = $be-cs-note-types
* note[2].extension[0].valueCodeableConcept.coding[0].code = #general-remarks
* note[2].text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
* note[2].text.extension[0].url = $be-ext-pseudonymization
* note[2].text.extension[0].extension[0].url = "marker"
* note[2].text.extension[0].extension[0].valueBoolean = true
* note[2].text.extension[0].extension[1].url = "format"
* note[2].text.extension[0].extension[1].valueCode = #encrypted
* note[2].text.extension[0].extension[2].url = "version"
* note[2].text.extension[0].extension[2].valuePositiveInt = 1
