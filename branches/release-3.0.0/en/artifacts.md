# Artifacts Summary - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ EReferralAnnex81  ](StructureDefinition-ereferral-annex-81.md) | Annex81 proposal and approval |
| [ EReferralImagingAttentionConditionsResponse  ](StructureDefinition-ereferral-imaging-attention-conditions-response.md) | eReferral response to the imaging attention conditions questionnaire. |
| [ EReferralServiceRequestDiagnosticImaging  ](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md) | The diagnostic imaging profile. eReferral version. |
| [ EReferralServiceRequestNursing  ](StructureDefinition-ereferral-servicerequest-nursing.md) | The nursing profile, generic version. Please note the nursing referral for medication does NOT depend on this generic version but is a FHIR prodfile on a different FHIR resource (MedicationRequest) |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ CodeableConcept Extension for Reference  ](StructureDefinition-be-ext-codeable-concept.md) | Extension able to hold a coded concept on a Reference element. |
| [ eReferral Radiology SupportingInfo Role  ](StructureDefinition-be-ext-radiology-supporting-info-role.md) | Identifies the role of a ServiceRequest.supportingInfo entry used in a diagnostic imaging referral. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ Hybrid SNOMED CT and PSS/QSI Diagnostic Imaging Procedure  ](ValueSet-be-vs-hybrid-diagnostic-imaging-procedure.md) | Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT and PSS/QSI Codes. |
| [ PSS/QSI Diagnostic Imaging Procedure  ](ValueSet-be-vs-pss-qsi-diagnostic-imaging-procedure.md) | All PSS/QSI diagnostic imaging procedure codes. |
| [ PSS/QSI Indication  ](ValueSet-be-vs-pss-qsi-indication.md) | Indication codes for diagnostic imaging requests as PSS Internal Codes. |
| [ SNOMED CT eReferral Supplement Designations  ](ValueSet-be-vs-ereferral-snomed-designation.md) | SNOMED CT supplement containing multilingual designations maintained for the eReferral project. |
| [ eReferral Imaging Patient Condition Indication  ](ValueSet-ereferral-vs-imaging-patient-condition-indication.md) | Allowed coded indications for patient condition in diagnostic imaging. |
| [ eReferral Radiology SupportingInfo Role ValueSet  ](ValueSet-be-vs-radiology-supporting-info-role.md) | Allowed roles for entries in ServiceRequest.supportingInfo in a diagnostic imaging referral. |
| [ eReferral/PSS Diagnostic Imaging Condition  ](ValueSet-be-vs-diagnostic-imaging-condition.md) | Clinical conditions that can support a diagnostic imaging request using SNOMED CT. |
| [ eReferral/PSS Diagnostic Imaging Procedure  ](ValueSet-be-vs-diagnostic-imaging-procedure.md) | Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ PSS Indication  ](CodeSystem-be-cs-pss-qsi-indications.md) | PSS indication codes for diagnostic imaging requests. |
| [ PSS/QSI Diagnostic Imaging Procedure  ](CodeSystem-be-cs-pss-qsi-diagnostic-imaging-procedure.md) | PSS/QSI diagnostic imaging procedure codes with English displays and Belgian French, Dutch and German designations. |
| [ SNOMED CT eReferral Supplement Designations  ](CodeSystem-be-cs-ereferral-snomed-designation.md) | SNOMED CT supplement containing multilingual designations maintained for the eReferral project. |
| [ eReferral Designation Use  ](CodeSystem-be-cs-ereferral-designation-use.md) | Identifies terminology designations maintained specifically for the eReferral project. |
| [ eReferral Radiology SupportingInfo Role CodeSystem  ](CodeSystem-be-cs-radiology-supporting-info-role.md) | Identifies the role represented by an entry in ServiceRequest.supportingInfo for a diagnostic imaging referral. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ Example nurse identified by SSIN  ](Practitioner-67120919457.md) | Example nurse referenced by the eReferral examples. |
| [ Example nurse role  ](PractitionerRole-67120919457-NURSE.md) | Nurse role whose identifier follows the {ssin}-{discipline} convention. |
| [ Example physician identified by SSIN  ](Practitioner-72101230445.md) | Example physician referenced by the eReferral examples. |
| [ Example physician role  ](PractitionerRole-72101230445-PHYSICIAN.md) | Physician role whose identifier follows the {ssin}-{discipline} convention. |
| [ Example: Annex 81 - Preparing medication (proposal)  ](ServiceRequest-example-drp-nursing-med-preparation-appendix-81.md) | Example of an Annex 81 ServiceRequest proposal for preparing medication.Inputs and values used in this example:* Profile: be-annex-81
* Intent: proposal
* Prescription type: medication-prefill-preparation-appendix-81
* Procedure code (SNOMED): 385796006
* Validity period: 2026-02-18 - 2027-02-18
* Requester role: nurse (PractitionerRole/67120919457-NURSE)
* Indications (reasonCode - 13 SNOMED codes): 
* 1290542000
* 129834002
* 271299001
* 275928001
* 359748005
* 448176008
* 62014003
* 708014007
* 1137439008
* 211071000172100
* 211101000172107
* 397540003
* 52448006
 
 |
