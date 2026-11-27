# eReferral Telemonitoring Prescription Technical Type - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Telemonitoring Prescription Technical Type**

## ValueSet: eReferral Telemonitoring Prescription Technical Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-prescription-technical-type | *Version*:4.0.0-draft |
| Draft as of 2026-11-27 | *Computable Name*:BeVSTelemonitoringTechnicalType |

 
Technical types of telemonitoring prescriptions for routing and workflow purposes. 

 **References** 

* [eReferralServiceRequestTelemonitoring](StructureDefinition-ereferral-servicerequest-telemonitoring.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-telemonitoring-prescription-technical-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-prescription-technical-type",
  "version" : "4.0.0-draft",
  "name" : "BeVSTelemonitoringTechnicalType",
  "title" : "eReferral Telemonitoring Prescription Technical Type",
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
  "description" : "Technical types of telemonitoring prescriptions for routing and workflow purposes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
      "concept" : [{
        "code" : "telemonitoring-chronic-heart-failure"
      }]
    }]
  }
}

```
