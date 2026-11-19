{% raw %}



### Scenario

<ol>
<li>During regular home care for a patient with dementia, a nurse observes difficulty cooperating with treatment and confusion about the treatment.</li>
<li>The nurse creates an Annex 81 proposal for weekly medication preparation, recording both nursing diagnoses and dementia as the underlying medical problem. The validity end date is no later than one year after the validity start date.</li>
</ol>

For M2M, the organization submits creation on behalf of its internal professional.

### Create Proposal

`POST /ServiceRequest`

Profile: [ereferral-annex-81](StructureDefinition-ereferral-annex-81.html).

Retain the returned ServiceRequest id. Clinical plaintext in the table is represented by encrypted values in the request.

#### Business Values

| Business Field | Value |
| --- | --- |
| Prescription / proposal type | Medication preparation, Annex 81 proposal |
| Requested care | Medication preparation, Annex 81 proposal |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Nurse, SSIN {{nurseSsin}}, representing organization NIHII {{organizationNihii}} |
| Validity start | {{validityStartDate}} |
| Validity end | {{validityEndWithinYear}} |
| Frequency | 1 time(s) per 1 week |
| Diagnosis / medical problem, before encryption | Dementia |
| Nursing diagnoses | Expressing difficulty cooperating with treatment. Being confused about treatment. |
| Creation date | {{createdAt}} |

#### FHIR Mapping

<table class="grid test-server-mapping" style="width: 100%; table-layout: fixed;"><thead><tr><th scope="col" style="width: 22%;">Business Field</th><th scope="col" style="width: 28%;">FHIR Field</th><th scope="col">FHIR JSON</th></tr></thead><tbody>
<tr><td style="overflow-wrap: anywhere;">Prescription / proposal type</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.category</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;9632001&quot;
      }
    ]
  },
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type&quot;,
        &quot;code&quot;: &quot;medication-prefill-preparation-appendix-81&quot;
      }
    ]
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Requested care</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.code</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;coding&quot;: [
    {
      &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
      &quot;code&quot;: &quot;385796006&quot;
    }
  ]
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Patient</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.subject</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;identifier&quot;: {
    &quot;use&quot;: &quot;official&quot;,
    &quot;system&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin&quot;,
    &quot;value&quot;: &quot;urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}&quot;,
    &quot;_value&quot;: {
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization&quot;,
          &quot;extension&quot;: [
            {
              &quot;url&quot;: &quot;marker&quot;,
              &quot;valueBoolean&quot;: true
            },
            {
              &quot;url&quot;: &quot;format&quot;,
              &quot;valueCode&quot;: &quot;direct&quot;
            },
            {
              &quot;url&quot;: &quot;version&quot;,
              &quot;valuePositiveInt&quot;: 2
            }
          ]
        }
      ]
    }
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Requester</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.requester</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;reference&quot;: &quot;PractitionerRole/{{nurseSsin}}-NURSE-NIHII-{{organizationNihii}}&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Validity period</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.extension (be-ext-validity-period)</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period&quot;,
  &quot;valuePeriod&quot;: {
    &quot;start&quot;: &quot;{{validityStartDate}}&quot;,
    &quot;end&quot;: &quot;{{validityEndWithinYear}}&quot;
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Frequency, treatment period and sessions</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.occurrenceTiming</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;repeat&quot;: {
    &quot;frequency&quot;: 1,
    &quot;period&quot;: 1,
    &quot;periodUnit&quot;: &quot;wk&quot;
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Diagnosis / medical problem, before encryption, Nursing diagnoses</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.reasonCode</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;275928001&quot;
      }
    ]
  },
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;1290542000&quot;,
        &quot;version&quot;: &quot;http://snomed.info/sct/11000172109&quot;
      }
    ]
  },
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;52448006&quot;
      }
    ]
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Creation date</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.authoredOn</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;authoredOn&quot;: &quot;{{createdAt}}&quot;
}</code></pre></td></tr>
</tbody></table>

#### Complete FHIR Payload

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81"
    ],
    "extension": [
      {
        "id": "{{kid}}",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}",
            "_valueString": {
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
        ]
      }
    ]
  },
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "{{validityStartDate}}",
        "end": "{{validityEndWithinYear}}"
      }
    }
  ],
  "status": "active",
  "intent": "proposal",
  "category": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "9632001"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
          "code": "medication-prefill-preparation-appendix-81"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "385796006"
      }
    ]
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}",
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
  },
  "occurrenceTiming": {
    "repeat": {
      "frequency": 1,
      "period": 1,
      "periodUnit": "wk"
    }
  },
  "authoredOn": "{{createdAt}}",
  "requester": {
    "reference": "PractitionerRole/{{nurseSsin}}-NURSE-NIHII-{{organizationNihii}}"
  },
  "reasonCode": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "275928001"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "1290542000",
          "version": "http://snomed.info/sct/11000172109"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "52448006"
        }
      ]
    }
  ]
}
```

{% endraw %}
