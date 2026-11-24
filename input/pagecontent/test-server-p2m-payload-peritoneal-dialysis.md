# P2M Nursing - Chronic peritoneal dialysis

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
        "id": "200036fd-07b3-419e-9397-283238c71a16",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AwB6t6_Msl-ymibEkZ3geCw-CjLxhyLnXIbdhKtzGFzpLvBl1gGq5F-O1hJMCP-UsjAaN9idnyns5EFdIzMGRmqL2A:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQzMDUsImlhdCI6MTc5NTQzMzcwNSwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..UQfbH0LAYAxxV7dV.RBcZ9Th5OK5bvUF9Cbx19MFZzEVQHSoK4ELl5N0kUbPE_n4IYCVouIEROzRUVN2f57aAeyKql2oFYkprD8W3MM1KTpgtt4CFEzqpI0bUpxWPu0f54yCPfTyDAmKLvrZbSrcIHm4Klk0MGVKXsfl0tr-J_ko3TrFVmxAUdUXfexWF33q2itfK.QSAzhvAGrb9UippwSq-eyA",
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
          "code": "chronic-dialysis"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "225230008"
      }
    ]
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:AwGqR3S8JHYcsP8b-JD7ZMeiOeUNz9CplnQ5PV8MQc4fDd-zrIuNwZ-45ByjTg2VK-cTJR4WqdGw8y_nVMgy4du9PA:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQzMDUsImlhdCI6MTc5NTQzMzcwNSwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..Xu9EAWmUsDum7CEk.MjE87wmTtZDjvicI4vq60s8-IS4X8z7c_N6fWsdQEoXMSHaXVPQ8sOnPMganusNA8IwVumipeIYJMe0EcCEiSVYoP5oCsjegbOxuIiCCW5ck40tC1E5W2-V8A2igOP5bfNGo4-V8BgiUJzCSuK1iCzpFlOhEjzbpsaJOrJT4AzqEjZPq04RV.0fWVvkAkzy2jnWlt37cnvQ",
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
      "periodUnit": "d",
      "count": 1095,
      "boundsDuration": {
        "value": 1,
        "system": "http://unitsofmeasure.org",
        "code": "a"
      }
    }
  },
  "authoredOn": "2026-11-23T11:35:05.750Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:200036fd-07b3-419e-9397-283238c71a16:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..OMtcv4kVIrDpbwbZ.9e1btH8Ww2Dko-Kk_7kzzbgAEhaQOWrwVbBD9890z9YEzq8txKW-wyk.EHhSzFZuVxC15LG445H0JQ",
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
      "text": "urn:be:fgov:pseudo-encrypted:v1:200036fd-07b3-419e-9397-283238c71a16:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0.._Hjz3sA0RVubmTM9.rCzxR6_tQci4CcKAKUaaHG3cQZbtwmrY5JAPWHsWBiW6Gfh5ifEQALE_-6bAg5veoDU8-fLwChDPZWcbJFiXvAc6QDye2tLZbupBVk2qTn2vnHHp9qrDyq_cmibmsSyxIygrlsLF80_RRAF95XdPARGR_84D.kYjMTWljbFiWuhLU4FcJxQ",
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
                "code": "medical-reason"
              }
            ]
          }
        }
      ]
    },
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:200036fd-07b3-419e-9397-283238c71a16:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..AY2YijUX09AjvCMD.ENUQRO78kpqRwEz60-X4Bhcrf64DwatGQTRVV4srgF64Zw.szGS5KFu0RNrEyUNzt-q1A",
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
