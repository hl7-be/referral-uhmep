# P2M Nursing - Medication prefill preparation, not refunded

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
        "id": "97455074-18d0-4bbe-aa02-3cf736e535bc",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AgB9rg_CNuih8KsgcsVxZ0H_lVqvswlTibhtW50UIl0ofjuHG4mexqeTXhwB7fni2_oHqpaGEpoS1Se0z4uIyNyKEw:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQxNzIsImlhdCI6MTc5NTQzMzU3MiwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..BD7V2CAjm9_5D3uv.HtY-fA_3I07M-8W-gCWPSjJyQU2QFU29m8D4ia243dYQTqT0PWdJR56GcQ-6Tgfet7znJbvfzZfAzOAbV3_m03tm6s0ynqHEk4ZBjmL2kJF4BeOfmkTZUFfIt2k28JsS3clh0RGxgEHYG7w9i3CCFUXSlZjBhsyOu9V5w2kCb5U4Hqsycl5e.OeMmf8A734Nb5u9Eb1TgDA",
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
        "end": "2027-11-22"
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
          "code": "medication-prefill-preparation-not-refunded"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "385796006"
      }
    ]
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:AwAMQNvZCL_T9VRGaNJAI7XxcK_038BatAE0uSgyv6hAS_Q5rDb-JyuL8bPk2DSuN-B5MIn0VYLmJ9iXg7UysjgRGQ:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQxNzIsImlhdCI6MTc5NTQzMzU3MiwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..GidxD6Ko7NWJ1jVK.gO-i0gATbz7920x7atRSO8ai27W35b0TvtUTNnbo94WPbtdUPUDlTwt5AEm8u17w5ECUJWEG-vS3-sg3qEwObo0KMaW9cBwovdZTXCKNr9dGjP0UATs7kEM4kEB3icaNFBvkaz3hURsM26CH02A5ijVE7H5iaSuL6AKXdnnzTEp_l61aqLZY.jbr6_y3G7SNcUbGtWg8Hgg",
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
      "periodUnit": "wk"
    }
  },
  "authoredOn": "2026-11-23T11:32:53.019Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:97455074-18d0-4bbe-aa02-3cf736e535bc:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..bYbrNyuY_ljS4FRk.-ZeNoMJB9yNQWg5hZOvu7Zmp7SLIbBp9XZOs6xanbh8MNS2TvA15EJ2I1KTn.JQP4ZMcTk9pnaicVGOL9Eg",
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
