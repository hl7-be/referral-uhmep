# eReferral Radiology SupportingInfo Role ValueSet - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Radiology SupportingInfo Role ValueSet**

## ValueSet: eReferral Radiology SupportingInfo Role ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-radiology-supporting-info-role | *Version*:3.0.0 |
| Draft as of 2026-10-29 | *Computable Name*:BeVSRadiologySupportingInfoRole |

 
Allowed roles for entries in ServiceRequest.supportingInfo in a diagnostic imaging referral. 

 **References** 

* [eReferral Radiology SupportingInfo Role](StructureDefinition-be-ext-radiology-supporting-info-role.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-radiology-supporting-info-role",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-radiology-supporting-info-role",
  "version" : "3.0.0",
  "name" : "BeVSRadiologySupportingInfoRole",
  "title" : "eReferral Radiology SupportingInfo Role ValueSet",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Allowed roles for entries in ServiceRequest.supportingInfo in a diagnostic imaging referral.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-radiology-supporting-info-role"
    }]
  }
}

```
