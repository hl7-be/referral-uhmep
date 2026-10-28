# eReferral Radiology SupportingInfo Role CodeSystem - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Radiology SupportingInfo Role CodeSystem**

## CodeSystem: eReferral Radiology SupportingInfo Role CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/drp/CodeSystem/be-cs-radiology-supporting-info-role | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeCSRadiologySupportingInfoRole |

 This Code system is referenced in the content logical definition of the following value sets: 

* [eReferral Radiology SupportingInfo Role ValueSet](ValueSet-be-vs-radiology-supporting-info-role.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-radiology-supporting-info-role",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/CodeSystem/be-cs-radiology-supporting-info-role",
  "version" : "1.1.1",
  "name" : "BeCSRadiologySupportingInfoRole",
  "title" : "eReferral Radiology SupportingInfo Role CodeSystem",
  "status" : "active",
  "date" : "2026-10-28T16:38:41+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be/standards/fhir"
    },
    {
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net"
    }]
  },
  {
    "name" : "Message Structure eHealth",
    "telecom" : [{
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net",
      "use" : "work"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
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
