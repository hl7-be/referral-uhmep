# P2M Nursing - Diabetes education without care trajectory

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
        "id": "3c7e4aa9-8751-461a-a13d-8854faa110ee",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AgF7KWr8DVmGsYi5x3nLwAtWpCFxI7Abx5NnyVoEoyp8PnL0gfMSM-9MbZ65YfaRbDSZJdRPgJvsH4gbnq--GgGN9w:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzI5ODksImlhdCI6MTc5NTQzMjM4OSwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..NMmrWws7stmArMhA.fcWDNgizBxsd_AcRFFypa6_6F6g4Y06Gl0ne2U2VQTEsBnS98Qy1Vy_uKCijEUdXWIsaLT3Of8axeL-e7I9lqu6GHHrCg7ZqozBd6KooIRfgLt0ieIYK8tESiCRth_Wu1GnuTvVJ0PexW5LRwEG8hV5x4yHhEzI6PqK5ECU8Tu7f9ZZ5Wa0R.RKuWZj2Z0PHPyP-6kZ6okQ",
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
          "code": "diabetic-education-without-care-trajectory"
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
      "value": "urn:be:fgov:pseudo:v2:AwARXB7APervMaAR81EAbTMgTwN8za-GmR4EGohOCx1wPdPwTieNM_gLjTNU-lFUnrT6Zw0M5exbYSu7nPoF3ijyMQ:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzI5ODksImlhdCI6MTc5NTQzMjM4OSwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..Ck7_FniFrMKuFfBL.gojhAdnjHywP7RI49uRUEUDL0JZ42tFUgD59Xj_EgFtq6Xu87dmXi4GkJDuTvdQmtZGW5mlxcWaUVRRmERoXLezuXtbphk8wwMSi4c5TifxcWIAlT7xGxFgRwbbdsgZLeIF7UFItl5SK1w3juqussK7Of15nnkqEczRh-jp7L--1J627eTXI.O6Vto75nSiNO5KyJKBUqaA",
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
      "periodUnit": "mo",
      "count": 10,
      "duration": 30,
      "durationUnit": "min"
    }
  },
  "authoredOn": "2026-11-23T11:13:10.112Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "211161000172108",
          "version": "http://snomed.info/sct/11000172109"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-diabetic-education-type",
          "code": "diabetic-education-self-care"
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
      "text": "urn:be:fgov:pseudo-encrypted:v1:3c7e4aa9-8751-461a-a13d-8854faa110ee:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..lDbae4c6ET-ZMJZx.6DqRobiO5HaO82kZb37NwFqBMAB0JuEquFkyd1Jd2jRd9VLxA-0XlA.SsYtcd34BtB49vufV-p2jw",
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
      "text": "urn:be:fgov:pseudo-encrypted:v1:3c7e4aa9-8751-461a-a13d-8854faa110ee:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..b74XuWfHPJScDcfK.Z7aBSO5AFKHZsd3OmhqOx7frq_7D.Foc-rIYY2XyXrhOaRfvjtQ",
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
