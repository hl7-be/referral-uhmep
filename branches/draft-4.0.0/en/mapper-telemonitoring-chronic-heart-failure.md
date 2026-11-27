# Chronic Heart Failure Telemonitoring - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Domain & Mapping**](mappings-business.md)
* [**Telemonitoring**](domain-telemonitoring.md)
* [**Telemonitoring Mapping**](mappings-telemonitoring.md)
* **Chronic Heart Failure Telemonitoring**

## Chronic Heart Failure Telemonitoring

Prescription type code: `telemonitoring-chronic-heart-failure`.

Examples:

* [example-drp-telemonitoring-chronic-heart-failure](ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.md)

The medical prescription uses the full telemonitoring profile.

### Business fields

| | | | |
| :--- | :--- | :--- | :--- |
| Prescription type | Chronic heart failure telemonitoring | code | Used for routing and workflow purposes. |
| Status |  | code |  |
| Status reason | * Patient does not comply with the telemonitoring conditions
* Patient decided to stop telemonitoring
* Telemonitoring stopped for medical reasons
* Patient condition has stabilized
* Patient is deceased
* Patient received a transplantation
* Other
 | code / String | Textual status reasons must be pseudonymized. |
| Discipline | Cardiology | code | SNOMED CT coded category. |
| Intent | Order | code |  |
| Prescriber | Prescribing healthcare professional role. | Reference | Reference to the prescriber role. |
| Patient | Patient identity. | Identifier | Patient identity must be pseudonymized. |
| Creation date | Date/time when the prescription is authored. | dateTime |  |
| Validity period | Order validity start and end dates. | Period | Start and end are required. |
| Prescribed procedure | Telemonitoring for chronic heart failure | code | SNOMED CT coded procedure |
| Indication | Chronic heart failure (SNOMED CT 48447003). | `ServiceRequest.reasonCode` | Fixed coded indication. |
| Reference weight | Baseline measurement used when defining the body-weight parameter and evaluating its change rules. | Reference(Observation) | Optional. Reference a standalone weight Observation through `monitoringPlan.extension[baseline]`. |
| Body weight | Weight-change rules and related alerts. | List of Ratios | Each change rule specifies a signed weight change over a time window. |
| Systolic blood pressure | Measured systolic blood pressure and related alert thresholds. | Quantity / Range | Thresholds and target ranges use UCUM units. |
| Diastolic blood pressure | Measured diastolic blood pressure and related alert thresholds. | Quantity / Range | Thresholds and target ranges use UCUM units. |
| Systolic pulmonary artery pressure (PAPs) | Measured systolic pulmonary artery pressure and related alert thresholds. | Quantity / Range | Thresholds and target ranges use UCUM units. |
| Diastolic pulmonary artery pressure (PAPd) | Measured diastolic pulmonary artery pressure and related alert thresholds. | Quantity / Range | Thresholds and target ranges use UCUM units. |
| Heart rate | Measured heart rate and related alert thresholds. | Quantity / Range | Thresholds and target ranges use UCUM units. |
| Clinical timing | Monitoring frequency and treatment period. | Timing |  |
| Clinical remarks | Free-text clinical remarks. | String | Free text must be pseudonymized. |

### Telemonitoring terminology

| | | |
| :--- | :--- | :--- |
| [`be-vs-telemonitoring-parameter-type`](ValueSet-be-vs-telemonitoring-parameter-type.md) | SNOMED CT coding of configured monitoring parameters. | * `27113001` Body weight
* `271649006` Systolic blood pressure
* `271650006` Diastolic blood pressure
* `250768007` Systolic pulmonary artery pressure (PAPs)
* `250769004` Diastolic pulmonary artery pressure (PAPd)
* `364075005` Heart rate
 |
| [`be-cs-telemonitoring-completed-status-reason`](CodeSystem-be-cs-telemonitoring-completed-status-reason.md) | Coded reason when a telemonitoring prescription is completed. | * `patient-non-compliant`
* `patient-deceased`
* `patient-requested-stop`
* `medical-reasons`
* `patient-stabilised`
* `patient-transplanted`
* `other`
 |

### Monitoring parameters

The parameter CodeableConcept has a required binding to `be-vs-telemonitoring-parameter-type` in the [monitoring plan extension](StructureDefinition-be-ext-telemonitoring-plan.md). A present concept must contain a coding from that ValueSet; additional equivalent codings remain possible. This is a profile conformance requirement, not a claim of runtime enforcement.

