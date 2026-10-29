# Example: Generic nursing care - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example: Generic nursing care**

## Example ServiceRequest: Example: Generic nursing care

Profile: [EReferralServiceRequestNursing](StructureDefinition-ereferral-servicerequest-nursing.md)

**BeValidityPeriod**: 2026-02-18 --> (ongoing)

**BeFeedbackToPrescriber**: false

**status**: Draft

**intent**: Order

**category**: Nursing procedure, Generic nursing care

**priority**: Routine

**code**: Nursing procedure

**orderDetail**: Preparation and administration of medication to a psychiatric patient

**subject**: Identifier: [BeSSINNamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html)/urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}} (use: official)

**occurrence**: Count 360 times, 3 per 1 day

**authoredOn**: 2026-02-18 13:54:36+0100

**requester**: [Physician Example (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#72101230445 (use: official)): physician](PractitionerRole-72101230445-PHYSICIAN.md)

**reasonCode**: urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}

**note**: , , 

> 

urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}


> 

urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}


> 

urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "example-drp-nursing-generic",
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
      "code" : "generic-nursing"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "9632001"
    }]
  },
  "orderDetail" : [{
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-generic-care-types",
      "code" : "preparation-and-administration-of-medication-to-psychiatric-patient"
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
      "boundsDuration" : {
        "value" : 4,
        "system" : "http://unitsofmeasure.org",
        "code" : "mo"
      },
      "count" : 360,
      "frequency" : 3,
      "period" : 1,
      "periodUnit" : "d"
    }
  },
  "authoredOn" : "2026-02-18T13:54:36+01:00",
  "requester" : {
    "reference" : "PractitionerRole/72101230445-PHYSICIAN"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "404684003"
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
  },
  {
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
          "code" : "general-remarks"
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
