Invariant: ereferral-inv-urgency-justification-value-pseudonymized
Description: "When urgencyJustification.valueString is present, it must have the be-ext-pseudonymization extension."
Severity: #error
Expression: "extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-urgency-justification').value.ofType(string).all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())"