The monitoring plan uses one `be-ext-telemonitoring-plan` extension per configured parameter. Each plan entry carries the measured parameter in `extension[parameter]` and may then add threshold, target range, or change rules. For body weight, the optional reference weight is carried in `extension[baseline].valueReference` and points to a standalone `Observation`, not a contained resource.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Body weight | `27113001` | Body weight (observable entity) | `kg` | Optional reference weight (`baseline`Observation) and one or more`change`rules over time windows |
| Systolic blood pressure | `271649006` | Systolic blood pressure (observable entity) | `mm[Hg]` | One`threshold`: an**upper**bound or a**lower**bound (not both at once) |
| Diastolic blood pressure | `271650006` | Diastolic blood pressure (observable entity) | `mm[Hg]` | One`threshold`: an**upper**bound or a**lower**bound (not both at once) |
| Systolic pulmonary artery pressure (PAPs) | `250768007` | Pulmonary artery systolic pressure (observable entity) | `mm[Hg]` | One`threshold`: an**upper**bound or a**lower**bound (not both at once) |
| Diastolic pulmonary artery pressure (PAPd) | `250769004` | Pulmonary artery diastolic pressure (observable entity) | `mm[Hg]` | One`threshold`: an**upper**bound or a**lower**bound (not both at once) |
| Heart rate | `364075005` | Heart rate (observable entity) | `/min` | One`threshold`: an**upper**bound or a**lower**bound (not both at once) |

All parameter codings use `http://snomed.info/sct` and must come from [be-vs-telemonitoring-parameter-type](ValueSet-be-vs-telemonitoring-parameter-type.md). Thresholds and target ranges use UCUM units. Change rules use a `Ratio`: the numerator is the allowed clinical change and the denominator is the time window.

#### Parameter variants and repetition

The `be-ext-telemonitoring-plan` extension is intentionally generic (see [Extension definition](StructureDefinition-be-ext-telemonitoring-plan.md)): it allows several `threshold` entries per parameter, a `threshold.range` with both `low` and `high` set at once, a `threshold.extension[sustainedFor]` duration, a `targetRange`, and several `change` entries per parameter. The supplied full FSH example includes two `change` entries for body weight and separate low/high threshold entries for blood pressure, heart rate and pulmonary artery pressure. The target FHIR gateway mapper also preserves repeated `change` and `threshold` entries. These sources establish technical support, but do not verify which combinations are produced in deployed business workflows. Do not rely on a one-entry limit when reading a ServiceRequest.

| | | | |
| :--- | :--- | :--- | :--- |
| Weight | Weight gain example | `extension[change].valueRatio`= 2 kg / 1 wk(positive numerator = increase) | **"Prise de poids supérieure à 2 kg en 1 semaine"** |
| Weight loss example | `extension[change].valueRatio`= -2.5 kg / 1 wk(negative numerator = decrease) | **"Perte de poids supérieure à 2,5 kg en 1 semaine"** | |
| Systolic blood pressure | Upper threshold example | `extension[threshold].extension[range].valueRange.high`= 140 mm[Hg] | **"Supérieure à 140 mmHg"** |
| Lower threshold example | `extension[threshold].extension[range].valueRange.low`= X mm[Hg] | **"Inférieure à X mmHg"** | |
| Diastolic blood pressure | Upper threshold example | `extension[threshold].extension[range].valueRange.high`= 90 mm[Hg] | **"Supérieure à 90 mmHg"** |
| Lower threshold example | `extension[threshold].extension[range].valueRange.low`= X mm[Hg] | **"Inférieure à X mmHg"** | |
| Heart rate | Upper threshold example | `extension[threshold].extension[range].valueRange.high`= 100 /min | **"Supérieure à 100 bpm"** |
| Lower threshold example | `extension[threshold].extension[range].valueRange.low`= 50 /min | **"Inférieure à 50 bpm"** | |

In the supplied examples, each individual `Range` sets one bound (`low` or `high`). Separate repeated `threshold` entries can carry the other bound for the same parameter. A single `Range` with both bounds is allowed by the extension but is not illustrated in the examples. There is no threshold time window shown. `ServiceRequest.occurrenceTiming` represents the overall monitoring period. For weight, the time window is the `change.valueRatio.denominator` (e.g. `1 wk`). The sign of `change.valueRatio.numerator` distinguishes a gain (positive) from a loss (negative) rule.

**Not illustrated by the supplied FSH example** (although allowed by the extension):

