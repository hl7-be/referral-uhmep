8# eReferral Implementation Guide — For Integrators 📖

Welcome! This is the **eReferral Implementation Guide** — your step-by-step reference for integrating your system with the **UHMEP eReferral REST API**.

If you're a software developer or integrator building a system that sends or receives **non-drug referral prescriptions** (radiology, wound care, nursing care, Annex 81 proposals, etc.) through the Belgian healthcare network, **you're in the right place**.

---

## ⚡ Quick start

**Start here** → [API Integration](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/api-integration.html)  
**Then** → Browse the operation pages for your use case (Consult, Create, Assign, etc.)  
**Reference** → Use the mapper pages to understand data field mapping  
**Need help?** → Check [Technical References](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/technical.html) and support contacts

---

## 🎯 What is this guide?

This guide explains:

- **How to authenticate** and make authorized API calls
- **What data structures** (FHIR profiles) your prescriptions must follow
- **What operations** you can perform (create, consult, assign, complete, cancel, etc.)
- **What errors** might come back and how to handle them
- **Field-by-field mappings** showing business concepts → FHIR data

It does **not** cover:
- Clinical eligibility or business rules (those live in operational manuals elsewhere)
- How the UHMEP system works internally
- Generic FHIR theory (we assume you know FHIR basics or have a FHIR guide handy)

---

## 📋 Find what you need

### **Operations (what you can do)**

| Use case | Documentation |
|----------|---|
| Look up existing prescriptions or proposals | [Consult / Search Medical Documents](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-consult-search-medical-documents.html) |
| Send a new prescription or Annex 81 proposal | [Create Medical Document](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-create-medical-document.html) |
| Assign a prescription to a care provider or organization | [Assign Care Provider](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-assign-care-provider.html) |
| Record that execution has started | [Record Execution Start](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-record-execution-start.html) |
| Record that execution has ended | [Record Execution End](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-record-execution-end.html) |
| Record an interruption during execution | [Record Execution Interruption](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-record-execution-interruption.html) |
| Complete a prescription | [Complete Medical Document](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-complete-medical-document.html) |
| Cancel a prescription | [Cancel Medical Document](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-cancel-medical-document.html) |
| Unassign a care provider | [Unassign Care Provider](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-unassign-care-provider.html) |

### **Data mappings (fields → FHIR)**

Each prescription type has a mapper page showing how business fields map to FHIR elements:

- [**Radiology** (Diagnostic Imaging)](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/mapper-radiology-diagnostic-imaging.html)
- **Nursing care:**
  - [Generic Nursing](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/mapper-nursing-generic.html)
  - [Medication Preparation (Annex 81)](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/mapper-nursing-annex81-medication-preparation.html)
  - [Bloodletting](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/mapper-nursing-bloodletting.html)
  - [Chronic Dialysis](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/mapper-nursing-chronic-dialysis.html)
  - [Glycemic Test](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/mapper-nursing-glycemic-test.html)
  - [Hygienic Care](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/mapper-nursing-hygienic-care.html)
  - [Medication Prefill (not refunded)](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/mapper-nursing-medication-prefill-not-refunded.html)
  - [Sampling](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/mapper-nursing-sampling.html)
  - [Diabetes Education](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/mapper-nursing-diabetes-education-start-trajectory.html) (multiple variants)

### **Technical essentials**

- [**Technical Overview**](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/technical.html) — entry points, headers, reference documents, support contacts, certificates
- [**Prescription Lifecycle**](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/topic-prescription-lifecycle.html) — state transitions and status codes
- [**Annex 81 Proposal Lifecycle**](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/topic-prescription-lifecycle-proposal.html) — how proposals move from request → approval/rejection
- [**Prescription Templates**](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/topic-prescription-templates.html) — category codes and template structure
- [**Access Control Matrix**](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-access-matrix.html) — which roles can perform which operations
- [**Visibility & Blacklisting**](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/topic-visibility-blacklisting.html) — data filtering rules for different user types

### **Profiles & data structures**

