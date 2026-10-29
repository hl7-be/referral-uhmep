# EReferralServiceRequestDiagnosticImaging - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EReferralServiceRequestDiagnosticImaging**

## Resource Profile: EReferralServiceRequestDiagnosticImaging 

| | |
| :--- | :--- |
| *Official URL*:https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging | *Version*:3.0.0 |
| Draft as of 2026-10-29 | *Computable Name*:EReferralServiceRequestDiagnosticImaging |

 
The diagnostic imaging profile. eReferral version. 

**Usages:**

* Examples for this Profile: [ServiceRequest/example-drp-clinical-imaging](ServiceRequest-example-drp-clinical-imaging.md), [ServiceRequest/example-prior-drp-clinical-imaging](ServiceRequest-example-prior-drp-clinical-imaging.md), [ServiceRequest/example-pss-radiology-scenario-01](ServiceRequest-example-pss-radiology-scenario-01.md), [ServiceRequest/example-pss-radiology-scenario-02](ServiceRequest-example-pss-radiology-scenario-02.md)... Show 8 more, [ServiceRequest/example-pss-radiology-scenario-03](ServiceRequest-example-pss-radiology-scenario-03.md), [ServiceRequest/example-pss-radiology-scenario-04](ServiceRequest-example-pss-radiology-scenario-04.md), [ServiceRequest/example-pss-radiology-scenario-05](ServiceRequest-example-pss-radiology-scenario-05.md), [ServiceRequest/example-pss-radiology-scenario-06](ServiceRequest-example-pss-radiology-scenario-06.md), [ServiceRequest/example-pss-radiology-scenario-07](ServiceRequest-example-pss-radiology-scenario-07.md), [ServiceRequest/example-pss-radiology-scenario-08](ServiceRequest-example-pss-radiology-scenario-08.md), [ServiceRequest/example-pss-radiology-scenario-09](ServiceRequest-example-pss-radiology-scenario-09.md) and [ServiceRequest/example-pss-radiology-scenario-10](ServiceRequest-example-pss-radiology-scenario-10.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inami.fhir.be.ereferral|current/StructureDefinition/StructureDefinition-ereferral-servicerequest-diagnosticimaging.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ereferral-servicerequest-diagnosticimaging.csv), [Excel](../StructureDefinition-ereferral-servicerequest-diagnosticimaging.xlsx), [Schematron](../StructureDefinition-ereferral-servicerequest-diagnosticimaging.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ereferral-servicerequest-diagnosticimaging",
  "url" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging",
  "version" : "3.0.0",
  "name" : "EReferralServiceRequestDiagnosticImaging",
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
  "description" : "The diagnostic imaging profile. eReferral version.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-referral-servicerequest-diagnosticimaging",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest",
      "constraint" : [{
        "key" : "ereferral-inv-subject-contained",
        "severity" : "error",
        "human" : "The subject must reference a Patient as contained.",
        "expression" : "subject.reference.startsWith('#')",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      },
      {
        "key" : "ereferral-inv-supportingInfo-safetyChecklist-contained",
        "severity" : "error",
        "human" : "supportingInfo[safetyChecklist] must reference the contained safety checklist.",
        "expression" : "supportingInfo.reference.where($this.startsWith('#')).select(substring(1)).all($this in %resource.contained.where(meta.profile contains 'https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response').id)",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      },
      {
        "key" : "ereferral-inv-status-reason-text-pseudonymized",
        "severity" : "error",
        "human" : "When statusReason text is present, it must have the be-ext-pseudonymization extension.",
        "expression" : "extension.where(url = 'http://hl7.org/fhir/StructureDefinition/request-statusReason').value.ofType(CodeableConcept).text.all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      },
      {
        "key" : "ereferral-inv-urgent-requires-urgency-justification",
        "severity" : "error",
        "human" : "The urgencyJustification extension must be present when priority is urgent.",
        "expression" : "priority != 'urgent' or extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-urgency-justification').exists()",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      },
      {
        "key" : "ereferral-inv-urgency-justification-value-pseudonymized",
        "severity" : "error",
        "human" : "When urgencyJustification.valueString is present, it must have the be-ext-pseudonymization extension.",
        "expression" : "extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-urgency-justification').value.ofType(string).all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      },
      {
        "key" : "ereferral-inv-patient-condition-concept-text-pseudonymized",
        "severity" : "error",
        "human" : "When patientCondition concept text is present, it must have the be-ext-pseudonymization extension.",
        "expression" : "supportingInfo.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).text.all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      },
      {
        "key" : "ereferral-inv-patient-condition-code-or-text",
        "severity" : "error",
        "human" : "patientCondition must contain either a coded indication from the allowed ValueSet or encrypted free text.",
        "expression" : "supportingInfo.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).all(coding.exists() or text.exists())",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      },
      {
        "key" : "ereferral-inv-contained-patient-birthdate-encrypted",
        "severity" : "error",
        "human" : "The birthDate of the contained Patient must not be sent in clear text and must be represented only by the encrypted be-ext-pseudonymized-content extension.",
        "expression" : "contained.ofType(Patient).all(birthDate.hasValue().not() and birthDate.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content').exists() and birthDate.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content').extension.where(url = 'encryptedValue').value.matches('^urn:be:fgov:pseudo-encrypted:v1:.+') and birthDate.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content').extension.where(url = 'marker' and value = true).exists() and birthDate.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content').extension.where(url = 'format' and value = 'encrypted').exists() and birthDate.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content').extension.where(url = 'version').value.exists())",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      },
      {
        "key" : "ereferral-inv-contained-patient-gender-at-birth-encrypted",
        "severity" : "error",
        "human" : "The contained Patient genderAtBirth must always be coded as 'other' and must be accompanied by the be-ext-pseudonymized-content encryption extension.",
        "expression" : "contained.ofType(Patient).extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth').all(value.ofType(CodeableConcept).coding.where(system = 'http://hl7.org/fhir/administrative-gender' and code = 'other').exists() and value.ofType(CodeableConcept).extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content').extension.where(url = 'encryptedValue').value.matches('^urn:be:fgov:pseudo-encrypted:v1:.+') and value.ofType(CodeableConcept).extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content').extension.where(url = 'marker' and value = true).exists() and value.ofType(CodeableConcept).extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content').extension.where(url = 'format' and value = 'encrypted').exists() and value.ofType(CodeableConcept).extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content').extension.where(url = 'version').value.exists()) and contained.ofType(Patient).extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth').exists()",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      }]
    },
    {
      "id" : "ServiceRequest.meta.versionId",
      "path" : "ServiceRequest.meta.versionId",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.meta.lastUpdated",
      "path" : "ServiceRequest.meta.lastUpdated",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.meta.source",
      "path" : "ServiceRequest.meta.source",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.meta.security",
      "path" : "ServiceRequest.meta.security",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.meta.tag",
      "path" : "ServiceRequest.meta.tag",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.implicitRules",
      "path" : "ServiceRequest.implicitRules",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.language",
      "path" : "ServiceRequest.language",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.contained",
      "path" : "ServiceRequest.contained",
      "min" : 2
    },
    {
      "id" : "ServiceRequest.contained:patient",
      "path" : "ServiceRequest.contained",
      "sliceName" : "patient",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.contained:safetyChecklist",
      "path" : "ServiceRequest.contained",
      "sliceName" : "safetyChecklist",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"]
      }]
    },
    {
      "id" : "ServiceRequest.extension:feedback",
      "path" : "ServiceRequest.extension",
      "sliceName" : "feedback",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.extension:performerType",
      "path" : "ServiceRequest.extension",
      "sliceName" : "performerType",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.extension:device",
      "path" : "ServiceRequest.extension",
      "sliceName" : "device",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.instantiatesCanonical",
      "path" : "ServiceRequest.instantiatesCanonical",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.instantiatesUri",
      "path" : "ServiceRequest.instantiatesUri",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.requisition",
      "path" : "ServiceRequest.requisition",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "min" : 3
    },
    {
      "id" : "ServiceRequest.category:discipline",
      "path" : "ServiceRequest.category",
      "sliceName" : "discipline"
    },
    {
      "id" : "ServiceRequest.category:discipline.id",
      "path" : "ServiceRequest.category.id",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:discipline.extension",
      "path" : "ServiceRequest.category.extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:discipline.coding.userSelected",
      "path" : "ServiceRequest.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:prescriptionType",
      "path" : "ServiceRequest.category",
      "sliceName" : "prescriptionType",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.category:track",
      "path" : "ServiceRequest.category",
      "sliceName" : "track"
    },
    {
      "id" : "ServiceRequest.category:track.id",
      "path" : "ServiceRequest.category.id",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:track.extension",
      "path" : "ServiceRequest.category.extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.category:track.coding.userSelected",
      "path" : "ServiceRequest.category.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.doNotPerform",
      "path" : "ServiceRequest.doNotPerform",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diagnostic-imaging-procedure|3.0.0"
      }
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.orderDetail.id",
      "path" : "ServiceRequest.orderDetail.id",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.orderDetail.extension",
      "path" : "ServiceRequest.orderDetail.extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.orderDetail.coding.userSelected",
      "path" : "ServiceRequest.orderDetail.coding.userSelected",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.quantity[x]",
      "path" : "ServiceRequest.quantity[x]",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.asNeeded[x]",
      "path" : "ServiceRequest.asNeeded[x]",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.locationCode",
      "path" : "ServiceRequest.locationCode",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.locationReference",
      "path" : "ServiceRequest.locationReference",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.insurance",
      "path" : "ServiceRequest.insurance",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.supportingInfo:priorResults",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "priorResults"
    },
    {
      "id" : "ServiceRequest.supportingInfo:priorResults.extension",
      "path" : "ServiceRequest.supportingInfo.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.supportingInfo:priorResults.extension:role",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "role",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role|3.0.0"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:priorResults.extension:role.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "patternCode" : "prior-results"
    },
    {
      "id" : "ServiceRequest.supportingInfo:priorRequest",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "priorRequest"
    },
    {
      "id" : "ServiceRequest.supportingInfo:priorRequest.extension",
      "path" : "ServiceRequest.supportingInfo.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.supportingInfo:priorRequest.extension:priorRequestCodeableConcept",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "priorRequestCodeableConcept"
    },
    {
      "id" : "ServiceRequest.supportingInfo:priorRequest.extension:priorRequestCodeableConcept.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/drp/ValueSet/be-vs-imaging-modality"
      }
    },
    {
      "id" : "ServiceRequest.supportingInfo:priorRequest.extension:role",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "role",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role|3.0.0"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:priorRequest.extension:role.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "patternCode" : "prior-request"
    },
    {
      "id" : "ServiceRequest.supportingInfo:attentionCondition",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "attentionCondition"
    },
    {
      "id" : "ServiceRequest.supportingInfo:attentionCondition.extension",
      "path" : "ServiceRequest.supportingInfo.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.supportingInfo:attentionCondition.extension:role",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "role",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role|3.0.0"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:attentionCondition.extension:role.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "patternCode" : "attention-condition"
    },
    {
      "id" : "ServiceRequest.supportingInfo:safetyChecklist",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "safetyChecklist",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:safetyChecklist.extension",
      "path" : "ServiceRequest.supportingInfo.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.supportingInfo:safetyChecklist.extension:role",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "role",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role|3.0.0"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:safetyChecklist.extension:role.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "patternCode" : "safety-checklist"
    },
    {
      "id" : "ServiceRequest.supportingInfo:patientCondition",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "patientCondition"
    },
    {
      "id" : "ServiceRequest.supportingInfo:patientCondition.extension",
      "path" : "ServiceRequest.supportingInfo.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.supportingInfo:patientCondition.extension:patientConditionCodeableConcept",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "patientConditionCodeableConcept"
    },
    {
      "id" : "ServiceRequest.supportingInfo:patientCondition.extension:patientConditionCodeableConcept.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "constraint" : [{
        "key" : "ereferral-inv-patient-condition-strict",
        "severity" : "error",
        "human" : "A patient condition must contain either free text, or exactly one coding from the allowed ValueSet. Text may accompany a coding.",
        "expression" : "supportingInfo.where(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role').value = 'patient-condition').extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).all((text.exists() and coding.empty()) or (text.empty() and coding.count() = 1 and memberOf('https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication')))",
        "source" : "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication"
      }
    },
    {
      "id" : "ServiceRequest.supportingInfo:patientCondition.extension:role",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "role",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role|3.0.0"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:patientCondition.extension:role.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "patternCode" : "patient-condition"
    },
    {
      "id" : "ServiceRequest.specimen",
      "path" : "ServiceRequest.specimen",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.patientInstruction",
      "path" : "ServiceRequest.patientInstruction",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.relevantHistory",
      "path" : "ServiceRequest.relevantHistory",
      "max" : "0"
    }]
  }
}

```
