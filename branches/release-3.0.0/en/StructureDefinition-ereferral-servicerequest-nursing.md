# EReferralServiceRequestNursing - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EReferralServiceRequestNursing**

## Resource Profile: EReferralServiceRequestNursing 

| | |
| :--- | :--- |
| *Official URL*:https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing | *Version*:3.0.0 |
| Draft as of 2026-10-29 | *Computable Name*:EReferralServiceRequestNursing |

 
The nursing profile, generic version. Please note the nursing referral for medication does NOT depend on this generic version but is a FHIR prodfile on a different FHIR resource (MedicationRequest) 

**Usages:**

* Examples for this Profile: [ServiceRequest/example-drp-nursing-bloodletting](ServiceRequest-example-drp-nursing-bloodletting.md), [ServiceRequest/example-drp-nursing-chronic-dialysis](ServiceRequest-example-drp-nursing-chronic-dialysis.md), [ServiceRequest/example-drp-nursing-de-convention-center](ServiceRequest-example-drp-nursing-de-convention-center.md), [ServiceRequest/example-drp-nursing-de-within-care-trajectory](ServiceRequest-example-drp-nursing-de-within-care-trajectory.md)... Show 8 more, [ServiceRequest/example-drp-nursing-de-within-start-trajectory](ServiceRequest-example-drp-nursing-de-within-start-trajectory.md), [ServiceRequest/example-drp-nursing-de-without-care-trajectory](ServiceRequest-example-drp-nursing-de-without-care-trajectory.md), [ServiceRequest/example-drp-nursing-generic](ServiceRequest-example-drp-nursing-generic.md), [ServiceRequest/example-drp-nursing-glycemic-test](ServiceRequest-example-drp-nursing-glycemic-test.md), [ServiceRequest/example-drp-nursing-hygienic-care](ServiceRequest-example-drp-nursing-hygienic-care.md), [ServiceRequest/example-drp-nursing-med-prep-not-refunded](ServiceRequest-example-drp-nursing-med-prep-not-refunded.md), [ServiceRequest/example-drp-nursing-parameters](ServiceRequest-example-drp-nursing-parameters.md) and [ServiceRequest/example-drp-nursing-sampling](ServiceRequest-example-drp-nursing-sampling.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inami.fhir.be.ereferral|current/StructureDefinition/StructureDefinition-ereferral-servicerequest-nursing.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ereferral-servicerequest-nursing.csv), [Excel](../StructureDefinition-ereferral-servicerequest-nursing.xlsx), [Schematron](../StructureDefinition-ereferral-servicerequest-nursing.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ereferral-servicerequest-nursing",
  "url" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing",
  "version" : "3.0.0",
  "name" : "EReferralServiceRequestNursing",
  "status" : "draft",
  "date" : "2026-10-29T08:00:07+00:00",
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
  "description" : "The nursing profile, generic version. Please note the nursing referral for medication does NOT depend on this generic version but is a FHIR prodfile on a different FHIR resource (MedicationRequest)",
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
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-referral-servicerequest-nursing",
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
      "id" : "ServiceRequest.contained",
      "path" : "ServiceRequest.contained",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.extension:device",
      "path" : "ServiceRequest.extension",
      "sliceName" : "device",
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
      "id" : "ServiceRequest.category:discipline.coding.userSelected",
      "path" : "ServiceRequest.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:prescriptionType",
      "path" : "ServiceRequest.category",
      "sliceName" : "prescriptionType",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type"
      }
    },
    {
      "id" : "ServiceRequest.category:prescriptionType.coding",
      "path" : "ServiceRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.category:prescriptionType.coding.system",
      "path" : "ServiceRequest.category.coding.system",
      "min" : 1,
      "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"
    },
    {
      "id" : "ServiceRequest.doNotPerform",
      "path" : "ServiceRequest.doNotPerform",
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
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "ServiceRequest.quantity[x]:quantityQuantity",
      "path" : "ServiceRequest.quantity[x]",
      "sliceName" : "quantityQuantity",
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
      "type" : [{
        "code" : "Duration"
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
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "min" : 1
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
