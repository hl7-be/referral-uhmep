This provides a list of changes to the specification since its initial release

**2026-07-23 — Jira contract review**
Reviewed recent UHMEP changes against the IG. Clarified that authenticated patients can resolve
referenced Practitioner and PractitionerRole resources, documented the exact pseudonymization-key
`id` / encrypted-text `{kid}` linkage, and published the UHMEP API Error Codes Excel workbook.
All operation pages now link to the workbook through shared content instead of duplicating
individual error codes.

**2026-07-10 — Cookbook migration review pass**
Follow-up to the cookbook migration, based on an analyst review call. Resolved 9 of the 10 open
cookbook/IG conflicts (F1–F9; F10 left as a placeholder pending analyst input) — see
`cookbook-migration-notes.md`. Removed per-operation business-rule preconditions and the Consent/
Relationship/Exclusion appendix (business rules are out of scope for this IG); added an "Allowed
Roles" section and a placeholder error-code catalogue (`error-codes.md`) per operation instead.
Consolidated navigation: merged the Workflow pages into the Life Cycle topic (with Proposal Life
Cycle and Prescription Replacement sub-pages); removed the Workflow and Appendix menu tabs; added
a new Technical page (entry points, headers, references, support, certificates) replacing the
support/certificate content on Glossary; grouped Glossary/Downloads/Changes/History under a new
Resources menu entry. Fixed broken navigation links (mapping pages, workflow/appendix references)
and missing `<br>` separators in mapping-table value lists.

**2026-07-08 — UHMEP API cookbook migration**
Migrated the content of the legacy `UHMEP_API_cookbook.pdf` (Smals, v1.1.1) into this IG. The IG
now supersedes the cookbook. New pages: Glossary & Support, Prescription Lifecycle & Statuses,
Prescription Templates, Access Matrix, Visibility & Blacklisting, and the Consent/Relationship/
Exclusion appendix. Operation pages were enriched with per-operation preconditions, and
`api-integration` gained centralized date/validity computation and reference/certificate
information. Open points where the cookbook and IG diverge are tracked in
`cookbook-migration-notes.md` and marked inline with `TO VERIFY` comments.

**2026-06-25 v1.0.0 - eReferral Referral Prescription (STU1)** based on FHIR R4
