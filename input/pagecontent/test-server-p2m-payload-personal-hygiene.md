# P2M Nursing - Assistance with personal hygiene

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
