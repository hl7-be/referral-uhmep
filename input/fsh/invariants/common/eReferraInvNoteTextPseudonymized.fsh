Invariant: ereferral-inv-note-text-pseudonymized
Description: "When note.text is present, it must have the be-ext-pseudonymization extension."
Severity: #error
Expression: "note.text.all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())"
