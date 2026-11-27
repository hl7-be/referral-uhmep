# eReferralServiceRequestTelemonitoring - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferralServiceRequestTelemonitoring**

## Resource Profile: eReferralServiceRequestTelemonitoring 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-telemonitoring | *Version*:4.0.0-draft |
| Draft as of 2026-11-27 | *Computable Name*:eReferralServiceRequestTelemonitoring |

 
The telemonitoring profile. 

**Usages:**

* Examples for this Profile: [ServiceRequest/example-drp-telemonitoring-chronic-heart-failure](ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inami.fhir.be.ereferral|current/StructureDefinition/StructureDefinition-ereferral-servicerequest-telemonitoring.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ereferral-servicerequest-telemonitoring.csv), [Excel](../StructureDefinition-ereferral-servicerequest-telemonitoring.xlsx), [Schematron](../StructureDefinition-ereferral-servicerequest-telemonitoring.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ereferral-servicerequest-telemonitoring",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-telemonitoring",
  "version" : "4.0.0-draft",
  "name" : "eReferralServiceRequestTelemonitoring",
  "status" : "draft",
  "date" : "2026-11-27T13:05:37+00:00",
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
  "description" : "The telemonitoring profile.",
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
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-referral-servicerequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
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
      "id" : "ServiceRequest.extension:feedback",
      "path" : "ServiceRequest.extension",
      "sliceName" : "feedback",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.extension:validity",
      "path" : "ServiceRequest.extension",
      "sliceName" : "validity"
    },
    {
      "id" : "ServiceRequest.extension:validity.value[x].start",
      "path" : "ServiceRequest.extension.value[x].start",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.extension:latest",
      "path" : "ServiceRequest.extension",
      "sliceName" : "latest",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.extension:performerType",
      "path" : "ServiceRequest.extension",
      "sliceName" : "performerType",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.extension:statusReason",
      "path" : "ServiceRequest.extension",
      "sliceName" : "statusReason"
    },
    {
      "id" : "ServiceRequest.extension:statusReason.value[x]",
      "path" : "ServiceRequest.extension.value[x]",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-completed-status-reason"
      }
    },
    {
      "id" : "ServiceRequest.extension:device",
      "path" : "ServiceRequest.extension",
      "sliceName" : "device",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.extension:monitoringPlan",
      "path" : "ServiceRequest.extension",
      "sliceName" : "monitoringPlan",
      "short" : "Per-parameter alert thresholds and rate-of-change rules",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"]
      }],
      "mustSupport" : true
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
      "id" : "ServiceRequest.category:discipline",
      "path" : "ServiceRequest.category",
      "sliceName" : "discipline"
    },
    {
      "id" : "ServiceRequest.category:discipline.id",
      "path" : "ServiceRequest.category.id",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:discipline.extension",
      "path" : "ServiceRequest.category.extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:discipline.coding.system",
      "path" : "ServiceRequest.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "ServiceRequest.category:discipline.coding.code",
      "path" : "ServiceRequest.category.coding.code",
      "fixedCode" : "394579002"
    },
    {
      "id" : "ServiceRequest.category:discipline.coding.userSelected",
      "path" : "ServiceRequest.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:prescriptionType",
      "path" : "ServiceRequest.category",
      "sliceName" : "prescriptionType",
      "short" : "Prescription type for routing and workflow purposes",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-prescription-technical-type"
      }
    },
    {
      "id" : "ServiceRequest.category:prescriptionType.id",
      "path" : "ServiceRequest.category.id",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:prescriptionType.extension",
      "path" : "ServiceRequest.category.extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:prescriptionType.coding.system",
      "path" : "ServiceRequest.category.coding.system",
      "min" : 1,
      "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"
    },
    {
      "id" : "ServiceRequest.category:prescriptionType.coding.code",
      "path" : "ServiceRequest.category.coding.code",
      "fixedCode" : "telemonitoring-chronic-heart-failure"
    },
    {
      "id" : "ServiceRequest.category:prescriptionType.coding.userSelected",
      "path" : "ServiceRequest.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.doNotPerform",
      "path" : "ServiceRequest.doNotPerform",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Prescribed telemonitoring procedure",
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "879780004"
        }]
      }
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.orderDetail.id",
      "path" : "ServiceRequest.orderDetail.id",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.orderDetail.extension",
      "path" : "ServiceRequest.orderDetail.extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.orderDetail.coding.userSelected",
      "path" : "ServiceRequest.orderDetail.coding.userSelected",
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
      },
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.quantity[x]:quantityQuantity",
      "path" : "ServiceRequest.quantity[x]",
      "sliceName" : "quantityQuantity",
      "min" : 0,
      "max" : "0",
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
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "type" : [{
        "code" : "Timing"
      }]
    },
    {
      "id" : "ServiceRequest.occurrence[x].id",
      "path" : "ServiceRequest.occurrence[x].id",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].extension",
      "path" : "ServiceRequest.occurrence[x].extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].modifierExtension",
      "path" : "ServiceRequest.occurrence[x].modifierExtension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].event",
      "path" : "ServiceRequest.occurrence[x].event",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.bounds[x]",
      "path" : "ServiceRequest.occurrence[x].repeat.bounds[x]",
      "type" : [{
        "code" : "Duration"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.count",
      "path" : "ServiceRequest.occurrence[x].repeat.count",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.countMax",
      "path" : "ServiceRequest.occurrence[x].repeat.countMax",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.duration",
      "path" : "ServiceRequest.occurrence[x].repeat.duration",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.durationMax",
      "path" : "ServiceRequest.occurrence[x].repeat.durationMax",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.durationUnit",
      "path" : "ServiceRequest.occurrence[x].repeat.durationUnit",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.frequency",
      "path" : "ServiceRequest.occurrence[x].repeat.frequency",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.frequencyMax",
      "path" : "ServiceRequest.occurrence[x].repeat.frequencyMax",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.periodMax",
      "path" : "ServiceRequest.occurrence[x].repeat.periodMax",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.dayOfWeek",
      "path" : "ServiceRequest.occurrence[x].repeat.dayOfWeek",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.timeOfDay",
      "path" : "ServiceRequest.occurrence[x].repeat.timeOfDay",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.when",
      "path" : "ServiceRequest.occurrence[x].repeat.when",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x].repeat.offset",
      "path" : "ServiceRequest.occurrence[x].repeat.offset",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x].code",
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
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "short" : "Chronic heart failure",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.reasonCode.coding",
      "path" : "ServiceRequest.reasonCode.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.reasonCode.coding.system",
      "path" : "ServiceRequest.reasonCode.coding.system",
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "ServiceRequest.reasonCode.coding.code",
      "path" : "ServiceRequest.reasonCode.coding.code",
      "fixedCode" : "48447003"
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
