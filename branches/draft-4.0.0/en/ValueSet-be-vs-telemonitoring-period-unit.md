# Telemonitoring period unit - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemonitoring period unit**

## ValueSet: Telemonitoring period unit 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-period-unit | *Version*:4.0.0-draft |
| Draft as of 2026-11-27 | *Computable Name*:BeVSTelemonitoringPeriodUnit |

 
Allowed UCUM time units for telemonitoring period configuration. 

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
  "id" : "be-vs-telemonitoring-period-unit",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-period-unit",
  "version" : "4.0.0-draft",
  "name" : "BeVSTelemonitoringPeriodUnit",
  "title" : "Telemonitoring period unit",
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
  "description" : "Allowed UCUM time units for telemonitoring period configuration.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://unitsofmeasure.org",
      "concept" : [{
        "code" : "d",
        "display" : "day"
      },
      {
        "code" : "wk",
        "display" : "week"
      },
      {
        "code" : "mo",
        "display" : "month"
      }]
    }]
  }
}

```
