This page documents the profile rewriting applied by the eReferral FHIR Gateway when it receives resources that declare a federal eHealth DRP profile.

### Purpose

The eReferral API validates incoming resources against the internal eReferral Implementation Guide profiles. Some senders may still declare the corresponding federal eHealth DRP profile URL in `meta.profile`. To keep the API validation path consistent, the gateway rewrites supported federal profile URLs to their internal eReferral profile URL before the resource is processed by the eReferral API.

This rewrite is a technical compatibility step. It does not change the clinical or business content of the resource.

### Scope

The Gateway configuration lists three profile replacements for `ServiceRequest` profile URLs. The incoming-resource interceptor itself operates on any FHIR resource it receives and replaces a configured canonical in that resource's `meta.profile` without checking the resource type. This does not establish support for source URLs that are not configured.

The currently supported mappings are:

| Incoming eHealth DRP profile | Internal eReferral profile |
| --- | --- |
| `https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-referral-servicerequest-diagnosticimaging` | `https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging` |
| `https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-referral-servicerequest-nursing` | `https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing` |
| `https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-annex-81` | `https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-annex-81` |

### Gateway Behavior

When a request is received, the gateway inspects the resource profile declarations before forwarding the resource to the internal eReferral API.

If the received resource's `meta.profile` contains a configured source canonical:

1. that canonical is replaced with the corresponding eReferral profile URL in `resource.meta.profile`.
2. the resource is then processed by the eReferral API.

If the resource already declares the eReferral profile URL, no rewrite is needed for that profile. If the resource declares an unsupported profile URL, the gateway does not infer an eReferral profile from it.

### Example

Incoming resource profile:

```json
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

```json
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

The profile set loaded by the gateway and the profile set published in this IG must be checked
separately. A canonical URL does not identify the loaded package version. Profile rewriting does
not upgrade that package or demonstrate that every constraint added to the 3.0 IG is enforced by
an existing gateway. Continue to satisfy this IG's required elements even if an older server
accepts a resource that omits them.

After rewriting, validation is performed against the eReferral profile. Implementers should therefore make sure that resources sent with a federal eHealth DRP profile also satisfy the stricter eReferral profile constraints where applicable.

The rewrite only addresses the canonical profile URL used for routing and validation. It does not automatically transform elements, terminology, cardinalities, extensions, or business data.

Resources that were accepted by earlier gateway versions despite minor deviations from the
NIHDI/RIZIV-INAMI profiles may consequently be rejected. Integrators should test their resources
against the current profiles and correct validation errors before deployment.

### Implementation Notes

Implementers sending resources directly to the eReferral API should preferably use the eReferral profile URL in `ServiceRequest.meta.profile`. The rewrite exists to support systems that still identify the request by its federal eHealth DRP profile.

Systems that log or audit incoming requests may record both values: the profile received at the gateway boundary and the profile used internally after rewriting.

Existing nursing integrations may continue to use a supported legacy URL, but should progressively
migrate to the NIHDI/RIZIV-INAMI canonical URL for new development. Radiology integrations must use
resources conforming to the current NIHDI/RIZIV-INAMI diagnostic imaging profile. URL rewriting does
not provide compatibility for a resource that fails that profile's constraints.
