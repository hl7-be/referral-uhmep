# eReferral Annex 81 Nursing Diagnosis - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Annex 81 Nursing Diagnosis**

## ValueSet: eReferral Annex 81 Nursing Diagnosis 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-annex81-nursing-diagnosis | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeVSAnnex81NursingDiagnosis |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright Â© 2002+ International Health Terminology Standards Development Organisation (IHTSDO). | |

 
Nursing diagnoses/findings that can motivate an Annex 81 request. 

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
  "id" : "be-vs-annex81-nursing-diagnosis",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-annex81-nursing-diagnosis",
  "version" : "1.1.1",
  "name" : "BeVSAnnex81NursingDiagnosis",
  "title" : "eReferral Annex 81 Nursing Diagnosis",
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
  "description" : "Nursing diagnoses/findings that can motivate an Annex 81 request.",
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
        "code" : "275928001",
        "display" : "Drugs - partial non-compliance (finding)"
      },
      {
        "code" : "1290542000",
        "display" : "Unintentional misuse of medication (finding)"
      },
      {
        "code" : "129834002",
        "display" : "Non-compliance with medication regimen (finding)"
      },
      {
        "code" : "448176008",
        "display" : "Uses less medication than prescribed (finding)"
      },
      {
        "code" : "359748005",
        "display" : "Patient's condition unchanged (finding)"
      },
      {
        "code" : "271299001",
        "display" : "Patient's condition worsened (finding)"
      },
      {
        "code" : "62014003",
        "display" : "Adverse reaction caused by drug (disorder)"
      },
      {
        "code" : "708014007",
        "display" : "Does not have an informal caregiver (finding)"
      }]
    }]
  }
}

```
