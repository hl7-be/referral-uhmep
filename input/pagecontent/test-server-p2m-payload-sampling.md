# P2M Nursing - Sampling

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