| [ Example: Bloodletting  ](ServiceRequest-example-drp-nursing-bloodletting.md) | Example of therapeutic bloodletting including quantity.Inputs and values used in this example:* Prescription type: bloodletting
* Procedure code (SNOMED): 127606004
* Quantity: 300 mL
* Validity start date: 2026-02-18
* Timing: 
* boundsDuration: 1 week
* count: 3
* frequency: 3
* period: 1 week
 
* Medical reason (SNOMED): 404684003
* Notes: 
* medical-reason
 
 |
| [ Example: Chronic home dialysis  ](ServiceRequest-example-drp-nursing-chronic-dialysis.md) | Example of chronic home dialysis prescription.Inputs and values used in this example:* Prescription type: chronic-dialysis
* Procedure code (SNOMED): 225230008
* Validity start date: 2026-02-18
* Timing: 
* boundsDuration: 2 months
* count: 9
* frequency: 1
* period: 1 week
 
* Feedback to prescriber: true
* Medical reason (SNOMED): 404684003
* Notes: 
* medical-reason
* contraindication
* general-remarks
 
 |
| [ Example: Diabetes education via convention centre  ](ServiceRequest-example-drp-nursing-de-convention-center.md) | Example of diabetes education delivered through a convention centre.Inputs and values used in this example:* Prescription type: diabetic-education-convention-center
* Education code (SNOMED): 385805005
* Education subtype (SNOMED): 211141000172109
* Education type: diabetic-education-other
* Validity period: 2026-02-18 - 2027-02-18
* Timing: 
* boundsDuration: 4 months
* count: 52
* frequency: 3
* period: 1 week
 
* Feedback to prescriber: false
* Notes: 
* general-remarks
 
 |
| [ Example: Diabetes education within care trajectory  ](ServiceRequest-example-drp-nursing-de-within-care-trajectory.md) | Example of diabetes education within an established care pathway.Inputs and values used in this example:* Prescription type: diabetic-education-within-care-trajectory
* Education code (SNOMED): 385805005
* Education subtype (SNOMED): 370858005
* Education type: diabetic-education-additional-hba1c
* Session type: group-session
* Performer types (SNOMED): 
* 106292003
* 224543004
 
* Validity period: 2026-02-18 - 2026-12-31
* Number of sessions: 5
 |
| [ Example: Diabetes education within start trajectory  ](ServiceRequest-example-drp-nursing-de-within-start-trajectory.md) | Example of diabetes education within a start trajectory.Inputs and values used in this example:* Prescription type: diabetic-education-within-start-trajectory
* Education code (SNOMED): 385805005
* Education subtype (SNOMED): 211151000172106
* Session type: individual-session
* Validity period: 2026-02-18 – 2026-12-31
* Number of sessions (count): 4
* Performer type (SNOMED): 224543004
* Feedback to prescriber: false
* Notes: 
* general-remarks
 
 |
