Invariant: ereferral-inv-subject-identifier-value-pseudonymized
Description: "When subject.identifier.value is present, it must have the be-ext-pseudonymization extension."
Severity: #error
Expression: "subject.identifier.value.all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())"
