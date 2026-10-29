# ereferral-referral-task - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ereferral-referral-task**

## Task: ereferral-referral-task

Profile: [BeReferralTask](https://build.fhir.org/ig/hl7-be/referral-uhmep/StructureDefinition-be-referral-task.html)

**status**: Draft

**intent**: order

**description**: Example referral task associated with a nursing prescription.

**focus**: [ServiceRequest urn:be:fgov:pseudo-encrypted:v2:{{kid}}:{{jwe}}](ServiceRequest-example-drp-nursing-bloodletting.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "ereferral-referral-task",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-referral-task"]
  },
  "status" : "draft",
  "intent" : "order",
  "description" : "Example referral task associated with a nursing prescription.",
  "focus" : {
    "reference" : "ServiceRequest/example-drp-nursing-bloodletting"
  }
}

```
