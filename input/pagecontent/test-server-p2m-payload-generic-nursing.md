# P2M Nursing - Generic nursing care

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
        "id": "5edbbdc8-6abb-4ed3-80a7-8a73b6ee9131",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AwDgv0sHoGwRX-Ry3epjFMIaslHwhLSg3JkPte1xjmCotLjB4yidzPhgSa3bYE4gCQmULNkumMC9EfeQhGWRiujLcA:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQwMDYsImlhdCI6MTc5NTQzMzQwNiwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..nyouGad-xVtVPg7Y.TeaQbsHGPkiVEeCvJCd7sPiqz41KI0LOwCIalzAoFNb9iL2p3ZuYsTbx7PxCC2ALDfX7b3Y3aeIx3y4ubGuUxJVSW43b-fF54CJ0Fqjns0UM8DBuKltyoSAduxhA-qzQhw0zaYhI53-cxFCBjf_DdEP_pfUuu46BuqxKeyiA-E4PlZ7T8LH3.8U3o-0KolyAevmQQukZFPw",
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
          "code": "generic-nursing"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "9632001"
      }
    ]
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:AwAKNhkUdYvlYRQPpUnujwgcXZ53JzsSdIYL1IT7qeYzolj9oYRr3FI0i6CSCYjZHRIerkiHibURON6gILefyuHp1w:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQwMDYsImlhdCI6MTc5NTQzMzQwNiwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..Sv7DhXMcENK9p8J3.MzbTy27xAGwe3Xuzewqxly6Ln1tw6B3Dz0RzITUnF3ils5CWvc-xDS-m_npZbI9jLJrACDM2-1ng5zH5s4UXgElq3NDPjRrmxtm_hipyg44Tn1QRVTPND2KAcqxDziVztZUhZGSV8EKaN5rqog0hMi1UKCy285hbnuzo2kSyt0BFwFH-x1aN.rsIFBey98fhvO5q4gVhi_g",
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
  "authoredOn": "2026-11-23T11:30:06.775Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "orderDetail": [
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-generic-care-types",
          "code": "gastrointestinal-care"
        }
      ]
    }
  ],
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:5edbbdc8-6abb-4ed3-80a7-8a73b6ee9131:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..5e7TEHocCx4Oa2Eh.IdpuNWmvFGkYdfgrqenNjoKdTWMh52npKQ3U1GeTuWxZbchrtf2o5cqwmOJmgcxRuGzTgUzo8T7v7ymn8qg.-Rs18gempg_Sjjj6Norjkg",
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
