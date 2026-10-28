# Physician Requester - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Physician Requester**

## Example PractitionerRole: Physician Requester

Profile: [BePractitionerRole](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/StructureDefinition-be-practitionerrole.html) version: 2.2.0

Leonard McCoy (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi#BeNIHDINamingSystem#10829059004 (use: official)): physician

-------

| | |
| :--- | :--- |
| Practitioner: | [Leonard McCoy (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi#BeNIHDINamingSystem#10829059004 (use: official))](Practitioner-Requester1.md) |
| Role: | physician |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "DOCTOR-10829059004",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole|2.2.0"]
  },
  "practitioner" : {
    "reference" : "Practitioner/Requester1"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty",
      "code" : "persphysician",
      "display" : "physician"
    }]
  }]
}

```
