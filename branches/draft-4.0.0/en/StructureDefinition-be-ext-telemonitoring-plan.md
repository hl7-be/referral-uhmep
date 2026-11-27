# Telemonitoring plan - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemonitoring plan**

## Extension: Telemonitoring plan 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan | *Version*:4.0.0-draft |
| Draft as of 2026-11-27 | *Computable Name*:BeTelemonitoringPlan |

Per-parameter telemonitoring rule: parameter, thresholds, target range, change limits.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [eReferralServiceRequestTelemonitoring](StructureDefinition-ereferral-servicerequest-telemonitoring.md)
* Examples for this Extension: [ServiceRequest/example-drp-telemonitoring-chronic-heart-failure](ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inami.fhir.be.ereferral|current/StructureDefinition/StructureDefinition-be-ext-telemonitoring-plan.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-ext-telemonitoring-plan.csv), [Excel](../StructureDefinition-be-ext-telemonitoring-plan.xlsx), [Schematron](../StructureDefinition-be-ext-telemonitoring-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-ext-telemonitoring-plan",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan",
  "version" : "4.0.0-draft",
  "name" : "BeTelemonitoringPlan",
  "title" : "Telemonitoring plan",
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
  "description" : "Per-parameter telemonitoring rule: parameter, thresholds, target range, change limits.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:parameter",
      "path" : "Extension.extension",
      "sliceName" : "parameter",
      "short" : "Parameter being measured",
      "definition" : "The measured parameter. Use be-cs-monitoring-parameter for the business parameter and, when useful, add an equivalent LOINC coding.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:parameter.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:parameter.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "parameter"
    },
    {
      "id" : "Extension.extension:parameter.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-parameter-type"
      }
    },
    {
      "id" : "Extension.extension:baseline",
      "path" : "Extension.extension",
      "sliceName" : "baseline",
      "short" : "Baseline/reference measurement (e.g. reference weight)",
      "comment" : "The referenced Observation should not be a contained resource.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:baseline.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:baseline.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "baseline"
    },
    {
      "id" : "Extension.extension:baseline.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:threshold",
      "path" : "Extension.extension",
      "sliceName" : "threshold",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:threshold.extension",
      "path" : "Extension.extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:threshold.extension:range",
      "path" : "Extension.extension.extension",
      "sliceName" : "range",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:threshold.extension:range.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:threshold.extension:range.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "range"
    },
    {
      "id" : "Extension.extension:threshold.extension:range.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "Extension.extension:threshold.extension:sustainedFor",
      "path" : "Extension.extension.extension",
      "sliceName" : "sustainedFor",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:threshold.extension:sustainedFor.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:threshold.extension:sustainedFor.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "sustainedFor"
    },
    {
      "id" : "Extension.extension:threshold.extension:sustainedFor.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Duration"
      }]
    },
    {
      "id" : "Extension.extension:threshold.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "threshold"
    },
    {
      "id" : "Extension.extension:threshold.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:targetRange",
      "path" : "Extension.extension",
      "sliceName" : "targetRange",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:targetRange.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:targetRange.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "targetRange"
    },
    {
      "id" : "Extension.extension:targetRange.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "Extension.extension:change",
      "path" : "Extension.extension",
      "sliceName" : "change",
      "short" : "Maximum change per time window. Positive values indicate an increase. Negative values indicate a decrease.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:change.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:change.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "change"
    },
    {
      "id" : "Extension.extension:change.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
