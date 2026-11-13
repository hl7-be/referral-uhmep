Instance: example-drp-telemonitoring-chronic-heart-failure
InstanceOf: eReferralServiceRequestTelemonitoring
Title: "Example: Telemonitoring prescription for chronic heart failure"
Description: "Example of a medical telemonitoring prescription for chronic heart failure, including patient identity, diagnosis and the monitoring plan. All alert criteria are illustrative and are not clinical guidance."
Usage: #example

* meta.extension[0].id = "{{kid}}"
* meta.extension[0].url = $be-ext-key-pseudonymization
* meta.extension[0].extension[0].url = "key"
* meta.extension[0].extension[0].valueString = "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}"
* meta.extension[0].extension[0].valueString.extension[0].url = $be-ext-pseudonymization
* meta.extension[0].extension[0].valueString.extension[0].extension[0].url = "marker"
* meta.extension[0].extension[0].valueString.extension[0].extension[0].valueBoolean = true
* meta.extension[0].extension[0].valueString.extension[0].extension[1].url = "format"
* meta.extension[0].extension[0].valueString.extension[0].extension[1].valueCode = #direct
* meta.extension[0].extension[0].valueString.extension[0].extension[2].url = "version"
* meta.extension[0].extension[0].valueString.extension[0].extension[2].valuePositiveInt = 2

* extension[validity].url = $be-ext-validity-period
* extension[validity].valuePeriod.start = "2026-05-22"
* extension[validity].valuePeriod.end = "2026-11-22"

// Body weight: alert on increase of 2 kg over 3 days.
* extension[monitoringPlan][0].url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
* extension[monitoringPlan][0].extension[parameter].url = "parameter"
* extension[monitoringPlan][0].extension[parameter].valueCodeableConcept.coding[0] = $sct#27113001 "Body weight (observable entity)"
* extension[monitoringPlan][0].extension[baseline].url = "baseline"
* extension[monitoringPlan][0].extension[baseline].valueReference = Reference(Observation/example-telemonitoring-reference-weight)
* extension[monitoringPlan][0].extension[change][0].url = "change"
* extension[monitoringPlan][0].extension[change][0].valueRatio.numerator.value = 2
* extension[monitoringPlan][0].extension[change][0].valueRatio.numerator.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][0].extension[change][0].valueRatio.numerator.code = #kg
* extension[monitoringPlan][0].extension[change][0].valueRatio.denominator.value = 3
* extension[monitoringPlan][0].extension[change][0].valueRatio.denominator.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][0].extension[change][0].valueRatio.denominator.code = #d
* extension[monitoringPlan][0].extension[change][1].url = "change"
* extension[monitoringPlan][0].extension[change][1].valueRatio.numerator.value = -2
* extension[monitoringPlan][0].extension[change][1].valueRatio.numerator.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][0].extension[change][1].valueRatio.numerator.code = #kg
* extension[monitoringPlan][0].extension[change][1].valueRatio.denominator.value = 3
* extension[monitoringPlan][0].extension[change][1].valueRatio.denominator.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][0].extension[change][1].valueRatio.denominator.code = #d

// Systolic blood pressure: alert threshold.
* extension[monitoringPlan][1].url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
* extension[monitoringPlan][1].extension[parameter].url = "parameter"
* extension[monitoringPlan][1].extension[parameter].valueCodeableConcept.coding[0] = $sct#271649006 "Systolic blood pressure (observable entity)"
* extension[monitoringPlan][1].extension[threshold][0].url = "threshold"
* extension[monitoringPlan][1].extension[threshold][0].extension[range].url = "range"
* extension[monitoringPlan][1].extension[threshold][0].extension[range].valueRange.low.value = 160
* extension[monitoringPlan][1].extension[threshold][0].extension[range].valueRange.low.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][1].extension[threshold][0].extension[range].valueRange.low.code = #mm[Hg]
* extension[monitoringPlan][1].extension[threshold][1].url = "threshold"
* extension[monitoringPlan][1].extension[threshold][1].extension[range].url = "range"
* extension[monitoringPlan][1].extension[threshold][1].extension[range].valueRange.high.value = 90
* extension[monitoringPlan][1].extension[threshold][1].extension[range].valueRange.high.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][1].extension[threshold][1].extension[range].valueRange.high.code = #mm[Hg]

// Diastolic blood pressure: alert threshold.
* extension[monitoringPlan][2].url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
* extension[monitoringPlan][2].extension[parameter].url = "parameter"
* extension[monitoringPlan][2].extension[parameter].valueCodeableConcept.coding[0] = $sct#271650006 "Diastolic blood pressure (observable entity)"
* extension[monitoringPlan][2].extension[threshold][0].url = "threshold"
* extension[monitoringPlan][2].extension[threshold][0].extension[range].url = "range"
* extension[monitoringPlan][2].extension[threshold][0].extension[range].valueRange.low.value = 100
* extension[monitoringPlan][2].extension[threshold][0].extension[range].valueRange.low.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][2].extension[threshold][0].extension[range].valueRange.low.code = #mm[Hg]
* extension[monitoringPlan][2].extension[threshold][1].url = "threshold"
* extension[monitoringPlan][2].extension[threshold][1].extension[range].url = "range"
* extension[monitoringPlan][2].extension[threshold][1].extension[range].valueRange.high.value = 60
* extension[monitoringPlan][2].extension[threshold][1].extension[range].valueRange.high.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][2].extension[threshold][1].extension[range].valueRange.high.code = #mm[Hg]

