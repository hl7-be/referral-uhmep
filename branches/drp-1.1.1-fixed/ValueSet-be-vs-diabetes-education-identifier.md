# eReferral Diabetes Education Identifier - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Diabetes Education Identifier**

## ValueSet: eReferral Diabetes Education Identifier 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diabetes-education-identifier | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeVSDiabetesEducationIdentifier |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright Â© 2002+ International Health Terminology Standards Development Organisation (IHTSDO). | |

 
Identifiers to distinguish types of diabetes education prescriptions. 

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
  "id" : "be-vs-diabetes-education-identifier",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diabetes-education-identifier",
  "version" : "1.1.1",
  "name" : "BeVSDiabetesEducationIdentifier",
  "title" : "eReferral Diabetes Education Identifier",
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
  "description" : "Identifiers to distinguish types of diabetes education prescriptions.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright Â© 2002+ International Health Terminology Standards Development Organisation (IHTSDO).",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "211141000172109",
        "display" : "Within a convention centre"
      },
      {
        "code" : "211151000172106",
        "display" : "Within a start trajectory"
      },
      {
        "code" : "370858005",
        "display" : "Within a care trajectory"
      },
      {
        "code" : "211161000172108",
        "display" : "Without trajectory"
      }]
    }]
  }
}

```
