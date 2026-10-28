# eReferral Sample Substance Type - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Sample Substance Type**

## ValueSet: eReferral Sample Substance Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-sample-substance-type | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeVSSampleSubstanceType |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright Â© 2002+ International Health Terminology Standards Development Organisation (IHTSDO). | |

 
Types of samples/substances that can be collected. 

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
  "id" : "be-vs-sample-substance-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-sample-substance-type",
  "version" : "1.1.1",
  "name" : "BeVSSampleSubstanceType",
  "title" : "eReferral Sample Substance Type",
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
  "description" : "Types of samples/substances that can be collected.",
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
        "code" : "45710003",
        "display" : "Sputum (substance)"
      },
      {
        "code" : "78014005",
        "display" : "Urine (substance)"
      },
      {
        "code" : "87612001",
        "display" : "Blood (substance)"
      },
      {
        "code" : "39477002",
        "display" : "Feces (substance)"
      },
      {
        "code" : "247450001",
        "display" : "Exudate (substance)"
      },
      {
        "code" : "410582009",
        "display" : "Nasal Fluid (substance)"
      },
      {
        "code" : "256897009",
        "display" : "Saliva (substance)"
      },
      {
        "code" : "91720002",
        "display" : "Body substance (substance)"
      }]
    }]
  }
}

```
