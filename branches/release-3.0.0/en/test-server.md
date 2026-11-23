# Test Server - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* **Test Server**

## Test Server

This section provides one page per test, with a business scenario, business values and a FHIR mapping table for each action, followed by its complete FHIR JSON.

### Payload Conventions

* Runtime tokens use double braces. Replace all tokens before sending a request.
* Dates are runtime placeholders, not fixed scenario dates. Creation, assignment and first execution must be chronologically consistent. A validity end is only included where the scenario supplies it. Unknown session counts and treatment durations are not invented.
* Clinical plaintext is shown in business rows, then represented by pseudonymized/encrypted fields in JSON. Supply real test pseudonyms, encryption keys and JWE ciphertext through the INFSEC integration. Placeholder substitution is not cryptographic validation.
* ServiceRequest, referral task, organization task, performer task and approved prescription ids are distinct variables obtained from API responses or consultation. The server-created BeReferralTask is not posted by the client.

#### Runtime Placeholder Values

| | |
| :--- | :--- |
| `{{validityStartDate}}` | Validity start as YYYY-MM-DD, within the scenario’s allowed range. |
| `{{validityEndWithinYear}}` | A later date no more than one year after validity start. |
| `{{validityEndCalendarYear}}` | 31 December of the year in which validity starts. |
| `{{createdAt}}`,`{{assignedAt}}`,`{{executionStartedAt}}` | Actual action timestamps as YYYY-MM-DDThh:mm:ss+hh:mm, with the appropriate timezone offset and chronological order. |
| `{{kid}}` | Identifier of the test encryption key, consistent with the key reference and encrypted values. |
| `{{SEC1}}`,`{{transitInfo}}` | Test-environment pseudonym components. These are not a plaintext patient SSIN. |
| `{{diagnosisJwe}}`,`{{medical_reasonJwe}}`,`{{remarksJwe}}` | JWE ciphertext for the corresponding plaintext business value in the action table. |
| `{{prescriberSsin}}`,`{{nurseSsin}}`,`{{evaluatingPrescriberSsin}}` | Test-environment professional SSINs for the corresponding actors. |
| `{{organizationNihii}}` | The representing or assigned organization’s 11-digit NIHII. |
| `{{serviceRequestId}}`,`{{referralTaskId}}`,`{{organizationTaskId}}`,`{{performerTaskId}}`,`{{proposalId}}` | Actual distinct ids returned by creation or consultation for the relevant workflow branch. |
| `{{birthDateJwe}}`,`{{sexAtBirthJwe}}` | Encrypted birth date and sex at birth for the contained Radiology patient. Use a birth date consistent with the age in the scenario, without inventing an exact source date. |
| `{{clinicalContextJwe}}`,`{{imagingDescriptionJwe}}`,`{{indication1Jwe}}`,`{{indication2Jwe}}`,`{{indication3Jwe}}` | Ciphertext for the Radiology clinical context, examination description and individual clinical indications. |
| `{{hasDiabetes}}`,`{{hasContrastAllergy}}`,`{{hasMetallicDebris}}`,`{{hasRenalDysfunction}}`,`{{noAttentionCondition}}` | Actual JSON booleans after substitution, not quoted strings. Complete the imaging safety screening. Do not select no attention condition if another attention condition, including pregnancy, is present. |
| `{{imagingPriority}}` | Imaging priority assessed by the prescriber. The validation fixture uses routine. If urgent is selected, the profile also requires a pseudonymized urgency justification, not supplied by these scenarios. |
| `{{careTrack}}` | Actual care setting: ambulatory, inpatient or urgency. |
| `{{selectedImagingCode}}` | A confirmed SNOMED examination code in the required local imaging ValueSet. Cases with an unresolved examination are not validated positive examples. |

### Nursing

#### P2M

| | |
| :--- | :--- |
| Generic nursing care | [Open test](test-server-p2m-generic-nursing.md) |
| Medication preparation, Annex 81 proposal | [Open test](test-server-p2m-annex-81.md) |
| Medication prefill preparation, not refunded | [Open test](test-server-p2m-medication-prefill.md) |
| Diabetes education via convention centre | [Open test](test-server-p2m-diabetes-convention-centre.md) |
| Diabetes education within start trajectory | [Open test](test-server-p2m-diabetes-start-trajectory.md) |
| Diabetes education within care trajectory | [Open test](test-server-p2m-diabetes-care-trajectory.md) |
| Diabetes education without care trajectory | [Open test](test-server-p2m-diabetes-without-care-trajectory.md) |
| Assistance with personal hygiene | [Open test](test-server-p2m-personal-hygiene.md) |
| Chronic peritoneal dialysis | [Open test](test-server-p2m-peritoneal-dialysis.md) |
| Glycemia test with glucometer | [Open test](test-server-p2m-glycemia-test.md) |
| Sampling | [Open test](test-server-p2m-sampling.md) |
| Bloodletting | [Open test](test-server-p2m-bloodletting.md) |
| Measurement of parameters | [Open test](test-server-p2m-parameters.md) |
| Assign a prescription to an organization | [Open test](test-server-p2m-assign-organization.md) |
| Assign a prescription to a treatment provider | [Open test](test-server-p2m-assign-caregiver.md) |
| Classifying a prescription without consequence | [Open test](test-server-p2m-classify-without-consequence.md) |
| Execute a valid prescription | [Open test](test-server-p2m-start-without-assignment.md) |
| Create an annex 81 proposal by a nurse | [Open test](test-server-p2m-organization-annex-81.md) |

