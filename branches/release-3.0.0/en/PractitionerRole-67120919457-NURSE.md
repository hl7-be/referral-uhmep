# Example nurse role - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example nurse role**

## Example PractitionerRole: Example nurse role

Profile: [BePractitionerRole](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/StructureDefinition-be-practitionerrole.html)

Nurse Example (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#67120919457 (use: official)): nurse

-------

| | |
| :--- | :--- |
| Practitioner: | [Nurse Example (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#67120919457 (use: official))](Practitioner-67120919457.md) |
| Role: | nurse |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "67120919457-NURSE",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/67120919457"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty",
      "code" : "persnurse",
      "display" : "nurse"
    }]
  }]
}

```
