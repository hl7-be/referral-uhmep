/*
A patient consults her physician regarding ongoing nutritional issues. The patient is currently receiving parenteral nutrition and reports discomfort and difficulty maintaining adequate intake through the feeding tube. 
After clinical assessment her physician identifies a medical need for continued support with gastrointestinal care. She therefore creates a new digital prescription for generic nursing care; the care type is set to "Gastrointestinal concerns" and the diagnosis is recorded as "Nutritional problems with tube feeding or parenteral nutrition." The physician specifies that nursing care should be provided once per day for a period of one week, with a maximum of seven sessions. Feedback from the nurse is not required. The start date of validity is, by default, set to the current day, but the prescriber can adjust it to a date up to five days before or up to two years after the creation date. The expiration date must be set to at least one day after the start date and no later than two years after the recorded creation date. Once the prescriber has completed all required fields and validated the prescription, it becomes available in the system. 
*/

Instance: example-drp-nursing-generic
InstanceOf: EReferralServiceRequestNursing
Title: "Generic nursing care"
Description: "Example of a generic nursing ServiceRequest.

Inputs and values used in this example:
- Prescription type: generic-nursing
- Care code (SNOMED): 9632001
- Care detail (orderDetail): preparation-and-administration-of-medication-to-psychiatric-patient
- Validity start date: 2026-02-18
- Timing:
  * boundsDuration: 4 months
  * count: 360
  * frequency: 3
  * period: 1 day
- Priority: routine
- Feedback to prescriber: false
- Medical reason (SNOMED): 404684003
- Notes:
  * medical-reason
  * contraindication
  * general-remarks"
Usage: #example




// meta.extension (key pseudonymization)
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
* extension[1].valueBoolean = false

* status = #draft
* intent = #order

// category[0] SNOMED
//* category[discipline] = $sct#9632001
// category[1] prescription type
* category[prescriptionType] = $be-cs-prescription-type#generic-nursing

* priority = #routine

// code
* code.coding[0].system = $sct
* code.coding[0].code = #9632001

// orderDetail
* orderDetail[0].coding[0].system = $be-cs-generic-care-types
* orderDetail[0].coding[0].code = #preparation-and-administration-of-medication-to-psychiatric-patient

// subject.identifier (SSIN pseudonymized)
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
* occurrenceTiming.repeat.boundsDuration.value = 4
* occurrenceTiming.repeat.boundsDuration.system = "http://unitsofmeasure.org"
* occurrenceTiming.repeat.boundsDuration.code = #mo
* occurrenceTiming.repeat.count = 360
* occurrenceTiming.repeat.frequency = 3
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #d

* authoredOn = "2026-02-18T13:54:36+01:00"
* requester = Reference(PractitionerRole/72101230445-PHYSICIAN)

// reasonCode
* reasonCode[0].coding[0].system = $sct
* reasonCode[0].coding[0].code = #404684003
* reasonCode[0].text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
* reasonCode[0].text.extension[0].url = $be-ext-pseudonymization
* reasonCode[0].text.extension[0].extension[0].url = "marker"
* reasonCode[0].text.extension[0].extension[0].valueBoolean = true
* reasonCode[0].text.extension[0].extension[1].url = "format"
* reasonCode[0].text.extension[0].extension[1].valueCode = #encrypted
* reasonCode[0].text.extension[0].extension[2].url = "version"
* reasonCode[0].text.extension[0].extension[2].valuePositiveInt = 1

// note[0] medical-reason
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

// note[1] contraindication
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

// note[2] general-remarks
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
