Invariant: ereferral-inv-code-text-pseudonymized
Description: "When code.text is present, it must have the be-ext-pseudonymization extension."
Severity: #error
Expression: "code.text.all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())"