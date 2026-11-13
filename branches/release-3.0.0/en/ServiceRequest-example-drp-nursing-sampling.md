# Example: Sample collection - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example: Sample collection**

## Example ServiceRequest: Example: Sample collection

Profile: [EReferralServiceRequestNursing](StructureDefinition-ereferral-servicerequest-nursing.md)

**BeValidityPeriod**: 2026-02-18 --> (ongoing)

**BeFeedbackToPrescriber**: false

**status**: Draft

**intent**: Order

**category**: Nursing procedure, Sample collection

**priority**: Routine

**code**: urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}

**orderDetail**: Urine

**subject**: Identifier: [BeSSINNamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html)/urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}} (use: official)

**occurrence**: Count 1 times, Once

**authoredOn**: 2026-02-18 14:37:42+0100

**requester**: [Physician Example (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#72101230445 (use: official)): physician](PractitionerRole-72101230445-PHYSICIAN.md)

**reasonCode**: urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}

**bodySite**: Temporal lobe structure

**note**: , 

> 

urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}


> 

urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "example-drp-nursing-sampling",
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
    "profile" : ["https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing"]
  },
  "extension" : [{
    "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
    "valuePeriod" : {
      "start" : "2026-02-18"
    }
  },
  {
    "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-feedback-to-prescriber",
    "valueBoolean" : false
  }],
  "status" : "draft",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "9632001"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
      "code" : "sampling"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "17636008"
    }],
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
  },
  "orderDetail" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "78014005"
    }]
  }],
  "subject" : {
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
  "occurrenceTiming" : {
    "repeat" : {
      "count" : 1
    }
  },
  "authoredOn" : "2026-02-18T14:37:42+01:00",
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
  "bodySite" : [{
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "24028007"
      }
    },
    {
      "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255561001"
        }]
      }
    }],
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "78277001"
    }]
  }],
  "note" : [{
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
          "code" : "medical-reason"
        }]
      }
    }],
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
  },
  {
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
          "code" : "contraindication"
        }]
      }
    }],
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
  }]
}

```
