Invariant: ereferral-inv-status-reason-text-pseudonymized
Description: "When statusReason text is present, it must have the be-ext-pseudonymization extension."
Severity: #error
Expression: "extension.where(url = 'http://hl7.org/fhir/StructureDefinition/request-statusReason').value.ofType(CodeableConcept).text.all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())"
