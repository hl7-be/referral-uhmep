Invariant: ereferral-inv-urgent-requires-urgency-justification
Severity: #error
Description: "The urgencyJustification extension must be present when priority is urgent."
Expression: "priority != 'urgent' or extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-urgency-justification').exists()"
