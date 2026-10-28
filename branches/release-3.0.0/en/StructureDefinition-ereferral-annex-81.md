# EReferralAnnex81 - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EReferralAnnex81**

## Resource Profile: EReferralAnnex81 

| | |
| :--- | :--- |
| *Official URL*:https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81 | *Version*:3.0.0 |
| Active as of 2026-10-28 | *Computable Name*:EReferralAnnex81 |

 
Annex81 proposal and approval 

**Usages:**

* Examples for this Profile: [ServiceRequest/example-drp-nursing-med-preparation-appendix-81](ServiceRequest-example-drp-nursing-med-preparation-appendix-81.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inami.fhir.be.ereferral|current/StructureDefinition/StructureDefinition-ereferral-annex-81.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ereferral-annex-81.csv), [Excel](../StructureDefinition-ereferral-annex-81.xlsx), [Schematron](../StructureDefinition-ereferral-annex-81.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ereferral-annex-81",
  "url" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81",
  "version" : "3.0.0",
  "name" : "EReferralAnnex81",
  "status" : "active",
  "date" : "2026-10-28T14:55:19+00:00",
  "publisher" : "Riziv-Inami Platform",
  "contact" : [{
    "name" : "Riziv-Inami Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.riziv-inami.be/standards/fhir"
    },
    {
      "system" : "email",
      "value" : "support-uhmep@smals.be"
    }]
  },
  {
    "name" : "Message Structure Smals",
    "telecom" : [{
      "system" : "email",
      "value" : "support-uhmep@smals.be",
      "use" : "work"
    }]
  }],
  "description" : "Annex81 proposal and approval",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-annex-81",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest",
      "constraint" : [{
        "key" : "ereferral-inv-annex81-has-nursing-diagnosis",
        "severity" : "error",
        "human" : "Annex 81 must contain at least one nursing diagnosis reason code.",
        "expression" : "reasonCode.coding.where(system = 'http://snomed.info/sct' and (code = '275928001' or code = '1290542000' or code = '129834002' or code = '448176008' or code = '359748005' or code = '271299001' or code = '62014003' or code = '708014007')).exists()",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81"
      },
      {
        "key" : "ereferral-inv-annex81-has-medical-problem",
        "severity" : "error",
        "human" : "Annex 81 must contain at least one medical problem reason code.",
        "expression" : "reasonCode.coding.where(system = 'http://snomed.info/sct' and (code = '52448006' or code = '397540003' or code = '211071000172100' or code = '211101000172107' or code = '1137439008')).exists()",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81"
      }]
    },
    {
      "id" : "ServiceRequest.meta.versionId",
      "path" : "ServiceRequest.meta.versionId",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.meta.lastUpdated",
      "path" : "ServiceRequest.meta.lastUpdated",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.meta.source",
      "path" : "ServiceRequest.meta.source",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.meta.security",
      "path" : "ServiceRequest.meta.security",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.meta.tag",
      "path" : "ServiceRequest.meta.tag",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.implicitRules",
      "path" : "ServiceRequest.implicitRules",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.language",
      "path" : "ServiceRequest.language",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.contained",
      "path" : "ServiceRequest.contained",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.instantiatesCanonical",
      "path" : "ServiceRequest.instantiatesCanonical",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.instantiatesUri",
      "path" : "ServiceRequest.instantiatesUri",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.requisition",
      "path" : "ServiceRequest.requisition",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "min" : 2
    },
    {
      "id" : "ServiceRequest.category:annex81TechnicalType",
      "path" : "ServiceRequest.category",
      "sliceName" : "annex81TechnicalType",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.doNotPerform",
      "path" : "ServiceRequest.doNotPerform",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.quantity[x]",
      "path" : "ServiceRequest.quantity[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.quantity[x]:quantityQuantity",
      "path" : "ServiceRequest.quantity[x]",
      "sliceName" : "quantityQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "ServiceRequest.quantity[x]:quantityQuantity.id",
      "path" : "ServiceRequest.quantity[x].id",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.quantity[x]:quantityQuantity.extension",
      "path" : "ServiceRequest.quantity[x].extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.quantity[x]:quantityQuantity.comparator",
      "path" : "ServiceRequest.quantity[x].comparator",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.quantity[x]:quantityQuantity.unit",
      "path" : "ServiceRequest.quantity[x].unit",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming",
      "path" : "ServiceRequest.occurrence[x]",
      "sliceName" : "occurrenceTiming",
      "type" : [{
        "code" : "Timing"
      }]
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.id",
      "path" : "ServiceRequest.occurrence[x].id",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.extension",
      "path" : "ServiceRequest.occurrence[x].extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.modifierExtension",
      "path" : "ServiceRequest.occurrence[x].modifierExtension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.event",
      "path" : "ServiceRequest.occurrence[x].event",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.bounds[x]",
      "path" : "ServiceRequest.occurrence[x].repeat.bounds[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.bounds[x]:boundsPeriod",
      "path" : "ServiceRequest.occurrence[x].repeat.bounds[x]",
      "sliceName" : "boundsPeriod",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.bounds[x]:boundsRange",
      "path" : "ServiceRequest.occurrence[x].repeat.bounds[x]",
      "sliceName" : "boundsRange",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.countMax",
      "path" : "ServiceRequest.occurrence[x].repeat.countMax",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.durationMax",
      "path" : "ServiceRequest.occurrence[x].repeat.durationMax",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.frequencyMax",
      "path" : "ServiceRequest.occurrence[x].repeat.frequencyMax",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.periodMax",
      "path" : "ServiceRequest.occurrence[x].repeat.periodMax",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.dayOfWeek",
      "path" : "ServiceRequest.occurrence[x].repeat.dayOfWeek",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.timeOfDay",
      "path" : "ServiceRequest.occurrence[x].repeat.timeOfDay",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.offset",
      "path" : "ServiceRequest.occurrence[x].repeat.offset",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceTiming.code",
      "path" : "ServiceRequest.occurrence[x].code",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.asNeeded[x]",
      "path" : "ServiceRequest.asNeeded[x]",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.locationCode",
      "path" : "ServiceRequest.locationCode",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.locationReference",
      "path" : "ServiceRequest.locationReference",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.insurance",
      "path" : "ServiceRequest.insurance",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.specimen",
      "path" : "ServiceRequest.specimen",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.bodySite.id",
      "path" : "ServiceRequest.bodySite.id",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.note.author[x]",
      "path" : "ServiceRequest.note.author[x]",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.note.time",
      "path" : "ServiceRequest.note.time",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.patientInstruction",
      "path" : "ServiceRequest.patientInstruction",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.relevantHistory",
      "path" : "ServiceRequest.relevantHistory",
      "max" : "0"
    }]
  }
}

```
