This section provides one page per test, with a business scenario, business values and a FHIR mapping table for each action, followed by its complete FHIR JSON.

### Payload Conventions {#payload-conventions}

- Runtime tokens use double braces. Replace all tokens before sending a request.
- Dates are runtime placeholders, not fixed scenario dates. Creation, assignment and first execution must be chronologically consistent. A validity end is only included where the scenario supplies it. Unknown session counts and treatment durations are not invented.
- Clinical plaintext is shown in business rows, then represented by pseudonymized/encrypted fields in JSON. Supply real test pseudonyms, encryption keys and JWE ciphertext through the INFSEC integration. Placeholder substitution is not cryptographic validation.
- ServiceRequest, referral task, organization task, performer task and approved prescription ids are distinct variables obtained from API responses or consultation. The server-created BeReferralTask is not posted by the client.

#### Runtime Placeholder Values

{% raw %}
| Placeholder | Value to Supply |
| --- | --- |
| `{{validityStartDate}}` | Validity start as YYYY-MM-DD, within the scenario's allowed range. |
| `{{validityEndWithinYear}}` | A later date no more than one year after validity start. |
| `{{validityEndCalendarYear}}` | 31 December of the year in which validity starts. |
| `{{createdAt}}`, `{{assignedAt}}`, `{{executionStartedAt}}` | Actual action timestamps as YYYY-MM-DDThh:mm:ss+hh:mm, with the appropriate timezone offset and chronological order. |
| `{{kid}}` | Identifier of the test encryption key, consistent with the key reference and encrypted values. |
| `{{SEC1}}`, `{{transitInfo}}` | Test-environment pseudonym components. These are not a plaintext patient SSIN. |
| `{{diagnosisJwe}}`, `{{medical_reasonJwe}}`, `{{remarksJwe}}` | JWE ciphertext for the corresponding plaintext business value in the action table. |
| `{{prescriberSsin}}`, `{{nurseSsin}}`, `{{evaluatingPrescriberSsin}}` | Test-environment professional SSINs for the corresponding actors. |
| `{{organizationNihii}}` | The representing or assigned organization's 11-digit NIHII. |
| `{{serviceRequestId}}`, `{{referralTaskId}}`, `{{organizationTaskId}}`, `{{performerTaskId}}`, `{{proposalId}}` | Actual distinct ids returned by creation or consultation for the relevant workflow branch. |
| `{{birthDateJwe}}`, `{{sexAtBirthJwe}}` | Encrypted birth date and sex at birth for the contained Radiology patient. Use a birth date consistent with the age in the scenario, without inventing an exact source date. |
| `{{clinicalContextJwe}}`, `{{imagingDescriptionJwe}}`, `{{indication1Jwe}}`, `{{indication2Jwe}}`, `{{indication3Jwe}}` | Ciphertext for the Radiology clinical context, examination description and individual clinical indications. |
| `{{hasDiabetes}}`, `{{hasContrastAllergy}}`, `{{hasMetallicDebris}}`, `{{hasRenalDysfunction}}`, `{{noAttentionCondition}}` | Actual JSON booleans after substitution, not quoted strings. Complete the imaging safety screening. Do not select no attention condition if another attention condition, including pregnancy, is present. |
| `{{imagingPriority}}` | Imaging priority assessed by the prescriber. The validation fixture uses routine. If urgent is selected, the profile also requires a pseudonymized urgency justification, not supplied by these scenarios. |
| `{{careTrack}}` | Actual care setting: ambulatory, inpatient or urgency. |
| `{{selectedImagingCode}}` | A confirmed SNOMED examination code in the required local imaging ValueSet. Cases with an unresolved examination are not validated positive examples. |
{% endraw %}

### Nursing

#### P2M

| Test | Scenario and Actions |
| --- | --- |
| Generic nursing care | [Open test](test-server-p2m-generic-nursing.html) |
| Medication preparation, Annex 81 proposal | [Open test](test-server-p2m-annex-81.html) |
| Medication prefill preparation, not refunded | [Open test](test-server-p2m-medication-prefill.html) |
| Diabetes education via convention centre | [Open test](test-server-p2m-diabetes-convention-centre.html) |
| Diabetes education within start trajectory | [Open test](test-server-p2m-diabetes-start-trajectory.html) |
| Diabetes education within care trajectory | [Open test](test-server-p2m-diabetes-care-trajectory.html) |
| Diabetes education without care trajectory | [Open test](test-server-p2m-diabetes-without-care-trajectory.html) |
| Assistance with personal hygiene | [Open test](test-server-p2m-personal-hygiene.html) |
| Chronic peritoneal dialysis | [Open test](test-server-p2m-peritoneal-dialysis.html) |
| Glycemia test with glucometer | [Open test](test-server-p2m-glycemia-test.html) |
| Sampling | [Open test](test-server-p2m-sampling.html) |
| Bloodletting | [Open test](test-server-p2m-bloodletting.html) |
| Measurement of parameters | [Open test](test-server-p2m-parameters.html) |
| Assign a prescription to an organization | [Open test](test-server-p2m-assign-organization.html) |
| Assign a prescription to a treatment provider | [Open test](test-server-p2m-assign-caregiver.html) |
| Classifying a prescription without consequence | [Open test](test-server-p2m-classify-without-consequence.html) |
| Execute a valid prescription | [Open test](test-server-p2m-start-without-assignment.html) |
| Create an annex 81 proposal by a nurse | [Open test](test-server-p2m-organization-annex-81.html) |

