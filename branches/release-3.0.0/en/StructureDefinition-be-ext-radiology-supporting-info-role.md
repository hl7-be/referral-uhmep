# eReferral Radiology SupportingInfo Role - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Radiology SupportingInfo Role**

## Extension: eReferral Radiology SupportingInfo Role 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role | *Version*:3.0.0 |
| Draft as of 2026-10-28 | *Computable Name*:BeRadiologySupportingInfoRole |

Identifies the role of a ServiceRequest.supportingInfo entry used in a diagnostic imaging referral.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EReferralServiceRequestDiagnosticImaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md)
* Examples for this Extension: [ServiceRequest/example-drp-clinical-imaging](ServiceRequest-example-drp-clinical-imaging.md), [ServiceRequest/example-prior-drp-clinical-imaging](ServiceRequest-example-prior-drp-clinical-imaging.md), [ServiceRequest/example-pss-radiology-scenario-01](ServiceRequest-example-pss-radiology-scenario-01.md), [ServiceRequest/example-pss-radiology-scenario-02](ServiceRequest-example-pss-radiology-scenario-02.md)... Show 8 more, [ServiceRequest/example-pss-radiology-scenario-03](ServiceRequest-example-pss-radiology-scenario-03.md), [ServiceRequest/example-pss-radiology-scenario-04](ServiceRequest-example-pss-radiology-scenario-04.md), [ServiceRequest/example-pss-radiology-scenario-05](ServiceRequest-example-pss-radiology-scenario-05.md), [ServiceRequest/example-pss-radiology-scenario-06](ServiceRequest-example-pss-radiology-scenario-06.md), [ServiceRequest/example-pss-radiology-scenario-07](ServiceRequest-example-pss-radiology-scenario-07.md), [ServiceRequest/example-pss-radiology-scenario-08](ServiceRequest-example-pss-radiology-scenario-08.md), [ServiceRequest/example-pss-radiology-scenario-09](ServiceRequest-example-pss-radiology-scenario-09.md) and [ServiceRequest/example-pss-radiology-scenario-10](ServiceRequest-example-pss-radiology-scenario-10.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inami.fhir.be.ereferral|current/StructureDefinition/StructureDefinition-be-ext-radiology-supporting-info-role.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-ext-radiology-supporting-info-role.csv), [Excel](../StructureDefinition-be-ext-radiology-supporting-info-role.xlsx), [Schematron](../StructureDefinition-be-ext-radiology-supporting-info-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-ext-radiology-supporting-info-role",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role",
  "version" : "3.0.0",
  "name" : "BeRadiologySupportingInfoRole",
  "title" : "eReferral Radiology SupportingInfo Role",
  "status" : "draft",
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
  "description" : "Identifies the role of a ServiceRequest.supportingInfo entry used in a diagnostic imaging referral.",
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
    "expression" : "ServiceRequest.supportingInfo"
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
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-radiology-supporting-info-role"
      }
    }]
  }
}

```
