# P2M Nursing - Diabetes education within care trajectory

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
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "2026-11-23",
        "end": "2026-12-31"
      }
    },
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber",
      "valueBoolean": false
    },
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-performer-type",
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
