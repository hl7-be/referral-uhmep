# eReferral Implant Type - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Implant Type**

## ValueSet: eReferral Implant Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/drp/ValueSet/be-vs-implant-type | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeVSImplantType |

 
Allowed implant types. 

 **References** 

* [Imaging Attention Conditions Questionnaire](Questionnaire-be-questionnaire-imaging-attention-conditions.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-implant-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/ValueSet/be-vs-implant-type",
  "version" : "1.1.1",
  "name" : "BeVSImplantType",
  "title" : "eReferral Implant Type",
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
  "description" : "Allowed implant types.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "65818007",
        "display" : "Stent (physical object)"
      },
      {
        "code" : "25937001",
        "display" : "Neurostimulator, device (physical object)"
      },
      {
        "code" : "43252007",
        "display" : "Cochlear prosthesis, device (physical object)"
      },
      {
        "code" : "7733008",
        "display" : "Hydrocephalic shunt catheter, device (physical object)"
      },
      {
        "code" : "314523008",
        "display" : "Joint implant (physical object)"
      },
      {
        "code" : "14789005",
        "display" : "Prosthetic implant (physical object)"
      },
      {
        "code" : "303608005",
        "display" : "Ophthalmological implant (physical object)"
      },
      {
        "code" : "40388003",
        "display" : "Implant, device (physical object)"
      }]
    }]
  }
}

```
