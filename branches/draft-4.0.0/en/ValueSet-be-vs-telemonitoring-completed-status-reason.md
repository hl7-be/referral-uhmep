# Telemonitoring completed status reason - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemonitoring completed status reason**

## ValueSet: Telemonitoring completed status reason 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-completed-status-reason | *Version*:4.0.0-draft |
| Draft as of 2026-11-27 | *Computable Name*:BeVSTelemonitoringCompletedStatusReason |

 
Allowed status reasons when a telemonitoring ServiceRequest is completed. 

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
  "id" : "be-vs-telemonitoring-completed-status-reason",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-completed-status-reason",
  "version" : "4.0.0-draft",
  "name" : "BeVSTelemonitoringCompletedStatusReason",
  "title" : "Telemonitoring completed status reason",
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
  "description" : "Allowed status reasons when a telemonitoring ServiceRequest is completed.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-telemonitoring-completed-status-reason"
    }]
  }
}

```
