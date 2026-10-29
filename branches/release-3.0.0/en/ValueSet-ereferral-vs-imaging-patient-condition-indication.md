# eReferral Imaging Patient Condition Indication - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Imaging Patient Condition Indication**

## ValueSet: eReferral Imaging Patient Condition Indication 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication | *Version*:3.0.0 |
| Draft as of 2026-10-29 | *Computable Name*:EReferralVSImagingPatientConditionIndication |

 
Allowed coded indications for patient condition in diagnostic imaging. 

 **References** 

* [EReferralServiceRequestDiagnosticImaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ereferral-vs-imaging-patient-condition-indication",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication",
  "version" : "3.0.0",
  "name" : "EReferralVSImagingPatientConditionIndication",
  "title" : "eReferral Imaging Patient Condition Indication",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-29T06:41:01+00:00",
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
  "description" : "Allowed coded indications for patient condition in diagnostic imaging.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-pss-qsi-indication"]
    },
    {
      "valueSet" : ["https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diagnostic-imaging-condition"]
    }]
  }
}

```
