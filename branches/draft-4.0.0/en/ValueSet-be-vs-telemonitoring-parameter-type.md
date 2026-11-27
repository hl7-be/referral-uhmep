# Telemonitoring Parameter Type - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemonitoring Parameter Type**

## ValueSet: Telemonitoring Parameter Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-parameter-type | *Version*:4.0.0-draft |
| Draft as of 2026-11-27 | *Computable Name*:BeVSTelemonitoringParameterType |

 
Clinical parameters that can be monitored in a telemonitoring request. 

 **References** 

* [Telemonitoring plan](StructureDefinition-be-ext-telemonitoring-plan.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-telemonitoring-parameter-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-parameter-type",
  "version" : "4.0.0-draft",
  "name" : "BeVSTelemonitoringParameterType",
  "title" : "Telemonitoring Parameter Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-27T13:05:37+00:00",
  "publisher" : "Riziv-Inami Platform",
  "contact" : [{
    "name" : "Riziv-Inami Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.riziv-inami.be/standards/fhir"
    },
    {
      "system" : "email",
      "value" : "support-uhmep@smals.be"
    }]
  },
  {
    "name" : "Message Structure Smals",
    "telecom" : [{
      "system" : "email",
      "value" : "support-uhmep@smals.be",
      "use" : "work"
    }]
  }],
  "description" : "Clinical parameters that can be monitored in a telemonitoring request.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "27113001",
        "display" : "Body weight (observable entity)",
        "designation" : [{
          "language" : "nl-BE",
          "value" : "Gewicht"
        },
        {
          "language" : "fr-BE",
          "value" : "Poids corporel"
        },
        {
          "language" : "de-BE",
          "value" : "Körpergewicht"
        }]
      },
      {
        "code" : "271649006",
        "display" : "Systolic blood pressure (observable entity)",
        "designation" : [{
          "language" : "nl-BE",
          "value" : "Systolische bloeddruk"
        },
        {
          "language" : "fr-BE",
          "value" : "Tension artérielle systolique"
        },
        {
          "language" : "de-BE",
          "value" : "Systolischer Blutdruck"
        }]
      },
      {
        "code" : "271650006",
        "display" : "Diastolic blood pressure (observable entity)",
        "designation" : [{
          "language" : "nl-BE",
          "value" : "Diastolische bloeddruk"
        },
        {
          "language" : "fr-BE",
          "value" : "Tension artérielle diastolique"
        },
        {
          "language" : "de-BE",
          "value" : "Diastolischer Blutdruck"
        }]
      },
      {
        "code" : "364075005",
        "display" : "Heart rate (observable entity)",
        "designation" : [{
          "language" : "nl-BE",
          "value" : "Hartslag"
        },
        {
          "language" : "fr-BE",
          "value" : "Fréquence cardiaque"
        },
        {
          "language" : "de-BE",
          "value" : "Herzfrequenz"
        }]
      },
      {
        "code" : "250768007",
        "display" : "Pulmonary artery systolic pressure (observable entity)",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "Pression artérielle pulmonaire systolique (PAPs)"
        }]
      },
      {
        "code" : "250769004",
        "display" : "Pulmonary artery diastolic pressure (observable entity)",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "Pression artérielle pulmonaire diastolique (PAPd)"
        }]
      }]
    }]
  }
}

```
