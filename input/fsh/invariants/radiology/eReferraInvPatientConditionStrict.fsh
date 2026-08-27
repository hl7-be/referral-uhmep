//Invariant: ereferral-inv-patient-condition-strict
//Description: "Si un code est fourni, il doit obligatoirement faire partie du ValueSet eReferralVSImagingPatientConditionIndication. Le texte libre seul reste autorisé."
//Severity: #error
//Expression: "iif(supportingInfo.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).coding.exists(), supportingInfo.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).coding.all(system.substring(0) + '|' + code.substring(0) memberOf 'https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication'), true)"

//Invariant: ereferral-inv-patient-condition-strict
//Description: "The patient condition CodeableConcept must contain either only text, or exactly one coding from the eReferral imaging patient condition indication ValueSet."
//Severity: #error
//Expression: "(text.exists() and coding.empty()) or (text.empty() and coding.count() = 1 and memberOf('https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/ereferral-vs-imaging-patient-condition-indication'))"

Invariant: ereferral-inv-patient-condition-strict
Description: "Si une patientCondition est fournie, elle doit contenir soit uniquement un texte libre, soit exactement un coding appartenant à l’un des ValueSets autorisés."
Severity: #error
Expression: "supportingInfo.where(extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role').value = 'patient-condition').extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept').value.ofType(CodeableConcept).all((text.exists() and coding.empty()) or (text.empty() and coding.count() = 1 and (memberOf('https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-pss-qsi-indication') or memberOf('https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diagnostic-imaging-condition'))))"