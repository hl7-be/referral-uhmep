# PSS radiology scenario 10 - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS radiology scenario 10**

## Example ServiceRequest: PSS radiology scenario 10



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "example-pss-radiology-scenario-10",
  "meta" : {
    "profile" : ["https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"]
  },
  "contained" : [{
    "resourceType" : "Patient",
    "id" : "pss-radiology-scenario-10-patient",
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
  },
  {
    "resourceType" : "QuestionnaireResponse",
    "id" : "pss-radiology-scenario-10-checklist",
    "meta" : {
      "profile" : ["https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"]
    },
    "questionnaire" : "https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions",
    "status" : "completed",
    "authored" : "2026-09-24T10:15:00+02:00",
    "item" : [{
      "linkId" : "implants",
      "text" : "Implants"
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
      "linkId" : "other",
      "text" : "Other"
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
      "start" : "2026-09-24",
      "end" : "2027-09-24"
    }
  },
  {
    "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-pss-info",
    "valueIdentifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/pss/NamingSystem/pss-id",
      "value" : "PSS-RAD-010"
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
      "code" : "711232001",
      "display" : "Computed tomography of head with contrast (procedure)"
    }]
  },
  "subject" : {
    "reference" : "#pss-radiology-scenario-10-patient",
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
  "authoredOn" : "2026-09-24T10:15:00+02:00",
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
    "reference" : "#pss-radiology-scenario-10-checklist"
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
          "code" : "3106878",
          "display" : "Tongue weakness"
        }],
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
    "display" : "Patient condition"
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
          "code" : "3107766"
        }],
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
    "display" : "Patient condition"
  }],
  "note" : [{
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
  }]
}

```
