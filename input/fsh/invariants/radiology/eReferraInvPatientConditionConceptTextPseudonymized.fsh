Invariant: ereferral-inv-patient-condition-concept-text-pseudonymized
Description: "When patientCondition concept text is present, it must have the be-ext-pseudonymization extension."
Severity: #error
Expression: "supportingInfo.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).text.all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())"
