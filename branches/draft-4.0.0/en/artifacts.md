# Artifacts Summary - eReferral Implementation Guide v4.0.0-draft

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
| [ eReferralServiceRequestTelemonitoring  ](StructureDefinition-ereferral-servicerequest-telemonitoring.md) | The telemonitoring profile. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ CodeableConcept Extension for Reference  ](StructureDefinition-be-ext-codeable-concept.md) | Extension able to hold a coded concept on a Reference element. |
| [ Telemonitoring plan  ](StructureDefinition-be-ext-telemonitoring-plan.md) | Per-parameter telemonitoring rule: parameter, thresholds, target range, change limits. |
| [ eReferral Radiology SupportingInfo Role  ](StructureDefinition-be-ext-radiology-supporting-info-role.md) | Identifies the role of a ServiceRequest.supportingInfo entry used in a diagnostic imaging referral. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ Hybrid SNOMED CT and PSS/QSI Diagnostic Imaging Procedure  ](ValueSet-be-vs-hybrid-diagnostic-imaging-procedure.md) | Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT and PSS/QSI Codes. |
| [ PSS/QSI Diagnostic Imaging Procedure  ](ValueSet-be-vs-pss-qsi-diagnostic-imaging-procedure.md) | All PSS/QSI diagnostic imaging procedure codes. |
| [ PSS/QSI Indication  ](ValueSet-be-vs-pss-qsi-indication.md) | Indication codes for diagnostic imaging requests as PSS Internal Codes. |
| [ SNOMED CT eReferral Supplement Designations  ](ValueSet-be-vs-ereferral-snomed-designation.md) | SNOMED CT supplement containing multilingual designations maintained for the eReferral project. |
| [ Telemonitoring Parameter Type  ](ValueSet-be-vs-telemonitoring-parameter-type.md) | Clinical parameters that can be monitored in a telemonitoring request. |
| [ Telemonitoring completed status reason  ](ValueSet-be-vs-telemonitoring-completed-status-reason.md) | Allowed status reasons when a telemonitoring ServiceRequest is completed. |
| [ Telemonitoring period unit  ](ValueSet-be-vs-telemonitoring-period-unit.md) | Allowed UCUM time units for telemonitoring period configuration. |
| [ eReferral Imaging Patient Condition Indication  ](ValueSet-ereferral-vs-imaging-patient-condition-indication.md) | Allowed coded indications for patient condition in diagnostic imaging. |
| [ eReferral Radiology SupportingInfo Role ValueSet  ](ValueSet-be-vs-radiology-supporting-info-role.md) | Allowed roles for entries in ServiceRequest.supportingInfo in a diagnostic imaging referral. |
| [ eReferral Telemonitoring Prescription Technical Type  ](ValueSet-be-vs-telemonitoring-prescription-technical-type.md) | Technical types of telemonitoring prescriptions for routing and workflow purposes. |
| [ eReferral/PSS Diagnostic Imaging Condition  ](ValueSet-be-vs-diagnostic-imaging-condition.md) | Clinical conditions that can support a diagnostic imaging request using SNOMED CT. |
| [ eReferral/PSS Diagnostic Imaging Procedure  ](ValueSet-be-vs-diagnostic-imaging-procedure.md) | Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ BeCSTelemonitoringCompletedStatusReason  ](CodeSystem-be-cs-telemonitoring-completed-status-reason.md) | Status reasons for a completed telemonitoring ServiceRequest |
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
| [ Example: Telemonitoring prescription for chronic heart failure  ](ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.md) | Example of a medical telemonitoring prescription for chronic heart failure.Inputs and values used in this example:* Profile: ereferral-servicerequest-telemonitoring
* Prescription type: telemonitoring-chronic-heart-failure
* Discipline (SNOMED): 394579002
* Procedure code (SNOMED): 879780004
* Diagnosis (SNOMED): 84114007
* Validity period: 2026-05-22 - 2026-11-22
* Monitoring plan: 
* Body weight increase of 2 kg over 3 days
* Systolic blood pressure threshold 160 mm[Hg]
* Diastolic blood pressure threshold 100 mm[Hg]
* Heart rate threshold 110 /min
 
* Patient SSIN is pseudonymized
* Diagnosis detail and general remarks are pseudonymized encrypted text
 |
| [ Example: telemonitoring reference weight  ](Observation-example-telemonitoring-reference-weight.md) | Illustrative baseline weight referenced by the chronic heart failure telemonitoring example. Not clinical guidance. |
| [ Nurse  ](Practitioner-practitioner2.md) | Example practitioner acting as a nurse. |
| [ Nurse Requester  ](PractitionerRole-NURSE-45094508408.md) | Nurse acting as a Requester |
| [ PSS radiology scenario 01  ](ServiceRequest-example-pss-radiology-scenario-01.md) | PSS radiology example for progressive dyspnea and suspected pulmonary edema, using a chest X-ray order. |
| [ PSS radiology scenario 02  ](ServiceRequest-example-pss-radiology-scenario-02.md) | PSS radiology example for persistent symptoms of pneumonia, using a chest X-ray order. |
| [ PSS radiology scenario 03  ](ServiceRequest-example-pss-radiology-scenario-03.md) | PSS radiology example for chest pain with a normal EKG, using MR angiography of the heart. |
| [ PSS radiology scenario 04  ](ServiceRequest-example-pss-radiology-scenario-04.md) | PSS radiology example for new headaches during pregnancy, using a non-contrast head CT. |
| [ PSS radiology scenario 05  ](ServiceRequest-example-pss-radiology-scenario-05.md) | PSS radiology example for tongue weakness, using an MRI of the head with and without contrast. |
| [ PSS radiology scenario 06  ](ServiceRequest-example-pss-radiology-scenario-06.md) | PSS radiology example for head trauma with persistent headaches and prior stroke, using MR angiography of the head. |
| [ PSS radiology scenario 07  ](ServiceRequest-example-pss-radiology-scenario-07.md) | PSS radiology example for a child with head trauma and persistent headaches, using MR angiography of the head. |
| [ PSS radiology scenario 08  ](ServiceRequest-example-pss-radiology-scenario-08.md) | PSS radiology example for asymptomatic stage I breast cancer, using breast MRI without contrast. |
| [ PSS radiology scenario 09  ](ServiceRequest-example-pss-radiology-scenario-09.md) | PSS radiology example for abnormal sputum and persistent cough, using a chest X-ray order. |
| [ PSS radiology scenario 10  ](ServiceRequest-example-pss-radiology-scenario-10.md) | PSS radiology example for tongue and facial weakness, using contrast-enhanced head CT. |
| [ Physician  ](Practitioner-Requester1.md) | Example practitioner acting as a requesting physician. |
| [ Physician Requester  ](PractitionerRole-DOCTOR-10829059004.md) | Physician acting as a Requester |
| [ Urgency Physician Requester  ](PractitionerRole-DOCTOR-12009390800.md) | Urgency Physician acting as a Requester |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [ ereferral-referral-task  ](Task-ereferral-referral-task.md) | Example referral task associated with a nursing prescription. |

