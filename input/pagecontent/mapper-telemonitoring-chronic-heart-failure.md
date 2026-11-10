Prescription type code: `telemonitoring-chronic-heart-failure`.

Examples:

- [example-drp-telemonitoring-chronic-heart-failure](ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.html)

The medical prescription uses the full telemonitoring profile.

### Business fields

<table class="mapping-table">
  <thead>
    <tr>
      <th>Business field</th>
      <th>Values / constraints</th>
      <th>Data type</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Prescription type</td>
      <td>Chronic heart failure telemonitoring</td>
      <td>code</td>
      <td>Used for routing and workflow purposes.</td>
    </tr>
    <tr>
      <td>Status</td>
      <td></td>
      <td>code</td>
      <td></td>
    </tr>
    <tr>
      <td>Status reason</td>
      <td><ul><li>Patient does not comply with the telemonitoring conditions</li><li>Patient decided to stop telemonitoring</li><li>Telemonitoring stopped for medical reasons</li><li>Patient condition has stabilized</li><li>Patient is deceased</li><li>Patient received a transplantation</li><li>Other</li></ul></td>
      <td>code / String</td>
      <td>Textual status reasons must be pseudonymized.</td>
    </tr>
    <tr>
      <td>Discipline</td>
      <td>Cardiology</td>
      <td>code</td>
      <td>SNOMED CT coded category.</td>
    </tr>
    <tr>
      <td>Intent</td>
      <td>Order</td>
      <td>code</td>
      <td></td>
    </tr>
    <tr>
      <td>Prescriber</td>
      <td>Prescribing healthcare professional role.</td>
      <td>Reference</td>
      <td>Reference to the prescriber role.</td>
    </tr>
    <tr>
      <td>Patient</td>
      <td>Patient identity.</td>
      <td>Identifier</td>
      <td>Patient identity must be pseudonymized.</td>
    </tr>
    <tr>
      <td>Creation date</td>
      <td>Date/time when the prescription is authored.</td>
      <td>dateTime</td>
      <td></td>
    </tr>
    <tr>
      <td>Validity period</td>
      <td>Order validity start and end dates.</td>
      <td>Period</td>
      <td>Start and end are required.</td>
    </tr>
    <tr>
      <td>Prescribed procedure</td>
      <td>Telemonitoring for chronic heart failure</td>
      <td>code</td>
      <td>SNOMED CT coded procedure</td>
    </tr>
    <tr>
      <td>Indication</td>
      <td>Chronic heart failure (SNOMED CT 48447003).</td>
      <td><code>ServiceRequest.reasonCode</code></td>
      <td>Fixed coded indication.</td>
    </tr>
    <tr>
      <td>Reference weight</td>
      <td>Baseline measurement used when defining the body-weight parameter and evaluating its change rules.</td>
      <td>Reference(Observation)</td>
      <td>Optional. Reference a standalone weight Observation through `monitoringPlan.extension[baseline]`.</td>
    </tr>
    <tr>
      <td>Body weight</td>
      <td>Weight-change rules and related alerts.</td>
      <td>List of Ratios</td>
      <td>Each change rule specifies a signed weight change over a time window.</td>
    </tr>
    <tr>
      <td>Systolic blood pressure</td>
      <td>Measured systolic blood pressure and related alert thresholds.</td>
      <td>Quantity / Range</td>
      <td>Thresholds and target ranges use UCUM units.</td>
    </tr>
    <tr>
      <td>Diastolic blood pressure</td>
      <td>Measured diastolic blood pressure and related alert thresholds.</td>
      <td>Quantity / Range</td>
      <td>Thresholds and target ranges use UCUM units.</td>
    </tr>
    <tr>
      <td>Systolic pulmonary artery pressure (PAPs)</td>
      <td>Measured systolic pulmonary artery pressure and related alert thresholds.</td>
      <td>Quantity / Range</td>
      <td>Thresholds and target ranges use UCUM units.</td>
    </tr>
    <tr>
      <td>Diastolic pulmonary artery pressure (PAPd)</td>
      <td>Measured diastolic pulmonary artery pressure and related alert thresholds.</td>
      <td>Quantity / Range</td>
      <td>Thresholds and target ranges use UCUM units.</td>
    </tr>
    <tr>
      <td>Heart rate</td>
      <td>Measured heart rate and related alert thresholds.</td>
      <td>Quantity / Range</td>
      <td>Thresholds and target ranges use UCUM units.</td>
    </tr>
    <tr>
      <td>Clinical timing</td>
      <td>Monitoring frequency and treatment period.</td>
      <td>Timing</td>
      <td></td>
    </tr>
    <tr>
      <td>Clinical remarks</td>
      <td>Free-text clinical remarks.</td>
      <td>String</td>
      <td>Free text must be pseudonymized.</td>
    </tr>
  </tbody>
