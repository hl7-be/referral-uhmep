Invariant: ereferral-inv-annex81-has-medical-problem
Description: "Annex 81 must contain at least one medical problem reason code."
Severity: #error
Expression: "reasonCode.coding.where(system = 'http://snomed.info/sct' and (code = '52448006' or code = '397540003' or code = '211071000172100' or code = '211101000172107' or code = '1137439008')).exists()"
