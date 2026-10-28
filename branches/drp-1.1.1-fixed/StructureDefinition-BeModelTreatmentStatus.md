# BeModelTreatmentStatus - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeModelTreatmentStatus**

## Logical Model: BeModelTreatmentStatus 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/BeModelTreatmentStatus | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeModelTreatmentStatus |

 
Logical model with the information for the status of the treatment. 

**Usages:**

* Refer to this Logical Model: [BeModelAssignment](StructureDefinition-BeModelAssignment.md) and [BeModelOrganisationClaim](StructureDefinition-BeModelOrganisationClaim.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/be.smals.fhir.drp-fix|current/StructureDefinition/StructureDefinition-BeModelTreatmentStatus.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelTreatmentStatus.csv), [Excel](StructureDefinition-BeModelTreatmentStatus.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelTreatmentStatus",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/BeModelTreatmentStatus",
  "version" : "1.1.1",
  "name" : "BeModelTreatmentStatus",
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
  "description" : "Logical model with the information for the status of the treatment.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/BeModelTreatmentStatus",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelTreatmentStatus",
      "path" : "BeModelTreatmentStatus",
      "short" : "BeModelTreatmentStatus",
      "definition" : "Logical model with the information for the status of the treatment."
    },
    {
      "id" : "BeModelTreatmentStatus.identifier",
      "path" : "BeModelTreatmentStatus.identifier",
      "short" : "UUID (see Doc: https://docs.google.com/document/d/13qamEPfdQ2HgUiXmjwHQNchpEU3LsQHF5MN9jKufX2g/edit?usp=sharing ) Absent during creation by client software, otherwise always present.",
      "definition" : "UUID (see Doc: https://docs.google.com/document/d/13qamEPfdQ2HgUiXmjwHQNchpEU3LsQHF5MN9jKufX2g/edit?usp=sharing ) Absent during creation by client software, otherwise always present.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelTreatmentStatus.startDate",
      "path" : "BeModelTreatmentStatus.startDate",
      "short" : "Start date of processing",
      "definition" : "Start date of processing",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelTreatmentStatus.endDate",
      "path" : "BeModelTreatmentStatus.endDate",
      "short" : "End date of processing",
      "definition" : "End date of processing",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelTreatmentStatus.status",
      "path" : "BeModelTreatmentStatus.status",
      "short" : "Status of the task",
      "definition" : "Status of the task",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelTreatmentStatus.genericRequestId",
      "path" : "BeModelTreatmentStatus.genericRequestId",
      "short" : "Reference to the associated referral prescription",
      "definition" : "Reference to the associated referral prescription",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/BeModelReferralPrescription"]
      }]
    }]
  }
}

```