</table>

### Telemonitoring terminology

<table class="mapping-table">
  <thead>
    <tr>
      <th>Terminology artifact</th>
      <th>Used for</th>
      <th>Codes used by this prescription</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="ValueSet-be-vs-telemonitoring-parameter-type.html"><code>be-vs-telemonitoring-parameter-type</code></a></td>
      <td>SNOMED CT coding of configured monitoring parameters.</td>
      <td><ul><li><code>27113001</code> Body weight</li><li><code>271649006</code> Systolic blood pressure</li><li><code>271650006</code> Diastolic blood pressure</li><li><code>250768007</code> Systolic pulmonary artery pressure (PAPs)</li><li><code>250769004</code> Diastolic pulmonary artery pressure (PAPd)</li><li><code>364075005</code> Heart rate</li></ul></td>
    </tr>
    <tr>
      <td><a href="CodeSystem-be-cs-telemonitoring-completed-status-reason.html"><code>be-cs-telemonitoring-completed-status-reason</code></a></td>
      <td>Coded reason when a telemonitoring prescription is completed.</td>
      <td><ul><li><code>patient-non-compliant</code></li><li><code>patient-deceased</code></li><li><code>patient-requested-stop</code></li><li><code>medical-reasons</code></li><li><code>patient-stabilised</code></li><li><code>patient-transplanted</code></li><li><code>other</code></li></ul></td>
    </tr>
  </tbody>
</table>

### Monitoring parameters

The monitoring plan uses one `be-ext-telemonitoring-plan` extension per configured parameter. Each plan entry carries the measured parameter in `extension[parameter]` and may then add threshold, target range, or change rules. For body weight, the optional reference weight is carried in `extension[baseline].valueReference` and points to a standalone `Observation`, not a contained resource.

| Parameter | SNOMED CT code | Display | Typical unit | Rule used by this business requirement |
| --- | --- | --- | --- | --- |
| Body weight | `27113001` | Body weight (observable entity) | `kg` | Optional reference weight (`baseline` Observation) and one or more `change` rules over time windows |
| Systolic blood pressure | `271649006` | Systolic blood pressure (observable entity) | `mm[Hg]` | One `threshold`: an **upper** bound or a **lower** bound (not both at once) |
| Diastolic blood pressure | `271650006` | Diastolic blood pressure (observable entity) | `mm[Hg]` | One `threshold`: an **upper** bound or a **lower** bound (not both at once) |
| Systolic pulmonary artery pressure (PAPs) | `250768007` | Pulmonary artery systolic pressure (observable entity) | `mm[Hg]` | One `threshold`: an **upper** bound or a **lower** bound (not both at once) |
| Diastolic pulmonary artery pressure (PAPd) | `250769004` | Pulmonary artery diastolic pressure (observable entity) | `mm[Hg]` | One `threshold`: an **upper** bound or a **lower** bound (not both at once) |
| Heart rate | `364075005` | Heart rate (observable entity) | `/min` | One `threshold`: an **upper** bound or a **lower** bound (not both at once) |

