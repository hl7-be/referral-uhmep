# EReferralImagingAttentionConditionsResponse - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EReferralImagingAttentionConditionsResponse**

## Resource Profile: EReferralImagingAttentionConditionsResponse 

| | |
| :--- | :--- |
| *Official URL*:https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response | *Version*:3.0.0 |
| Draft as of 2026-10-29 | *Computable Name*:EReferralImagingAttentionConditionsResponse |

 
eReferral response to the imaging attention conditions questionnaire. 

**Usages:**

* Use this Profile: [EReferralServiceRequestDiagnosticImaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md)
* Refer to this Profile: [EReferralServiceRequestDiagnosticImaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inami.fhir.be.ereferral|current/StructureDefinition/StructureDefinition-ereferral-imaging-attention-conditions-response.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ereferral-imaging-attention-conditions-response.csv), [Excel](../StructureDefinition-ereferral-imaging-attention-conditions-response.xlsx), [Schematron](../StructureDefinition-ereferral-imaging-attention-conditions-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ereferral-imaging-attention-conditions-response",
  "url" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response",
  "version" : "3.0.0",
  "name" : "EReferralImagingAttentionConditionsResponse",
  "status" : "draft",
  "date" : "2026-10-29T04:33:29+00:00",
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
  "description" : "eReferral response to the imaging attention conditions questionnaire.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-imaging-attention-conditions-response",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse",
      "constraint" : [{
        "key" : "ereferral-inv-at-least-one-answer",
        "severity" : "error",
        "human" : "At least one attention condition must be answered",
        "expression" : "item.where(answer.exists()).exists()",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"
      },
      {
        "key" : "ereferral-inv-no-other-selected-value-if-none-is-true",
        "severity" : "error",
        "human" : "If 'None' is selected, other boolean questions must be false and implants/other must be empty",
        "expression" : "item.where(linkId = 'none').answer.value.ofType(boolean).where($this = true).exists() implies (item.where(linkId != 'none' and linkId != 'implants' and linkId != 'other').answer.value.ofType(boolean).all($this = false) and item.where(linkId = 'implants' or linkId = 'other').answer.empty())",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"
      },
      {
        "key" : "ereferral-inv-answer-value-string-pseudonymized",
        "severity" : "error",
        "human" : "When an answer valueString is present, it must have the be-ext-pseudonymization extension.",
        "expression" : "item.answer.value.ofType(string).all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists()) and item.answer.item.answer.value.ofType(string).all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"
      }]
    }]
  }
}

```
