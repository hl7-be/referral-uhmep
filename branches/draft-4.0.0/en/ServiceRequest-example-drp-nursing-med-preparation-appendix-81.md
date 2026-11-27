# Example: Annex 81 - Preparing medication (proposal) - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example: Annex 81 - Preparing medication (proposal)**

## Example ServiceRequest: Example: Annex 81 - Preparing medication (proposal)

Profile: [EReferralAnnex81](StructureDefinition-ereferral-annex-81.md)

**BeValidityPeriod**: 2026-02-18 --> 2027-02-18

**status**: Draft

**intent**: Proposal

**category**: Nursing procedure, Preparing medication (Appendix 81)

**code**: urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{jwe}}

**subject**: Identifier: [BeSSINNamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html)/urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}} (use: official)

**occurrence**: Once per 1 week

**authoredOn**: 2026-02-18 15:03:57+0100

**requester**: [Nurse Example (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#67120919457 (use: official)): nurse](PractitionerRole-67120919457-NURSE.md)

**reasonCode**: Drugs - partial non-compliance, Unintentional misuse of medication, Dementia



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "example-drp-nursing-med-preparation-appendix-81",
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
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-annex-81"]
  },
  "extension" : [{
    "url" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period",
    "valuePeriod" : {
      "start" : "2026-02-18",
      "end" : "2027-02-18"
    }
  }],
  "status" : "draft",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "9632001"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
      "code" : "medication-prefill-preparation-appendix-81"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385796006"
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
      "frequency" : 1,
      "period" : 1,
      "periodUnit" : "wk"
    }
  },
  "authoredOn" : "2026-02-18T15:03:57+01:00",
  "requester" : {
    "reference" : "PractitionerRole/67120919457-NURSE"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "275928001"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1290542000"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "52448006"
    }]
  }]
}

```