| [ Example: Diabetes education without care trajectory  ](ServiceRequest-example-drp-nursing-de-without-care-trajectory.md) | Example of diabetes education for patients without a care trajectory.Inputs and values used in this example:* Prescription type: diabetic-education-without-care-trajectory
* Education code (SNOMED): 385805005
* Education subtype (SNOMED): 211161000172108
* Education type: diabetic-education-self-care
* Validity start date: 2026-02-18
* Timing: 
* boundsDuration: 3 weeks
* count: 21
* frequency: 1
* period: 1 day
 
* Feedback to prescriber: true
* Notes: 
* general-remarks
 
 |
| [ Example: Diagnostic imaging referral  ](ServiceRequest-example-drp-clinical-imaging.md) | Example of a diagnostic imaging referral prescription with contained patient and imaging attention questionnaire response. |
| [ Example: Generic nursing care  ](ServiceRequest-example-drp-nursing-generic.md) | Example of a generic nursing ServiceRequest.Inputs and values used in this example:* Prescription type: generic-nursing
* Care code (SNOMED): 9632001
* Care detail (orderDetail): preparation-and-administration-of-medication-for-psychiatric-patient
* Validity start date: 2026-02-18
* Timing: 
* boundsDuration: 4 months
* count: 360
* frequency: 3
* period: 1 day
 
* Priority: routine
* Feedback to prescriber: false
* Medical reason (SNOMED): 404684003
* Notes: 
* medical-reason
* contraindication
* general-remarks
 
 |
| [ Example: Glycemic control with glucometer  ](ServiceRequest-example-drp-nursing-glycemic-test.md) | Example of glycemic monitoring using a glucometer.Inputs and values used in this example:* Prescription type: glycemic-test
* Procedure code (SNOMED): 166900001
* Measurement timing: before-insulin-administration
* Validity start date: 2026-02-18
* Timing: 
* boundsDuration: 3 weeks
* count: 21
* frequency: 1
* period: 1 day
 
* Medical reason (SNOMED): 404684003
* Notes: 
* medical-reason
* contraindication
* general-remarks
 
 |
| [ Example: Hygienic care  ](ServiceRequest-example-drp-nursing-hygienic-care.md) | Example of hygienic nursing care.Inputs and values used in this example:* Prescription type: hygienic-care
* Procedure code (SNOMED): 225964003
* Validity start date: 2026-02-18
* Timing: 
* boundsDuration: 3 months
* count: 39
* frequency: 3
* period: 1 week
 
* Notes: 
* medical-reason
 
 |
| [ Example: Measurement of parameters  ](ServiceRequest-example-drp-nursing-parameters.md) | Example of clinical parameter monitoring.Inputs and values used in this example:* Prescription type: parameters
* Procedure code (SNOMED): 61746007
* Parameter detail (SNOMED): 431314004
* Validity start date: 2026-02-18
* Timing: 
* boundsDuration: 2 months
* count: 180
* frequency: 3
* period: 1 day
* when: C
 
* Medical reason (SNOMED): 404684003
* Notes: 
* medical-reason
 
 |
| [ Example: Preparation of medicines (not refunded)  ](ServiceRequest-example-drp-nursing-med-prep-not-refunded.md) | Example of non-reimbursed medication prefill preparation.Inputs and values used in this example:* Prescription type: medication-prefill-preparation-not-refunded
* Procedure code (SNOMED): 385796006
* Validity period: 2026-02-18 – 2027-02-18
* Timing: 
* frequency: 3
* period: 1 week
 
* Medical reason (SNOMED): 404684003
* Notes: 
* contraindication
* general-remarks
 
 |
