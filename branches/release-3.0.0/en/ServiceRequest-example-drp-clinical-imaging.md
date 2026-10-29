# Example: Diagnostic imaging referral - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example: Diagnostic imaging referral**

## Example ServiceRequest: Example: Diagnostic imaging referral



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "example-drp-clinical-imaging",
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
    "resourceType" : "QuestionnaireResponse",
    "id" : "ci-attention-qr",
    "meta" : {
      "profile" : ["https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"]
    },
    "questionnaire" : "https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions",
    "status" : "completed",
    "authored" : "2026-03-03T10:15:00+01:00",
    "item" : [{
      "linkId" : "implants",
      "text" : "Implants",
      "answer" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "40388003"
        },
        "item" : [{
          "linkId" : "implants-other",
          "text" : "Other implant type",
          "answer" : [{
            "valueString" : "urn:be:fgov:pseudo:v1:{{kid}}:{{jwe}}",
            "_valueString" : {
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
          }]
        }]
      }]
    },
    {
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
        "valueBoolean" : true
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
      "linkId" : "other",
      "text" : "Other",
      "answer" : [{
        "valueString" : "urn:be:fgov:pseudo:v1:{{kid}}:{{jwe}}",
        "_valueString" : {
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
      }]
    },
    {
      "linkId" : "none",
      "text" : "None",
      "answer" : [{
        "valueBoolean" : false
      }]
    }]
  },
  {
    "resourceType" : "Patient",
    "id" : "patient",
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
  }],
  "extension" : [{
    "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
    "valuePeriod" : {
      "start" : "2026-03-03",
      "end" : "2027-03-03"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/request-statusReason",
    "valueCodeableConcept" : {
      "text" : "urn:be:fgov:pseudo:v1:{{kid}}:{{jwe}}",
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
    }
  },
  {
    "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-pss-info",
    "valueIdentifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/pss/NamingSystem/pss-id",
      "value" : "PSS-DRP-IMG-001"
    }
  },
  {
    "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-urgency-justification",
    "valueString" : "urn:be:fgov:pseudo:v1:{{kid}}:{{jwe}}",
    "_valueString" : {
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
  "priority" : "urgent",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "32962002",
      "display" : "Computed tomography of abdomen with contrast (procedure)"
    }]
  },
  "subject" : {
    "reference" : "#patient",
    "identifier" : {
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
    }
  },
  "authoredOn" : "2026-03-03T10:15:00+01:00",
  "requester" : {
    "reference" : "PractitionerRole/72101230445-PHYSICIAN"
  },
  "reasonCode" : [{
    "text" : "urn:be:fgov:pseudo:v1:{{kid}}:{{jwe}}",
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
    "reference" : "#ci-attention-qr"
  },
  {
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
      "valueCode" : "prior-request"
    }],
    "reference" : "ServiceRequest/example-prior-drp-clinical-imaging"
  },
  {
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
      "valueCode" : "prior-request"
    },
    {
      "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-imaging-modality",
          "code" : "ct",
          "display" : "CT"
        }]
      }
    }],
    "display" : "Coded prior imaging request"
  },
  {
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
      "valueCode" : "patient-condition"
    },
    {
      "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-pss-qsi-indications",
          "code" : "2506",
          "display" : "AAA screening, family history of AAA"
        }]
      }
    }],
    "display" : "Coded patient condition"
  },
  {
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
      "valueCode" : "patient-condition"
    },
    {
      "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
      "valueCodeableConcept" : {
        "text" : "urn:be:fgov:pseudo:v1:{{kid}}:{{jwe}}",
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
      }
    }],
    "display" : "Free-text patient condition"
  }],
  "bodySite" : [{
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "24028007",
        "display" : "Right"
      }
    }]
  }]
}

```
