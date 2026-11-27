# Resource eReferral Implementation Guide



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "inami.fhir.be.ereferral",
  "language" : "en",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/ImplementationGuide/inami.fhir.be.ereferral",
  "version" : "4.0.0-draft",
  "name" : "EReferral",
  "title" : "eReferral Implementation Guide",
  "status" : "draft",
  "date" : "2026-10-29",
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
  "description" : "eReferral Implementation Guide",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "packageId" : "inami.fhir.be.ereferral",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.5.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.4.1"
  },
  {
    "id" : "hl7_fhir_be_core",
    "uri" : "https://www.ehealth.fgov.be/standards/fhir/core/ImplementationGuide/hl7.fhir.be.core",
    "packageId" : "hl7.fhir.be.core",
    "version" : "2.2.0"
  },
  {
    "id" : "hl7_fhir_be_core_clinical",
    "uri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ImplementationGuide/hl7.fhir.be.core-clinical",
    "packageId" : "hl7.fhir.be.core-clinical",
    "version" : "1.3.0"
  },
  {
    "id" : "hl7_fhir_be_referral",
    "uri" : "https://www.ehealth.fgov.be/standards/fhir/referral/ImplementationGuide/hl7.fhir.be.referral",
    "packageId" : "hl7.fhir.be.referral",
    "version" : "1.0.0"
  },
  {
    "id" : "hl7_fhir_be_infsec",
    "uri" : "https://www.ehealth.fgov.be/standards/fhir/infsec/ImplementationGuide/hl7.fhir.be.infsec",
    "packageId" : "hl7.fhir.be.infsec",
    "version" : "1.3.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.3.0"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "Draft for review"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-pss-qsi-indications"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-radiology-supporting-info-role"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-diabetic-education-type-for-patients-without-trajectory"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-diabetic-education-type-with-trajectory"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-generic-care-types"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-glycemia-measurement-timing"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-session-types"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-diabetic-education-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-implant-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-imaging-modality"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-imaging-priority"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-monitoring-comparator"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-telemonitoring-completed-status-reason"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-pss-qsi-diagnostic-imaging-procedure"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-annex81-care-requested"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-annex81-medical-problem"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-annex81-nursing-diagnosis"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-annex81-technical-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-laterality"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-site"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-topography"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-categories-of-care"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diabetes-education-identifier"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-education-type-with-trajectory"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-education-type-without-trajectory"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-educator-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-glycemia-measurement-time"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-note-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-care-requested"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-nursing-prescription-technical-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-parameter-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-sample-substance-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-session-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-session-type-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-prescription-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-implant-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-imaging-modality"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-imaging-priority"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-request-track"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-completed-status-reason"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-parameter-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-period-unit"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-telemonitoring-prescription-technical-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-pss-qsi-diagnostic-imaging-procedure"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diagnostic-imaging-condition"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diagnostic-imaging-procedure"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-hybrid-diagnostic-imaging-procedure"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-pss-qsi-indication"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-radiology-supporting-info-role"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-be-cs-telemonitoring-completed-status-reason.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/be-cs-telemonitoring-completed-status-reason"
      },
      "name" : "BeCSTelemonitoringCompletedStatusReason",
      "description" : "Status reasons for a completed telemonitoring ServiceRequest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-be-ext-codeable-concept.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/be-ext-codeable-concept"
      },
      "name" : "CodeableConcept Extension for Reference",
      "description" : "Extension able to hold a coded concept on a Reference element.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-be-cs-ereferral-designation-use.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/be-cs-ereferral-designation-use"
      },
      "name" : "eReferral Designation Use",
      "description" : "Identifies terminology designations maintained specifically for the eReferral project.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ereferral-vs-imaging-patient-condition-indication.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ereferral-vs-imaging-patient-condition-indication"
      },
      "name" : "eReferral Imaging Patient Condition Indication",
      "description" : "Allowed coded indications for patient condition in diagnostic imaging.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-be-ext-radiology-supporting-info-role.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/be-ext-radiology-supporting-info-role"
      },
      "name" : "eReferral Radiology SupportingInfo Role",
      "description" : "Identifies the role of a ServiceRequest.supportingInfo entry used in a diagnostic imaging referral.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-be-cs-radiology-supporting-info-role.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/be-cs-radiology-supporting-info-role"
      },
      "name" : "eReferral Radiology SupportingInfo Role CodeSystem",
      "description" : "Identifies the role represented by an entry in ServiceRequest.supportingInfo for a diagnostic imaging referral.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-radiology-supporting-info-role.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-radiology-supporting-info-role"
      },
      "name" : "eReferral Radiology SupportingInfo Role ValueSet",
      "description" : "Allowed roles for entries in ServiceRequest.supportingInfo in a diagnostic imaging referral.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-telemonitoring-prescription-technical-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-telemonitoring-prescription-technical-type"
      },
      "name" : "eReferral Telemonitoring Prescription Technical Type",
      "description" : "Technical types of telemonitoring prescriptions for routing and workflow purposes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-ereferral-referral-task.html"
      }],
      "reference" : {
        "reference" : "Task/ereferral-referral-task"
      },
      "name" : "ereferral-referral-task",
      "description" : "Example referral task associated with a nursing prescription.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-diagnostic-imaging-condition.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-diagnostic-imaging-condition"
      },
      "name" : "eReferral/PSS Diagnostic Imaging Condition",
      "description" : "Clinical conditions that can support a diagnostic imaging request using SNOMED CT.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-diagnostic-imaging-procedure.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-diagnostic-imaging-procedure"
      },
      "name" : "eReferral/PSS Diagnostic Imaging Procedure",
      "description" : "Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ereferral-annex-81.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ereferral-annex-81"
      },
      "name" : "EReferralAnnex81",
      "description" : "Annex81 proposal and approval",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ereferral-imaging-attention-conditions-response.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ereferral-imaging-attention-conditions-response"
      },
      "name" : "EReferralImagingAttentionConditionsResponse",
      "description" : "eReferral response to the imaging attention conditions questionnaire.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ereferral-servicerequest-diagnosticimaging.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ereferral-servicerequest-diagnosticimaging"
      },
      "name" : "EReferralServiceRequestDiagnosticImaging",
      "description" : "The diagnostic imaging profile. eReferral version.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ereferral-servicerequest-nursing.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ereferral-servicerequest-nursing"
      },
      "name" : "EReferralServiceRequestNursing",
      "description" : "The nursing profile, generic version. Please note the nursing referral for medication does NOT depend on this generic version but is a FHIR prodfile on a different FHIR resource (MedicationRequest)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ereferral-servicerequest-telemonitoring.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ereferral-servicerequest-telemonitoring"
      },
      "name" : "eReferralServiceRequestTelemonitoring",
      "description" : "The telemonitoring profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-67120919457.html"
      }],
      "reference" : {
        "reference" : "Practitioner/67120919457"
      },
      "name" : "Example nurse identified by SSIN",
      "description" : "Example nurse referenced by the eReferral examples.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-67120919457-NURSE.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/67120919457-NURSE"
      },
      "name" : "Example nurse role",
      "description" : "Nurse role whose identifier follows the {ssin}-{discipline} convention.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-72101230445.html"
      }],
      "reference" : {
        "reference" : "Practitioner/72101230445"
      },
      "name" : "Example physician identified by SSIN",
      "description" : "Example physician referenced by the eReferral examples.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-72101230445-PHYSICIAN.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/72101230445-PHYSICIAN"
      },
      "name" : "Example physician role",
      "description" : "Physician role whose identifier follows the {ssin}-{discipline} convention.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-med-preparation-appendix-81.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-med-preparation-appendix-81"
      },
      "name" : "Example: Annex 81 - Preparing medication (proposal)",
      "description" : "Example of an Annex 81 ServiceRequest proposal for preparing medication.\n\nInputs and values used in this example:\n- Profile: be-annex-81\n- Intent: proposal\n- Prescription type: medication-prefill-preparation-appendix-81\n- Procedure code (SNOMED): 385796006\n- Validity period: 2026-02-18 - 2027-02-18\n- Requester role: nurse (PractitionerRole/67120919457-NURSE)\n- Indications (reasonCode - 13 SNOMED codes):\n  * 1290542000\n  * 129834002\n  * 271299001\n  * 275928001\n  * 359748005\n  * 448176008\n  * 62014003\n  * 708014007\n  * 1137439008\n  * 211071000172100\n  * 211101000172107\n  * 397540003\n  * 52448006",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-annex-81"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-bloodletting.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-bloodletting"
      },
      "name" : "Example: Bloodletting",
      "description" : "Example of therapeutic bloodletting including quantity.\n\nInputs and values used in this example:\n- Prescription type: bloodletting\n- Procedure code (SNOMED): 127606004\n- Quantity: 300 mL\n- Validity start date: 2026-02-18\n- Timing:\n  * boundsDuration: 1 week\n  * count: 3\n  * frequency: 3\n  * period: 1 week\n- Medical reason (SNOMED): 404684003\n- Notes:\n  * medical-reason",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-chronic-dialysis.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-chronic-dialysis"
      },
      "name" : "Example: Chronic home dialysis",
      "description" : "Example of chronic home dialysis prescription.\n\nInputs and values used in this example:\n- Prescription type: chronic-dialysis\n- Procedure code (SNOMED): 225230008\n- Validity start date: 2026-02-18\n- Timing:\n  * boundsDuration: 2 months\n  * count: 9\n  * frequency: 1\n  * period: 1 week\n- Feedback to prescriber: true\n- Medical reason (SNOMED): 404684003\n- Notes:\n  * medical-reason\n  * contraindication\n  * general-remarks",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-de-convention-center.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-de-convention-center"
      },
      "name" : "Example: Diabetes education via convention centre",
      "description" : "Example of diabetes education delivered through a convention centre.\n\nInputs and values used in this example:\n- Prescription type: diabetic-education-convention-center\n- Education code (SNOMED): 385805005\n- Education subtype (SNOMED): 211141000172109\n- Education type: diabetic-education-other\n- Validity period: 2026-02-18 - 2027-02-18\n- Timing:\n  * boundsDuration: 4 months\n  * count: 52\n  * frequency: 3\n  * period: 1 week\n- Feedback to prescriber: false\n- Notes:\n  * general-remarks",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-de-within-care-trajectory.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-de-within-care-trajectory"
      },
      "name" : "Example: Diabetes education within care trajectory",
      "description" : "Example of diabetes education within an established care pathway.\n\nInputs and values used in this example:\n- Prescription type: diabetic-education-within-care-trajectory\n- Education code (SNOMED): 385805005\n- Education subtype (SNOMED): 370858005\n- Education type: diabetic-education-additional-hba1c\n- Session type: group-session\n- Performer types (SNOMED):\n  * 106292003\n  * 224543004\n- Validity period: 2026-02-18 - 2026-12-31\n- Number of sessions: 5",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-de-within-start-trajectory.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-de-within-start-trajectory"
      },
      "name" : "Example: Diabetes education within start trajectory",
      "description" : "Example of diabetes education within a start trajectory.\n\nInputs and values used in this example:\n- Prescription type: diabetic-education-within-start-trajectory\n- Education code (SNOMED): 385805005\n- Education subtype (SNOMED): 211151000172106\n- Session type: individual-session\n- Validity period: 2026-02-18 – 2026-12-31\n- Number of sessions (count): 4\n- Performer type (SNOMED): 224543004\n- Feedback to prescriber: false\n- Notes:\n  * general-remarks",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-de-without-care-trajectory.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-de-without-care-trajectory"
      },
      "name" : "Example: Diabetes education without care trajectory",
      "description" : "Example of diabetes education for patients without a care trajectory.\n\nInputs and values used in this example:\n- Prescription type: diabetic-education-without-care-trajectory\n- Education code (SNOMED): 385805005\n- Education subtype (SNOMED): 211161000172108\n- Education type: diabetic-education-self-care\n- Validity start date: 2026-02-18\n- Timing:\n  * boundsDuration: 3 weeks\n  * count: 21\n  * frequency: 1\n  * period: 1 day\n- Feedback to prescriber: true\n- Notes:\n  * general-remarks",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-clinical-imaging.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-clinical-imaging"
      },
      "name" : "Example: Diagnostic imaging referral",
      "description" : "Example of a diagnostic imaging referral prescription with contained patient and imaging attention questionnaire response.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-generic.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-generic"
      },
      "name" : "Example: Generic nursing care",
      "description" : "Example of a generic nursing ServiceRequest.\n\nInputs and values used in this example:\n- Prescription type: generic-nursing\n- Care code (SNOMED): 9632001\n- Care detail (orderDetail): preparation-and-administration-of-medication-for-psychiatric-patient\n- Validity start date: 2026-02-18\n- Timing:\n  * boundsDuration: 4 months\n  * count: 360\n  * frequency: 3\n  * period: 1 day\n- Priority: routine\n- Feedback to prescriber: false\n- Medical reason (SNOMED): 404684003\n- Notes:\n  * medical-reason\n  * contraindication\n  * general-remarks",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-glycemic-test.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-glycemic-test"
      },
      "name" : "Example: Glycemic control with glucometer",
      "description" : "Example of glycemic monitoring using a glucometer.\n\nInputs and values used in this example:\n- Prescription type: glycemic-test\n- Procedure code (SNOMED): 166900001\n- Measurement timing: before-insulin-administration\n- Validity start date: 2026-02-18\n- Timing:\n  * boundsDuration: 3 weeks\n  * count: 21\n  * frequency: 1\n  * period: 1 day\n- Medical reason (SNOMED): 404684003\n- Notes:\n  * medical-reason\n  * contraindication\n  * general-remarks",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-hygienic-care.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-hygienic-care"
      },
      "name" : "Example: Hygienic care",
      "description" : "Example of hygienic nursing care.\n\nInputs and values used in this example:\n- Prescription type: hygienic-care\n- Procedure code (SNOMED): 225964003\n- Validity start date: 2026-02-18\n- Timing:\n  * boundsDuration: 3 months\n  * count: 39\n  * frequency: 3\n  * period: 1 week\n- Notes:\n  * medical-reason",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-parameters.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-parameters"
      },
      "name" : "Example: Measurement of parameters",
      "description" : "Example of clinical parameter monitoring.\n\nInputs and values used in this example:\n- Prescription type: parameters\n- Procedure code (SNOMED): 61746007\n- Parameter detail (SNOMED): 431314004\n- Validity start date: 2026-02-18\n- Timing:\n  * boundsDuration: 2 months\n  * count: 180\n  * frequency: 3\n  * period: 1 day\n  * when: C\n- Medical reason (SNOMED): 404684003\n- Notes:\n  * medical-reason",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-med-prep-not-refunded.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-med-prep-not-refunded"
      },
      "name" : "Example: Preparation of medicines (not refunded)",
      "description" : "Example of non-reimbursed medication prefill preparation.\n\nInputs and values used in this example:\n- Prescription type: medication-prefill-preparation-not-refunded\n- Procedure code (SNOMED): 385796006\n- Validity period: 2026-02-18 – 2027-02-18\n- Timing:\n  * frequency: 3\n  * period: 1 week\n- Medical reason (SNOMED): 404684003\n- Notes:\n  * contraindication\n  * general-remarks",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-prior-drp-clinical-imaging.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-prior-drp-clinical-imaging"
      },
      "name" : "Example: Prior diagnostic imaging referral",
      "description" : "A complete prior diagnostic imaging prescription referenced by the main diagnostic imaging example.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-nursing-sampling.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-nursing-sampling"
      },
      "name" : "Example: Sample collection",
      "description" : "Example of a biological sample collection prescription.\n\nInputs and values used in this example:\n- Prescription type: sampling\n- Procedure code (SNOMED): 17636008\n- Sampling detail (SNOMED): 78014005\n- Occurrence count: 1\n- Validity start date: 2026-02-18\n- Medical reason (SNOMED): 404684003\n- Notes:\n  * medical-reason\n  * contraindication",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-drp-telemonitoring-chronic-heart-failure"
      },
      "name" : "Example: Telemonitoring prescription for chronic heart failure",
      "description" : "Example of a medical telemonitoring prescription for chronic heart failure.\n\nInputs and values used in this example:\n- Profile: ereferral-servicerequest-telemonitoring\n- Prescription type: telemonitoring-chronic-heart-failure\n- Discipline (SNOMED): 394579002\n- Procedure code (SNOMED): 879780004\n- Diagnosis (SNOMED): 84114007\n- Validity period: 2026-05-22 - 2026-11-22\n- Monitoring plan:\n  * Body weight increase of 2 kg over 3 days\n  * Systolic blood pressure threshold 160 mm[Hg]\n  * Diastolic blood pressure threshold 100 mm[Hg]\n  * Heart rate threshold 110 /min\n- Patient SSIN is pseudonymized\n- Diagnosis detail and general remarks are pseudonymized encrypted text",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-telemonitoring"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-telemonitoring-reference-weight.html"
      }],
      "reference" : {
        "reference" : "Observation/example-telemonitoring-reference-weight"
      },
      "name" : "Example: telemonitoring reference weight",
      "description" : "Illustrative baseline weight referenced by the chronic heart failure telemonitoring example. Not clinical guidance.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-hybrid-diagnostic-imaging-procedure.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-hybrid-diagnostic-imaging-procedure"
      },
      "name" : "Hybrid SNOMED CT and PSS/QSI Diagnostic Imaging Procedure",
      "description" : "Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT and PSS/QSI Codes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-practitioner2.html"
      }],
      "reference" : {
        "reference" : "Practitioner/practitioner2"
      },
      "name" : "Nurse",
      "description" : "Example practitioner acting as a nurse.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-NURSE-45094508408.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/NURSE-45094508408"
      },
      "name" : "Nurse Requester",
      "description" : "Nurse acting as a Requester",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-Requester1.html"
      }],
      "reference" : {
        "reference" : "Practitioner/Requester1"
      },
      "name" : "Physician",
      "description" : "Example practitioner acting as a requesting physician.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-DOCTOR-10829059004.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/DOCTOR-10829059004"
      },
      "name" : "Physician Requester",
      "description" : "Physician acting as a Requester",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-be-cs-pss-qsi-indications.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/be-cs-pss-qsi-indications"
      },
      "name" : "PSS Indication",
      "description" : "PSS indication codes for diagnostic imaging requests.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-pss-radiology-scenario-01.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-pss-radiology-scenario-01"
      },
      "name" : "PSS radiology scenario 01",
      "description" : "PSS radiology example for progressive dyspnea and suspected pulmonary edema, using a chest X-ray order.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-pss-radiology-scenario-02.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-pss-radiology-scenario-02"
      },
      "name" : "PSS radiology scenario 02",
      "description" : "PSS radiology example for persistent symptoms of pneumonia, using a chest X-ray order.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-pss-radiology-scenario-03.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-pss-radiology-scenario-03"
      },
      "name" : "PSS radiology scenario 03",
      "description" : "PSS radiology example for chest pain with a normal EKG, using MR angiography of the heart.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-pss-radiology-scenario-04.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-pss-radiology-scenario-04"
      },
      "name" : "PSS radiology scenario 04",
      "description" : "PSS radiology example for new headaches during pregnancy, using a non-contrast head CT.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-pss-radiology-scenario-05.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-pss-radiology-scenario-05"
      },
      "name" : "PSS radiology scenario 05",
      "description" : "PSS radiology example for tongue weakness, using an MRI of the head with and without contrast.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-pss-radiology-scenario-06.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-pss-radiology-scenario-06"
      },
      "name" : "PSS radiology scenario 06",
      "description" : "PSS radiology example for head trauma with persistent headaches and prior stroke, using MR angiography of the head.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-pss-radiology-scenario-07.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-pss-radiology-scenario-07"
      },
      "name" : "PSS radiology scenario 07",
      "description" : "PSS radiology example for a child with head trauma and persistent headaches, using MR angiography of the head.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-pss-radiology-scenario-08.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-pss-radiology-scenario-08"
      },
      "name" : "PSS radiology scenario 08",
      "description" : "PSS radiology example for asymptomatic stage I breast cancer, using breast MRI without contrast.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-pss-radiology-scenario-09.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-pss-radiology-scenario-09"
      },
      "name" : "PSS radiology scenario 09",
      "description" : "PSS radiology example for abnormal sputum and persistent cough, using a chest X-ray order.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example-pss-radiology-scenario-10.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example-pss-radiology-scenario-10"
      },
      "name" : "PSS radiology scenario 10",
      "description" : "PSS radiology example for tongue and facial weakness, using contrast-enhanced head CT.",
      "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-pss-qsi-diagnostic-imaging-procedure.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-pss-qsi-diagnostic-imaging-procedure"
      },
      "name" : "PSS/QSI Diagnostic Imaging Procedure",
      "description" : "All PSS/QSI diagnostic imaging procedure codes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-be-cs-pss-qsi-diagnostic-imaging-procedure.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/be-cs-pss-qsi-diagnostic-imaging-procedure"
      },
      "name" : "PSS/QSI Diagnostic Imaging Procedure",
      "description" : "PSS/QSI diagnostic imaging procedure codes with English displays and Belgian French, Dutch and German designations.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-pss-qsi-indication.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-pss-qsi-indication"
      },
      "name" : "PSS/QSI Indication",
      "description" : "Indication codes for diagnostic imaging requests as PSS Internal Codes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-ereferral-snomed-designation.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-ereferral-snomed-designation"
      },
      "name" : "SNOMED CT eReferral Supplement Designations",
      "description" : "SNOMED CT supplement containing multilingual designations maintained for the eReferral project.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-be-cs-ereferral-snomed-designation.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/be-cs-ereferral-snomed-designation"
      },
      "name" : "SNOMED CT eReferral Supplement Designations",
      "description" : "SNOMED CT supplement containing multilingual designations maintained for the eReferral project.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-telemonitoring-completed-status-reason.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-telemonitoring-completed-status-reason"
      },
      "name" : "Telemonitoring completed status reason",
      "description" : "Allowed status reasons when a telemonitoring ServiceRequest is completed.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-telemonitoring-parameter-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-telemonitoring-parameter-type"
      },
      "name" : "Telemonitoring Parameter Type",
      "description" : "Clinical parameters that can be monitored in a telemonitoring request.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-be-vs-telemonitoring-period-unit.html"
      }],
      "reference" : {
        "reference" : "ValueSet/be-vs-telemonitoring-period-unit"
      },
      "name" : "Telemonitoring period unit",
      "description" : "Allowed UCUM time units for telemonitoring period configuration.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-be-ext-telemonitoring-plan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/be-ext-telemonitoring-plan"
      },
      "name" : "Telemonitoring plan",
      "description" : "Per-parameter telemonitoring rule: parameter, thresholds, target range, change limits.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-DOCTOR-12009390800.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/DOCTOR-12009390800"
      },
      "name" : "Urgency Physician Requester",
      "description" : "Urgency Physician acting as a Requester",
      "exampleBoolean" : true
    }],
    "page" : {
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "nameUrl" : "index.html",
        "title" : "eReferral Implementation Guide",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "migration-3-0-to-4-0.html",
        "title" : "Migration 3.0.0 to 4.0.0-draft",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "topic-profiles-architecture.html",
        "title" : "Profiles Architecture",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "topic-profile-rewriting.html",
        "title" : "Profile Rewriting",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "topic-prescription-lifecycle.html",
        "title" : "Life Cycle",
        "generation" : "markdown",
        "page" : [{
          "nameUrl" : "topic-prescription-lifecycle-proposal.html",
          "title" : "Proposal Life Cycle",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "topic-prescription-lifecycle-extension.html",
          "title" : "Prescription Extension",
          "generation" : "markdown"
        }]
      },
      {
        "nameUrl" : "topic-prescription-templates.html",
        "title" : "Prescription Templates",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "topic-visibility-blacklisting.html",
        "title" : "Visibility & Blacklisting",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "api-integration.html",
        "title" : "API Integration",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "api-operations.html",
        "title" : "API Operations",
        "generation" : "markdown",
        "page" : [{
          "nameUrl" : "operation-access-matrix.html",
          "title" : "Access Matrix",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-create-medical-document.html",
          "title" : "Create a Medical Document",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-consult-search-medical-documents.html",
          "title" : "Consult or Search Medical Documents",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-complete-medical-document.html",
          "title" : "Complete a Medical Document",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-cancel-medical-document.html",
          "title" : "Cancel a Medical Document",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-assign-care-provider.html",
          "title" : "Assign a Care Provider",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-unassign-care-provider.html",
          "title" : "Unassign a Care Provider",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-record-execution-start.html",
          "title" : "Record Execution Start",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-record-execution-end.html",
          "title" : "Record Execution End",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-record-execution-interruption.html",
          "title" : "Record Execution Interruption",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-cancel-execution.html",
          "title" : "Cancel Execution",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-evaluate-proposal.html",
          "title" : "Evaluate Proposal",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "operation-evaluate-radiology-prescription.html",
          "title" : "Evaluate Radiology Prescription",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "api-complex-operations.html",
          "title" : "Complex Operations",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "error-codes.html",
          "title" : "Error Codes",
          "generation" : "markdown"
        }]
      },
      {
        "nameUrl" : "mappings-business.html",
        "title" : "Domain & Mapping",
        "generation" : "markdown",
        "page" : [{
          "nameUrl" : "domain-nursing.html",
          "title" : "Nursing",
          "generation" : "markdown",
          "page" : [{
            "nameUrl" : "domain-nursing-specification.html",
            "title" : "Nursing Specification",
            "generation" : "markdown"
          },
          {
            "nameUrl" : "mappings-nursing.html",
            "title" : "Nursing Mapping",
            "generation" : "markdown",
            "page" : [{
              "nameUrl" : "mapper-nursing-generic.html",
              "title" : "Generic Nursing",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-bloodletting.html",
              "title" : "Bloodletting",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-chronic-dialysis.html",
              "title" : "Chronic Dialysis",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-diabetes-education-convention-center.html",
              "title" : "Diabetes Education via Convention Centre",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-diabetes-education-start-trajectory.html",
              "title" : "Diabetes Education within Start Trajectory",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-diabetes-education-care-trajectory.html",
              "title" : "Diabetes Education within Care Trajectory",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-diabetes-education-without-trajectory.html",
              "title" : "Diabetes Education without Trajectory",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-glycemic-test.html",
              "title" : "Glycemic Test",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-hygienic-care.html",
              "title" : "Hygienic Care",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-medication-prefill-not-refunded.html",
              "title" : "Medication Prefill Preparation Not Refunded",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-parameters.html",
              "title" : "Parameters",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-sampling.html",
              "title" : "Sampling",
              "generation" : "markdown"
            },
            {
              "nameUrl" : "mapper-nursing-annex81-medication-preparation.html",
              "title" : "Annex 81 Medication Preparation",
              "generation" : "markdown"
            }]
          }]
        },
        {
          "nameUrl" : "domain-radiology.html",
          "title" : "Radiology",
          "generation" : "markdown",
          "page" : [{
            "nameUrl" : "domain-radiology-specification.html",
            "title" : "Radiology Specification",
            "generation" : "markdown"
          },
          {
            "nameUrl" : "mappings-radiology.html",
            "title" : "Radiology Mapping",
            "generation" : "markdown",
            "page" : [{
              "nameUrl" : "mapper-radiology-diagnostic-imaging.html",
              "title" : "Diagnostic Imaging",
              "generation" : "markdown"
            }]
          }]
        },
        {
          "nameUrl" : "domain-telemonitoring.html",
          "title" : "Telemonitoring",
          "generation" : "markdown",
          "page" : [{
            "nameUrl" : "domain-telemonitoring-specification.html",
            "title" : "Telemonitoring Specification",
            "generation" : "markdown"
          },
          {
            "nameUrl" : "mappings-telemonitoring.html",
            "title" : "Telemonitoring Mapping",
            "generation" : "markdown",
            "page" : [{
              "nameUrl" : "mapper-telemonitoring-chronic-heart-failure.html",
              "title" : "Chronic Heart Failure Telemonitoring",
              "generation" : "markdown"
            }]
          }]
        }]
      },
      {
        "nameUrl" : "technical.html",
        "title" : "Technical",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "test-server.html",
        "title" : "Test Server",
        "generation" : "markdown",
        "page" : [{
          "nameUrl" : "test-server-p2m-payload-generic-nursing.html",
          "title" : "P2M Nursing - Generic Nursing Care",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-medication-prefill.html",
          "title" : "P2M Nursing - Medication Prefill Preparation",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-diabetes-convention-centre.html",
          "title" : "P2M Nursing - Diabetes Convention Centre",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-diabetes-start-trajectory.html",
          "title" : "P2M Nursing - Diabetes Start Trajectory",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-diabetes-care-trajectory.html",
          "title" : "P2M Nursing - Diabetes Care Trajectory",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-diabetes-without-care-trajectory.html",
          "title" : "P2M Nursing - Diabetes Without Care Trajectory",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-personal-hygiene.html",
          "title" : "P2M Nursing - Personal Hygiene",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-peritoneal-dialysis.html",
          "title" : "P2M Nursing - Peritoneal Dialysis",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-glycemia-test.html",
          "title" : "P2M Nursing - Glycemia Test",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-sampling.html",
          "title" : "P2M Nursing - Sampling",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-bloodletting.html",
          "title" : "P2M Nursing - Bloodletting",
          "generation" : "markdown"
        },
        {
          "nameUrl" : "test-server-p2m-payload-parameters.html",
          "title" : "P2M Nursing - Parameters",
          "generation" : "markdown"
        }]
      },
      {
        "nameUrl" : "glossary.html",
        "title" : "Glossary",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "changes.html",
        "title" : "Changes",
        "generation" : "markdown"
      },
      {
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "generation" : "html"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