// Heart rate: alert threshold.
* extension[monitoringPlan][3].url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
* extension[monitoringPlan][3].extension[parameter].url = "parameter"
* extension[monitoringPlan][3].extension[parameter].valueCodeableConcept.coding[0] = $sct#364075005 "Heart rate (observable entity)"
* extension[monitoringPlan][3].extension[threshold][0].url = "threshold"
* extension[monitoringPlan][3].extension[threshold][0].extension[range].url = "range"
* extension[monitoringPlan][3].extension[threshold][0].extension[range].valueRange.low.value = 110
* extension[monitoringPlan][3].extension[threshold][0].extension[range].valueRange.low.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][3].extension[threshold][0].extension[range].valueRange.low.code = #/min
* extension[monitoringPlan][3].extension[threshold][1].url = "threshold"
* extension[monitoringPlan][3].extension[threshold][1].extension[range].url = "range"
* extension[monitoringPlan][3].extension[threshold][1].extension[range].valueRange.high.value = 50
* extension[monitoringPlan][3].extension[threshold][1].extension[range].valueRange.high.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][3].extension[threshold][1].extension[range].valueRange.high.code = #/min

// Pulmonary artery systolic pressure: illustrative alert threshold only.
* extension[monitoringPlan][4].url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
* extension[monitoringPlan][4].extension[parameter].url = "parameter"
* extension[monitoringPlan][4].extension[parameter].valueCodeableConcept.coding[0] = $sct#250768007 "Pulmonary artery systolic pressure (observable entity)"
* extension[monitoringPlan][4].extension[threshold][0].url = "threshold"
* extension[monitoringPlan][4].extension[threshold][0].extension[range].url = "range"
* extension[monitoringPlan][4].extension[threshold][0].extension[range].valueRange.low.value = 50
* extension[monitoringPlan][4].extension[threshold][0].extension[range].valueRange.low.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][4].extension[threshold][0].extension[range].valueRange.low.code = #mm[Hg]
* extension[monitoringPlan][4].extension[threshold][1].url = "threshold"
* extension[monitoringPlan][4].extension[threshold][1].extension[range].url = "range"
* extension[monitoringPlan][4].extension[threshold][1].extension[range].valueRange.high.value = 10
* extension[monitoringPlan][4].extension[threshold][1].extension[range].valueRange.high.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][4].extension[threshold][1].extension[range].valueRange.high.code = #mm[Hg]

// Pulmonary artery diastolic pressure: illustrative alert threshold only.
* extension[monitoringPlan][5].url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
* extension[monitoringPlan][5].extension[parameter].url = "parameter"
* extension[monitoringPlan][5].extension[parameter].valueCodeableConcept.coding[0] = $sct#250769004 "Pulmonary artery diastolic pressure (observable entity)"
* extension[monitoringPlan][5].extension[threshold][0].url = "threshold"
* extension[monitoringPlan][5].extension[threshold][0].extension[range].url = "range"
* extension[monitoringPlan][5].extension[threshold][0].extension[range].valueRange.low.value = 30
* extension[monitoringPlan][5].extension[threshold][0].extension[range].valueRange.low.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][5].extension[threshold][0].extension[range].valueRange.low.code = #mm[Hg]
* extension[monitoringPlan][5].extension[threshold][1].url = "threshold"
* extension[monitoringPlan][5].extension[threshold][1].extension[range].url = "range"
* extension[monitoringPlan][5].extension[threshold][1].extension[range].valueRange.high.value = 5
* extension[monitoringPlan][5].extension[threshold][1].extension[range].valueRange.high.system = "http://unitsofmeasure.org"
* extension[monitoringPlan][5].extension[threshold][1].extension[range].valueRange.high.code = #mm[Hg]

* status = #active
* intent = #order
* category[discipline] = $sct#394579002
* category[prescriptionType] = $be-cs-prescription-type#telemonitoring-chronic-heart-failure
* code = $sct#879780004

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

* occurrenceTiming.repeat.boundsDuration.value = 6
* occurrenceTiming.repeat.boundsDuration.system = "http://unitsofmeasure.org"
* occurrenceTiming.repeat.boundsDuration.code = #mo
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #d

* authoredOn = "2026-05-22T09:30:00+02:00"
* requester = Reference(PractitionerRole/72101230445-PHYSICIAN)

* reasonCode = $sct#48447003 "Chronic heart failure"

* note[0].extension[0].url = $be-ext-codeable-concept
* note[0].extension[0].valueCodeableConcept.coding[0].system = $be-cs-note-types
* note[0].extension[0].valueCodeableConcept.coding[0].code = #general-remarks
* note[0].text = "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-general-remarks}}"
* note[0].text.extension[0].url = $be-ext-pseudonymization
* note[0].text.extension[0].extension[0].url = "marker"
* note[0].text.extension[0].extension[0].valueBoolean = true
* note[0].text.extension[0].extension[1].url = "format"
* note[0].text.extension[0].extension[1].valueCode = #encrypted
* note[0].text.extension[0].extension[2].url = "version"
* note[0].text.extension[0].extension[2].valuePositiveInt = 1
