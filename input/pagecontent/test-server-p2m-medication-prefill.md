{% raw %}



### Scenario

<ol>
<li>A patient reports difficulty adhering to her medication regimen. Following assessment, the physician finds no medical justification for reimbursed medication preparation, but the patient still requests assistance.</li>
<li>The physician creates a prescription for non-refundable medication prefill preparation once a week, without required feedback. The validity end date is no later than one year after the validity start date.</li>
</ol>

### Create Prescription

`POST /ServiceRequest`

Profile: [ereferral-servicerequest-nursing](StructureDefinition-ereferral-servicerequest-nursing.html).

Retain the returned ServiceRequest id. Clinical plaintext in the table is represented by encrypted values in the request.

#### Business Values

| Business Field | Value |
| --- | --- |
| Prescription / proposal type | Medication prefill preparation, not refunded |
| Requested care | Medication prefill preparation, not refunded |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Physician, SSIN {{prescriberSsin}} |
| Validity start | {{validityStartDate}} |
| Validity end | {{validityEndWithinYear}} |
| Feedback required | No |
| Frequency | 1 time(s) per 1 week |
| Diagnosis / medical problem, before encryption | Difficulty adhering to her medication regimen |
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
        &quot;code&quot;: &quot;medication-prefill-preparation-not-refunded&quot;
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
  &quot;reference&quot;: &quot;PractitionerRole/{{prescriberSsin}}-PHYSICIAN&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Validity period</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.extension (be-ext-validity-period)</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period&quot;,
  &quot;valuePeriod&quot;: {
    &quot;start&quot;: &quot;{{validityStartDate}}&quot;,
    &quot;end&quot;: &quot;{{validityEndWithinYear}}&quot;
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Feedback required</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.extension (be-ext-feedback-to-prescriber)</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber&quot;,
  &quot;valueBoolean&quot;: false
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Frequency, treatment period and sessions</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.occurrenceTiming</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;repeat&quot;: {
    &quot;frequency&quot;: 1,
    &quot;period&quot;: 1,
    &quot;periodUnit&quot;: &quot;wk&quot;
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Diagnosis / medical problem, before encryption</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.reasonCode</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;text&quot;: &quot;urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{diagnosisJwe}}&quot;,
    &quot;_text&quot;: {
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
              &quot;valueCode&quot;: &quot;encrypted&quot;
            },
            {
              &quot;url&quot;: &quot;version&quot;,
              &quot;valuePositiveInt&quot;: 1
            }
          ]
        }
      ]
    }
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
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing"
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
    },
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber",
      "valueBoolean": false
    }
  ],
  "status": "active",
  "intent": "order",
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
          "code": "medication-prefill-preparation-not-refunded"
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
    "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN"
  },
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{diagnosisJwe}}",
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
}
```

<details markdown="1">
<summary>Example request captured with Postman</summary>

This request was accepted in INT before the practitioner identifier was replaced with a fictional value. The modified example has not been sent.

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    ],
    "extension": [
      {
        "id": "97455074-18d0-4bbe-aa02-3cf736e535bc",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AgB9rg_CNuih8KsgcsVxZ0H_lVqvswlTibhtW50UIl0ofjuHG4mexqeTXhwB7fni2_oHqpaGEpoS1Se0z4uIyNyKEw:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQxNzIsImlhdCI6MTc5NTQzMzU3MiwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..BD7V2CAjm9_5D3uv.HtY-fA_3I07M-8W-gCWPSjJyQU2QFU29m8D4ia243dYQTqT0PWdJR56GcQ-6Tgfet7znJbvfzZfAzOAbV3_m03tm6s0ynqHEk4ZBjmL2kJF4BeOfmkTZUFfIt2k28JsS3clh0RGxgEHYG7w9i3CCFUXSlZjBhsyOu9V5w2kCb5U4Hqsycl5e.OeMmf8A734Nb5u9Eb1TgDA",
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
        "start": "2026-11-23",
        "end": "2027-11-22"
      }
    },
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber",
      "valueBoolean": false
    }
  ],
  "status": "active",
  "intent": "order",
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
          "code": "medication-prefill-preparation-not-refunded"
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
      "value": "urn:be:fgov:pseudo:v2:AwAMQNvZCL_T9VRGaNJAI7XxcK_038BatAE0uSgyv6hAS_Q5rDb-JyuL8bPk2DSuN-B5MIn0VYLmJ9iXg7UysjgRGQ:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQxNzIsImlhdCI6MTc5NTQzMzU3MiwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..GidxD6Ko7NWJ1jVK.gO-i0gATbz7920x7atRSO8ai27W35b0TvtUTNnbo94WPbtdUPUDlTwt5AEm8u17w5ECUJWEG-vS3-sg3qEwObo0KMaW9cBwovdZTXCKNr9dGjP0UATs7kEM4kEB3icaNFBvkaz3hURsM26CH02A5ijVE7H5iaSuL6AKXdnnzTEp_l61aqLZY.jbr6_y3G7SNcUbGtWg8Hgg",
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
  "authoredOn": "2026-11-23T11:32:53.019Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:97455074-18d0-4bbe-aa02-3cf736e535bc:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..bYbrNyuY_ljS4FRk.-ZeNoMJB9yNQWg5hZOvu7Zmp7SLIbBp9XZOs6xanbh8MNS2TvA15EJ2I1KTn.JQP4ZMcTk9pnaicVGOL9Eg",
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
}
```

</details>

{% endraw %}
