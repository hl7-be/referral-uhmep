# eReferral Imaging Priority - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Imaging Priority**

## CodeSystem: eReferral Imaging Priority 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-imaging-priority | *Version*:1.1.1 |
| Draft as of 2026-10-28 | *Computable Name*:BeCSImagingPriority |

 
Priority codes for diagnostic imaging requests 

 This Code system is referenced in the content logical definition of the following value sets: 

* [eReferral Imaging Priority ValueSet](ValueSet-be-vs-imaging-priority.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-imaging-priority",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-imaging-priority",
  "version" : "1.1.1",
  "name" : "BeCSImagingPriority",
  "title" : "eReferral Imaging Priority",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Priority codes for diagnostic imaging requests",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "routine",
    "display" : "Routine",
    "designation" : [{
      "language" : "en",
      "value" : "Routine"
    },
    {
      "language" : "fr-BE",
      "value" : "Routine"
    },
    {
      "language" : "nl-BE",
      "value" : "Routine"
    }]
  },
  {
    "code" : "urgent",
    "display" : "Urgent",
    "designation" : [{
      "language" : "en",
      "value" : "Urgent"
    },
    {
      "language" : "fr-BE",
      "value" : "Urgent"
    },
    {
      "language" : "nl-BE",
      "value" : "Dringend"
    }]
  }]
}

```
