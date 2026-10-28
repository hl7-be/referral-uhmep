# Nurse - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nurse**

## Example Practitioner: Nurse

Profile: [BePractitioner](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/StructureDefinition-be-practitioner.html) version: 2.2.0

Christopher Chapel (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi#BeNIHDINamingSystem#45094508408 (use: official))

-------

| | |
| :--- | :--- |
| Alt. Name: | Mr.Nurse (Nickname) |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "practitioner2",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner|2.2.0"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
    "value" : "45094508408"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Chapel",
    "given" : ["Christopher"]
  },
  {
    "use" : "nickname",
    "given" : ["Mr.Nurse"]
  }]
}

```