- [**All Profiles**](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/artifacts.html#1-3-profile) — complete list with links to each profile's formal definition
- [**Glossary**](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/glossary.html) — key terms and concepts explained

### **Troubleshooting & error handling**

- [**Error Codes & Messages**](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/error-codes.html) — what can go wrong and why, with error codes from the operation reference
- Each operation page lists the **Possible Error Codes** and their meanings

---

## 🔑 Key concepts in 60 seconds

### **Prescriptions and Proposals**

- **Prescription** (`ServiceRequest` with `intent = order`): a binding order to perform care.
- **Proposal** (`ServiceRequest` with `intent = proposal`): a draft for approval (often used in Annex 81).

Both share the same FHIR structure; the difference is the `intent` field.

### **Tasks = Assignments + Tracking**

A prescription doesn't carry out itself. After creation, it's linked to a **Task**:
- **`BeReferralTask`** — the top-level work order.
- **`BePerformerTask`** — assignment to a **person** (care provider).
- **`BeOrganizationTask`** — assignment to an **organization**.

Tasks track state changes as work progresses (assigned → in progress → completed, etc.).

### **IDs & identifiers**

Each actor is identified by fixed formats:
- **Prescriber** (doctor): NIHII + SSIN (social security number, encrypted).
- **Care provider** (nurse, specialist): NIHII + SSIN.
- **Organization**: 11-digit NIHII (Belgian business identifier for health orgs).

See [API Integration](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/api-integration.html#identifiers) for exact formats.

### **Privacy: pseudonymization**

Free-text fields (notes, reason, codes with text) carry a **pseudonymization extension** that marks them as sensitive. Your system must handle encryption/decryption per the [eHealth Pseudonymization REST](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/c6094d06e6a7b74d2e3c1a8c93cce78acb2d6359/pseudonymisation-rest-v1-9-1.pdf) service.

---

## 🔗 External resources

| Resource | Purpose |
|----------|---------|
| [eHealth API Portal](https://portal.api.ehealth.fgov.be/api-details?apiId=4af2be31-3f32-4c49-b4f8-c5e6bb4f0984&managerId=1&swaggerVersion=3.0&type=rest&usage=api&Itemid=171&catalogModuleId=120#overview) | Live API documentation (Swagger/OpenAPI) |
| [eHealth certificates (NL)](https://www.ehealth.fgov.be/ehealthplatform/nl/ehealth-certificaten) / [(FR)](https://www.ehealth.fgov.be/ehealthplatform/fr/certificats-ehealth) | How to request a client certificate for API access |
| [Identity & Authorization (I.AM)](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/9a7dc4d16e58378f81f999fc3a5333448bcdec8b/iam-mobile-integration-tech-specs-v1-13.pdf) | Authentication & token specs |
| [Pseudonymization REST](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/c6094d06e6a7b74d2e3c1a8c93cce78acb2d6359/pseudonymisation-rest-v1-9-1.pdf) | Encryption/decryption of sensitive fields |

---

## 🤝 Support

For integration questions or issues:

| Environment | Contact |
|---|---|
| **Acceptance** (testing) | `integration-support@ehealth.fgov.be` |
| **Production** | `support@ehealth.fgov.be` |

---

## 📄 Guide layout

This guide is organized as follows:

1. **[API Integration](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/api-integration.html)** — Authentication, headers, request/response basics.
2. **[API Operations](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/api-operations.html)** — List and overview of all operations (create, consult, assign, etc.).
3. **[Complex Operations](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/api-complex-operations.html)** — Multi-step workflows (e.g., assign then record execution).
4. **Operation pages** — Each operation in detail (create, consult, cancel, etc.).
5. **Mapper pages** — Field-by-field mapping for each prescription type.
6. **Topic pages** — Deep dives on lifecycle, profiles, visibility rules, etc.
7. **Technical** — Endpoints, headers, support contacts, certificates.
8. **Artifacts** — Downloadable FHIR packages and formal profile definitions.

---

## 🚀 Getting started

**Step 1:** Read [API Integration](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/api-integration.html) to understand how to authenticate and call the API.

**Step 2:** Find your prescription type (e.g., Radiology, Nursing) and read its **mapper page** to see which fields you need to send.

**Step 3:** Pick an operation you want to implement first (usually [Create Medical Document](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/operation-create-medical-document.html)) and follow its detailed instructions.

**Step 4:** Build a JSON payload using the examples on the mapper page, then call the API.

**Step 5:** If you hit an error, check [Error Codes](https://build.fhir.org/ig/hl7-be/referral-uhmep/branches/release-2-0-0/en/error-codes.html) and the **Possible Error Codes** section on each operation page.

**Questions?** Post to the support email (see above) — they're there to help. 🙌

---

**Last updated:** August 2026

