# PSS/QSI Diagnostic Imaging Procedure - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS/QSI Diagnostic Imaging Procedure**

## ValueSet: PSS/QSI Diagnostic Imaging Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-pss-qsi-diagnostic-imaging-procedure | *Version*:4.0.0-draft |
| Draft as of 2026-11-27 | *Computable Name*:BeVSPSSQSIDiagnosticImagingProcedure |

 
All PSS/QSI diagnostic imaging procedure codes. 

 **References** 

* Included into [Hybrid SNOMED CT and PSS/QSI Diagnostic Imaging Procedure](ValueSet-be-vs-hybrid-diagnostic-imaging-procedure.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-pss-qsi-diagnostic-imaging-procedure",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-pss-qsi-diagnostic-imaging-procedure",
  "version" : "4.0.0-draft",
  "name" : "BeVSPSSQSIDiagnosticImagingProcedure",
  "title" : "PSS/QSI Diagnostic Imaging Procedure",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "All PSS/QSI diagnostic imaging procedure codes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-pss-qsi-diagnostic-imaging-procedure"
    }]
  }
}

```
