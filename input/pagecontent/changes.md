This page documents the changes to the eReferral Implementation Guide specification.

---

### **2026-09-02 — v2.1.0 Release: Validation, Radiology Tracks, and Security — FHIR R4**

This release aligns gateway validation with the NIHDI/RIZIV-INAMI profiles, introduces
track-dependent radiology workflow management, and strengthens security and execution
traceability. Existing nursing integrations remain compatible, while radiology resources must
conform to the latest diagnostic imaging profile.

<details markdown="1">
<summary><strong>View detailed v2.1.0 release notes</strong></summary>

#### FHIR validation and profile compatibility

The FHIR Gateway now aligns validation with the current NIHDI/RIZIV-INAMI profiles. For backward
compatibility, it continues to accept the supported legacy eHealth profile URLs and rewrites them
to the corresponding NIHDI/RIZIV-INAMI canonical URLs before validation. The mappings cover
diagnostic imaging ServiceRequests, nursing ServiceRequests, and Annex 81 resources.

The rewrite is transparent and does not transform resource content. Validation may therefore be
stricter than in previous releases, and resources with profile deviations may now produce errors.
Existing nursing integrations remain compatible but should progressively adopt the current
canonical URLs. Radiology integrations must conform to the latest diagnostic imaging profile. See
[Profile Rewriting](topic-profile-rewriting.html).

#### Radiology track management

Radiology prescriptions now use their required `ambulatory`, `inpatient`, or `urgency` track when
the API applies assignment, validation, substitution, execution, and refusal rules. See
[Guidance – Radiology Track Management](guidance.html#radiology-track-management).

#### Security and compliance

- Free-text prescription fields use the JWE-based encryption model provided by the eHealth
  Pseudonymization service.
- Privacy audit logging has been extended.
- Treatment execution traceability has been improved through the documented Task lifecycle and
  tracing requirements.

See [Technical – Encryption](technical.html#encryption) and
[API Integration – Pseudonymization](api-integration.html#pseudonymization).

#### Documentation consolidation

The Implementation Guide remains the single authoritative source for supported workflows, FHIR
structures, profiles, validation rules, and integration examples. The retired PDF Cookbook must
not be used as the reference for new development. This consolidation was introduced in v2.0.0;
v2.1.0 reinforces the migration recommendation without duplicating the Cookbook content.

#### Deployed but unavailable capabilities

Heart Failure Medical Orders, Technical Orders, Medical Order consultation, and Heart Failure
parameter management are deployed behind feature flags but remain disabled in acceptance and
production. They are not part of the public API capabilities in this release and will be documented
as available only when activated in a future release.

</details>

---

### **2026-08-05 — v2.0.0 Release: eReferral Referral Prescription (STU1) — FHIR R4**

This release makes the Implementation Guide the single source of truth for eReferral integration.
It adds nursing and radiology profiles and mappings, expands machine-to-machine workflows, and
documents the API's security, access-control, and operational requirements.

<details markdown="1">
<summary><strong>View detailed v2.0.0 release notes</strong></summary>

#### Cookbook integration
The legacy eReferral API cookbook (`UHMEP_API_cookbook.pdf`) has been fully integrated into this Implementation Guide. This IG now supersedes the cookbook and serves as the single source of truth for integrators.

#### Nursing support
##### Profiling
New nursing profiles to add constraints on nursing prescriptions and Annex 81 proposals:
- [eReferralServiceRequestNursing](StructureDefinition-ereferral-servicerequest-nursing.html)
- [eReferralAnnex81](StructureDefinition-ereferral-annex-81.html)

##### Mapping tables
Field-by-field mapping tables have been added for every prescription type, showing exactly how business concepts map to FHIR:
- [Nursing — Generic](mapper-nursing-generic.html)
- [Nursing — Medication Preparation (Annex 81)](mapper-nursing-annex81-medication-preparation.html)
- [Nursing — Bloodletting](mapper-nursing-bloodletting.html)
- [Nursing — Chronic Dialysis](mapper-nursing-chronic-dialysis.html)
- [Nursing — Glycemic Test](mapper-nursing-glycemic-test.html)
- [Nursing — Hygienic Care](mapper-nursing-hygienic-care.html)
- [Nursing — Medication Prefill (not refunded)](mapper-nursing-medication-prefill-not-refunded.html)
- [Nursing — Sampling](mapper-nursing-sampling.html)
- [Nursing — Diabetes Education](mapper-nursing-diabetes-education-start-trajectory.html) (multiple variants)

#### Radiology (Diagnostic Imaging) support
##### Profiling
New profiles and operations enable prescription and management of radiology exams:
- [eReferral Service Request — Diagnostic Imaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.html)
- [eReferral Imaging Attention Conditions Response](StructureDefinition-ereferral-imaging-attention-conditions-response.html)

##### New radiology-specific operations
Three new operations handle specific parts of radiology prescription workflows:
1. **Accept a Radiology Prescription** — confirms the requested exam and readiness to perform the exam
2. **Substitute a Radiology Exam** — replaces the exam (e.g., CT instead of X-ray)
3. **Refuse a Radiology Exam** — declines to perform the requested exam

##### Mapping tables for integrators
Field-by-field mapping table has been added for radiology prescription, showing exactly how business concepts map to FHIR:
- [Radiology / Diagnostic Imaging](mapper-radiology-diagnostic-imaging.html)


#### Machine-to-Machine (M2M) integration
The following operations have been expanded to support M2M workflows:
1. **[Create Medical Document](operation-create-medical-document.html)** — now supports creation of a medical document, prescription or proposal, by an internal professional of an organization
2. **[Assign Care Provider](operation-assign-care-provider.html)** — expanded to:
   - Assign to an organization (`BeOrganizationTask`)
   - Assign to an internal professional within an organization (`BePerformerTask`)
3. **[Record Execution Start](operation-record-execution-start.html)** — now supports initiation by an internal professional of an organization via POST
4. **[Unassign Care Provider](operation-unassign-care-provider.html)** — operation to withdraw assignments of an organization or internal professional from a prescription
5. **[Evaluate Proposal](operation-evaluate-proposal.html)** — now supports evaluation by an internal professional of an organization
6. **[Evaluate Radiology Prescription](operation-evaluate-radiology-prescription.html)** — supports evaluation by an internal professional of an organization


#### Security & privacy
- Authentication via [Identity & Authorization Management (I.AM)](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/9a7dc4d16e58378f81f999fc3a5333448bcdec8b/iam-mobile-integration-tech-specs-v1-13.pdf)
- Free-text and sensitive fields protected via [Pseudonymization REST](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/c6094d06e6a7b74d2e3c1a8c93cce78acb2d6359/pseudonymisation-rest-v1-9-1.pdf) service
- See [API Integration](api-integration.html#authentication-and-headers) for full authentication and header requirements

#### Reference materials
- **[API Integration](api-integration.html)** — authentication, headers, request/response structure
- **[API Operations](api-operations.html)** — overview of all available operations
- **[Technical](technical.html)** — entry points, support contacts, certificates
- **[Access Control Matrix](operation-access-matrix.html)** — which roles can perform which operations
- **[Error Codes](error-codes.html)** — complete error catalogue and troubleshooting
- **[Visibility & Blacklisting](topic-visibility-blacklisting.html)** — data filtering rules

</details>
