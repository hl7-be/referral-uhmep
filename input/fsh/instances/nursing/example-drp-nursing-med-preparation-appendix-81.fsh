Instance: example-drp-nursing-med-preparation-appendix-81
InstanceOf: EReferralAnnex81
Title: "Annex 81 - Preparing medication (proposal)"
Description: "Example of an Annex 81 ServiceRequest proposal for preparing medication.

Inputs and values used in this example:
- Profile: be-annex-81
- Intent: proposal
- Prescription type: medication-prefill-preparation-appendix-81
- Procedure code (SNOMED): 385796006
- Validity period: 2026-02-18 -> 2027-02-18
- Requester role: nurse (PractitionerRole/67120919457-NURSE)
- Indications (reasonCode - 13 SNOMED codes):
  * 1290542000
  * 129834002
  * 271299001
  * 275928001
  * 359748005
  * 448176008
  * 62014003
  * 708014007
  * 1137439008
  * 211071000172100
  * 211101000172107
  * 397540003
  * 52448006"
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

// top-level extension
* extension[0].url = $be-ext-validity-period
* extension[0].valuePeriod.start = "2026-02-18"
* extension[0].valuePeriod.end = "2027-02-18"

* status = #draft
* intent = #proposal

// category
// category[0] SNOMED
* category[discipline] = $sct#9632001
// category[1] prescription type
// Parent BeAnnex81 only carries the nursing discipline category; the local technical type slice is commented in eReferralAnnex81.
* category[annex81TechnicalType] = $be-cs-prescription-type#medication-prefill-preparation-appendix-81

// code
// Parent BeAnnex81 fixes code to be-cs-temp-requested-service#tmp-prep-x081-2.
* code = $sct#385796006
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

* authoredOn = "2026-02-18T15:03:57+01:00"
* requester = Reference(PractitionerRole/67120919457-NURSE)

// reasonCode: sliced CodeableConcept, each with 1 coding
// --- Nursing diagnosis (8) ---
* reasonCode[0].coding[0] = $sct#275928001
* reasonCode[+].coding[0] = $sct#1290542000
* reasonCode[+].coding[0] = $sct#129834002
* reasonCode[+].coding[0] = $sct#448176008
* reasonCode[+].coding[0] = $sct#359748005
* reasonCode[+].coding[0] = $sct#271299001
* reasonCode[+].coding[0] = $sct#62014003
* reasonCode[+].coding[0] = $sct#708014007

// --- Medical problem (5) ---
* reasonCode[+].coding[0] = $sct#1137439008
* reasonCode[+].coding[0] = $sct#211071000172100
* reasonCode[+].coding[0] = $sct#211101000172107
* reasonCode[+].coding[0] = $sct#397540003
* reasonCode[+].coding[0] = $sct#52448006

