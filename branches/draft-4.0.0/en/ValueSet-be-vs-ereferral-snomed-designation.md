# SNOMED CT eReferral Supplement Designations - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SNOMED CT eReferral Supplement Designations**

## ValueSet: SNOMED CT eReferral Supplement Designations 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/ValueSet/be-vs-ereferral-snomed-designation | *Version*:4.0.0-draft |
| Draft as of 2026-11-27 | *Computable Name*:BeVSeReferralSnomedDesignation |

 
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
    "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/CodeSystem/be-cs-ereferral-snomed-designation"
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/ValueSet/be-vs-ereferral-snomed-designation",
  "version" : "4.0.0-draft",
  "name" : "BeVSeReferralSnomedDesignation",
  "title" : "SNOMED CT eReferral Supplement Designations",
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
