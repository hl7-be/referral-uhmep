This page describes the profile-rewriting targets proposed for the 4.0 draft when an integrator declares a federal DRP or Referral profile. It distinguishes the draft mapping from the gateway configuration inspected during preparation.

<div style="border-left: 4px solid #b91c1c; background-color: #fef2f2; color: #991b1b; padding: 12px 16px; margin: 16px 0;">
  <p><strong>Gateway configuration alignment required.</strong> The targets below use the provisional <code>https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral</code> canonical of this draft. The inspected gateway configuration still uses the former INAMI targets and does not establish all the source aliases below. These are proposed compatibility mappings, not verified deployed behavior; see <a href="migration-3-0-to-4-0.html">Migration 3.0 to 4.0</a>.</p>
</div>

### Purpose

The eReferral API validates incoming resources against the internal eReferral Implementation Guide profiles. Senders may declare a federal profile URL in `meta.profile`. A configured rewrite can replace that URL with the corresponding local eReferral profile before validation. Migration to the Referral parent does not automatically configure this behavior in the gateway.

Rewriting is a technical compatibility step. It does not change the clinical or business content of the resource.

### Scope

The proposed mappings concern profile URLs on incoming `ServiceRequest` resources. They do not establish aliases for Task profiles, extension URLs, terminology namespaces or arbitrary canonical references elsewhere in the payload.

The 4.0 draft targets are:

| Incoming federal profile, requiring an explicit gateway mapping | Local 4.0 draft profile target |
| --- | --- |
| `https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-referral-servicerequest-diagnosticimaging` | `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging` |
| `https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-referral-servicerequest-diagnosticimaging` | `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging` |
| `https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-referral-servicerequest-nursing` | `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing` |
| `https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-referral-servicerequest-nursing` | `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing` |
| `https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-annex-81` | `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-annex-81` |
| `https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-annex-81` | `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-annex-81` |

### Required Gateway Behavior

To implement these draft mappings, the gateway configuration and its packaged validation resources must use matching targets. The following sequence is conditional on that configuration being deployed and tested.

When a configured source profile is found:

1. the configured federal profile URL is removed from `ServiceRequest.meta.profile`;
2. the corresponding eReferral profile URL is added to `ServiceRequest.meta.profile`;
3. the resource is then processed and validated as an eReferral resource.

If the resource already declares the corresponding local 4.0 profile, no namespace rewrite is needed for that declaration, but the deployed validator must resolve it. An unconfigured URL must not be assumed to receive a matching rewrite.

### Example

Illustrative incoming Referral profile declaration:

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-referral-servicerequest-diagnosticimaging"
    ]
  }
}
```

Expected local declaration if the proposed mapping is configured and applied:

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    ]
  }
}
```

### Validation Impact

After a configured rewrite, validation must use the matching eReferral profile. Resources declaring a federal profile must therefore also satisfy the local constraints where applicable.

The rewrite only addresses the canonical profile URL used for routing and validation. It does not automatically transform elements, terminology, cardinalities, extensions, or business data.

Resources that were accepted by earlier gateway versions despite minor deviations from the
NIHDI/RIZIV-INAMI profiles may consequently be rejected. Integrators should test their resources
against the current profiles and correct validation errors before deployment.

### Implementation Notes

The inspected gateway still configures three DRP ServiceRequest mappings to the former INAMI targets. It does not establish acceptance of all six proposed source aliases or the new local namespace. Configuration alignment and runtime tests remain necessary; this documentation does not modify the gateway.

For 4.0 draft validation, use the local profile URL from this IG in `ServiceRequest.meta.profile`. Before sending it to an API environment, confirm that the environment resolves the new namespace and enforces the intended version.

Systems that log or audit incoming requests may record both values: the profile received at the gateway boundary and the profile used internally after rewriting.

Legacy nursing or imaging inputs require an explicitly configured compatibility path. URL rewriting does not provide compatibility for a resource that fails the target profile's constraints. Historical URLs are listed in the [migration guide](migration-3-0-to-4-0.html); no automatic redirect or general legacy-acceptance guarantee is implied.
