This page indexes the FHIR JSON examples intended for Test Server integration scenarios. Examples are generated from the profiles in this guide.

The examples contain pseudonymization placeholders and illustrative values. They demonstrate profile-valid payloads. They do not establish deployment support or clinical guidance. The convention-centre diabetes scenario does not specify a numeric weekly frequency. Its example uses once weekly while retaining the stated maximum of 30 sessions.

Captured P2M requests are adapted to the 4.0 draft canonicals. Their target environment was not retained, and they have not been sent to or validated against a 4.0 server.

## Nursing {#nursing}

### P2M

| Scenario | Valid FHIR JSON | Captured P2M request |
| --- | --- | --- |
| Generic nursing care | [ServiceRequest-example-drp-nursing-generic.json](ServiceRequest-example-drp-nursing-generic.json) | [Open captured request](test-server-p2m-payload-generic-nursing.html) |
| Medication preparation, Annex 81 proposal | [ServiceRequest-example-drp-nursing-med-preparation-appendix-81.json](ServiceRequest-example-drp-nursing-med-preparation-appendix-81.json) | Not included |
| Medication prefill preparation, not refunded | [ServiceRequest-example-drp-nursing-med-prep-not-refunded.json](ServiceRequest-example-drp-nursing-med-prep-not-refunded.json) | [Open captured request](test-server-p2m-payload-medication-prefill.html) |
| Diabetes education via convention centre | [ServiceRequest-example-drp-nursing-de-convention-center.json](ServiceRequest-example-drp-nursing-de-convention-center.json) | [Open captured request](test-server-p2m-payload-diabetes-convention-centre.html) |
| Diabetes education within start trajectory | [ServiceRequest-example-drp-nursing-de-within-start-trajectory.json](ServiceRequest-example-drp-nursing-de-within-start-trajectory.json) | [Open captured request](test-server-p2m-payload-diabetes-start-trajectory.html) |
| Diabetes education within care trajectory | [ServiceRequest-example-drp-nursing-de-within-care-trajectory.json](ServiceRequest-example-drp-nursing-de-within-care-trajectory.json) | [Open captured request](test-server-p2m-payload-diabetes-care-trajectory.html) |
| Diabetes education without care trajectory | [ServiceRequest-example-drp-nursing-de-without-care-trajectory.json](ServiceRequest-example-drp-nursing-de-without-care-trajectory.json) | [Open captured request](test-server-p2m-payload-diabetes-without-care-trajectory.html) |
| Assistance with personal hygiene | [ServiceRequest-example-drp-nursing-hygienic-care.json](ServiceRequest-example-drp-nursing-hygienic-care.json) | [Open captured request](test-server-p2m-payload-personal-hygiene.html) |
| Chronic peritoneal dialysis | [ServiceRequest-example-drp-nursing-chronic-dialysis.json](ServiceRequest-example-drp-nursing-chronic-dialysis.json) | [Open captured request](test-server-p2m-payload-peritoneal-dialysis.html) |
| Glycemia test with glucometer | [ServiceRequest-example-drp-nursing-glycemic-test.json](ServiceRequest-example-drp-nursing-glycemic-test.json) | [Open captured request](test-server-p2m-payload-glycemia-test.html) |
| Sampling | [ServiceRequest-example-drp-nursing-sampling.json](ServiceRequest-example-drp-nursing-sampling.json) | [Open captured request](test-server-p2m-payload-sampling.html) |
| Bloodletting | [ServiceRequest-example-drp-nursing-bloodletting.json](ServiceRequest-example-drp-nursing-bloodletting.json) | [Open captured request](test-server-p2m-payload-bloodletting.html) |
| Measurement of parameters | [ServiceRequest-example-drp-nursing-parameters.json](ServiceRequest-example-drp-nursing-parameters.json) | [Open captured request](test-server-p2m-payload-parameters.html) |

### M2M

M2M scenarios and their expected JSON payloads have not yet been provided.

## Radiology

### P2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use.

### M2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use.

## Telemonitoring

### P2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use. The illustrative profile example is available in [Artifacts](ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.json).

### M2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use.
