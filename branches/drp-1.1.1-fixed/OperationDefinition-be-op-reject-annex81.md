# BeOpRejectAnnex81 - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeOpRejectAnnex81**

## OperationDefinition: BeOpRejectAnnex81 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/drp/OperationDefinition/be-op-reject-annex81 | *Version*:1.1.1 |
| Draft as of 2026-10-28 | *Computable Name*:reject |

 
Rejects an Annex81 proposal 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "be-op-reject-annex81",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/drp/OperationDefinition/be-op-reject-annex81",
  "version" : "1.1.1",
  "name" : "reject",
  "title" : "BeOpRejectAnnex81",
  "status" : "draft",
  "kind" : "operation",
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
  "description" : "Rejects an Annex81 proposal",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "affectsState" : false,
  "code" : "approve",
  "resource" : ["ServiceRequest"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "annex81",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "the instance the rejection applies to",
    "type" : "ServiceRequest"
  },
  {
    "name" : "note",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "additional information for the rejections",
    "type" : "markdown"
  }]
}

```