#### M2M

| | |
| :--- | :--- |
| Generic nursing care | [Open test](test-server-m2m-generic-nursing.md) |
| Medication preparation, Annex 81 proposal | [Open test](test-server-m2m-annex-81.md) |
| Medication prefill preparation, not refunded | [Open test](test-server-m2m-medication-prefill.md) |
| Diabetes education via convention centre | [Open test](test-server-m2m-diabetes-convention-centre.md) |
| Diabetes education within start trajectory | [Open test](test-server-m2m-diabetes-start-trajectory.md) |
| Diabetes education within care trajectory | [Open test](test-server-m2m-diabetes-care-trajectory.md) |
| Diabetes education without care trajectory | [Open test](test-server-m2m-diabetes-without-care-trajectory.md) |
| Assistance with personal hygiene | [Open test](test-server-m2m-personal-hygiene.md) |
| Chronic peritoneal dialysis | [Open test](test-server-m2m-peritoneal-dialysis.md) |
| Glycemia test with glucometer | [Open test](test-server-m2m-glycemia-test.md) |
| Sampling | [Open test](test-server-m2m-sampling.md) |
| Bloodletting | [Open test](test-server-m2m-bloodletting.md) |
| Measurement of parameters | [Open test](test-server-m2m-parameters.md) |
| Assign a prescription to an organization | [Open test](test-server-m2m-assign-organization.md) |
| Assign a prescription to a caregiver from the organization | [Open test](test-server-m2m-assign-internal-caregiver.md) |
| Execute a valid prescription | [Open test](test-server-m2m-start-without-assignment.md) |
| Create an annex 81 proposal by a nurse from an organization | [Open test](test-server-m2m-organization-annex-81.md) |

### Radiology

Clinical scenarios cover the selected imaging examination and creation of its eReferral prescription. Exchanges with the PSS system are not included.

#### P2M

| | | |
| :--- | :--- | :--- |
| Suspected pulmonary edema | [Open test](test-server-radiology-p2m-01.md) | Specified |
| Unresolved or complicated pneumonia | [Open test](test-server-radiology-p2m-02.md) | Specified |
| Chest pain with a normal ECG | [Open test](test-server-radiology-p2m-03.md) | To be confirmed before submission |
| New headaches during pregnancy | [Open test](test-server-radiology-p2m-04.md) | Specified |
| Tongue weakness | [Open test](test-server-radiology-p2m-05.md) | Specified |
| Head trauma and stroke follow-up in an adult | [Open test](test-server-radiology-p2m-06.md) | Specified |
| Head trauma and stroke follow-up in a child | [Open test](test-server-radiology-p2m-07.md) | Specified |
| Initial breast cancer imaging | [Open test](test-server-radiology-p2m-08.md) | Specified |
| Persistent cough and abnormal sputum | [Open test](test-server-radiology-p2m-09.md) | Specified |
| Tongue and facial weakness | [Open test](test-server-radiology-p2m-10.md) | Specified |
| New cough with two selected examinations | [Open test](test-server-radiology-p2m-11.md) | Specified |
| Flank pain with suspected recurrent stones | [Open test](test-server-radiology-p2m-12.md) | To be confirmed before submission |

#### M2M

| | | |
| :--- | :--- | :--- |
| Suspected pulmonary edema | [Open test](test-server-radiology-m2m-01.md) | Specified |
| Unresolved or complicated pneumonia | [Open test](test-server-radiology-m2m-02.md) | Specified |
| Chest pain with a normal ECG | [Open test](test-server-radiology-m2m-03.md) | To be confirmed before submission |
| New headaches during pregnancy | [Open test](test-server-radiology-m2m-04.md) | Specified |
| Tongue weakness | [Open test](test-server-radiology-m2m-05.md) | Specified |
| Head trauma and stroke follow-up in an adult | [Open test](test-server-radiology-m2m-06.md) | Specified |
| Head trauma and stroke follow-up in a child | [Open test](test-server-radiology-m2m-07.md) | Specified |
| Initial breast cancer imaging | [Open test](test-server-radiology-m2m-08.md) | Specified |
| Persistent cough and abnormal sputum | [Open test](test-server-radiology-m2m-09.md) | Specified |
| Tongue and facial weakness | [Open test](test-server-radiology-m2m-10.md) | Specified |
| New cough with two selected examinations | [Open test](test-server-radiology-m2m-11.md) | Specified |
| Flank pain with suspected recurrent stones | [Open test](test-server-radiology-m2m-12.md) | To be confirmed before submission |

