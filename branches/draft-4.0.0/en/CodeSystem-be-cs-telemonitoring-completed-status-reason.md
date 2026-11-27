# BeCSTelemonitoringCompletedStatusReason - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeCSTelemonitoringCompletedStatusReason**

## CodeSystem: BeCSTelemonitoringCompletedStatusReason 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-telemonitoring-completed-status-reason | *Version*:4.0.0-draft |
| Draft as of 2026-11-27 | *Computable Name*:BeCSTelemonitoringCompletedStatusReason |

 
Status reasons for a completed telemonitoring ServiceRequest 

This Code system is referenced in the definition of the following value sets:

* [Telemonitoring completed status reason](ValueSet-be-vs-telemonitoring-completed-status-reason.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-telemonitoring-completed-status-reason",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-telemonitoring-completed-status-reason",
  "version" : "4.0.0-draft",
  "name" : "BeCSTelemonitoringCompletedStatusReason",
  "title" : "BeCSTelemonitoringCompletedStatusReason",
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
  "description" : "Status reasons for a completed telemonitoring ServiceRequest",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 7,
  "property" : [{
    "code" : "snomed",
    "description" : "Related SNOMED CT concept, when available",
    "type" : "Coding"
  }],
  "concept" : [{
    "code" : "patient-non-compliant",
    "display" : "The patient does not comply with the conditions of telemonitoring.",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "De patiënt leeft de voorwaarden van telemonitoring niet na."
    },
    {
      "language" : "fr-BE",
      "value" : "Le patient ne respecte pas les conditions de la télésurveillance."
    },
    {
      "language" : "de-BE",
      "value" : "Der Patient hält die Bedingungen des Telemonitorings nicht ein."
    }]
  },
  {
    "code" : "patient-deceased",
    "display" : "The patient has died.",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "De patiënt is overleden."
    },
    {
      "language" : "fr-BE",
      "value" : "Le patient est décédé."
    },
    {
      "language" : "de-BE",
      "value" : "Der Patient ist verstorben."
    }],
    "property" : [{
      "code" : "snomed",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "419099009"
      }
    }]
  },
  {
    "code" : "patient-requested-stop",
    "display" : "The patient has decided to stop telemonitoring.",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "De patiënt heeft besloten om telemonitoring stop te zetten."
    },
    {
      "language" : "fr-BE",
      "value" : "Le patient a décidé d'arrêter la télésurveillance."
    },
    {
      "language" : "de-BE",
      "value" : "Der Patient hat beschlossen, das Telemonitoring zu beenden."
    }]
  },
  {
    "code" : "medical-reasons",
    "display" : "Telemonitoring is stopped for medical reasons.",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "De telemonitoring wordt om medische redenen stopgezet."
    },
    {
      "language" : "fr-BE",
      "value" : "La télésurveillance est arrêtée pour des raisons médicales."
    },
    {
      "language" : "de-BE",
      "value" : "Das Telemonitoring wird aus medizinischen Gründen beendet."
    }]
  },
  {
    "code" : "patient-stabilised",
    "display" : "The patient has stabilised.",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "De patiënt is gestabiliseerd."
    },
    {
      "language" : "fr-BE",
      "value" : "Le patient est stabilisé."
    },
    {
      "language" : "de-BE",
      "value" : "Der Patient ist stabilisiert."
    }],
    "property" : [{
      "code" : "snomed",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "161901003"
      }
    }]
  },
  {
    "code" : "patient-transplanted",
    "display" : "The patient received a transplant.",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "De patiënt kreeg een transplantatie."
    },
    {
      "language" : "fr-BE",
      "value" : "Le patient a reçu une transplantation."
    },
    {
      "language" : "de-BE",
      "value" : "Der Patient hat eine Transplantation erhalten."
    }],
    "property" : [{
      "code" : "snomed",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "77465005"
      }
    }]
  },
  {
    "code" : "other",
    "display" : "Other (free text).",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "Andere (vrije tekst)."
    },
    {
      "language" : "fr-BE",
      "value" : "Autre (texte libre)."
    },
    {
      "language" : "de-BE",
      "value" : "Sonstiges (Freitext)."
    }]
  }]
}

```
