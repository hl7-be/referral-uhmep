Invariant: ereferral-inv-reason-code-text-pseudonymized
Description: "When reasonCode.text is present, it must have the be-ext-pseudonymization extension."
Severity: #error
Expression: "reasonCode.text.all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())"
