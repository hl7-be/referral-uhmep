# Changes - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* **Changes**

## Changes

This page documents the changes proposed to the 4.0 target specification. It describes the intended integrator contract, not the current implementation or deployment status.

-------

### 2026-10-29 - v4.0.0-draft: Telemonitoring and Namespace Migration

* Include the Telemonitoring medical prescription profile, mappings, vocabularies and example.
* Define repeatable monitoring parameters and systolic/diastolic pulmonary artery pressure in the 4.0 target contract.
* Use the published eHealth Referral package `hl7.fhir.be.referral#1.0.0` as the parent for 4.0. The 3.0 line retains its patched DRP dependency after DRP IG decommissioning.
* Move the local canonical base provisionally to `https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral`.
* Add a [3.0-to-4.0 migration guide](migration-3-0-to-4-0.md), including the outstanding gateway compatibility gap and regression checks.

Selected Nursing examples now follow the structured Test Server scenarios for timing and session details. This documentation update does not announce new runtime functionality.

This is a draft, not a production release announcement.

-------

### 2026-10-28 - v3.0.0 Release: Radiology and API Contract Clarifications

This release clarifies radiology workflow behavior, makes required FHIR profile elements explicit, and adds examples for the updated PSS/QSI radiology terminology.

A documentation update on 2026-11-18 also clarified the implemented 3.0 API contract. It is a documentation correction, not the announcement of newly deployed functionality.

For payload compatibility checks, radiology state transitions, before/after scenarios and regression tests, see [Migration 2.1.0 to 3.0.0](migration-2-1-to-3-0.md). The announced future migration to the Referral IG and the future canonical-base change are separate from this release.

-------

### 2026-09-02: v2.1.0 Release: Validation, Radiology Tracks, and Security (FHIR R4)

This release aligns gateway validation with the NIHDI/RIZIV-INAMI profiles, introduces track-dependent radiology workflow management, and strengthens security and execution traceability. Existing nursing integrations remain compatible, while radiology resources must conform to the latest diagnostic imaging profile.

-------

### 2026-08-05: v2.0.0 Release: eReferral Referral Prescription (STU1, FHIR R4)

This release makes the Implementation Guide the single source of truth for eReferral integration. It adds nursing and radiology profiles and mappings, expands machine-to-machine workflows, and documents the API’s security, access-control, and operational requirements.

