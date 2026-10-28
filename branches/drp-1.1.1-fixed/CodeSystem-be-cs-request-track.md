# eReferral Request Track - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Request Track**

## CodeSystem: eReferral Request Track 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track | *Version*:1.1.1 |
| Draft as of 2026-10-28 | *Computable Name*:BeCSRequestTrack |

 
Care setting track codes for diagnostic imaging requests 

 This Code system is referenced in the content logical definition of the following value sets: 

* [eReferral request track](ValueSet-be-vs-request-track.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-request-track",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track",
  "version" : "1.1.1",
  "name" : "BeCSRequestTrack",
  "title" : "eReferral Request Track",
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
  "description" : "Care setting track codes for diagnostic imaging requests",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "inpatient",
    "display" : "Inpatient",
    "designation" : [{
      "language" : "en",
      "value" : "Inpatient"
    },
    {
      "language" : "fr-BE",
      "value" : "Hospitalisé"
    },
    {
      "language" : "nl-BE",
      "value" : "Opname"
    }]
  },
  {
    "code" : "ambulatory",
    "display" : "Ambulatory",
    "designation" : [{
      "language" : "en",
      "value" : "Ambulatory"
    },
    {
      "language" : "fr-BE",
      "value" : "Ambulatoire"
    },
    {
      "language" : "nl-BE",
      "value" : "Ambulant"
    }]
  },
  {
    "code" : "urgency",
    "display" : "Urgency",
    "designation" : [{
      "language" : "en",
      "value" : "Urgency"
    },
    {
      "language" : "fr-BE",
      "value" : "Urgence"
    },
    {
      "language" : "nl-BE",
      "value" : "Spoedgeval"
    }]
  }]
}

```
