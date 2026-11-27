# PSS/QSI Indication - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS/QSI Indication**

## ValueSet: PSS/QSI Indication 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-pss-qsi-indication | *Version*:4.0.0-draft |
| Draft as of 2026-11-27 | *Computable Name*:BeVSPSSQSIIndication |

 
Indication codes for diagnostic imaging requests as PSS Internal Codes. 

 **References** 

* Included into [eReferral Imaging Patient Condition Indication](ValueSet-ereferral-vs-imaging-patient-condition-indication.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-pss-qsi-indication",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-pss-qsi-indication",
  "version" : "4.0.0-draft",
  "name" : "BeVSPSSQSIIndication",
  "title" : "PSS/QSI Indication",
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
  "description" : "Indication codes for diagnostic imaging requests as PSS Internal Codes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-pss-qsi-indications"
    }]
  }
}

```
