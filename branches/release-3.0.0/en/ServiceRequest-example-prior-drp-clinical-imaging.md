# Example: Prior diagnostic imaging referral - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example: Prior diagnostic imaging referral**

## Example ServiceRequest: Example: Prior diagnostic imaging referral



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "example-prior-drp-clinical-imaging",
  "meta" : {
    "extension" : [{
      "id" : "{{kid}}",
      "extension" : [{
        "url" : "key",
        "valueString" : "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
        "_valueString" : {
          "extension" : [{
            "extension" : [{
              "url" : "marker",
              "valueBoolean" : true
            },
            {
              "url" : "format",
              "valueCode" : "direct"
            },
            {
              "url" : "version",
              "valuePositiveInt" : 2
            }],
            "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
          }]
        }
      }],
      "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization"
    }],
    "profile" : ["https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"]
  },
  "contained" : [{
    "resourceType" : "Patient",
    "id" : "prior-imaging-patient",
    "meta" : {
      "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"]
    },
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth",
      "valueCodeableConcept" : {
        "extension" : [{
          "extension" : [{
            "url" : "encryptedValue",
            "valueString" : "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
          },
          {
            "url" : "marker",
            "valueBoolean" : true
          },
          {
            "url" : "format",
            "valueCode" : "encrypted"
          },
          {
            "url" : "version",
            "valuePositiveInt" : 1
          }],
          "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content"
        }],
        "coding" : [{
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "other"
        }]
      }
    }],
    "identifier" : [{
      "use" : "official",
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value" : "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
      "_value" : {
        "extension" : [{
          "extension" : [{
            "url" : "marker",
            "valueBoolean" : true
          },
          {
            "url" : "format",
            "valueCode" : "direct"
          },
          {
            "url" : "version",
            "valuePositiveInt" : 2
          }],
          "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
        }]
      }
    }],
    "_birthDate" : {
      "extension" : [{
        "extension" : [{
          "url" : "encryptedValue",
          "valueString" : "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}"
        },
        {
          "url" : "marker",
          "valueBoolean" : true
        },
        {
          "url" : "format",
          "valueCode" : "encrypted"
        },
        {
          "url" : "version",
          "valuePositiveInt" : 1
        }],
        "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content"
      }]
    }
  },
  {
    "resourceType" : "QuestionnaireResponse",
    "id" : "prior-imaging-attention-qr",
    "meta" : {
      "profile" : ["https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"]
    },
    "questionnaire" : "https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions",
    "status" : "completed",
    "authored" : "2025-11-18T09:30:00+01:00",
    "item" : [{
      "linkId" : "pregnancy",
      "text" : "Pregnancy",
      "answer" : [{
        "valueBoolean" : false
      }]
    },
    {
      "linkId" : "diabetes",
      "text" : "Diabetes",
      "answer" : [{
        "valueBoolean" : false
      }]
    },
    {
      "linkId" : "allergy-contrast-agent",
      "text" : "Allergy to contrast agent",
      "answer" : [{
        "valueBoolean" : false
      }]
    },
    {
      "linkId" : "metallic-debris",
      "text" : "Metallic debris",
      "answer" : [{
        "valueBoolean" : false
      }]
    },
    {
      "linkId" : "renal-dysfunction",
      "text" : "Renal dysfunction",
      "answer" : [{
        "valueBoolean" : false
      }]
    },
    {
      "linkId" : "none",
      "text" : "None",
      "answer" : [{
        "valueBoolean" : true
      }]
    }]
  }],
  "extension" : [{
    "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
    "valuePeriod" : {
      "start" : "2025-11-18",
      "end" : "2026-11-18"
    }
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
      "code" : "diagnostic-imaging-appendix-82"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363679005"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track",
      "code" : "ambulatory"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "32962002",
      "display" : "Computed tomography of abdomen with contrast (procedure)"
    }]
  },
  "subject" : {
    "reference" : "#prior-imaging-patient"
  },
  "authoredOn" : "2025-11-18T09:30:00+01:00",
  "requester" : {
    "reference" : "PractitionerRole/72101230445-PHYSICIAN"
  },
  "reasonCode" : [{
    "text" : "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "marker",
          "valueBoolean" : true
        },
        {
          "url" : "format",
          "valueCode" : "encrypted"
        },
        {
          "url" : "version",
          "valuePositiveInt" : 1
        }],
        "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
      }]
    }
  }],
  "supportingInfo" : [{
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
      "valueCode" : "safety-checklist"
    }],
    "reference" : "#prior-imaging-attention-qr"
  }]
}

```
