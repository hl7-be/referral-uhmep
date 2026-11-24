# P2M Nursing - Glycemia test with glucometer

{% raw %}
<details markdown="1">
<summary>Example request captured with Postman</summary>

This request received HTTP 201 in INT with the 3.0.0 collection. The practitioner identifier below is fictional. Only canonical profile and extension URLs were adapted to the 4.0 draft. This adapted example has not been sent or validated against a 4.0 server.

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    ],
    "extension": [
      {
        "id": "21dedee6-cfac-4d6e-9d1e-f7205a6a9f91",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AwGwotWMVxBEaEjaZ3yGcW6a3brTXdoSScOrd5EV9u1ibXdZlqbuVSiP-w03Jl8N4xpsgnAO6tqDfXAyQO5Lt3sSXQ:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQxMzcsImlhdCI6MTc5NTQzMzUzNywiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..O9dsj4sV97GOEWaR.TS9iIK7SLpC1SKI3QgdHuJI3LmX207BK1DpEY4vZJFNbTNTm8QpT2F9NL1fP5vdgW_orJ2VZzi_PilqKhR1xxHxr57iDeDoGGQ8X6fbmM177vSb-96POY6mGbpDMsocf6oDE-YF0_XhyDdFyW0kkjDh2Q1wqH2yp6smU0yYy1-SCHY6SDJd2.xQ3Y-aDrLNMlU2uC4tmHfQ",
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
          "code": "glycemic-test"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "166900001"
      }
    ]
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:AwHYq2u7txT3IWvhLLHB31AkiudT-9f8Io-IChfu3Znd6xOeQufG6Ca0RUbsA2bNkt_WFk4et5s496bcY1ERKUCl6A:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQxMzcsImlhdCI6MTc5NTQzMzUzNywiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..3NMm8oCDnm53vgMJ.I-XJCE_xnOhEtm2IMZP6hEaXm-J-Y-k94FaZCRTBfvfF7QjHxuIL5MlAkAO5KbllmmAzhfMWmYRp37LNHrsEts4ajj_cQiu6QWcO9cl89pEaqOqVqt97-sikMULzzgL7G5OThE-CRSjxhhjt-LKCmVQKrQ2Fu_0nJuf2crHIJAbr7WDDVLlR.VRVdPLnCrv-K4An561b0ig",
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
      "frequency": 3,
      "period": 1,
      "periodUnit": "wk",
      "count": 6,
      "boundsDuration": {
        "value": 2,
        "system": "http://unitsofmeasure.org",
        "code": "wk"
      }
    }
  },
  "authoredOn": "2026-11-23T11:32:18.124Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "orderDetail": [
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-glycemia-measurement-timing",
          "code": "fasting"
        }
      ]
    }
  ],
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:21dedee6-cfac-4d6e-9d1e-f7205a6a9f91:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..9Yh9B9WZNfP6zFaK.wHinDtusPFntjP0Ff3Blfp4I6_7qpul-vU44z0hqh4w98QZgIAGClyb6SEdlSNdp7OiOmcrf3Ag.bN0jqNxgPaxNbw6ygE9_Rg",
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
