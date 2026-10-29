Invariant: ereferral-inv-patient-condition-strict
Description: "A patient condition must contain either free text, or exactly one coding from the allowed ValueSet. Text may accompany a coding."
Severity: #error
Expression: "supportingInfo.where(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role').value = 'patient-condition').extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).all((text.exists() and coding.empty()) or (text.empty() and coding.count() = 1 and memberOf('https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication')))"