* A single `threshold.range` with both `low` and `high` set at once
* `threshold.extension[sustainedFor]`
* `extension[targetRange]`
* A `change` rule on a parameter other than weight

### FHIR mapping

| | | | |
| :--- | :--- | :--- | :--- |
| Profile | `ServiceRequest.meta.profile` | ````{ "meta": { "profile": [ "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-telemonitoring" ] } }```` | Use the medical telemonitoring profile for the prescription. |
| Status | `ServiceRequest.status` | ````{ "status": "active" }```` |  |
| Status reason | `ServiceRequest.extension[statusReason]` | ````{ "extension": [ { "url": "http://hl7.org/fhir/StructureDefinition/request-statusReason", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-telemonitoring-completed-status-reason", "code": "patient-stabilised" } ] } } ] }```` | * binding: [`be-vs-telemonitoring-completed-status-reason`](ValueSet-be-vs-telemonitoring-completed-status-reason.md)
* Telemonitoring completed status reasons are only allowed when `status = completed`.
 |
| Prescription type | `ServiceRequest.category[prescriptionType]` | ````{ "category": [ { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type", "code": "telemonitoring-chronic-heart-failure" } ] } ] }```` | * system: [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type`](https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type)
* code: `telemonitoring-chronic-heart-failure`
* binding: [`be-vs-telemonitoring-prescription-technical-type`](ValueSet-be-vs-telemonitoring-prescription-technical-type.md)
 |
| Discipline | `ServiceRequest.category[discipline]` | ````{ "category": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "394579002" } ] } ] }```` | SNOMED CT discipline category. |
| Intent | `ServiceRequest.intent` | ````{ "intent": "order" }```` | Always`order` |
| Prescriber | `ServiceRequest.requester` | ````{ "requester": { "reference": "PractitionerRole/72101230445-PHYSICIAN" } }```` | Reference to the prescribing practitioner role. |
| Patient | `ServiceRequest.subject.identifier` | ````{ "subject": { "identifier": { "use": "official", "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin", "value": "urn:be:fgov:pseudo:v2::", "_value": { "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization", "extension": [ { "url": "marker", "valueBoolean": true }, { "url": "format", "valueCode": "direct" }, { "url": "version", "valuePositiveInt": 2 } ] } ] } } } }```` | SSIN mus be pseudonymized |
| Creation date | `ServiceRequest.authoredOn` | ````{ "authoredOn": "2026-05-22T09:30:00+02:00" }```` |  |
| Validity period | `ServiceRequest.extension[validity]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period", "valuePeriod": { "start": "2026-05-22", "end": "2026-11-22" } } ] }```` | Start and end are required. |
| Prescribed procedure | `ServiceRequest.code` | ````{ "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "879780004" } ] } }```` | * system: http://snomed.info/ct
* code: `879780004`
 |
| Indication | `ServiceRequest.reasonCode` | ````{ "reasonCode": { "coding": [ { "system": "http://snomed.info/sct", "code": "48447003", "display": "Chronic heart failure" } ] } }```` | The single indication is fixed to chronic heart failure. |
| Monitoring parameter: body weight | `ServiceRequest.extension[monitoringPlan].extension[baseline]`and`extension[change]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan", "extension": [ { "url": "parameter", "valueCodeableConcept": { "coding": [ { "system": "http://snomed.info/sct", "code": "27113001", "display": "Body weight (observable entity)" } ] } }, { "url": "baseline", "valueReference": { "reference": "Observation/example-telemonitoring-reference-weight" } }, { "url": "change", "valueRatio": { "numerator": { "value": 2, "system": "http://unitsofmeasure.org", "code": "kg" }, "denominator": { "value": 3, "system": "http://unitsofmeasure.org", "code": "d" } } } ] } ] }```` | * Parameter code: `http://snomed.info/sct#27113001`
* Optional baseline: `Reference(Observation)` to a standalone weight observation. See [the baseline JSON](Observation-example-telemonitoring-reference-weight.json).
* UCUM unit: `kg`
* The `change` ratio represents a signed weight-change rule, for example `2 kg / 3 d`.
* Time-window units may use [`be-vs-telemonitoring-period-unit`](ValueSet-be-vs-telemonitoring-period-unit.md).
 |
