# eReferral Nursing Prescription Technical Type - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Nursing Prescription Technical Type**

## ValueSet: eReferral Nursing Prescription Technical Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeVSNursingPrescriptionTechnicalType |

 
Technical types of nursing prescriptions for routing and workflow purposes. 

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
  "id" : "be-vs-nursing-prescription-technical-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type",
  "version" : "1.1.1",
  "name" : "BeVSNursingPrescriptionTechnicalType",
  "title" : "eReferral Nursing Prescription Technical Type",
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
  "description" : "Technical types of nursing prescriptions for routing and workflow purposes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
      "concept" : [{
        "code" : "medication-prefill-preparation-not-refunded"
      },
      {
        "code" : "diabetic-education-within-care-trajectory"
      },
      {
        "code" : "diabetic-education-within-start-trajectory"
      },
      {
        "code" : "diabetic-education-without-care-trajectory"
      },
      {
        "code" : "diabetic-education-convention-center"
      },
      {
        "code" : "sampling"
      },
      {
        "code" : "glycemic-test"
      },
      {
        "code" : "bloodletting"
      },
      {
        "code" : "hygienic-care"
      },
      {
        "code" : "chronic-dialysis"
      },
      {
        "code" : "parameters"
      },
      {
        "code" : "generic-nursing"
      }]
    }]
  }
}

```
