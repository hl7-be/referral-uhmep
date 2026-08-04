Invariant: ereferral-inv-answer-value-string-pseudonymized
Description: "When an answer valueString is present, it must have the be-ext-pseudonymization extension."
Severity: #error
Expression: "item.answer.value.ofType(string).all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists()) and item.answer.item.answer.value.ofType(string).all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())"
