# eReferral Parameter Type - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Parameter Type**

## ValueSet: eReferral Parameter Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-parameter-type | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeVSParameterType |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright Â© 2002+ International Health Terminology Standards Development Organisation (IHTSDO). | |

 
Types of parameters/vital signs that can be measured. 

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
  "id" : "be-vs-parameter-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-parameter-type",
  "version" : "1.1.1",
  "name" : "BeVSParameterType",
  "title" : "eReferral Parameter Type",
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
  "description" : "Types of parameters/vital signs that can be measured.",
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
        "code" : "75367002",
        "display" : "Blood Pressure (observable entity)"
      },
      {
        "code" : "163033001",
        "display" : "Lying Blood Pressure (observable entity)"
      },
      {
        "code" : "163034007",
        "display" : "Standing Blood Pressure (observable entity)"
      },
      {
        "code" : "8499008",
        "display" : "Pulse, function (observable entity)"
      },
      {
        "code" : "431314004",
        "display" : "Peripheral oxygen saturation (observable entity)"
      },
      {
        "code" : "415882003",
        "display" : "Axillary temperature (observable entity)"
      },
      {
        "code" : "86290005",
        "display" : "Respiratory rate (observable entity)"
      },
      {
        "code" : "162098000",
        "display" : "Frequency of defecation (observable entity)"
      },
      {
        "code" : "27113001",
        "display" : "Body weight (observable entity)"
      },
      {
        "code" : "246124003",
        "display" : "Volume of urine produced (observable entity)"
      },
      {
        "code" : "225908003",
        "display" : "Pain score (observable entity)"
      },
      {
        "code" : "364632003",
        "display" : "Pain character (observable entity)"
      },
      {
        "code" : "364689004",
        "display" : "Stool observable (observable entity)"
      },
      {
        "code" : "363787002",
        "display" : "Observable entity"
      }]
    }]
  }
}

```
