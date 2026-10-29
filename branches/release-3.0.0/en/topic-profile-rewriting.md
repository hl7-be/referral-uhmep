# Profile Rewriting - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* **Profile Rewriting**

## Profile Rewriting

This page documents the profile rewriting applied by the eReferral FHIR Gateway when it receives resources that declare a federal eHealth DRP profile.

### Purpose

The eReferral API validates incoming resources against the internal eReferral Implementation Guide profiles. Some senders may still declare the corresponding federal eHealth DRP profile URL in `meta.profile`. To keep the API validation path consistent, the gateway rewrites supported federal profile URLs to their internal eReferral profile URL before the resource is processed by the eReferral API.

This rewrite is a technical compatibility step. It does not change the clinical or business content of the resource.

### Scope

The rewriting applies to the profile URLs declared on incoming `ServiceRequest` resources. When one of the supported eHealth DRP profile URLs is present in `ServiceRequest.meta.profile`, the gateway replaces it with the matching eReferral profile URL.

The following mappings are configured in the gateway source for this release. Confirm that the target environment uses the same configuration before relying on legacy-profile compatibility.

| | |
| :--- | :--- |
| `https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-referral-servicerequest-diagnosticimaging` | `https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging` |
| `https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-referral-servicerequest-nursing` | `https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing` |
| `https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-annex-81` | `https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81` |

An incoming eReferral profile already uses the validation target and does not require this rewrite. Other URLs, including similarly named URLs under `/referral/`, are not aliases supplied by this table. Their acceptance must not be inferred from package names or from the announced future namespace migration.

### Gateway Behavior

When a request is received, the gateway inspects the resource profile declarations before forwarding the resource to the internal eReferral API.

If a supported eHealth DRP profile is found:

1. the eHealth DRP profile URL is removed from`ServiceRequest.meta.profile`;
1. the corresponding eReferral profile URL is added to`ServiceRequest.meta.profile`;
1. the resource is then processed and validated as an eReferral resource.

If the resource already declares the eReferral profile URL, no rewrite is needed for that profile. If the resource declares an unsupported profile URL, the gateway does not infer an eReferral profile from it.

### Example

Incoming resource profile:

```
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-referral-servicerequest-diagnosticimaging"
    ]
  }
}

```

Profile after gateway rewriting:

```
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    ]
  }
}

```

### Validation Impact

After rewriting, validation is performed against the eReferral profile. Implementers should therefore make sure that resources sent with a federal eHealth DRP profile also satisfy the stricter eReferral profile constraints where applicable.

The rewrite only addresses the canonical profile URL used for routing and validation. It does not automatically transform elements, terminology, cardinalities, extensions, or business data.

Resources that were accepted by earlier gateway versions despite minor deviations from the NIHDI/RIZIV-INAMI profiles may consequently be rejected. Integrators should test their resources against the current profiles and correct validation errors before deployment.

### Implementation Notes

Implementers sending resources directly to the eReferral API should preferably use the eReferral profile URL in `ServiceRequest.meta.profile`. The rewrite exists to support systems that still identify the request by its federal eHealth DRP profile.

Systems that log or audit incoming requests may record both values: the profile received at the gateway boundary and the profile used internally after rewriting.

Existing nursing integrations may continue to use a supported legacy URL, but should progressively migrate to the NIHDI/RIZIV-INAMI canonical URL for new development. Radiology integrations must use resources conforming to the current NIHDI/RIZIV-INAMI diagnostic imaging profile; URL rewriting does not provide compatibility for a resource that fails that profile’s constraints.

