# eReferral Note Types - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Note Types**

## CodeSystem: eReferral Note Types 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeCSNoteTypes |

 
Types of notes that can be associated with a prescription. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [eReferral Note Type](ValueSet-be-vs-note-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-note-types",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
  "version" : "1.1.1",
  "name" : "BeCSNoteTypes",
  "title" : "eReferral Note Types",
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
  "description" : "Types of notes that can be associated with a prescription.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "contraindication",
    "display" : "Contraindication",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "Contra-indicaties"
    },
    {
      "language" : "fr-BE",
      "value" : "Contre-indications"
    }]
  },
  {
    "code" : "general-remarks",
    "display" : "General remarks",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "Algemene opmerkingen"
    },
    {
      "language" : "fr-BE",
      "value" : "Remarques générales"
    }]
  },
  {
    "code" : "medical-reason",
    "display" : "Medical reason",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "Medische reden"
    },
    {
      "language" : "fr-BE",
      "value" : "Raison médicale"
    }]
  },
  {
    "code" : "comment-prescriber",
    "display" : "Comment from the doctor/prescriber",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "Opmerking van de arts/voorschrijver"
    },
    {
      "language" : "fr-BE",
      "value" : "Commentaire du médecin/prescripteur"
    }]
  }]
}

```
