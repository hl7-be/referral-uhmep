# Artifacts Summary - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeOpApproveAnnex81](OperationDefinition-be-op-approve-annex81.md) | Creates an approval from an Annex81 proposal |
| [BeOpRejectAnnex81](OperationDefinition-be-op-reject-annex81.md) | Rejects an Annex81 proposal |

### Structures: Graph Definitions 

These define collections of interrelated resources that are useful to pass around as a group.

| | |
| :--- | :--- |
| [BeGDFullReferralPrescription](GraphDefinition-full-referral-prescription.md) | Specify to include all useful resources around a ServiceRequest that can be retrieved with the $graph operation. |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [BeModelAnnex81](StructureDefinition-BeModelAnnex81.md) | Logical model describing the model for the Annex81 proposal and approval |
| [BeModelAssignment](StructureDefinition-BeModelAssignment.md) | Logical model with the information for the assignment to a referral prescription of a care provider. |
| [BeModelNursingPrescription](StructureDefinition-BeModelNursingPrescription.md) | Data model for the nursing prescription referral. |
| [BeModelOrganisationClaim](StructureDefinition-BeModelOrganisationClaim.md) | Information of a claim of an organisation to have the prescription fulfilled. |
| [BeModelReferralPrescription](StructureDefinition-BeModelReferralPrescription.md) | Data model for the prescription referral. |
| [BeModelTreatmentStatus](StructureDefinition-BeModelTreatmentStatus.md) | Logical model with the information for the status of the treatment. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Imaging Attention Conditions Questionnaire](Questionnaire-be-questionnaire-imaging-attention-conditions.md) | Questionnaire for capturing attention-worthy conditions relevant to diagnostic imaging requests (implants, pregnancy, diabetes, allergies, etc.) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeAnnex81](StructureDefinition-be-annex-81.md) | Annex81 proposal and approval |
| [BeImagingAttentionConditionsResponse](StructureDefinition-be-imaging-attention-conditions-response.md) | Response to the imaging attention conditions questionnaire. At least one attention condition must be answered. |
| [BeOrganizationTask](StructureDefinition-be-organization-task.md) | Subtask to assign the referral task and prescription to one or more members of this organisation |
| [BePerformerTask](StructureDefinition-be-performer-task.md) | Subtask performed by one performer |
| [BeReferralServiceRequest](StructureDefinition-be-referral-servicerequest.md) | The common structure for referral prescription. |
| [BeReferralServiceRequestNursing](StructureDefinition-be-referral-servicerequest-nursing.md) | The nursing profile, generic version. Please note the nursing referral for medication does NOT depend on this generic version but is a FHIR prodfile on a different FHIR resource (MedicationRequest) |
| [BeReferralTask](StructureDefinition-be-referral-task.md) | The task that is referred to in the referral prescription (this is the common task for the execution of the prescription). The subtasks per performer can be found in BePerformerTask |
| [BeServiceRequestDiagnosticImaging](StructureDefinition-be-referral-servicerequest-diagnosticimaging.md) | The diagnostic imaging profile. Generic version. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeFeedbackToPrescriber](StructureDefinition-be-ext-feedback-to-prescriber.md) | Whether the prescriber requests feedback on the processing of the order |
| [BeLatestEndDate](StructureDefinition-be-ext-latest-end-date.md) | Request must be performed before |
| [BePSSInfo](StructureDefinition-be-ext-pss-info.md) | Information regarding the Prescription Search Support |
| [BePerformerType](StructureDefinition-be-ext-performer-type.md) | Types of performers that can execute this request |
| [BeRelevantInfo](StructureDefinition-be-ext-relevant-info.md) | Relevant clinical information in the context of this prescription concerning for example allergies, kidney function, diabetic. This extension allows the use of an Annotation or codeableConcept but when more detailed information can be given, it is RECOMMENDED to express it as structured as possible using the appropriate elements. |
| [BeUrgencyJustification](StructureDefinition-be-ext-urgency-justification.md) | Justification for the urgency level assigned to the request |
| [BeValidityPeriod](StructureDefinition-be-ext-validity-period.md) | Begin and end date of the validity of the request |
| [CodeableConcept Extension for Reference](StructureDefinition-be-ext-codeable-concept.md) | Extension able to hold a coded concept on a Reference element. |
| [eReferral Radiology SupportingInfo Role](StructureDefinition-be-ext-radiology-supporting-info-role.md) |  |
| [eReferral String Date](StructureDefinition-be-ext-string-date.md) | Date represented as a string. This extension is used to capture date information in a string format when a date must be encrypted. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeVSAnnex81StatusReason](ValueSet-be-vs-annex81-status-reason.md) | DEMONSTRATIVE EXAMPLE - Status reason of the Annex 81 |
| [BeVSPrescriptionStatusReason](ValueSet-be-vs-prescription-status-reason.md) | eReferral reasons for the status of the prescription |
| [BeVSRequestIntent](ValueSet-be-vs-request-intent.md) | eReferral allowed intent codes in the context of referral prescription |
| [BeVSTaskIntent](ValueSet-be-vs-task-intent.md) | DEMONSTRATIVE EXAMPLE - The allowed intent codes in the context of tasks in the field of referral prescriptions |
| [BeVSTreatmentStatusReason](ValueSet-be-vs-treatment-status-reason.md) | DEMONSTRATIVE EXAMPLE - Codes for the current status of a treatment in a referral prescription. |
| [PSS Indication](ValueSet-be-vs-pss-indication.md) | Indication codes for diagnostic imaging requests as PSS Internal Codes. |
| [eReferral Annex 81 Care Requested](ValueSet-be-vs-annex81-care-requested.md) | Clinical care services for Annex 81 prescriptions. |
| [eReferral Annex 81 Medical Problem](ValueSet-be-vs-annex81-medical-problem.md) | Medical problems/conditions that can justify an Annex 81 request. |
| [eReferral Annex 81 Nursing Diagnosis](ValueSet-be-vs-annex81-nursing-diagnosis.md) | Nursing diagnoses/findings that can motivate an Annex 81 request. |
| [eReferral Annex 81 Technical Type](ValueSet-be-vs-annex81-technical-type.md) | Technical type for Annex 81 prescriptions. |
| [eReferral Body Site](ValueSet-be-vs-body-site.md) | Anatomical body sites based on SNOMED CT for use in referral prescriptions. |
| [eReferral Body Topography](ValueSet-be-vs-body-topography.md) | Topographical qualifiers for body sites based on SNOMED CT. |
| [eReferral Categories of Care](ValueSet-be-vs-categories-of-care.md) | Categories of care that can be prescribed by a GP in the eReferral project. Currently limited to nursing care. |
| [eReferral Diabetes Education Identifier](ValueSet-be-vs-diabetes-education-identifier.md) | Identifiers to distinguish types of diabetes education prescriptions. |
| [eReferral Education Type With Trajectory](ValueSet-be-vs-education-type-with-trajectory.md) | Types of diabetes education for education within a care trajectory. |
| [eReferral Education Type Without Trajectory](ValueSet-be-vs-education-type-without-trajectory.md) | Types of diabetes education for patients without a trajectory. |
| [eReferral Educator Type](ValueSet-be-vs-educator-type.md) | Types of educators for diabetes education activities. |
| [eReferral Glycemia Measurement Time](ValueSet-be-vs-glycemia-measurement-time.md) | Timing of glycemia measurements. |
| [eReferral Imaging Modality ValueSet](ValueSet-be-vs-imaging-modality.md) | Allowed modalities for imaging requests. |
| [eReferral Imaging Priority ValueSet](ValueSet-be-vs-imaging-priority.md) | Allowed priorities for imaging requests. |
| [eReferral Implant Type](ValueSet-be-vs-implant-type.md) | Allowed implant types. |
| [eReferral Note Type](ValueSet-be-vs-note-type.md) | Types of notes that can be associated with a referral prescription. |
| [eReferral Nursing Care Requested](ValueSet-be-vs-nursing-care-requested.md) | Clinical care services that can be prescribed for nursing care using SNOMED CT. |
| [eReferral Nursing Prescription Technical Type](ValueSet-be-vs-nursing-prescription-technical-type.md) | Technical types of nursing prescriptions for routing and workflow purposes. |
| [eReferral Parameter Type](ValueSet-be-vs-parameter-type.md) | Types of parameters/vital signs that can be measured. |
| [eReferral Prescription Type ValueSet](ValueSet-be-vs-prescription-type.md) | Technical types of prescriptions supported by the eReferral system. Used for routing and workflow purposes. |
| [eReferral Radiology SupportingInfo Role ValueSet](ValueSet-be-vs-radiology-supporting-info-role.md) |  |
| [eReferral Sample Substance Type](ValueSet-be-vs-sample-substance-type.md) | Types of samples/substances that can be collected. |
| [eReferral Session Type](ValueSet-be-vs-session-type.md) | Types of sessions for education or care activities (standard). |
| [eReferral Session Type Extended](ValueSet-be-vs-session-type-extended.md) | Types of sessions for education or care activities (extended, including combination). |
| [eReferral request track](ValueSet-be-vs-request-track.md) | Allowed request tracks. Extends the official Belgian request track value set with UHMEP-specific codes. |
| [eReferral/PSS Diagnostic Imaging Indication](ValueSet-be-vs-diagnostic-imaging-indication.md) | Clinical indications and findings that can support a diagnostic imaging request using SNOMED CT. |
| [eReferral/PSS Diagnostic Imaging Procedure](ValueSet-be-vs-diagnostic-imaging-procedure.md) | Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BePrescriptionStatusReason](CodeSystem-be-prescription-status-reason.md) | DEMONSTRATIVE EXAMPLE - Status reason for the prescription. Initially defined as supporting CodeSystem for the referral prescription. |
| [BeTreatmentStatusReason](CodeSystem-be-treatment-status-reason.md) | DEMONSTRATIVE EXAMPLE - Status reason for the treatment. Initially defined as supporting CodeSystem for the referral prescription. |
| [PSS Indication ValueSet](CodeSystem-be-cs-pss-indication.md) | PSS indication codes for diagnostic imaging requests. |
| [eReferral Annex 81 Status Reason](CodeSystem-be-cs-annex81-status-reason.md) | DEMONSTRATIVE EXAMPLE - Status reason for the Annex 81 |
| [eReferral Diabetic Education Type](CodeSystem-be-cs-diabetic-education-type.md) | Types of diabetes education activities. |
| [eReferral Generic Care Types](CodeSystem-be-cs-generic-care-types.md) | Types of care that can be prescribed via the generic prescription. |
| [eReferral Glycemia Measurement Timing](CodeSystem-be-cs-glycemia-measurement-timing.md) | Timing of glycemia measurements. |
| [eReferral Imaging Modality](CodeSystem-be-cs-imaging-modality.md) | Imaging modality types for prior imaging requests |
| [eReferral Imaging Priority](CodeSystem-be-cs-imaging-priority.md) | Priority codes for diagnostic imaging requests |
| [eReferral Note Types](CodeSystem-be-cs-note-types.md) | Types of notes that can be associated with a prescription. |
| [eReferral Prescription Type](CodeSystem-be-cs-prescription-type.md) | Technical types of prescriptions supported by the eReferral system. Used for routing and workflow purposes. |
| [eReferral Radiology SupportingInfo Role CodeSystem](CodeSystem-be-cs-radiology-supporting-info-role.md) |  |
| [eReferral Request Track](CodeSystem-be-cs-request-track.md) | Care setting track codes for diagnostic imaging requests |
| [eReferral Session Types](CodeSystem-be-cs-session-types.md) | Types of sessions for education or care activities. |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeNsUhmepShort](NamingSystem-be-ns-uhmep-short.md) | Naming system identifier for the UHMEP user friendly short code |
| [BePSSId](NamingSystem-be-ns-pss-id.md) | PSS ID naming system |
| [BeUnadressedHealthMessageExchangePlatform](NamingSystem-be-ns-uhmep.md) | UHMEP naming system |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [terminology-expansion](Parameters-terminology-expansion.md) |

