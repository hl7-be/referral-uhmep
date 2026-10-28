# eReferral Nursing Care Requested - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Nursing Care Requested**

## ValueSet: eReferral Nursing Care Requested 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-care-requested | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeVSNursingCareRequested |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright Â© 2002+ International Health Terminology Standards Development Organisation (IHTSDO). | |

 
Clinical care services that can be prescribed for nursing care using SNOMED CT. 

 **References** 

* [BeReferralServiceRequestNursing](StructureDefinition-be-referral-servicerequest-nursing.md)

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
  "id" : "be-vs-nursing-care-requested",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-care-requested",
  "version" : "1.1.1",
  "name" : "BeVSNursingCareRequested",
  "title" : "eReferral Nursing Care Requested",
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
  "description" : "Clinical care services that can be prescribed for nursing care using SNOMED CT.",
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
        "code" : "385796006",
        "display" : "Medication prefill preparation (procedure)"
      },
      {
        "code" : "385805005",
        "display" : "Diabetic care education (procedure)"
      },
      {
        "code" : "17636008",
        "display" : "Specimen collection (procedure)"
      },
      {
        "code" : "166900001",
        "display" : "Glucometer blood sugar (procedure)"
      },
      {
        "code" : "127606004",
        "display" : "Therapeutic phlebotomy (procedure)"
      },
      {
        "code" : "225964003",
        "display" : "Assisting with personal hygiene (procedure)"
      },
      {
        "code" : "225230008",
        "display" : "Chronic peritoneal dialysis (procedure)"
      },
      {
        "code" : "61746007",
        "display" : "Taking patient vital signs (procedure)"
      },
      {
        "code" : "9632001",
        "display" : "Nursing procedure (procedure)"
      }]
    }]
  }
}

```
