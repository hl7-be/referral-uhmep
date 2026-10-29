# PSS/QSI Indication - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS/QSI Indication**

## ValueSet: PSS/QSI Indication 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-pss-qsi-indication | *Version*:3.0.0 |
| Draft as of 2026-10-29 | *Computable Name*:BeVSPSSQSIIndication |

 
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
  "version" : "3.0.0",
  "name" : "BeVSPSSQSIIndication",
  "title" : "PSS/QSI Indication",
  "status" : "draft",
  "experimental" : false,
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
