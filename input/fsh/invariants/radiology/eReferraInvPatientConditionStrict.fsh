//Invariant: ereferral-inv-patient-condition-strict
//Description: "Si un code est fourni, il doit obligatoirement faire partie du ValueSet eReferralVSImagingPatientConditionIndication. Le texte libre seul reste autorisé."
//Severity: #error
//Expression: "iif(supportingInfo.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).coding.exists(), supportingInfo.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).coding.all(system.substring(0) + '|' + code.substring(0) memberOf 'https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication'), true)"

//Invariant: ereferral-inv-patient-condition-strict
//Description: "The patient condition CodeableConcept must contain either only text, or exactly one coding from the eReferral imaging patient condition indication ValueSet."
//Severity: #error
//Expression: "(text.exists() and coding.empty()) or (text.empty() and coding.count() = 1 and memberOf('https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication'))"

Invariant: ereferral-inv-patient-condition-strict
Description: "Une patientCondition doit contenir soit uniquement un texte libre, soit exactement un coding appartenant au ValueSet autorisé. Un texte peut accompagner le coding."
Severity: #error
Expression: "(coding.empty() and text.exists()) or (coding.count() = 1 and memberOf('https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication'))"
