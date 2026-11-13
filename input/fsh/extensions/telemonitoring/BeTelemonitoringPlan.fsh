Extension: BeTelemonitoringPlan
Id: be-ext-telemonitoring-plan
Title: "Telemonitoring plan"
Description: "Per-parameter telemonitoring rule: parameter, thresholds, target range, change limits."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "ServiceRequest"

* extension 1..*
* extension contains
    parameter 1..1 MS and
    baseline 0..1 MS and
    threshold 0..* MS and
    targetRange 0..1 MS and
    change 0..* MS

* extension[parameter] ^short = "Parameter being measured"
* extension[parameter] ^definition = "The measured parameter. Use be-cs-monitoring-parameter for the business parameter and, when useful, add an equivalent LOINC coding."
* extension[parameter].extension 0..0
* extension[parameter].url = "parameter" (exactly)
* extension[parameter].value[x] only CodeableConcept
* extension[parameter].valueCodeableConcept from BeVSTelemonitoringParameterType (preferred)

// LM: monitoringPlan.baseline — reference measurement the rules are evaluated against
// (e.g. reference weight 80 kg). Should reference a standalone Observation, not a contained one.
* extension[baseline].value[x] only Reference(Observation)
* extension[baseline].valueReference MS
* extension[baseline].url = "baseline" (exactly)
* extension[baseline] ^short = "Baseline/reference measurement (e.g. reference weight)"
* extension[baseline] ^comment = "The referenced Observation should not be a contained resource."

* extension[threshold].extension 1..*
* extension[threshold].extension contains
    range 1..1 MS and
    sustainedFor 0..1 MS
* extension[threshold].url = "threshold" (exactly)
* extension[threshold].value[x] 0..0
* extension[threshold].extension[range].extension 0..0
* extension[threshold].extension[range].url = "range" (exactly)
* extension[threshold].extension[range].value[x] only Range
* extension[threshold].extension[sustainedFor].extension 0..0
* extension[threshold].extension[sustainedFor].url = "sustainedFor" (exactly)
* extension[threshold].extension[sustainedFor].value[x] only Duration

* extension[targetRange].extension 0..0
* extension[targetRange].url = "targetRange" (exactly)
* extension[targetRange].value[x] only Range

* extension[change] ^short = "Max allowed change per time window; positive = increase, negative = decrease"
* extension[change].extension 0..0
* extension[change].url = "change" (exactly)
* extension[change].value[x] only Ratio

* url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan" (exactly)
* value[x] 0..0
