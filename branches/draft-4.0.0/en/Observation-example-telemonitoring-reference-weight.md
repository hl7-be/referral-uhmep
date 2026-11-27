# Example: telemonitoring reference weight - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example: telemonitoring reference weight**

## Example Observation: Example: telemonitoring reference weight

**status**: Final

**category**: Vital Signs

**code**: Body weight

**subject**: Identifier: [BeSSINNamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html)/urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}} (use: official)

**effective**: 2026-05-21 09:00:00+0200

**value**: 80 kg (Details: UCUM codekg = 'kg')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-telemonitoring-reference-weight",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "27113001"
    }]
  },
  "subject" : {
    "identifier" : {
      "use" : "official",
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value" : "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
      "_value" : {
        "extension" : [{
          "extension" : [{
            "url" : "marker",
            "valueBoolean" : true
          },
          {
            "url" : "format",
            "valueCode" : "direct"
          },
          {
            "url" : "version",
            "valuePositiveInt" : 2
          }],
          "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
        }]
      }
    }
  },
  "effectiveDateTime" : "2026-05-21T09:00:00+02:00",
  "valueQuantity" : {
    "value" : 80,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  }
}

```
