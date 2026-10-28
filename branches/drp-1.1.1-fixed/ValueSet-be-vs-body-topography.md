# eReferral Body Topography - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Body Topography**

## ValueSet: eReferral Body Topography 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-topography | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeVSBodyTopography |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright Â© 2002+ International Health Terminology Standards Development Organisation (IHTSDO). | |

 
Topographical qualifiers for body sites based on SNOMED CT. 

 **References** 

* [Problem Logical Model](https://www.ehealth.fgov.be/standards/fhir/core-clinical/1.3.0/StructureDefinition-BeModelProblem.html)
* [BeExtBodyTopography](https://www.ehealth.fgov.be/standards/fhir/core-clinical/1.3.0/StructureDefinition-be-ext-body-topography.html)

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
  "id" : "be-vs-body-topography",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-topography",
  "version" : "1.1.1",
  "name" : "BeVSBodyTopography",
  "title" : "eReferral Body Topography",
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
  "description" : "Topographical qualifiers for body sites based on SNOMED CT.",
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
        "code" : "261183002",
        "display" : "Upper (qualifier value)"
      },
      {
        "code" : "261122009",
        "display" : "Lower (qualifier value)"
      },
      {
        "code" : "255561001",
        "display" : "Medial (qualifier value)"
      },
      {
        "code" : "49370004",
        "display" : "Lateral (qualifier value)"
      },
      {
        "code" : "264217000",
        "display" : "Superior (qualifier value)"
      },
      {
        "code" : "261089000",
        "display" : "Inferior (qualifier value)"
      },
      {
        "code" : "255551008",
        "display" : "Posterior/Back (qualifier value)"
      },
      {
        "code" : "255549009",
        "display" : "Anterior/Front (qualifier value)"
      },
      {
        "code" : "351726001",
        "display" : "Below (qualifier value)"
      },
      {
        "code" : "352730000",
        "display" : "Above (qualifier value)"
      },
      {
        "code" : "260521003",
        "display" : "Internal (qualifier value)"
      },
      {
        "code" : "261074009",
        "display" : "External (qualifier value)"
      },
      {
        "code" : "261129000"
      },
      {
        "code" : "90069004"
      },
      {
        "code" : "37197008"
      },
      {
        "code" : "264153007"
      },
      {
        "code" : "261184008"
      },
      {
        "code" : "261123004"
      }]
    }]
  }
}

```
