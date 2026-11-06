Invariant: ereferral-inv-supportingInfo-safetyChecklist-contained
Severity: #error
Description: "supportingInfo[safetyChecklist] must reference the contained safety checklist."
Expression: "supportingInfo.reference.where($this.startsWith('#')).select(substring(1)).all($this in %resource.contained.where(meta.profile contains 'https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response').id)"
