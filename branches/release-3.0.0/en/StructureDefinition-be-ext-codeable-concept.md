# CodeableConcept Extension for Reference - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CodeableConcept Extension for Reference**

## Extension: CodeableConcept Extension for Reference 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept | *Version*:3.0.0 |
| Draft as of 2026-10-29 | *Computable Name*:BeExtCodeableConcept |

Extension able to hold a coded concept on a Reference element.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeServiceRequestDiagnosticImaging](https://build.fhir.org/ig/hl7-be/referral-uhmep/StructureDefinition-be-referral-servicerequest-diagnosticimaging.html)
* Examples for this Extension: [ServiceRequest/example-drp-clinical-imaging](ServiceRequest-example-drp-clinical-imaging.md), [ServiceRequest/example-pss-radiology-scenario-01](ServiceRequest-example-pss-radiology-scenario-01.md), [ServiceRequest/example-pss-radiology-scenario-02](ServiceRequest-example-pss-radiology-scenario-02.md), [ServiceRequest/example-pss-radiology-scenario-03](ServiceRequest-example-pss-radiology-scenario-03.md)... Show 7 more, [ServiceRequest/example-pss-radiology-scenario-04](ServiceRequest-example-pss-radiology-scenario-04.md), [ServiceRequest/example-pss-radiology-scenario-05](ServiceRequest-example-pss-radiology-scenario-05.md), [ServiceRequest/example-pss-radiology-scenario-06](ServiceRequest-example-pss-radiology-scenario-06.md), [ServiceRequest/example-pss-radiology-scenario-07](ServiceRequest-example-pss-radiology-scenario-07.md), [ServiceRequest/example-pss-radiology-scenario-08](ServiceRequest-example-pss-radiology-scenario-08.md), [ServiceRequest/example-pss-radiology-scenario-09](ServiceRequest-example-pss-radiology-scenario-09.md) and [ServiceRequest/example-pss-radiology-scenario-10](ServiceRequest-example-pss-radiology-scenario-10.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inami.fhir.be.ereferral|current/StructureDefinition/StructureDefinition-be-ext-codeable-concept.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-ext-codeable-concept.csv), [Excel](../StructureDefinition-be-ext-codeable-concept.xlsx), [Schematron](../StructureDefinition-be-ext-codeable-concept.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-ext-codeable-concept",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
  "version" : "3.0.0",
  "name" : "BeExtCodeableConcept",
  "title" : "CodeableConcept Extension for Reference",
  "status" : "draft",
  "date" : "2026-10-29T06:43:17+00:00",
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
  "description" : "Extension able to hold a coded concept on a Reference element.",
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
    "expression" : "Reference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Coded concept"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    }]
  }
}

```
