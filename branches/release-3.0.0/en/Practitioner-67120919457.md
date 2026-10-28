# Example nurse identified by SSIN - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example nurse identified by SSIN**

## Example Practitioner: Example nurse identified by SSIN

Profile: [BePractitioner](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/StructureDefinition-be-practitioner.html)

Nurse Example (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#67120919457 (use: official))

-------



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "67120919457",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
    "value" : "67120919457"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Example",
    "given" : ["Nurse"]
  }]
}

```
