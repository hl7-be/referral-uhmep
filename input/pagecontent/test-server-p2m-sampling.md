{% raw %}



### Scenario

<ol>
<li>A patient presents with redness, swelling and pain in the right knee, fever and fatigue. The physician suspects a wound infection and requests diagnostic sampling.</li>
<li>The physician prescribes wound-fluid sampling from the right knee once a day for one week, up to seven sessions, without required feedback. The remarks specify wound fluid for bacterial culture.</li>
</ol>

**Source discrepancy:** The narrative also mentions a blood draw. The structured template specifies wound fluid only, which is the sample type used in this test.

### Create Prescription

`POST /ServiceRequest`

Profile: [ereferral-servicerequest-nursing](StructureDefinition-ereferral-servicerequest-nursing.html).

Retain the returned ServiceRequest id. Clinical plaintext in the table is represented by encrypted values in the request.

#### Business Values

| Business Field | Value |
| --- | --- |
| Prescription / proposal type | Sampling |
| Requested care | Sampling |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Physician, SSIN {{prescriberSsin}} |
| Validity start | {{validityStartDate}} |
| Feedback required | No |
| Frequency | 1 time(s) per 1 day |
| Treatment period | 1 week(s) |
| Maximum sessions | 7 |
| Sample type | Wound fluid |
| Sampling site and laterality | Right knee |
| Diagnosis / medical problem, before encryption | Suspected wound infection of the right knee |
| General remarks, before encryption | Wound fluid for bacterial culture from the wound on the right knee |
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
        &quot;code&quot;: &quot;sampling&quot;
      }
    ]
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Requested care</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.code</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;coding&quot;: [
    {
      &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
      &quot;code&quot;: &quot;17636008&quot;
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
    &quot;count&quot;: 7,
    &quot;boundsDuration&quot;: {
      &quot;value&quot;: 1,
      &quot;system&quot;: &quot;http://unitsofmeasure.org&quot;,
      &quot;code&quot;: &quot;wk&quot;
    }
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Sample type</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.orderDetail</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;247450001&quot;
      }
    ]
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Sampling site and laterality</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.bodySite</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;72696002&quot;
      }
    ],
    &quot;extension&quot;: [
      {
        &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality&quot;,
        &quot;valueCoding&quot;: {
          &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
          &quot;code&quot;: &quot;24028007&quot;
        }
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
<tr><td style="overflow-wrap: anywhere;">General remarks</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.note (general-remarks)</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;text&quot;: &quot;urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{remarksJwe}}&quot;,
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
  },
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept&quot;,
      &quot;valueCodeableConcept&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types&quot;,
            &quot;code&quot;: &quot;general-remarks&quot;
          }
        ]
      }
    }
  ]
}</code></pre></td></tr>
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
          "code": "sampling"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "17636008"
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
      "count": 7,
      "boundsDuration": {
        "value": 1,
        "system": "http://unitsofmeasure.org",
        "code": "wk"
      }
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
          "code": "247450001"
        }
      ]
    }
  ],
  "bodySite": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "72696002"
        }
      ],
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality",
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "24028007"
          }
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
  ],
  "note": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{remarksJwe}}",
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
      },
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
        "id": "6ee250c3-2847-4b29-b419-04f672214c0c",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AwAqqUPEPnHISlchSE-Q1w3XOF9L1l2ImHJ6GUROb_CsVDAQShu2P7RbW9YkRxs9Yn77H6j_20dsJ-Paim2BLLcwNA:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQ0MDcsImlhdCI6MTc5NTQzMzgwNywiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..dH01O9nzzVm1JNwr.AZ34MpOsXgxKj_IBJjbw75s1zpfQrk_UJMM50dFzAXuRUZXQLfazbk8Qo9tF_61o3HihqBx6tS4S0xIYOjdXxzzY5CUIbyukLpsOIJcTkYoCyD7K-7aCAZMAeam2rOYHiIrjZK9aQIcQFoDB3czzs2yYyehw8ew1ewaFHdArNHthj4Ux3yN1.zpNGB_isYqVcbm8c673p7g",
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
          "code": "sampling"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "17636008"
      }
    ]
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:AgDKIPhsPPWF2yaL7nJ81daNR4IV5F1_LNUGVtYJv6Yz2rgYfMQFnXXU3tZpxgarsKu4hrEfU-3mEz0M1Fb0auES6g:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQ0MDcsImlhdCI6MTc5NTQzMzgwNywiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..asXBxXKp1Kkipd4X.Wsy6MVh7y9j4S7K-Ar7l2X0vBZ2pz3BVdRSy5NECC81LIY6bfzVDtv6K0VN_wnt7aygt7uXUKB-KjTOZHep_hp2XUm0P2G27isbKcCdr6qz_ctTHf1EfdN49y9Q8fPQanabmaDfKntJL2iwQSStx8QyuCFWku_jZaDqQ6AoML3kFLhV1k3M7.h0FHmoEwnx_oUKoZ_9yutQ",
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
      "count": 7,
      "boundsDuration": {
        "value": 1,
        "system": "http://unitsofmeasure.org",
        "code": "wk"
      }
    }
  },
  "authoredOn": "2026-11-23T11:36:47.676Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "247450001"
        }
      ]
    }
  ],
  "bodySite": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "72696002"
        }
      ],
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality",
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "24028007"
          }
        }
      ]
    }
  ],
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:6ee250c3-2847-4b29-b419-04f672214c0c:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..jwaWSmJf4x0_Nrnm.WDXiZNbWmObUljdtL6i68fa-FPnKcjBaqvJTFSZs1qcxyhgQ_Grgr_7kqA.XTFXHVmrtCxnsvbW8vMNJw",
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
  ],
  "note": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:6ee250c3-2847-4b29-b419-04f672214c0c:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..No9--Q7aDlCURXcJ.r7tb_VKRrdRo72DDzOyY6eW4NW7Fctia2iiavT-2FHrB-u0fwvGwP5-L5NQkwwHvbQg9zZb22hC2rT8I-hQIpbP_.t0PVWgzUD8O-mR9bfTVkeg",
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
      },
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
}
```

</details>

{% endraw %}
