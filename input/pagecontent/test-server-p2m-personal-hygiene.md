{% raw %}



### Scenario

<ol>
<li>A patient with Parkinson's disease is disoriented in time and space and experiences nocturnal and occasional daytime urinary incontinence. The physician identifies a need for personal hygiene assistance.</li>
<li>The physician prescribes assistance once a day for one year, up to 365 sessions, recording Parkinson's disease as the diagnosis. Feedback from the nurse is not required.</li>
</ol>

### Create Prescription

`POST /ServiceRequest`

Profile: [ereferral-servicerequest-nursing](StructureDefinition-ereferral-servicerequest-nursing.html).

Retain the returned ServiceRequest id. Clinical plaintext in the table is represented by encrypted values in the request.

#### Business Values

| Business Field | Value |
| --- | --- |
| Prescription / proposal type | Assistance with personal hygiene |
| Requested care | Assistance with personal hygiene |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Physician, SSIN {{prescriberSsin}} |
| Validity start | {{validityStartDate}} |
| Feedback required | No |
| Frequency | 1 time(s) per 1 day |
| Treatment period | 1 year(s) |
| Maximum sessions | 365 |
| Diagnosis / medical problem, before encryption | Parkinson&#39;s disease |
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
        &quot;code&quot;: &quot;hygienic-care&quot;
      }
    ]
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Requested care</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.code</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;coding&quot;: [
    {
      &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
      &quot;code&quot;: &quot;225964003&quot;
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
    &quot;start&quot;: &quot;{{validityStartDate}}&quot;
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
    &quot;periodUnit&quot;: &quot;d&quot;,
    &quot;count&quot;: 365,
    &quot;boundsDuration&quot;: {
      &quot;value&quot;: 1,
      &quot;system&quot;: &quot;http://unitsofmeasure.org&quot;,
      &quot;code&quot;: &quot;a&quot;
    }
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
        "start": "{{validityStartDate}}"
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
          "code": "hygienic-care"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "225964003"
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
      "periodUnit": "d",
      "count": 365,
      "boundsDuration": {
        "value": 1,
        "system": "http://unitsofmeasure.org",
        "code": "a"
      }
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
        "id": "886e515c-c542-4c0d-bcbb-90afe320b114",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AgDE8GBduDnguZgWiScoxXJEWDmPKayD5Z7PButZa3XJ6nXxQJsdEfU8eqvyksidZcOZxWhACHnYApEDZBreTLdaPQ:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQzNDAsImlhdCI6MTc5NTQzMzc0MCwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..VKSaS9atIY3x2RZE.AofVCC91F8V2x018K_IRMSzfw17ptCJDPysdRyrkjAmyc5RDo4RLkWXMC2HA5yJmD0YURkOlDV9DFSwTr8TW2jb2JlrBSjAKfJimIABaiaYwMbK4EQRFAopCBFDNG73W87Jx54VQaM9wVlbhQVxegvnkMrJuK70cGlBed8kv2eyw42HRhHGu.yakg9LQSl00rv38DJ5vieQ",
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
        "start": "2026-11-23"
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
          "code": "hygienic-care"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "225964003"
      }
    ]
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:AwAN-_iTfKunFYDKMON_NcO0GA_qjp_VqloqHVURbSA9ADKoP3v1PoJELOmSA7qI0dMbaA8WOV92Qex_51yZEkFeHA:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQzMzksImlhdCI6MTc5NTQzMzczOSwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..wLZkRocBJSqFutC2.AQBRt0MhnF2RwUWJn-Q9ybY5-AJ3kgWFnhJtSDSf4qVdP7lMiA4uI6qVDd9ZiZJre4Qhcl4oCaJPvMGb4rx1i5NXK9vKcjeGuddyf5r4XKWG2ht8RRbBPWkeiD29RYtPwbBxREg25eyWXg4hoKacIHqPTxBa-2tcxsA_UPQJvISy7SD_1Cwi.qkcv2Ev6KTx_t5EjRB8uAQ",
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
      "periodUnit": "d",
      "count": 365,
      "boundsDuration": {
        "value": 1,
        "system": "http://unitsofmeasure.org",
        "code": "a"
      }
    }
  },
  "authoredOn": "2026-11-23T11:35:40.430Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:886e515c-c542-4c0d-bcbb-90afe320b114:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..16YX_K2_Z9qbEbJK.Aq0P7x_WhCl6o0_yEZNHPS4aqIyg_68.5BRwqjYeosTCkQ1uAUsAcQ",
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