All parameter codings use `http://snomed.info/sct` and must come from [be-vs-telemonitoring-parameter-type](ValueSet-be-vs-telemonitoring-parameter-type.html). Thresholds and target ranges use UCUM units. Change rules use a `Ratio`: the numerator is the allowed clinical change and the denominator is the time window.

#### Parameter variants and repetition

The `be-ext-telemonitoring-plan` extension is intentionally generic (see [Extension definition](StructureDefinition-be-ext-telemonitoring-plan.html)): it allows several `threshold` entries per parameter, a `threshold.range` with both `low` and `high` set at once, a `threshold.extension[sustainedFor]` duration, a `targetRange`, and several `change` entries per parameter. The supplied full FSH example includes two `change` entries for body weight and separate low/high threshold entries for blood pressure, heart rate and pulmonary artery pressure. The target FHIR gateway mapper also preserves repeated `change` and `threshold` entries. These sources establish technical support, but do not verify which combinations are produced in deployed business workflows. Do not rely on a one-entry limit when reading a ServiceRequest.

<table class="mapping-table mapping-technical-table">
  <thead>
    <tr>
      <th>Parameter</th>
      <th>Variant</th>
      <th>Simplified FHIR</th>
      <th>Business display example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="2">Weight</td>
      <td>Weight gain example</td>
      <td><code>extension[change].valueRatio</code> = 2 kg / 1 wk<br>(positive numerator = increase)</td>
      <td><em>"Prise de poids supérieure à 2 kg en 1 semaine"</em></td>
    </tr>
    <tr>
      <td>Weight loss example</td>
      <td><code>extension[change].valueRatio</code> = -2.5 kg / 1 wk<br>(negative numerator = decrease)</td>
      <td><em>"Perte de poids supérieure à 2,5 kg en 1 semaine"</em></td>
    </tr>
    <tr>
      <td rowspan="2">Systolic blood pressure</td>
      <td>Upper threshold example</td>
      <td><code>extension[threshold].extension[range].valueRange.high</code> = 140 mm[Hg]</td>
      <td><em>"Supérieure à 140 mmHg"</em></td>
    </tr>
    <tr>
      <td>Lower threshold example</td>
      <td><code>extension[threshold].extension[range].valueRange.low</code> = X mm[Hg]</td>
      <td><em>"Inférieure à X mmHg"</em></td>
    </tr>
    <tr>
      <td rowspan="2">Diastolic blood pressure</td>
      <td>Upper threshold example</td>
      <td><code>extension[threshold].extension[range].valueRange.high</code> = 90 mm[Hg]</td>
      <td><em>"Supérieure à 90 mmHg"</em></td>
    </tr>
    <tr>
      <td>Lower threshold example</td>
      <td><code>extension[threshold].extension[range].valueRange.low</code> = X mm[Hg]</td>
      <td><em>"Inférieure à X mmHg"</em></td>
    </tr>
    <tr>
      <td rowspan="2">Heart rate</td>
      <td>Upper threshold example</td>
      <td><code>extension[threshold].extension[range].valueRange.high</code> = 100 /min</td>
      <td><em>"Supérieure à 100 bpm"</em></td>
    </tr>
    <tr>
      <td>Lower threshold example</td>
      <td><code>extension[threshold].extension[range].valueRange.low</code> = 50 /min</td>
      <td><em>"Inférieure à 50 bpm"</em></td>
    </tr>
  </tbody>
</table>

In the supplied examples, each individual `Range` sets one bound (`low` or `high`); separate repeated `threshold` entries can carry the other bound for the same parameter. A single `Range` with both bounds is allowed by the extension but is not illustrated in the examples. There is no threshold time window shown; `ServiceRequest.occurrenceTiming` represents the overall monitoring period. For weight, the time window is the `change.valueRatio.denominator` (e.g. `1 wk`); the sign of `change.valueRatio.numerator` distinguishes a gain (positive) from a loss (negative) rule.

