This guide describes the intended 4.0 integration target: Telemonitoring, the transition from DRP to the published Referral IG, and the selected local eReferral canonical base. It is guidance toward that target, not a snapshot of current runtime behavior or a deployment announcement. Known differences between the target contract and inspected application configuration are called out separately.

### Release Boundaries

| Area | 3.0 baseline | 4.0 target |
| --- | --- | --- |
| Local IG | `inami.fhir.be.ereferral#3.0.0` | Same package ID, version `4.0.0-draft`; FHIR remains R4 `4.0.1`. |
| Federal parent IG | The 3.0 line retains the patched DRP dependency `be.smals.fhir.drp-fix: current$drp-1.1.1-fixed` after decommissioning of the DRP IG. | The published eHealth Referral package `hl7.fhir.be.referral#1.0.0`; its canonicals use `/referral/`. |
| Local canonical base | `https://www.riziv-inami.be/standards/fhir/ereferral` | `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral`, selected as the 4.0 target base. |
| Telemonitoring documentation | Outside the public 3.0 IG scope. | The target contract defines the medical prescription profile, monitoring plan, mapping and example. |
| Telemonitoring parameter model | Single weight, blood-pressure and heart-rate rules in the 3.0 model. | The target model supports repeated rules and systolic/diastolic pulmonary artery pressure. |

The 3.0 dependency remains a separate release concern: it keeps its patched DRP dependency after DRP IG decommissioning. The 4.0 target moves to the published Referral package; this guide does not prescribe retroactive changes to 3.0.

### DRP to Referral

Use the published eHealth Referral package as the parent dependency for this draft. The 3.0 line keeps its patched DRP dependency following decommissioning of the DRP IG; this 4.0 migration is not a retroactive change to that line. Do not load DRP and Referral interchangeably or assume that a package-ID change leaves canonical identifiers unchanged. The following correspondences are verified in the two packages:

| Resource | Old DRP canonical suffix under `https://www.ehealth.fgov.be/standards/fhir/drp/` | Referral suffix under `https://www.ehealth.fgov.be/standards/fhir/referral/` |
| --- | --- | --- |
| Nursing request | `StructureDefinition/be-referral-servicerequest-nursing` | `StructureDefinition/be-referral-servicerequest-nursing` |
| Imaging request | `StructureDefinition/be-referral-servicerequest-diagnosticimaging` | `StructureDefinition/be-referral-servicerequest-diagnosticimaging` |
| Annex 81 | `StructureDefinition/be-annex-81` | `StructureDefinition/be-annex-81` |
| Performer task | `StructureDefinition/be-performer-task` | `StructureDefinition/be-performer-task` |
| Organization task | `StructureDefinition/be-organization-task` | `StructureDefinition/be-organization-task` |
| Referral task | `StructureDefinition/be-referral-task` | `StructureDefinition/be-referral-task` |

Review extension URLs, profile inheritance, terminology bindings and questionnaire references individually. Terminology resources may retain their `/terminology/` namespace: do not globally replace `/drp/`, `/referral/` or every eHealth URL. Revalidate each resource against the resolved 4.0 package set.

### Local Canonical Migration

For locally owned artefacts, the prefix changes while the resource type and logical identifier remain the same. For example:

| Stage | Local nursing profile canonical |
| --- | --- |
| 3.0 | `https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-nursing` |
| 4.0 draft | `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-nursing` |

Inventory `meta.profile`, extension URLs, ValueSet references, CodeSystem references, FHIRPath canonical strings, validators, code generators and caches. Change only identifiers owned by this IG or explicitly mapped for this migration. Keep terminology canonicals in other namespaces unchanged unless separately specified. The package ID does not change just because its canonical base changes.

The new base is provisional. No redirect, historical-data rewrite, API endpoint relocation or automatic equivalence between the old and new identifiers is promised. Do not bulk-rewrite stored resources without an agreed policy.

### Gateway Compatibility Gap

**Implementation gap:** the inspected gateway configuration still maps the three legacy DRP ServiceRequest profiles to the old `https://www.riziv-inami.be/standards/fhir/ereferral` targets. This does not fulfill the 4.0 target of using the new base and Referral profiles. See [Profile Rewriting](topic-profile-rewriting.html) for the target mappings and the observed configuration gap.

To reach the target, align application configuration and packaged validator resources with this IG, then validate old DRP inputs, Referral inputs, old local profiles and new local profiles separately against the actual gateway. This guide does not claim that runtime alignment is already complete.

### Telemonitoring Migration Checks

- Read the [Telemonitoring domain overview](domain-telemonitoring.html) before adopting the medical prescription profile.
- Implementations targeting 4.0 must preserve every repeated threshold or weight-change rule and support the pulmonary artery pressure parameters defined here.
- Resolve the target-profile/backend mismatch: the target profile permits zero monitoring plans, while the inspected backend requires at least one nonempty metric list.
- Verify parameter code systems, UCUM units, ratio amount/period handling and round-trip behavior with multiple rules.
- Implement and verify `targetRange` and `sustainedFor` handling where these target-profile fields are retained; profile presence alone does not provide runtime support.

### Other Application Changes

The compared Web API contract repository renames its existing contract to `openapi-v1.yaml` and adds `openapi-v2.yaml`. This is a separate API contract lineage, not evidence that the FHIR endpoint becomes FHIR v2. Clients of that Web API must review its paths and schemas independently.

Changes in all eight source repositories are recorded privately for review. Only the verified changes described here are promoted to draft integration guidance; an absence from this page is not proof that a changed component has no integrator impact.

### Regression Checklist

| Area | Checks before accepting this draft |
| --- | --- |
| Package resolution | Resolve Referral `1.0.0` and the intended local draft; record resolved versions and hashes. Do not silently use the DRP cache as a substitute. |
| Canonical identity | Check generated local URLs, sample `meta.profile`, FHIRPath references and validator lookup under the new base. |
| Legacy acceptance | Exercise the four distinct input families described above; inspect actual rewrite behavior and errors. |
| Existing domains | Revalidate nursing, Annex 81 and radiology payloads and operation scenarios against the new parent. |
| Telemonitoring parameters | Test empty metrics, repeated rules, added pulmonary parameters, units and period/amount values. |
| Optional monitoring fields | Establish application handling of target ranges and sustained durations rather than assuming it. |
| Terminology | Use the intended SNOMED edition; investigate code/version errors instead of replacing clinical codes to improve QA. |
| Application delta | Complete semantic review of outstanding component changes and distinguish frontend limitations from backend enforcement. |