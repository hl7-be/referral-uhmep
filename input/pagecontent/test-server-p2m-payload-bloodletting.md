# P2M Nursing - Bloodletting

{% raw %}
<details markdown="1">
<summary>Example request captured with Postman</summary>

The target environment for this captured request was not retained. The practitioner identifier below is fictional. Only canonical profile and extension URLs were adapted to the 4.0 draft. This adapted example has not been sent or validated against a 4.0 server.

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    ],
    "extension": [
      {
        "id": "33aec02e-227e-4fb0-b572-f17295d5cb8c",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AgBPgmC_qLCzCgqmJdMUzlYQC_jLRgC165171-0_NuTyuwmIA6Y7QU7N0ZpvorhjVUx_6xgremQEmoXYPaF799eCkA:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzEyNTEsImlhdCI6MTc5NTQzMDY1MSwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..fxKpiT9VL0Pv-U0z.poZvhUOSs6HLWWuRpdByyFZa1VIvSj6k-hxNrzTM5hqsha6YId4bTZpAr4sLRHNXg25IbI3i04sw8WE1Z0sOarWWUKuo4p3-C8pd6F1n3f5m45kthvvMigBSUwcy_hZq8t8gfxzU0RnDJ12loTHGYSJziPETQTKMiLLY3Nb8UUrBfjxqVzxV.CzWKsP9yh7qJOnX4GSmLkQ",
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
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-11-23"
      }
    },
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber",
      "valueBoolean": true
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
          "code": "bloodletting"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "127606004"
      }
    ]
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:AwGwhwlnC0E7g4tQwm2oCGr69xU4ceIgXqZBhRVzz3EkxctLQotvlCiuAKeNkkFBK-8DTG9yr2eYsVZu2R-gP-9Vag:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzEyNTEsImlhdCI6MTc5NTQzMDY1MSwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..XN6e-i3cCqv240FX.WpLK2NobrpRoN7Ek6neoxWyWBLajRR8HA_v2MCnHS6lt0KJwDRRQ1LQzxLkAq3tfnXkxAMvZXcIbVm7e04ZwJYECfnXAGew-vI4MrTa1Kadv6f3a2DMQUxMksIZ1Lp9ONT4Y1FBgleKRdyBsJWVE3xCwYCxVH9WsJX_wbJXS1CxLCG5BJSkc.mkCtxKY4JQs3QcSf76rFwQ",
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
      "frequency": 2,
      "period": 1,
      "periodUnit": "wk",
      "count": 4,
      "boundsDuration": {
        "value": 2,
        "system": "http://unitsofmeasure.org",
        "code": "wk"
      }
    }
  },
  "authoredOn": "2026-11-23T10:44:11.735Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "quantityQuantity": {
    "value": 350,
    "system": "http://unitsofmeasure.org",
    "code": "mL"
  },
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:33aec02e-227e-4fb0-b572-f17295d5cb8c:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..NiwXnQl-sW9PYqnM.zkYYK3B6H017GnB8HpZpW_rfgIxKhfK1ynRGLhHiTH48eqSGM6SjKS2jLkWx9muH85N4.8m0sKAjrhzKjPCgcjTubrA",
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
