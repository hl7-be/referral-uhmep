# eReferral Radiology SupportingInfo Role CodeSystem - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Radiology SupportingInfo Role CodeSystem**

## CodeSystem: eReferral Radiology SupportingInfo Role CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-radiology-supporting-info-role | *Version*:3.0.0 |
| Draft as of 2026-10-28 | *Computable Name*:BeCSRadiologySupportingInfoRole |

 
Identifies the role represented by an entry in ServiceRequest.supportingInfo for a diagnostic imaging referral. 

This Code system is referenced in the definition of the following value sets:

* [eReferral Radiology SupportingInfo Role ValueSet](ValueSet-be-vs-radiology-supporting-info-role.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-radiology-supporting-info-role",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-radiology-supporting-info-role",
  "version" : "3.0.0",
  "name" : "BeCSRadiologySupportingInfoRole",
  "title" : "eReferral Radiology SupportingInfo Role CodeSystem",
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
  "description" : "Identifies the role represented by an entry in ServiceRequest.supportingInfo for a diagnostic imaging referral.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "prior-results"
  },
  {
    "code" : "prior-request"
  },
  {
    "code" : "attention-condition"
  },
  {
    "code" : "safety-checklist"
  },
  {
    "code" : "patient-condition"
  }]
}

```
