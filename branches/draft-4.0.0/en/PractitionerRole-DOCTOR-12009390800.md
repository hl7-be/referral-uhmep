# Urgency Physician Requester - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Urgency Physician Requester**

## Example PractitionerRole: Urgency Physician Requester

Profile: [BePractitionerRole](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/StructureDefinition-be-practitionerrole.html) version: 2.2.0

Christopher Chapel (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi#BeNIHDINamingSystem#45094508408 (use: official)): physician

-------

| | |
| :--- | :--- |
| Practitioner: | [Christopher Chapel (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi#BeNIHDINamingSystem#45094508408 (use: official))](Practitioner-practitioner2.md) |
| Role: | physician |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "DOCTOR-12009390800",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole|2.2.0"]
  },
  "practitioner" : {
    "reference" : "Practitioner/practitioner2"
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
