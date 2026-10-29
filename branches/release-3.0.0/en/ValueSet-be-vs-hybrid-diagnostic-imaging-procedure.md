# Hybrid SNOMED CT and PSS/QSI Diagnostic Imaging Procedure - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hybrid SNOMED CT and PSS/QSI Diagnostic Imaging Procedure**

## ValueSet: Hybrid SNOMED CT and PSS/QSI Diagnostic Imaging Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-hybrid-diagnostic-imaging-procedure | *Version*:3.0.0 |
| Draft as of 2026-10-29 | *Computable Name*:BeVSHybridDiagnosticImagingProcedure |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO). | |

 
Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT and PSS/QSI Codes. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-hybrid-diagnostic-imaging-procedure",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-hybrid-diagnostic-imaging-procedure",
  "version" : "3.0.0",
  "name" : "BeVSHybridDiagnosticImagingProcedure",
  "title" : "Hybrid SNOMED CT and PSS/QSI Diagnostic Imaging Procedure",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-29T07:36:53+00:00",
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
  "description" : "Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT and PSS/QSI Codes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO).",
  "compose" : {
    "include" : [{
      "valueSet" : ["https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-pss-qsi-diagnostic-imaging-procedure"]
    },
    {
      "valueSet" : ["https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diagnostic-imaging-procedure|3.0.0"]
    }]
  }
}

```
