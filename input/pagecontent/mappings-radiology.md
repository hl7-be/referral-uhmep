This page groups the business field mappings for radiology prescription types.

| Prescription type | Mapping page | Example |
| --- | --- | --- |
| Diagnostic imaging | [Diagnostic imaging](mapper-radiology-diagnostic-imaging.html) | [example-drp-clinical-imaging](ServiceRequest-example-drp-clinical-imaging.html) |

{% include terminology-url-prefixes.html %}

### Radiology terminology

| Artifact | Source | Used for | Binding / mapping notes |
| --- | --- | --- | --- |
| [`be-vs-prescription-type`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-prescription-type.html) | eHealth branch build | Diagnostic imaging prescription type in `ServiceRequest.category[prescriptionType]`. | Use with `be-cs-prescription-type#diagnostic-imaging-appendix-82`. |
| [`be-vs-diagnostic-imaging-procedure`](ValueSet-be-vs-diagnostic-imaging-procedure.html) | Local eReferral IG | SNOMED CT diagnostic imaging procedure in `ServiceRequest.code`. | Prefer the local eReferral artifact because it is defined in this IG. |
| [`be-vs-diagnostic-imaging-condition`](ValueSet-be-vs-diagnostic-imaging-condition.html) | Local eReferral IG | SNOMED CT body structure, disorder, finding, situation, or staging condition supporting the imaging request. | Prefer the local eReferral artifact because it is defined in this IG. |
| [`be-cs-pss-qsi-indications`](CodeSystem-be-cs-pss-qsi-indications.html) / [`be-vs-pss-qsi-indication`](ValueSet-be-vs-pss-qsi-indication.html) | Local eReferral IG | PSS/QSI indication codes for diagnostic imaging requests. | Prefer the local eReferral CodeSystem/ValueSet because the PSS indication content is bundled in this IG. |
| [`ereferral-vs-imaging-patient-condition-indication`](ValueSet-ereferral-vs-imaging-patient-condition-indication.html) | Local eReferral IG | Combined patient-condition indication binding for diagnostic imaging supporting information. | Includes local PSS/QSI indications and local SNOMED CT diagnostic imaging conditions. |
| [`be-cs-radiology-supporting-info-role`](CodeSystem-be-cs-radiology-supporting-info-role.html) / [`be-vs-radiology-supporting-info-role`](ValueSet-be-vs-radiology-supporting-info-role.html) | Local eReferral IG | Role of each radiology `supportingInfo` item. | Codes include `prior-results`, `prior-request`, `attention-condition`, `safety-checklist`, and `patient-condition`. |
| [`be-cs-request-track`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/CodeSystem-be-cs-request-track.html) / [`be-vs-request-track`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-request-track.html) | eHealth branch build | Care setting / request track such as ambulatory. | Used in `ServiceRequest.orderDetail`. |
| [`be-cs-imaging-modality`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/CodeSystem-be-cs-imaging-modality.html) / [`be-vs-imaging-modality`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-imaging-modality.html) | eHealth branch build | Imaging modality types for prior imaging requests. | Use the branch build until the artifact is available in a stable official publication or duplicated locally. |
| [`be-cs-imaging-priority`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/CodeSystem-be-cs-imaging-priority.html) / [`be-vs-imaging-priority`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-imaging-priority.html) | eHealth branch build | Imaging-specific priority codes. | The base FHIR `RequestPriority` binding may still apply where the profile uses `ServiceRequest.priority`. |
| [`be-vs-implant-type`](https://build.fhir.org/ig/hl7-be/referral/branches/phase2-merged/en/ValueSet-be-vs-implant-type.html) | eHealth branch build | Implant information captured in the imaging attention-conditions response. | Used by the supporting questionnaire/response content rather than directly by the main `ServiceRequest.code`. |
