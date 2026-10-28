# Physician - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Physician**

## Example Practitioner: Physician

Profile: [BePractitioner](https://www.ehealth.fgov.be/standards/fhir/core/2.2.0/StructureDefinition-be-practitioner.html) version: 2.2.0

Leonard McCoy (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi#BeNIHDINamingSystem#10829059004 (use: official))

-------

| | |
| :--- | :--- |
| Alt. Name: | Bones (Nickname) |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "Requester1",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner|2.2.0"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
    "value" : "10829059004"
  }],
  "name" : [{
    "use" : "official",
    "family" : "McCoy",
    "given" : ["Leonard"]
  },
  {
    "use" : "nickname",
    "given" : ["Bones"]
  }]
}

```
