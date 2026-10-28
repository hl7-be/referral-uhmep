# SNOMED CT eReferral Supplement Designations - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SNOMED CT eReferral Supplement Designations**

## ValueSet: SNOMED CT eReferral Supplement Designations 

| | |
| :--- | :--- |
| *Official URL*:https://www.riziv-inami.be/standards/fhir/ereferral/ValueSet/be-vs-ereferral-snomed-designation | *Version*:3.0.0 |
| Draft as of 2026-10-28 | *Computable Name*:BeVSeReferralSnomedDesignation |

 
SNOMED CT supplement containing multilingual designations maintained for the eReferral project. 

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
  "id" : "be-vs-ereferral-snomed-designation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/valueset-supplement",
    "valueCanonical" : "https://www.riziv-inami.be/standards/fhir/ereferral/CodeSystem/be-cs-ereferral-snomed-designation"
  }],
  "url" : "https://www.riziv-inami.be/standards/fhir/ereferral/ValueSet/be-vs-ereferral-snomed-designation",
  "version" : "3.0.0",
  "name" : "BeVSeReferralSnomedDesignation",
  "title" : "SNOMED CT eReferral Supplement Designations",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "SNOMED CT supplement containing multilingual designations maintained for the eReferral project.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct"
    }]
  }
}

```
