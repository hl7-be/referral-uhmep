# BeTreatmentStatusReason - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeTreatmentStatusReason**

## CodeSystem: BeTreatmentStatusReason 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/drp/CodeSystem/be-treatment-status-reason | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeTreatmentStatusReason |

 
DEMONSTRATIVE EXAMPLE - Status reason for the treatment. Initially defined as supporting CodeSystem for the referral prescription. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BeVSTreatmentStatusReason](ValueSet-be-vs-treatment-status-reason.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-treatment-status-reason",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/CodeSystem/be-treatment-status-reason",
  "version" : "1.1.1",
  "name" : "BeTreatmentStatusReason",
  "title" : "BeTreatmentStatusReason",
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
  "description" : "DEMONSTRATIVE EXAMPLE - Status reason for the treatment. Initially defined as supporting CodeSystem for the referral prescription.",
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
    "code" : "stopped-temporarily",
    "display" : "Stopped temporarily"
  },
  {
    "code" : "blacklisted-caregiver",
    "display" : "Blacklisted Caregiver"
  },
  {
    "code" : "blacklisted-prescriber",
    "display" : "Blacklisted Prescriber"
  }]
}

```