| Monitoring parameter: systolic blood pressure | `ServiceRequest.extension[monitoringPlan]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan", "extension": [ { "url": "parameter", "valueCodeableConcept": { "coding": [ { "system": "http://snomed.info/sct", "code": "271649006", "display": "Systolic blood pressure (observable entity)" } ] } }, { "url": "threshold", "extension": [ { "url": "range", "valueRange": { "low": { "value": 160, "system": "http://unitsofmeasure.org", "code": "mm[Hg]" } } } ] } ] } ] }```` | * Parameter code: `http://snomed.info/sct#271649006`
* UCUM unit: `mm[Hg]`
* A threshold lower bound represents a business comparator such as `greater-or-equal` from `be-cs-monitoring-comparator`.
 |
| Monitoring parameter: diastolic blood pressure | `ServiceRequest.extension[monitoringPlan]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan", "extension": [ { "url": "parameter", "valueCodeableConcept": { "coding": [ { "system": "http://snomed.info/sct", "code": "271650006", "display": "Diastolic blood pressure (observable entity)" } ] } }, { "url": "threshold", "extension": [ { "url": "range", "valueRange": { "low": { "value": 100, "system": "http://unitsofmeasure.org", "code": "mm[Hg]" } } } ] } ] } ] }```` | * Parameter code: `http://snomed.info/sct#271650006`
* UCUM unit: `mm[Hg]`
* A threshold lower bound represents a business comparator such as `greater-or-equal` from `be-cs-monitoring-comparator`.
 |
| Monitoring parameter: systolic pulmonary artery pressure (PAPs) | `ServiceRequest.extension[monitoringPlan]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan", "extension": [ { "url": "parameter", "valueCodeableConcept": { "coding": [{ "system": "http://snomed.info/sct", "code": "250768007", "display": "Pulmonary artery systolic pressure (observable entity)" }] } }, { "url": "threshold", "extension": [{ "url": "range", "valueRange": {"low": {"value": 50, "system": "http://unitsofmeasure.org", "code": "mm[Hg]"}} }] }, { "url": "threshold", "extension": [{ "url": "range", "valueRange": {"high": {"value": 10, "system": "http://unitsofmeasure.org", "code": "mm[Hg]"}} }] } ] } ] }```` | * Parameter code: `http://snomed.info/sct#250768007`
* Unit: `mm[Hg]`
* Illustrative thresholds from the FSH example, not normative business limits.
 |
| Monitoring parameter: diastolic pulmonary artery pressure (PAPd) | `ServiceRequest.extension[monitoringPlan]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan", "extension": [ { "url": "parameter", "valueCodeableConcept": { "coding": [{ "system": "http://snomed.info/sct", "code": "250769004", "display": "Pulmonary artery diastolic pressure (observable entity)" }] } }, { "url": "threshold", "extension": [{ "url": "range", "valueRange": {"low": {"value": 30, "system": "http://unitsofmeasure.org", "code": "mm[Hg]"}} }] }, { "url": "threshold", "extension": [{ "url": "range", "valueRange": {"high": {"value": 5, "system": "http://unitsofmeasure.org", "code": "mm[Hg]"}} }] } ] } ] }```` | * Parameter code: `http://snomed.info/sct#250769004`
* Unit: `mm[Hg]`
* Illustrative thresholds from the FSH example, not normative business limits.
 |
| Monitoring parameter: heart rate | `ServiceRequest.extension[monitoringPlan]` | ````{ "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan", "extension": [ { "url": "parameter", "valueCodeableConcept": { "coding": [ { "system": "http://snomed.info/sct", "code": "364075005", "display": "Heart rate (observable entity)" } ] } }, { "url": "threshold", "extension": [ { "url": "range", "valueRange": { "low": { "value": 110, "system": "http://unitsofmeasure.org", "code": "/min" } } } ] } ] } ] }```` | * Parameter code: `http://snomed.info/sct#364075005`
* UCUM unit: `/min`
* A threshold lower bound represents a business comparator such as `greater-or-equal` from `be-cs-monitoring-comparator`.
 |
| Clinical timing | `ServiceRequest.occurrenceTiming.repeat` | ````{ "occurrenceTiming": { "repeat": { "boundsDuration": { "value": 6, "system": "http://unitsofmeasure.org", "code": "mo" }, "frequency": 1, "period": 1, "periodUnit": "d" } } }```` | Period units may use[`be-vs-telemonitoring-period-unit`](ValueSet-be-vs-telemonitoring-period-unit.md) |
| Clinical remarks | `ServiceRequest.note` | ````{ "note": [ { "text": "urn:be:fgov:pseudo-encrypted:v1::", "extension": [ { "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept", "valueCodeableConcept": { "coding": [ { "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types", "code": "general-remarks" } ] } } ] } ] }```` | Free text must be pseudonymized. |

