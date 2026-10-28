# Example physician role - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example physician role**

## Example PractitionerRole: Example physician role

Profile: [BePractitionerRole](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/StructureDefinition-be-practitionerrole.html)

Physician Example (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#72101230445 (use: official)): physician

-------

| | |
| :--- | :--- |
| Practitioner: | [Physician Example (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#72101230445 (use: official))](Practitioner-72101230445.md) |
| Role: | physician |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "72101230445-PHYSICIAN",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/72101230445"
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
