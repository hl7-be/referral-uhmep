# BeModelNursingPrescription - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeModelNursingPrescription**

## Logical Model: BeModelNursingPrescription 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/BeModelNursingPrescription | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeModelNursingPrescription |

 
Data model for the nursing prescription referral. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/be.smals.fhir.drp-fix|current/StructureDefinition/StructureDefinition-BeModelNursingPrescription.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelNursingPrescription.csv), [Excel](StructureDefinition-BeModelNursingPrescription.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelNursingPrescription",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/BeModelNursingPrescription",
  "version" : "1.1.1",
  "name" : "BeModelNursingPrescription",
  "status" : "active",
  "date" : "2026-10-28T16:38:41+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be/standards/fhir"
    },
    {
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net"
    }]
  },
  {
    "name" : "Message Structure eHealth",
    "telecom" : [{
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net",
      "use" : "work"
    }]
  }],
  "description" : "Data model for the nursing prescription referral.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/BeModelNursingPrescription",
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/BeModelReferralPrescription",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelNursingPrescription",
      "path" : "BeModelNursingPrescription",
      "short" : "BeModelNursingPrescription",
      "definition" : "Data model for the nursing prescription referral."
    },
    {
      "id" : "BeModelNursingPrescription.feedbackNeeded",
      "path" : "BeModelNursingPrescription.feedbackNeeded",
      "short" : "Follow-up indicator (boolean) specifying whether a feedback is expected from the doctor on this treatment.",
      "definition" : "Follow-up indicator (boolean) specifying whether a feedback is expected from the doctor on this treatment.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "BeModelNursingPrescription.generalRemarks",
      "path" : "BeModelNursingPrescription.generalRemarks",
      "short" : "General remarks concerning the treatment or request.",
      "definition" : "General remarks concerning the treatment or request.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    },
    {
      "id" : "BeModelNursingPrescription.contraIndications",
      "path" : "BeModelNursingPrescription.contraIndications",
      "short" : "Medical contraindications (e.g. 'Latex allergy'). 103306004 : 'Contraindication to (x)\"",
      "definition" : "Medical contraindications (e.g. 'Latex allergy'). 103306004 : 'Contraindication to (x)'",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Annotation"
      }]
    },
    {
      "id" : "BeModelNursingPrescription.medicalReason",
      "path" : "BeModelNursingPrescription.medicalReason",
      "short" : "Medical reasons for the prescription (e.g. 'Infected wound requiring follow-up'). 410666004 : \"Reason For (x)\"",
      "definition" : "Medical reasons for the prescription (e.g. 'Infected wound requiring follow-up'). 410666004 : 'Reason For (x)'",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Annotation"
      }]
    }]
  }
}

```