**Not illustrated by the supplied FSH example** (although allowed by the extension):
- A single `threshold.range` with both `low` and `high` set at once
- `threshold.extension[sustainedFor]`
- `extension[targetRange]`
- A `change` rule on a parameter other than weight

### FHIR mapping

<table class="mapping-table mapping-technical-table">
  <thead>
    <tr>
      <th>Business field</th>
      <th>FHIR representation</th>
      <th>FHIR JSON example</th>
      <th>Terminology / notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Profile</td>
      <td><code>ServiceRequest.meta.profile</code></td>
      <td><pre><code class="language-json">{
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-telemonitoring"
    ]
  }
}</code></pre></td>
      <td>Use the medical telemonitoring profile for the prescription.</td>
    </tr>
    <tr>
      <td>Status</td>
      <td><code>ServiceRequest.status</code></td>
      <td><pre><code class="language-json">{
  "status": "active"
}</code></pre></td>
      <td></td>
    </tr>
    <tr>
      <td>Status reason</td>
      <td><code>ServiceRequest.extension[statusReason]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/request-statusReason",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-telemonitoring-completed-status-reason",
            "code": "patient-stabilised"
          }
        ]
      }
    }
  ]
}</code></pre></td>
      <td><ul><li>binding: <a href="ValueSet-be-vs-telemonitoring-completed-status-reason.html"><code>be-vs-telemonitoring-completed-status-reason</code></a></li><li>Telemonitoring completed status reasons are only allowed when <code>status = completed</code>.</li></ul></td>
    </tr>
    <tr>
      <td>Prescription type</td>
      <td><code>ServiceRequest.category[prescriptionType]</code></td>
      <td><pre><code class="language-json">{
  "category": [
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
          "code": "telemonitoring-chronic-heart-failure"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type</code></a></li><li>code: <code>telemonitoring-chronic-heart-failure</code></li><li>binding: <a href="ValueSet-be-vs-telemonitoring-prescription-technical-type.html"><code>be-vs-telemonitoring-prescription-technical-type</code></a></li></ul></td>
    </tr>
    <tr>
      <td>Discipline</td>
      <td><code>ServiceRequest.category[discipline]</code></td>
      <td><pre><code class="language-json">{
  "category": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "394579002"
        }
      ]
    }
  ]
}</code></pre></td>
      <td>SNOMED CT discipline category.</td>
    </tr>
    <tr>
      <td>Intent</td>
      <td><code>ServiceRequest.intent</code></td>
      <td><pre><code class="language-json">{
  "intent": "order"
}</code></pre></td>
      <td>Always <code>order</code></td>
    </tr>
    <tr>
      <td>Prescriber</td>
      <td><code>ServiceRequest.requester</code></td>
      <td><pre><code class="language-json">{
  "requester": {
    "reference": "PractitionerRole/72101230445-PHYSICIAN"
  }
}</code></pre></td>
      <td>Reference to the prescribing practitioner role.</td>
    </tr>
    <tr>
      <td>Patient</td>
      <td><code>ServiceRequest.subject.identifier</code></td>
      <td><pre><code class="language-json">{
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
      "_value": {
        "extension": [
          {
            "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization",
            "extension": [
              {
                "url": "marker",
                "valueBoolean": true
              },
              {
                "url": "format",
                "valueCode": "direct"
              },
              {
                "url": "version",
                "valuePositiveInt": 2
              }
            ]
          }
        ]
      }
    }
  }
}</code></pre></td>
      <td>SSIN mus be pseudonymized</td>
    </tr>
    <tr>
      <td>Creation date</td>
      <td><code>ServiceRequest.authoredOn</code></td>
      <td><pre><code class="language-json">{
  "authoredOn": "2026-05-22T09:30:00+02:00"
}</code></pre></td>
      <td></td>
    </tr>
    <tr>
      <td>Validity period</td>
      <td><code>ServiceRequest.extension[validity]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-05-22",
        "end": "2026-11-22"
      }
    }
  ]
}</code></pre></td>
      <td>Start and end are required.</td>
    </tr>
    <tr>
      <td>Prescribed procedure</td>
      <td><code>ServiceRequest.code</code></td>
      <td><pre><code class="language-json">{
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "879780004"
      }
    ]
  }
}</code></pre></td>
      <td><ul><li>system: http://snomed.info/ct</li><li>code: <code>879780004</code></li></ul></td>
    </tr>
    <tr>
      <td>Indication</td>
      <td><code>ServiceRequest.reasonCode</code></td>
      <td><pre><code class="language-json">{
  "reasonCode": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "48447003",
        "display": "Chronic heart failure"
      }
    ]
  }
}</code></pre></td>
      <td>The single indication is fixed to chronic heart failure.</td>
    </tr>
    <tr>
      <td>Monitoring parameter: body weight</td>
      <td><code>ServiceRequest.extension[monitoringPlan].extension[baseline]</code> and <code>extension[change]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan",
      "extension": [
        {
          "url": "parameter",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "27113001",
                "display": "Body weight (observable entity)"
              }
            ]
          }
        },
        {
          "url": "baseline",
          "valueReference": {
            "reference": "Observation/example-telemonitoring-reference-weight"
          }
        },
        {
          "url": "change",
          "valueRatio": {
            "numerator": {
              "value": 2,
              "system": "http://unitsofmeasure.org",
              "code": "kg"
            },
            "denominator": {
              "value": 3,
              "system": "http://unitsofmeasure.org",
              "code": "d"
            }
          }
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>Parameter code: <code>http://snomed.info/sct#27113001</code></li><li>Optional baseline: <code>Reference(Observation)</code> to a standalone weight observation; see <a href="Observation-example-telemonitoring-reference-weight.json">the baseline JSON</a>.</li><li>UCUM unit: <code>kg</code></li><li>The <code>change</code> ratio represents a signed weight-change rule, for example <code>2 kg / 3 d</code>.</li><li>Time-window units may use <a href="ValueSet-be-vs-telemonitoring-period-unit.html"><code>be-vs-telemonitoring-period-unit</code></a>.</li></ul></td>
    </tr>
    <tr>
      <td>Monitoring parameter: systolic blood pressure</td>
      <td><code>ServiceRequest.extension[monitoringPlan]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan",
      "extension": [
        {
          "url": "parameter",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "271649006",
                "display": "Systolic blood pressure (observable entity)"
              }
            ]
          }
        },
        {
          "url": "threshold",
          "extension": [
            {
              "url": "range",
              "valueRange": {
                "low": {
                  "value": 160,
                  "system": "http://unitsofmeasure.org",
                  "code": "mm[Hg]"
                }
              }
            }
          ]
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>Parameter code: <code>http://snomed.info/sct#271649006</code></li><li>UCUM unit: <code>mm[Hg]</code></li><li>A threshold lower bound represents a business comparator such as <code>greater-or-equal</code> from <code>be-cs-monitoring-comparator</code>.</li></ul></td>
    </tr>
    <tr>
      <td>Monitoring parameter: diastolic blood pressure</td>
      <td><code>ServiceRequest.extension[monitoringPlan]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan",
      "extension": [
        {
          "url": "parameter",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "271650006",
                "display": "Diastolic blood pressure (observable entity)"
              }
            ]
          }
        },
        {
          "url": "threshold",
          "extension": [
            {
              "url": "range",
              "valueRange": {
                "low": {
                  "value": 100,
                  "system": "http://unitsofmeasure.org",
                  "code": "mm[Hg]"
                }
              }
            }
          ]
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>Parameter code: <code>http://snomed.info/sct#271650006</code></li><li>UCUM unit: <code>mm[Hg]</code></li><li>A threshold lower bound represents a business comparator such as <code>greater-or-equal</code> from <code>be-cs-monitoring-comparator</code>.</li></ul></td>
    </tr>
    <tr>
      <td>Monitoring parameter: systolic pulmonary artery pressure (PAPs)</td>
      <td><code>ServiceRequest.extension[monitoringPlan]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan",
      "extension": [
        {
          "url": "parameter",
          "valueCodeableConcept": {
            "coding": [{
              "system": "http://snomed.info/sct",
              "code": "250768007",
              "display": "Pulmonary artery systolic pressure (observable entity)"
            }]
          }
        },
        {
          "url": "threshold",
          "extension": [{
            "url": "range",
            "valueRange": {"low": {"value": 50, "system": "http://unitsofmeasure.org", "code": "mm[Hg]"}}
          }]
        },
        {
          "url": "threshold",
          "extension": [{
            "url": "range",
            "valueRange": {"high": {"value": 10, "system": "http://unitsofmeasure.org", "code": "mm[Hg]"}}
          }]
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>Parameter code: <code>http://snomed.info/sct#250768007</code></li><li>Unit: <code>mm[Hg]</code></li><li>Illustrative thresholds from the FSH example, not normative business limits.</li></ul></td>
    </tr>
    <tr>
      <td>Monitoring parameter: diastolic pulmonary artery pressure (PAPd)</td>
      <td><code>ServiceRequest.extension[monitoringPlan]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan",
      "extension": [
        {
          "url": "parameter",
          "valueCodeableConcept": {
            "coding": [{
              "system": "http://snomed.info/sct",
              "code": "250769004",
              "display": "Pulmonary artery diastolic pressure (observable entity)"
            }]
          }
        },
        {
          "url": "threshold",
          "extension": [{
            "url": "range",
            "valueRange": {"low": {"value": 30, "system": "http://unitsofmeasure.org", "code": "mm[Hg]"}}
          }]
        },
        {
          "url": "threshold",
          "extension": [{
            "url": "range",
            "valueRange": {"high": {"value": 5, "system": "http://unitsofmeasure.org", "code": "mm[Hg]"}}
          }]
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>Parameter code: <code>http://snomed.info/sct#250769004</code></li><li>Unit: <code>mm[Hg]</code></li><li>Illustrative thresholds from the FSH example, not normative business limits.</li></ul></td>
    </tr>
    <tr>
      <td>Monitoring parameter: heart rate</td>
      <td><code>ServiceRequest.extension[monitoringPlan]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan",
      "extension": [
        {
          "url": "parameter",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "364075005",
                "display": "Heart rate (observable entity)"
              }
            ]
          }
        },
        {
          "url": "threshold",
          "extension": [
            {
              "url": "range",
              "valueRange": {
                "low": {
                  "value": 110,
                  "system": "http://unitsofmeasure.org",
                  "code": "/min"
                }
              }
            }
          ]
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>Parameter code: <code>http://snomed.info/sct#364075005</code></li><li>UCUM unit: <code>/min</code></li><li>A threshold lower bound represents a business comparator such as <code>greater-or-equal</code> from <code>be-cs-monitoring-comparator</code>.</li></ul></td>
    </tr>
    <tr>
      <td>Clinical timing</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 6,
        "system": "http://unitsofmeasure.org",
        "code": "mo"
      },
      "frequency": 1,
      "period": 1,
      "periodUnit": "d"
    }
  }
}</code></pre></td>
      <td>Period units may use <a href="ValueSet-be-vs-telemonitoring-period-unit.html"><code>be-vs-telemonitoring-period-unit</code></a></td>
    </tr>
    <tr>
      <td>Clinical remarks</td>
      <td><code>ServiceRequest.note</code></td>
      <td><pre><code class="language-json">{
  "note": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-general-remarks}}",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
                "code": "general-remarks"
              }
            ]
          }
        }
      ]
    }
  ]
}</code></pre></td>
      <td>Free text must be pseudonymized.</td>
    </tr>
  </tbody>
</table>