| [ Example: Prior diagnostic imaging referral  ](ServiceRequest-example-prior-drp-clinical-imaging.md) | A complete prior diagnostic imaging prescription referenced by the main diagnostic imaging example. |
| [ Example: Sample collection  ](ServiceRequest-example-drp-nursing-sampling.md) | Example of a biological sample collection prescription.Inputs and values used in this example:* Prescription type: sampling
* Procedure code (SNOMED): 17636008
* Sampling detail (SNOMED): 78014005
* Occurrence count: 1
* Validity start date: 2026-02-18
* Medical reason (SNOMED): 404684003
* Notes: 
* medical-reason
* contraindication
 
 |
| [ Nurse  ](Practitioner-practitioner2.md) | Example practitioner acting as a nurse. |
| [ Nurse Requester  ](PractitionerRole-NURSE-45094508408.md) | Nurse acting as a Requester |
| [ PSS radiology scenario 01  ](ServiceRequest-example-pss-radiology-scenario-01.md) | Example of a diagnostic imaging prescription.Inputs and values used in this example:* Patient: Henry Dutronc, male, 41 years old
* Indication: progressive shortness of breath, orthopnea, dry cough and suspected pulmonary edema
* Selected examination: chest X-ray
* Procedure code (SNOMED): 399208008
* Initially predefined examination: chest CT with IV contrast
* Clinical context from Excel: hypertension for 5 years, non-smoker, no documented cardiac disease or known allergies; symptoms progressing over 24-48 hours, oxygen saturation approximately 88%, blood pressure 160/100 mmHg and bilateral basal crackles
* Final examination rationale from Excel: rapid initial assessment and confirmation
Fictitious completions (not specified in Excel): date of birth 1985-04-12, PSS identifier PSS-RAD-001, prescription and validity dates, requester, ambulatory track and routine priority; no implants, diabetes, metallic debris or renal dysfunction and no other safety concern. Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx. |
| [ PSS radiology scenario 02  ](ServiceRequest-example-pss-radiology-scenario-02.md) | Example of a diagnostic imaging prescription.Inputs and values used in this example:* Patient: Ilse Vandekerk, female, 18 years old
* Indication: persistent fever and unresolved or complicated pneumonia
* Selected examination: chest X-ray
* Procedure code (SNOMED): 399208008
* Predefined examination: chest X-ray
* Clinical context from Excel: previously diagnosed pneumonia, persistent fever despite antibiotics, continued cough, dyspnea and pleuritic chest pain; no immunodeficiency or known allergies; assess possible abscess, pleural effusion or empyema
Fictitious completions (not specified in Excel): date of birth 2008-04-12, PSS identifier PSS-RAD-002, prescription and validity dates, requester, ambulatory track and routine priority; not pregnant, no implants, diabetes, metallic debris or renal dysfunction and no other safety concern. Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx. |
| [ PSS radiology scenario 03  ](ServiceRequest-example-pss-radiology-scenario-03.md) | Example of a diagnostic imaging prescription.Inputs and values used in this example:* Patient: Gabriel Santini, sex at birth unknown, 79 years old
* Indication: chest pain with a normal EKG
* Selected examination: MR angiography of the heart with or without IV contrast
* Procedure code (SNOMED): 736793003, using the Excel mapping for MR angiography of the heart wo/w IV contrast
* Initially predefined examination: MR angiography of the chest without IV contrast
* Clinical context from Excel: chest pain with normal EKG and stable vital signs; no reported syncope, dyspnea, palpitations or signs of heart failure; cardiovascular history, risk factors and medication remain to be assessed
Fictitious completions (not specified in Excel): date of birth 1947-04-12, PSS identifier PSS-RAD-003, prescription and validity dates, requester, ambulatory track and routine priority; no implants, pregnancy, diabetes, contrast allergy, metallic debris or renal dysfunction and no other safety concern. Fictitious examination rationale: assess cardiac vascular anatomy in addition to the chest pain presentation. Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx, row 439. |
| [ PSS radiology scenario 04  ](ServiceRequest-example-pss-radiology-scenario-04.md) | Example of a diagnostic imaging prescription.Inputs and values used in this example:* Patient: Jeanne Darc, female, 20 years old, currently pregnant
* Indication: new-onset headaches during pregnancy
* Selected examination: non-contrast CT of the head
* Procedure code (SNOMED): 383371000119108
* Initially predefined examination: MR angiography of the head with or without IV contrast
* Clinical context from Excel: new headaches during pregnancy; no prior chronic headache, migraine, trauma, neurological disorder or known allergies; assess blood pressure, preeclampsia and neurological warning signs
Fictitious completions (not specified in Excel): date of birth 2006-04-12, PSS identifier PSS-RAD-004, prescription and validity dates, requester, ambulatory track and routine priority; no implants, diabetes, metallic debris or renal dysfunction and no other safety concern beyond the documented pregnancy. Fictitious examination rationale: the prescriber selects non-contrast head CT for this illustrative scenario; this is not clinical guidance. Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx. |
| [ PSS radiology scenario 05  ](ServiceRequest-example-pss-radiology-scenario-05.md) | Example of a diagnostic imaging prescription.Inputs and values used in this example:* Patient: Amhet Dine El Ottomani, male, 25 years old
* Indication: tongue weakness with no other focal neurological deficits
* Selected examination: MRI of the head with and without contrast
* Procedure code (SNOMED): 432874000, using the Excel mapping for MR head wo/w IV contrast
* Predefined examination: none
* Clinical context from Excel: recent tongue weakness; assess dysarthria, dysphagia, tongue deviation, atrophy and fasciculations; no known neurological disease, recent trauma or surgery, stroke, TIA, neuromuscular disease, head or neck cancer, radiation or known allergies
Fictitious completions (not specified in Excel): date of birth 2001-04-12, PSS identifier PSS-RAD-005, prescription and validity dates, requester, ambulatory track and routine priority; no implants, diabetes, metallic debris or renal dysfunction and no other safety concern. Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx, row 518. |
| [ PSS radiology scenario 06  ](ServiceRequest-example-pss-radiology-scenario-06.md) | Example of a diagnostic imaging prescription.Inputs and values used in this example:* Patient: Anne De Montmorency, sex at birth unknown, 39 years old
* Indication: head trauma with headaches and follow-up after stroke
* Selected examination: MR angiography of the head with or without IV contrast
* Procedure code (SNOMED): 702684006, using the Excel mapping for MR angiography of the head wo/w IV contrast
* Predefined examination: same as selected examination
* Clinical context from Excel: history of stroke and head trauma with persistent or worsening headaches; assess trauma details, new neurological deficits and stroke risk factors; medications to be reviewed; no known drug allergies
Fictitious completions (not specified in Excel): date of birth 1987-04-12, PSS identifier PSS-RAD-006, prescription and validity dates, requester, ambulatory track and routine priority; no implants, pregnancy, diabetes, metallic debris or renal dysfunction and no other safety concern. Unspecified cardiovascular risk factors are not treated as confirmed diagnoses. Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx, row 435. |
| [ PSS radiology scenario 07  ](ServiceRequest-example-pss-radiology-scenario-07.md) | Example of a diagnostic imaging prescription.Inputs and values used in this example:* Patient: Anne De Montmorency, male at birth, 8 years old
* Indication: head trauma with headaches and follow-up after stroke
* Selected examination: MR angiography of the head with or without IV contrast
* Procedure code (SNOMED): 702684006, using the Excel mapping for MR angiography of the head wo/w IV contrast
* Predefined examination: same as selected examination
* Clinical context from Excel: history of stroke and head trauma with persistent or worsening headaches; assess trauma details, new neurological deficits and stroke risk factors; medications to be reviewed; no known drug allergies
Fictitious completions (not specified in Excel): date of birth 2018-04-12, PSS identifier PSS-RAD-007, prescription and validity dates, requester, ambulatory track and routine priority; no implants, diabetes, metallic debris or renal dysfunction and no other safety concern. This child is a separate fictitious patient from scenario 06 despite the shared name. Unspecified cardiovascular risk factors are not treated as confirmed diagnoses. Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx, row 435. |
| [ PSS radiology scenario 08  ](ServiceRequest-example-pss-radiology-scenario-08.md) | Example of a diagnostic imaging prescription.Inputs and values used in this example:* Patient: Leslie Unknown, female, 55 years old
* Indication: stage I breast cancer, asymptomatic, for initial evaluation and exclusion of bone metastases
* Selected examination: breast MRI without IV contrast
* Procedure code (SNOMED): 241615005, using the Excel mapping for MR breast wo IV contrast without specified laterality
* Predefined examination: none
* Additional indication from Excel: evaluation of tumor size and extent before neoadjuvant chemotherapy
* Clinical context from Excel: recent stage I breast cancer diagnosis, no bone pain, neurological or systemic symptoms, no prior cancer or known allergies; menopausal status and medication remain to be confirmed
Fictitious completions (not specified in Excel): date of birth 1971-04-12, PSS identifier PSS-RAD-008, prescription and validity dates, requester, ambulatory track and routine priority; not pregnant, no implants, diabetes, metallic debris or renal dysfunction and no other safety concern. Breast laterality is intentionally left unspecified, as in Excel. Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx, row 475. |
| [ PSS radiology scenario 09  ](ServiceRequest-example-pss-radiology-scenario-09.md) | Example of a diagnostic imaging prescription.Inputs and values used in this example:* Patient: Jean-Eude Delacompta, male, 61 years old
* Indication: abnormal sputum production, persistent cough and acute respiratory illness
* Selected examination: chest X-ray
* Procedure code (SNOMED): 399208008
* Predefined examination: chest X-ray
* Clinical context from Excel: persistent cough for several weeks and abnormal sputum with acute respiratory worsening; assess fever, dyspnea, sputum characteristics, smoking, chronic bronchitis, COPD and recent infection; no known lung cancer, tuberculosis or drug allergies
Fictitious completions (not specified in Excel): date of birth 1965-04-12, PSS identifier PSS-RAD-009, prescription and validity dates, requester, ambulatory track and routine priority; no implants, diabetes, metallic debris or renal dysfunction and no other safety concern. Possible smoking, chronic bronchitis and COPD are not treated as confirmed diagnoses. Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx. |
| [ PSS radiology scenario 10  ](ServiceRequest-example-pss-radiology-scenario-10.md) | Example of a diagnostic imaging prescription.Inputs and values used in this example:* Patient: Robin Haarkoe, sex at birth unknown, 37 years old
* Indication: tongue weakness and facial weakness
* Selected examination: CT of the head with contrast
* Procedure code (SNOMED): 711232001
* Predefined examination: none
* Clinical context from Excel: recent tongue and facial weakness with dysarthria, dysphagia or tongue deviation to be assessed; assess facial distribution and associated neurological symptoms; no known neurological disease, recent trauma or surgery, stroke, TIA, neuromuscular disease, allergies, recent infection or vaccination
Fictitious completions (not specified in Excel): date of birth 1989-04-12, PSS identifier PSS-RAD-010, prescription and validity dates, requester, ambulatory track and routine priority; no implants, pregnancy, diabetes, metallic debris or renal dysfunction and no other safety concern. Clinical context is represented by encrypted placeholders in patientCondition.text and note.text; date of birth and sex at birth remain encrypted. Placeholders are illustrative, not real encrypted patient data. Procedure coding follows Exam List processed.xlsx. |
| [ Physician  ](Practitioner-Requester1.md) | Example practitioner acting as a requesting physician. |
| [ Physician Requester  ](PractitionerRole-DOCTOR-10829059004.md) | Physician acting as a Requester |
| [ Urgency Physician Requester  ](PractitionerRole-72101230446-PHYSICIAN.md) | Urgency Physician acting as a Requester |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [ ereferral-referral-task  ](Task-ereferral-referral-task.md) | Example referral task associated with a nursing prescription. |

