# P2M Nursing - Measurement of parameters

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
        "id": "a5174a8c-94d2-445f-b136-df4f17f205f2",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AgHPeeZdIISzqMV9tqBrAfiRtOEtWlnMoXEOfLCzeTdl67vbIcqniofYGx_xKyHZin7_5SIHGuQB0eQEzVVswp25Jw:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQyNzQsImlhdCI6MTc5NTQzMzY3NCwiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..tAxtBOn1nOp6Xnga.zxapLiVTmmx6pLir9r9HWrLDS2ghW2sm3WWiXrkRhc-xPGuxIlBFIH9aQOYFqUapko_15xhGFIcsBZebEX01-z0AxPKIfTXALGl--QdTzlw1Rrxhye732iT1fLDpoZ3IorY1ILvvGnrPbM_HT9WHkyFxEQAA6x-ZcZ768jIVORY27aiu7g0b.JlvvlS7-8_oC724RvqoMKA",
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
          "code": "parameters"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "61746007"
      }
    ]
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:AgEtcW5UMnS7es3SiKITyK9emg0Fko-12BNUL5kWfUh-Lhx860IiP_5FdyaNiyDBDdX__aZsWype9GDV_AsaONtmvg:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzQyNzMsImlhdCI6MTc5NTQzMzY3MywiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..tN124HblU7o1mSg_.-uoT9Ppq-P0HQKaRVp_L6yaRfvtCKsbzBRZQ7zuOSzYK08DLJIOwYmVgI20yikXwfuYiyWwsOxg1Qet64BENGRFypgcZt0qmwySX-I3oRu5dsazYdkeB1RBT8nS90gyYPUrJ2mbnmPWf5m7X23CPD4fxoaAMaGvgtJvhI060z6ycQS4z6mRb.P-OuCWY66KvoVoTl4EMXPg",
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
      "periodUnit": "d",
      "count": 14,
      "boundsDuration": {
        "value": 1,
        "system": "http://unitsofmeasure.org",
        "code": "wk"
      }
    }
  },
  "authoredOn": "2026-11-23T11:34:34.237Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "163033001"
        }
      ]
    }
  ],
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:a5174a8c-94d2-445f-b136-df4f17f205f2:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..p1KdKGFa1e1U6xzy.bU-GZI1Df9hDM5GoJJ9JM8YA8GWAq_I.Ul-0n1cVnefAOriFAkKEPA",
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
      "text": "urn:be:fgov:pseudo-encrypted:v1:a5174a8c-94d2-445f-b136-df4f17f205f2:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..i5feg4M_aCCyAhlf.xh260jJ76MtLjQq8ziFY_N7Z9FzfgzO9Fv4cZ_b_BEhf4RZOVzauj2mageIVXk28dw.uPpkbTZZNsVhDv5TeqYnkw",
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
    }
  ]
}
```

</details>
{% endraw %}
