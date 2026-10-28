# Create a Medical Document - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Create a Medical Document**

## Create a Medical Document

This page describes how to create a medical document, either as a prescription (`intent = order`) or as a proposal (`intent = proposal`).

| | |
| :--- | :--- |
| Business operation | Create a medical document |
| Endpoint | `POST /ServiceRequest` |
| Request resource | `ServiceRequest` |
| Successful response | `201 Created`with the new logical id in`Location` |
| Server side effect | eReferral creates the related`BeReferralTask` |

### Independent Professional

Use this variant when the connected healthcare professional is the requester.

```
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    ]
  },
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
          "code": "bloodletting"
        }
      ]
    }
  ],
  "subject": {
    "reference": "Patient/urn:be:fgov:pseudo:v2:{SEC1}:{transit-info}"
  },
  "requester": {
    "reference": "PractitionerRole/{SSIN}-{DISCIPLINE}"
  }
}

```

### Internal Professional Represented By An Organization

Use this variant when an organization calls the API with an M2M token and creates the document on behalf of one of its internal professionals.

```
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing"
    ]
  },
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
          "code": "bloodletting"
        }
      ]
    }
  ],
  "subject": {
    "reference": "Patient/urn:be:fgov:pseudo:v2:{SEC1}:{transitInfo}"
  },
  "requester": {
    "reference": "PractitionerRole/{SSIN}-{DISCIPLINE}-NIHII-{nihii11Organization}"
  }
}

```

### Proposal Variant

For an Annex 81 proposal, use the Annex 81 profile and `intent = proposal`.

```
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81"
    ]
  },
  "status": "active",
  "intent": "proposal",
  "subject": {
    "reference": "Patient/urn:be:fgov:pseudo:v2:{SEC1}:{transitInfo}"
  },
  "requester": {
    "reference": "PractitionerRole/{SSIN}-{DISCIPLINE}"
  }
}

```

### Allowed Roles

* Prescription (`intent = order`): Prescriber, Caregiver (radiology prescriptions only), Organization.
* Proposal (`intent = proposal`): Caregiver, Organization.

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

On success, the new logical id is returned in the `Location` header and in the JSON payload; a six-character **short code** is also generated and returned at consultation.

### Sequence

Create Medical Document sequence

