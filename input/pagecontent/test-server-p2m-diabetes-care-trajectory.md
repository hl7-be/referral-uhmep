{% raw %}



### Scenario

<ol>
<li>A patient with type 2 diabetes treated with insulin is enrolled in a diabetes care path and has a complete global medical file. During follow-up, the physician recommends education on using a blood glucose meter.</li>
<li>The physician prescribes five individual education sessions per year, with a maximum of the first five sessions and no required feedback. The validity ends on 31 December of the year in which validity starts.</li>
</ol>

**Source discrepancy:** The narrative selects blood glucose meter education. The template lists additional education topics without distinguishing selected values from options. This test follows the narrative and does not add the other topics.

### Create Prescription

`POST /ServiceRequest`

Profile: [ereferral-servicerequest-nursing](StructureDefinition-ereferral-servicerequest-nursing.html).

Retain the returned ServiceRequest id. Clinical plaintext in the table is represented by encrypted values in the request.

#### Business Values

| Business Field | Value |
| --- | --- |
| Prescription / proposal type | Diabetes education within care trajectory |
| Requested care | Diabetes education within care trajectory |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Physician, SSIN {{prescriberSsin}} |
| Validity start | {{validityStartDate}} |
| Validity end | {{validityEndCalendarYear}} |
| Feedback required | No |
| Educator | Nurse |
| Frequency | 5 time(s) per 1 year |
| Maximum sessions | 5 |
| Education type | Use of a blood glucose meter |
| Session type | Individual |
| Diagnosis / medical problem, before encryption | Type 2 diabetes treated with insulin |
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
        &quot;code&quot;: &quot;diabetic-education-within-care-trajectory&quot;
      }
    ]
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Requested care</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.code</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;coding&quot;: [
    {
      &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
      &quot;code&quot;: &quot;385805005&quot;
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
    &quot;end&quot;: &quot;{{validityEndCalendarYear}}&quot;
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Feedback required</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.extension (be-ext-feedback-to-prescriber)</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber&quot;,
  &quot;valueBoolean&quot;: false
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Educator</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.extension (be-ext-performer-type)</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-performer-type&quot;,
  &quot;valueCodeableConcept&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;224543004&quot;
      }
    ]
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Frequency, treatment period and sessions</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.occurrenceTiming</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;repeat&quot;: {
    &quot;frequency&quot;: 5,
    &quot;period&quot;: 1,
    &quot;periodUnit&quot;: &quot;a&quot;,
    &quot;count&quot;: 5
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Education type, Session type</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.orderDetail</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;370858005&quot;
      }
    ]
  },
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-diabetic-education-type&quot;,
        &quot;code&quot;: &quot;diabetic-education-glucose-meter&quot;
      }
    ]
  },
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-session-types&quot;,
        &quot;code&quot;: &quot;individual-session&quot;
      }
    ]
  }
]</code></pre></td></tr>
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
        "end": "{{validityEndCalendarYear}}"
      }
    },
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber",
      "valueBoolean": false
    },
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-performer-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "224543004"
          }
        ]
      }
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
          "code": "diabetic-education-within-care-trajectory"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "385805005"
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
      "frequency": 5,
      "period": 1,
      "periodUnit": "a",
      "count": 5
    }
  },
  "authoredOn": "{{createdAt}}",
  "requester": {
    "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN"
  },
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "370858005"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-diabetic-education-type",
          "code": "diabetic-education-glucose-meter"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-session-types",
          "code": "individual-session"
        }
      ]
    }
  ],
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
        "id": "ad0395b7-52e9-496b-9eb5-8a105270e2d9",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AwFLuMukzME3gn1ckM1vlHpfS1IzU-mGWNtvWAHgluBoanWx3uSR37chCCi7bSR_lPPAjEMb13ohtWqT2QHhmvYLyw:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzI0MDUsImlhdCI6MTc5NTQzMTgwNSwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..0WjUnWDAhrdW_D77.IbRTSedrMfbdwJFN-PIfhNTmgvUIYmY6idLI1m3O6Ph2Fply_3iMJZGEDZtIb-xwzjikER8ah3bCB8Qly8cfzt3ikZUxARSOblrcQq88tBONXpgZ70gNq4VxVRPZewxXedvImupJl2xCTvA0Jt712QO41zmZhjIHHJunmCuGpnrZUQXm64mP.3GGRZQWG9B0NdTt6_N8cnA",
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
        "end": "2026-12-31"
      }
    },
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber",
      "valueBoolean": false
    },
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-performer-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "224543004"
          }
        ]
      }
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
          "code": "diabetic-education-within-care-trajectory"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "385805005"
      }
    ]
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:AwENlyr6pjzmF6xKeJhG5uL1peWxx53ZjAKwpNm_KGO2wtUhSDo6PhMQ4N3lWWv86mMUtz3NzKCfNSI4f7kmNim12w:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzI0MDUsImlhdCI6MTc5NTQzMTgwNSwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..XnlaMIQ6IOrQUnfu.3cBFH7bnQeXAwMcpQ-2EkzG5zVeYV6aMu2SqX3hgiFIdWPHN7yHbz5aSBczjLuAm_hMuEYVhZ7W_2n68QlpGO7Whx7ungPsfHRUVkE-WHfATtZlOsbynBOY6k7ma7uJe33XM_9I7qC711IOiEfKtHK7xGLbMshBmlQK-uiTmTyzesy-Ic9_U.G6YM_TMsHv17wobxIkcYLg",
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
      "frequency": 5,
      "period": 1,
      "periodUnit": "a",
      "count": 5
    }
  },
  "authoredOn": "2026-11-23T11:03:25.806Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "370858005"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-diabetic-education-type",
          "code": "diabetic-education-glucose-meter"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-session-types",
          "code": "individual-session"
        }
      ]
    }
  ],
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:ad0395b7-52e9-496b-9eb5-8a105270e2d9:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..2uohjH4BZWadwj9K.vIDU3kPRNXOwsRr0w5dQo_26_RQPDzzASczhnAl1_K5EZqgC.X3E-tgG3waKqp0_2nwcbtw",
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
