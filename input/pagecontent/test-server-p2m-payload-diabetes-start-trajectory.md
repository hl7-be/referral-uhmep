# P2M Nursing - Diabetes education within start trajectory

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
        "id": "dcf7d999-e364-42e8-a4eb-55d288252cdc",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AwFZah7qVLz5RJr3Zd7nA4WZPcRqDH7V1TinPPJ_GrSpEYJEUnEM33oj3K6Q_RUkbBk9q2QLUfMu-zh3-8c063g-kQ:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzI4NTgsImlhdCI6MTc5NTQzMjI1OCwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..uqDlNj78v8g3iRHw.a9bDOJ7bIdqn1v8S-jlU3fz0TScWJ1gLn66MekJiB36G8TU343_7IYbKdfJQ1fwTwrjuK_THsb00B7WyozcIczbrlSjSagOr6k_Z9XV0Amp0e88pW8JmW0Jk9kHg1RiVgoojD25Jp6STPEwZC1UP94Oib5O_1cSRjakHoUQD-H3n1suJ9P-9.nbqRkoNvps01u0cdfOtXfA",
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
          "code": "diabetic-education-within-start-trajectory"
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
      "value": "urn:be:fgov:pseudo:v2:AgAnxnkSEqBaRSk-4_jOPGT7XthDqAYaiuRjWiG-4fwK3SBU1OaFYJn4UNwOMcKBCK9h6l68SIA-VOBh4SFmFewrSw:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzI4NTgsImlhdCI6MTc5NTQzMjI1OCwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..gLXIZL1tkzmjPv_m.awMwxRqAqfXnuH03gnNGDn6qISHBqyd32QAvU10xbp0ZIhZGE0HBXatmGsIlAeNf0uQ1SxQgBIZxzR2vf__Pr5GcGYWHFzVK_Y1dru5PlHzPpfD-1TpabdvzFCie-cp1KMV5r9UI5ig9mRf33gcmWf8c15wi2u0pk2ZpG1zIlxDxkleAznQ9.6ytL5iSYGjvqvI4hAuktog",
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
      "frequency": 4,
      "period": 1,
      "periodUnit": "a",
      "count": 4
    }
  },
  "authoredOn": "2026-11-23T11:10:59.252Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "211151000172106",
          "version": "http://snomed.info/sct/11000172109"
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
      "text": "urn:be:fgov:pseudo-encrypted:v1:dcf7d999-e364-42e8-a4eb-55d288252cdc:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..xtQ3iCQYiwfcK3te.dnjwGr3g2kU5GQK6Pu6-ireuLmUra8wBsR25.dtv4nIQjkcg3CzuF8mEqgQ",
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
