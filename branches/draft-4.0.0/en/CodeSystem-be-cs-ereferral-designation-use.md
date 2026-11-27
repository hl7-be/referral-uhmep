# eReferral Designation Use - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Designation Use**

## CodeSystem: eReferral Designation Use 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/CodeSystem/be-cs-ereferral-designation-use | *Version*:4.0.0-draft |
| Active as of 2026-11-27 | *Computable Name*:BeCSeReferralDesignationUse |

 
Identifies terminology designations maintained specifically for the eReferral project. 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-ereferral-designation-use",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/CodeSystem/be-cs-ereferral-designation-use",
  "version" : "4.0.0-draft",
  "name" : "BeCSeReferralDesignationUse",
  "title" : "eReferral Designation Use",
  "status" : "active",
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
  "description" : "Identifies terminology designations maintained specifically for the eReferral project.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "eReferral-preferred",
    "display" : "eReferral preferred term"
  },
  {
    "code" : "eReferral-synonym",
    "display" : "eReferral synonym"
  }]
}

```
