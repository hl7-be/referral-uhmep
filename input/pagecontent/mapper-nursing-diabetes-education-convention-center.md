Prescription type code: `diabetic-education-convention-center`.

Example: [example-drp-nursing-de-convention-center](ServiceRequest-example-drp-nursing-de-convention-center.html).

This table maps the business fields to the corresponding FHIR elements.

### Business fields

| Business field | Values / constraints | Data type | Notes |
| --- | --- | --- | --- |
| Prescription type |  |  |  |
| Discipline |  |  |  |
| Validity period |  |  | Business validity of the prescription. |
| Patient |  |  | SSIN identifier; value must follow pseudonymization rules. |
| Requester / prescriber |  |  | Reference to the prescribing practitioner role. |
| Education type | ... | String |  |
| Frequency |  |  | Required in business template. Timing repeat block. |
| - Number of repetitions | ... times per | Integer | Number of repetitions per period. |
| - Time unit | - Day<br>- Week<br>- Month | Enum |  |
| Treatment period |  |  | Required in business template. Overall treatment period. |
| - Duration | ... | Integer | Duration value. |
| - Time unit | - Day(s)<br>- Week(s)<br>- Month<br>- Year(s) | Enum |  |
| Number of sessions (max) | ... | Integer | Required in business template. Total number of planned sessions. |
| General remarks | ... | String | Free text; must be encrypted with a pseudonymized key. |
| Feedback required | - Yes<br>- No (par defaut) | Boolean | Required in business template. `be-ext-feedback-to-prescriber`. |
| Prescription validity |  |  | `be-ext-validity-period`. |
| - Start date | Today (default) | Date | Required in business template. Start of prescription validity. |
| - End date | Start date + 1 year (max) | Date | Required in business template. End of prescription validity. |

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
          "code": "diabetic-education-convention-center"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"><code>https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type</code></a></li><li>code: <code>diabetic-education-convention-center</code></li><li>binding: <a href="https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type"><code>be-vs-nursing-prescription-technical-type</code></a></li></ul></td>
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
      <td>Education type</td>
      <td><code>ServiceRequest.orderDetail</code></td>
      <td><pre><code class="language-json">{
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "211141000172109"
        }
      ]
    }
  ]
}</code></pre></td>
      <td><ul><li>system: <a href="http://snomed.info/sct"><code>http://snomed.info/sct</code></a></li><li>code: <code>211141000172109</code></li></ul></td>
    </tr>
        <tr>
      <td>Frequency</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 4,
        "system": "http://unitsofmeasure.org",
        "code": "mo"
      },
      "count": 52,
      "frequency": 3,
      "period": 1,
      "periodUnit": "wk"
    }
  }
}</code></pre></td>
      <td><ul><li>system: <a href="http://unitsofmeasure.org"><code>http://unitsofmeasure.org</code></a></li><li>code: <code>mo</code></li></ul></td>
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
        "value": 4,
        "system": "http://unitsofmeasure.org",
        "code": "mo"
      }
    }
  }
}</code></pre></td>
      <td><ul><li>system: <a href="http://unitsofmeasure.org"><code>http://unitsofmeasure.org</code></a></li><li>code: <code>mo</code></li></ul></td>
    </tr>
        <tr>
      <td>- Duration</td>
      <td><code>ServiceRequest.occurrenceTiming.repeat.boundsDuration.value</code></td>
      <td><pre><code class="language-json">{
  "occurrenceTiming": {
    "repeat": {
      "boundsDuration": {
        "value": 4
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
      "count": 52
    }
  }
}</code></pre></td>
      <td></td>
    </tr>
        <tr>
      <td>General remarks</td>
      <td><code>ServiceRequest.note[general-remarks].text</code></td>
      <td><pre><code class="language-json">{
  "note": [
    {
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
      ],
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-general-remarks}}",
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
      <td>Prescription validity</td>
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
      <td>- Start date</td>
      <td><code>ServiceRequest.extension[validity].valuePeriod.start</code></td>
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
