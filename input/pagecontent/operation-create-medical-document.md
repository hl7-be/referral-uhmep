This page describes how to create a medical document, either as a prescription (`intent = order`) or as a proposal (`intent = proposal`).

| Item | Value |
|----|----|
| Business operation | Create a medical document |
| Endpoint | `POST /ServiceRequest` |
| Request resource | `ServiceRequest` |
| Successful response | `201 Created` with the new logical id in `Location` |
| Server side effect | eReferral creates the related `BeReferralTask` |

### Independent Professional

Use this variant when the connected healthcare professional is the requester.

```json
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
    "reference": "PractitionerRole/{SSIN}-{DISCIPLINE}"
  }
}
```

### Internal Professional Represented By An Organization

Use this variant when an organization calls the API with an M2M token and creates the document on behalf of one of its internal professionals.

```json
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

```json
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

- Prescription (`intent = order`): Prescriber, Caregiver (radiology prescriptions only), Organization.
- Proposal (`intent = proposal`): Caregiver, Organization.

### Possible Error Codes

{% include error-codes-reference.md %}

On success, the new logical id is returned in the `Location` header and in the JSON payload; a
six-character **short code** is also generated and returned at consultation.

### Sequence

<figure>
  {% include operation-create-medical-document-sequence.svg %}
  <figcaption>Create Medical Document sequence</figcaption>
</figure>

