This page documents the changes to the eReferral Implementation Guide specification.

---

## **2026-08-05 — v2.0.0 Release: eReferral Referral Prescription (STU1) — FHIR R4**

#### Cookbook integration
The legacy eReferral API cookbook (`UHMEP_API_cookbook.pdf`) has been fully integrated into this Implementation Guide. This IG now supersedes the cookbook and serves as the single source of truth for integrators. See [Cookbook migration notes](cookbook-migration-notes.html) for details.

#### Nursing support
##### Profiling
New nursing profiles to add constraints on nursing prescriptions and Annex 81 proposals:
- [eReferralServiceRequestNursing](StructureDefinition-eReferralServiceRequestNursing.html)
- [eReferralAnnex81](StructureDefinition-eReferralAnnex81.html)

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
- [eReferral Service Request — Diagnostic Imaging](StructureDefinition-eReferralServiceRequestDiagnosticImaging.html)
- [eReferral Imaging Attention Conditions Response](StructureDefinition-eReferralImagingAttentionConditionsResponse.html)

##### New radiology-specific operations
Three new operations handle specific parts of radiology prescription workflows:
1. **[Accept a Radiology Prescription](operation-accept-radiology-prescription.html)** — confirms the requested exam and readiness to perform the exam
2. **[Substitute a Radiology Exam](operation-substitute-radiology-exam.html)** — replaces the exam (e.g., CT instead of X-ray)
3. **[Refuse a Radiology Exam](operation-refuse-radiology-exam.html)** — declines to perform the requested exam

##### Mapping tables for integrators
Field-by-field mapping table has been added for radiology prescription, showing exactly how business concepts map to FHIR:
- [Radiology / Diagnostic Imaging](mapper-radiology-diagnostic-imaging.html)


#### Machine-to-Machine (M2M) integration
The following operations have been expanded to support M2M workflows:
1. **[Create Medical Document](operation-create-medical-document.html)** — now supports creation of a medical document by an internal professional of an organization
2. **[Assign Care Provider](operation-assign-care-provider.html)** — expanded to:
   - Assign to an organization (`BeOrganizationTask`)
   - Assign to an internal professional within an organization (`BePerformerTask`)
3. **[Record Execution Start](operation-record-execution-start.html)** — now supports:
   - Initiation by an internal professional of an organization via POST
4. **[Unassign Care Provider](operation-unassign-care-provider.html)** — new operation to withdraw assignments of an organization or internal professional from a prescription


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
