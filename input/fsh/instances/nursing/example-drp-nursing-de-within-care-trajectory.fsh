Instance: example-drp-nursing-de-within-care-trajectory
InstanceOf: EReferralServiceRequestNursing
Title: "Diabetes education within care trajectory"
Description: "Example of diabetes education within an established care pathway.

Inputs and values used in this example:
- Prescription type: diabetic-education-within-care-trajectory
- Education code (SNOMED): 385805005
- Education subtype (SNOMED): 370858005
- Education type: diabetic-education-additional-hba1c
- Session type: group-session
- Performer types (SNOMED):
  * 106292003
  * 224543004
- Validity period: 2026-02-18 -> 2026-12-31
- Number of sessions: 5"
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
* extension[0].valuePeriod.end = "2026-12-31"

* extension[1].url = $be-ext-feedback-to-prescriber
* extension[1].valueBoolean = false

// be-ext-performer-type (x2)
* extension[2].url = $be-ext-performer-type
* extension[2].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* extension[2].valueCodeableConcept.coding[0].code = #106292003

* extension[3].url = $be-ext-performer-type
* extension[3].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* extension[3].valueCodeableConcept.coding[0].code = #224543004

* status = #draft
* intent = #order

// category
// category[0] SNOMED
//* category[discipline] = $sct#9632001
// category[1] prescription type
* category[prescriptionType] = $be-cs-prescription-type#diabetic-education-within-care-trajectory

* priority = #routine

// code
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #385805005
* code.text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
* code.text.extension[0].url = $be-ext-pseudonymization
* code.text.extension[0].extension[0].url = "marker"
* code.text.extension[0].extension[0].valueBoolean = true
* code.text.extension[0].extension[1].url = "format"
* code.text.extension[0].extension[1].valueCode = #encrypted
* code.text.extension[0].extension[2].url = "version"
* code.text.extension[0].extension[2].valuePositiveInt = 1

// orderDetail (3 codings, each as separate CodeableConcept in JSON)
* orderDetail[0].coding[0].system = "http://snomed.info/sct"
* orderDetail[0].coding[0].code = #370858005

* orderDetail[1].coding[0].system = $be-cs-diabetic-education-type
* orderDetail[1].coding[0].code = #diabetic-education-additional-hba1c

* orderDetail[2].coding[0].system = $be-cs-session-type
* orderDetail[2].coding[0].code = #group-session

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
* occurrenceTiming.repeat.count = 5

* authoredOn = "2026-02-18T14:45:43+01:00"
* requester = Reference(PractitionerRole/72101230445-PHYSICIAN)
