Invariant: ereferral-inv-patient-condition-code-or-text
Description: "patientCondition must contain either a coded indication from the allowed ValueSet or encrypted free text."
Severity: #error
Expression: "supportingInfo.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).all(coding.exists() or text.exists())"