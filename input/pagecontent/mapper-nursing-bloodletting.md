Prescription type code: `bloodletting`.

Example: [example-drp-nursing-bloodletting](ServiceRequest-example-drp-nursing-bloodletting.html).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| Business field | Values / constraints | Data type | Notes |
| --- | --- | --- | --- |
| Prescription type |  |  |  |
| Discipline |  |  |  |
| Validity period |  |  | Business validity of the prescription. |
| Patient |  |  | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |  |  | Reference to the prescribing practitioner role. |
| Volume to collect | ... ml | Integer |  |
| Diagnosis | ... | String | Required in business template. Free text diagnosis; must be encrypted with a pseudonymized key. |
| Frequency |  |  | Required in business template. Timing repeat block. |
| - Number of repetitions | ... times per | Integer | Number of repetitions per period. |
| - Time unit | - Day<br>- Week<br>- Month | Enum |  |
| Treatment period |  |  | Required in business template. Overall treatment period. |
| - Duration | ... | Integer | Duration value. |
| - Time unit | - Day(s)<br>- Week(s)<br>- Month<br>- Year(s) | Enum |  |
| Number of sessions (max) | ... | Integer | Required in business template. Total number of planned sessions. |
| Medical reason | ... (field becomes mandatory when frequency is more than once per day) | String | Medical reason; coded value when available, otherwise pseudonymized text. |
| Contraindications | ... | String | Free text; must be encrypted with a pseudonymized key. |
| General remarks | ... | String | Free text; must be encrypted with a pseudonymized key. |
| Feedback required | - Yes<br>- No (par defaut) | Boolean | Required in business template. `be-ext-feedback-to-prescriber`. |
| Validity start date | Today (default) | Date | Required in business template. `be-ext-validity-period`. |
| - End date | Start date + 1 year | Date | End of prescription validity, as used in the example instance. |

### FHIR mapping

<table class="mapping-table mapping-technical-table">
  <thead>
    <tr>
      <th>Business field</th>
      <th>FHIR representation</th>
      <th>FHIR JSON example</th>
      <th>Terminology</th>
    </tr>
  </thead>
  <tbody>
        <tr>
      <td>Prescription type</td>
      <td><code>ServiceRequest.category[prescriptionType]</code></td>
      <td><pre><code class="language-json">{
  "category": [
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
          "code": "bloodletting"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type</code></a></li><li>code: <code>bloodletting</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type"><code>be-vs-nursing-prescription-technical-type</code></a></li></ul></td>
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
          "code": "9632001"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>9632001</code></li></ul></td>
    </tr>
        <tr>
      <td>Validity period</td>
      <td><code>ServiceRequest.extension[validity]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-02-18",
        "end": "2027-02-18"
      }
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Patient</td>
      <td><code>ServiceRequest.subject</code></td>
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
      <td></td>
    </tr>
        <tr>
      <td>Requester / prescriber</td>
      <td><code>ServiceRequest.requester</code></td>
      <td><pre><code class="language-json">{
  "requester": {
    "reference": "PractitionerRole/72101230445-PHYSICIAN"
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Volume to collect</td>
      <td><code>ServiceRequest.quantityQuantity.value</code></td>
      <td><pre><code class="language-json">{
  "quantityQuantity": {
    "value": 300,
    "unit": "milliliter",
    "system": "http://unitsofmeasure.org",
    "code": "mL"
  }
}</code></pre></td>
      <td><ul><li>system: <a href="http://unitsofmeasure.org"><code>http://unitsofmeasure.org</code></a></li><li>code: <code>mL</code></li></ul></td>
    </tr>
        <tr>
      <td>Diagnosis</td>
      <td><code>ServiceRequest.reasonCode.text</code></td>
      <td><pre><code class="language-json">{
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}",
      "_text": {
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
                "valueCode": "encrypted"
              },
              {
                "url": "version",
                "valuePositiveInt": 1
              }
            ]
          }
        ]
      }
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Frequency</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 1,
        "system": "http://unitsofmeasure.org",
        "code": "wk"
      },
      "count": 3,
      "frequency": 3,
      "period": 1,
      "periodUnit": "wk"
    }
  }
}</code></pre></td>
      <td><ul><li>system: <a href="http://unitsofmeasure.org"><code>http://unitsofmeasure.org</code></a></li><li>code: <code>wk</code></li></ul></td>
    </tr>
        <tr>
      <td>- Number of repetitions</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.frequency</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "frequency": 3
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>- Time unit</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.periodUnit</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "periodUnit": "wk"
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Treatment period</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.boundsDuration</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 1,
        "system": "http://unitsofmeasure.org",
        "code": "wk"
      }
    }
  }
}</code></pre></td>
      <td><ul><li>system: <a href="http://unitsofmeasure.org"><code>http://unitsofmeasure.org</code></a></li><li>code: <code>wk</code></li></ul></td>
    </tr>
        <tr>
      <td>- Duration</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.boundsDuration.value</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 1
      }
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>- Time unit</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.periodUnit</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "periodUnit": "wk"
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Number of sessions (max)</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.count</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "count": 3
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Medical reason</td>
      <td><code>ServiceRequest.reasonCode</code></td>
      <td><pre><code class="language-json">{
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}",
      "_text": {
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
                "valueCode": "encrypted"
              },
              {
                "url": "version",
                "valuePositiveInt": 1
              }
            ]
          }
        ]
      }
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Contraindications</td>
      <td><code>ServiceRequest.note[contraindication].text</code></td>
      <td><pre><code class="language-json">{
  "note": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
                "code": "contraindication"
              }
            ]
          }
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types</code></a></li><li>code: <code>contraindication</code></li></ul></td>
    </tr>
        <tr>
      <td>General remarks</td>
      <td><code>ServiceRequest.note[general-remarks].text</code></td>
      <td><pre><code class="language-json">{
  "note": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
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
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types</code></a></li><li>code: <code>general-remarks</code></li></ul></td>
    </tr>
        <tr>
      <td>Feedback required</td>
      <td><code>ServiceRequest.extension[feedback].valueBoolean</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber",
      "valueBoolean": false
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>Validity start date</td>
      <td><code>ServiceRequest.extension[validity]</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-02-18",
        "end": "2027-02-18"
      }
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>- End date</td>
      <td><code>ServiceRequest.extension[validity].valuePeriod.end</code></td>
      <td><pre><code class="language-json">{
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-02-18",
        "end": "2027-02-18"
      }
    }
  ]
}</code></pre></td>
      <td></td>
    </tr>
  </tbody>
</table>
