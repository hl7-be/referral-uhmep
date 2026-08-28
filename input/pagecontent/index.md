This implementation guide defines the local eReferral FHIR profiles, examples, mappings, and guidance for referral prescriptions.



<br>
<br>
<br>
{% if site.data.fhir.ig.status == "draft" %}
<div class="ig-draft-disclaimers">
  <section style="border-left: 4px solid #f59e0b; background-color: #fff7ed; padding: 12px 16px; margin: 16px 0;">
    <strong>This documentation and set of artefacts are still undergoing development.</strong>
  </section>
  <section style="border-left: 4px solid #f59e0b; background-color: #fff7ed; padding: 12px 16px; margin: 16px 0;">
    <strong>The canonical URL and publication address of this Implementation Guide are provisional and subject to change.</strong>
  </section>
  <section style="border-left: 4px solid #f59e0b; background-color: #fff7ed; padding: 12px 16px; margin: 16px 0;">
    <strong>This Implementation Guide contains only demonstrative examples of terminology resources.</strong>
    <span>ValueSets and CodeSystems in this Implementation Guide are provided as examples only. The actual ValueSets and CodeSystems will be made available from a terminology package and can then be consulted in the FHIR terminology ecosystem.</span>
  </section>
</div>
{% endif %}
<div style="border-left: 4px solid #f59e0b; background-color: #fff7ed; padding: 12px 16px; margin: 16px 0;">
  <strong>Technical scope only.</strong> This Implementation Guide has a <strong>technical purpose</strong>: it helps integrators
  implement the eReferral FHIR API. It does <strong>not</strong> define, and is not the guarantor of, the
  <strong>business rules</strong> (eligibility, reimbursement, therapeutic-relationship, consent, or other
  INAMI-defined business logic). For business rules, integrators must always refer to INAMI/RIZIV.
</div>

The current scope is focused on:

| Domain | Main content |
| --- | --- |
| Nursing | Generic nursing ServiceRequest prescriptions and Annex 81 proposal/approval flows. |
| Radiology | Diagnostic imaging ServiceRequest prescriptions and the imaging attention conditions response. |
| Cross-domain | Pseudonymization rules, validity and feedback extensions, requester/subject handling, and example validation. |

### What This IG Contains

| Section | Purpose |
| --- | --- |
| [Guidance](guidance.html) | Implementation rules and modelling choices used across the local profiles. |
| [API Integration](api-integration.html) | Authentication, identifiers, pseudonymization, validations, and errors. |
| [API Operations](api-operations.html) | Operation-by-operation map, with allowed roles and links to the error-code workbook. |
| [Access Matrix](operation-access-matrix.html) | Roles, INAMI access matrix, suspension, and search-filter access control. |
| [Life Cycle](topic-prescription-lifecycle.html) | Business↔FHIR status mapping, lifecycle and task diagrams, proposal life cycle, and prescription extension. |
| [Prescription Templates](topic-prescription-templates.html) | Technical-identifier catalogue, profiles, and validity rules per template. |
| [Visibility & Blacklisting](topic-visibility-blacklisting.html) | Template visibility, blacklisting behaviour, and cancelled-prescription rules. |
| [Business Field Mappings](mappings-business.html) | Business field to FHIR mappings, grouped by domain and prescription type. |
| [Artifacts](artifacts.html) | Generated FHIR profiles, extensions, ValueSets, CodeSystems, and examples. |
| [Technical](technical.html) | Entry points, required headers, reference documents, support contacts, and certificates. |
| [Glossary](glossary.html) | Terminology used across this IG. |
| [Downloads](downloads.html) | Downloadable packages and generated resources. |
| [Changes](changes.html) | Change notes for this local IG. |

### Profiles

| Profile | Purpose |
| --- | --- |
| `eReferralServiceRequestNursing` | Generic nursing ServiceRequest prescriptions. |
| `eReferralAnnex81` | Annex 81 nursing medication preparation proposal/approval. |
| `eReferralServiceRequestDiagnosticImaging` | Diagnostic imaging ServiceRequest prescriptions. |
| `eReferralImagingAttentionConditionsResponse` | Contained response for radiology attention/safety checklist information. |

### Business Mappings

The IG includes mapping pages generated from the nursing template Excel. These pages map business fields and allowed values to proposed FHIR elements and candidate terminologies.

Start with:

| Domain | Page |
| --- | --- |
| Nursing | [Nursing mappings](mappings-nursing.html) |
| Radiology | [Radiology mappings](mappings-radiology.html) |

Terminology notes in the mapping pages are intentionally conservative. Some Excel value lists predate the current ValueSets and may require reconciliation before being treated as normative coded values.
