# Example physician identified by SSIN - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example physician identified by SSIN**

## Example Practitioner: Example physician identified by SSIN

Profile: [BePractitioner](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/StructureDefinition-be-practitioner.html)

Physician Example (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#72101230445 (use: official))

-------



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "72101230445",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
    "value" : "72101230445"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Example",
    "given" : ["Physician"]
  }]
}

```
