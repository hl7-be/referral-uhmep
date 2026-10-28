Invariant: ereferral-inv-order-detail-text-pseudonymized
Description: "When orderDetail.text is present, it must have the be-ext-pseudonymization extension."
Severity: #error
Expression: "orderDetail.text.all(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization').exists())"