#### M2M

| Test | Scenario and Actions |
| --- | --- |
| Generic nursing care | [Open test](test-server-m2m-generic-nursing.html) |
| Medication preparation, Annex 81 proposal | [Open test](test-server-m2m-annex-81.html) |
| Medication prefill preparation, not refunded | [Open test](test-server-m2m-medication-prefill.html) |
| Diabetes education via convention centre | [Open test](test-server-m2m-diabetes-convention-centre.html) |
| Diabetes education within start trajectory | [Open test](test-server-m2m-diabetes-start-trajectory.html) |
| Diabetes education within care trajectory | [Open test](test-server-m2m-diabetes-care-trajectory.html) |
| Diabetes education without care trajectory | [Open test](test-server-m2m-diabetes-without-care-trajectory.html) |
| Assistance with personal hygiene | [Open test](test-server-m2m-personal-hygiene.html) |
| Chronic peritoneal dialysis | [Open test](test-server-m2m-peritoneal-dialysis.html) |
| Glycemia test with glucometer | [Open test](test-server-m2m-glycemia-test.html) |
| Sampling | [Open test](test-server-m2m-sampling.html) |
| Bloodletting | [Open test](test-server-m2m-bloodletting.html) |
| Measurement of parameters | [Open test](test-server-m2m-parameters.html) |
| Assign a prescription to an organization | [Open test](test-server-m2m-assign-organization.html) |
| Assign a prescription to a caregiver from the organization | [Open test](test-server-m2m-assign-internal-caregiver.html) |
| Execute a valid prescription | [Open test](test-server-m2m-start-without-assignment.html) |
| Create an annex 81 proposal by a nurse from an organization | [Open test](test-server-m2m-organization-annex-81.html) |

### Radiology

Clinical scenarios cover the selected imaging examination and creation of its eReferral prescription. Exchanges with the PSS system are not included.

#### P2M

| Test | Scenario and Actions | Examination |
| --- | --- | --- |
| Suspected pulmonary edema | [Open test](test-server-radiology-p2m-01.html) | Specified |
| Unresolved or complicated pneumonia | [Open test](test-server-radiology-p2m-02.html) | Specified |
| Chest pain with a normal ECG | [Open test](test-server-radiology-p2m-03.html) | To be confirmed before submission |
| New headaches during pregnancy | [Open test](test-server-radiology-p2m-04.html) | Specified |
| Tongue weakness | [Open test](test-server-radiology-p2m-05.html) | Specified |
| Head trauma and stroke follow-up in an adult | [Open test](test-server-radiology-p2m-06.html) | Specified |
| Head trauma and stroke follow-up in a child | [Open test](test-server-radiology-p2m-07.html) | Specified |
| Initial breast cancer imaging | [Open test](test-server-radiology-p2m-08.html) | Specified |
| Persistent cough and abnormal sputum | [Open test](test-server-radiology-p2m-09.html) | Specified |
| Tongue and facial weakness | [Open test](test-server-radiology-p2m-10.html) | Specified |
| New cough with two selected examinations | [Open test](test-server-radiology-p2m-11.html) | Specified |
| Flank pain with suspected recurrent stones | [Open test](test-server-radiology-p2m-12.html) | To be confirmed before submission |

#### M2M

| Test | Scenario and Actions | Examination |
| --- | --- | --- |
| Suspected pulmonary edema | [Open test](test-server-radiology-m2m-01.html) | Specified |
| Unresolved or complicated pneumonia | [Open test](test-server-radiology-m2m-02.html) | Specified |
| Chest pain with a normal ECG | [Open test](test-server-radiology-m2m-03.html) | To be confirmed before submission |
| New headaches during pregnancy | [Open test](test-server-radiology-m2m-04.html) | Specified |
| Tongue weakness | [Open test](test-server-radiology-m2m-05.html) | Specified |
| Head trauma and stroke follow-up in an adult | [Open test](test-server-radiology-m2m-06.html) | Specified |
| Head trauma and stroke follow-up in a child | [Open test](test-server-radiology-m2m-07.html) | Specified |
| Initial breast cancer imaging | [Open test](test-server-radiology-m2m-08.html) | Specified |
| Persistent cough and abnormal sputum | [Open test](test-server-radiology-m2m-09.html) | Specified |
| Tongue and facial weakness | [Open test](test-server-radiology-m2m-10.html) | Specified |
| New cough with two selected examinations | [Open test](test-server-radiology-m2m-11.html) | Specified |
| Flank pain with suspected recurrent stones | [Open test](test-server-radiology-m2m-12.html) | To be confirmed before submission |
