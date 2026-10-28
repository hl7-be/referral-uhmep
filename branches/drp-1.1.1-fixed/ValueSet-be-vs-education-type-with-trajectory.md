# eReferral Education Type With Trajectory - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Education Type With Trajectory**

## ValueSet: eReferral Education Type With Trajectory 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-education-type-with-trajectory | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeVSEducationTypeWithTrajectory |

 
Types of diabetes education for education within a care trajectory. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "be-vs-education-type-with-trajectory",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-education-type-with-trajectory",
  "version" : "1.1.1",
  "name" : "BeVSEducationTypeWithTrajectory",
  "title" : "eReferral Education Type With Trajectory",
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
  "description" : "Types of diabetes education for education within a care trajectory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-diabetic-education-type",
      "concept" : [{
        "code" : "diabetic-education-disease-lifestyle"
      },
      {
        "code" : "diabetic-education-no-transition"
      },
      {
        "code" : "diabetic-education-start-insulin-glp1"
      },
      {
        "code" : "diabetic-education-additional-hba1c"
      },
      {
        "code" : "diabetic-education-additional-injections"
      },
      {
        "code" : "diabetic-education-oral-medication"
      },
      {
        "code" : "diabetic-education-glucose-meter"
      },
      {
        "code" : "diabetic-education-material"
      },
      {
        "code" : "diabetic-education-glycemic-regulation"
      }]
    }]
  }
}

```
