# eReferral Session Types - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Session Types**

## CodeSystem: eReferral Session Types 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-session-types | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeCSSessionTypes |

 
Types of sessions for education or care activities. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [eReferral Session Type](ValueSet-be-vs-session-type.md)
* [eReferral Session Type Extended](ValueSet-be-vs-session-type-extended.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-session-types",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-session-types",
  "version" : "1.1.1",
  "name" : "BeCSSessionTypes",
  "title" : "eReferral Session Types",
  "status" : "active",
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
  "description" : "Types of sessions for education or care activities.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "individual-session",
    "display" : "Individual session",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "Individuele sessies"
    },
    {
      "language" : "fr-BE",
      "value" : "Sessions individuelles"
    }]
  },
  {
    "code" : "group-session",
    "display" : "Group session",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "Groepsessies"
    },
    {
      "language" : "fr-BE",
      "value" : "Sessions de groupe"
    }]
  },
  {
    "code" : "combination-session",
    "display" : "Combination",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "Combinatie"
    },
    {
      "language" : "fr-BE",
      "value" : "Combinaison"
    }]
  }]
}

```
