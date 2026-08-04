Invariant: ereferral-inv-annex81-has-nursing-diagnosis
Description: "Annex 81 must contain at least one nursing diagnosis reason code."
Severity: #error
Expression: "reasonCode.coding.where(system = 'http://snomed.info/sct' and (code = '275928001' or code = '1290542000' or code = '129834002' or code = '448176008' or code = '359748005' or code = '271299001' or code = '62014003' or code = '708014007')).exists()"
