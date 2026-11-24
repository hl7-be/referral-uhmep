# P2M Nursing - Diabetes education via convention centre

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
        "id": "eaa51357-0043-4cb5-b972-d178c9df4c71",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:AgBQYc5cBjo25A7jRISemOf2GE0nir6AsRZULmApZ_DuUbnU52sDIkfwhMK0yh-q2IMKdJdGEdG0GeGTo4BgLThVjA:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzI2NjcsImlhdCI6MTc5NTQzMjA2NywiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0..oXbOlsbr7gn8UASL.611Pih4g3X4jWjHUQDiRY7Zv7r6ZiR8fBn2GHR2m8weOYGeBckvduv0U4dCIe3YpDctWAvYKXkZxdSmIozc_xLVMarg-tsyzEHKebwzxfZ7gIkS5XLVqt4HwkAl786UkdxI8fBZmtZ2CoMNYhwkvO74VhQ4wGUaZGgzBnMetydAabHz8WdWF.KArPNM4k9WsgDZQ9HIkewg",
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
          "code": "diabetic-education-convention-center"
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
      "value": "urn:be:fgov:pseudo:v2:AgEE8r65py1KJWmejUcCv8yb8OWxeT6ZQJiUOeiStDFoEfrR-RHPVqfZ6O9gt18Up7QlOrHIOOOi7VKv5Gm4fi70Ww:eyJhdWQiOiJodHRwczovL2FwaS1hY3B0LmVoZWFsdGguZmdvdi5iZS9wc2V1ZG8vdjEvZG9tYWlucy91aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3OTU0MzI2NjcsImlhdCI6MTc5NTQzMjA2NywiYWxnIjoiZGlyIiwia2lkIjoiYWQ2Njg4MTctODQxNy00YmFkLTk5MmYtNTJmYzA1ZjkxMmMzIn0.._2MOvTrQSCIaqa7a.qkkBz4XtdHw2MH6z2-tvzQ2p2EBYWvf1D030qiWMMlMgg0askOf49x13EdAqRYsTyBjW_QJRjUs6R_NfQa1LuiPw2ujU9w5mImmGgJzRqSCYv58ONl85xSpLEXlVcSrgRuLCDuES4FXNg9dWeZJEyntoWMQ3B5Nyvlvk3FdMgfC5SypXFRBJ.ta1o8gMOJhQErqw0FANE5w",
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
      "count": 30
    }
  },
  "authoredOn": "2026-11-23T11:07:47.705Z",
  "requester": {
    "reference": "PractitionerRole/00000000000-PHYSICIAN"
  },
  "orderDetail": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "211141000172109",
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
    }
  ],
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:eaa51357-0043-4cb5-b972-d178c9df4c71:eyJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiZGlyIn0..Dn7O3moxRZcTPuy2.ofgJ9tvaHqfNpqKsQmcf.oAkahfZ05MW12Zp7Z6eZbg",
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
