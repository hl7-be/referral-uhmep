This page indexes the FHIR JSON examples intended for Test Server integration scenarios. Examples are generated from the profiles in this guide.

The examples contain pseudonymization placeholders and illustrative values. They demonstrate profile-valid payloads; they do not establish deployment support or clinical guidance. The convention-centre diabetes scenario does not specify a numeric weekly frequency; its example uses once weekly while retaining the stated maximum of 30 sessions.

## Nursing {#nursing}

### P2M

| Scenario | Valid FHIR JSON |
| --- | --- |
| Generic nursing care | [ServiceRequest-example-drp-nursing-generic.json](ServiceRequest-example-drp-nursing-generic.json) |
| Medication preparation, Annex 81 proposal | [ServiceRequest-example-drp-nursing-med-preparation-appendix-81.json](ServiceRequest-example-drp-nursing-med-preparation-appendix-81.json) |
| Medication prefill preparation, not refunded | [ServiceRequest-example-drp-nursing-med-prep-not-refunded.json](ServiceRequest-example-drp-nursing-med-prep-not-refunded.json) |
| Diabetes education via convention centre | [ServiceRequest-example-drp-nursing-de-convention-center.json](ServiceRequest-example-drp-nursing-de-convention-center.json) |
| Diabetes education within start trajectory | [ServiceRequest-example-drp-nursing-de-within-start-trajectory.json](ServiceRequest-example-drp-nursing-de-within-start-trajectory.json) |
| Diabetes education within care trajectory | [ServiceRequest-example-drp-nursing-de-within-care-trajectory.json](ServiceRequest-example-drp-nursing-de-within-care-trajectory.json) |
| Diabetes education without care trajectory | [ServiceRequest-example-drp-nursing-de-without-care-trajectory.json](ServiceRequest-example-drp-nursing-de-without-care-trajectory.json) |
| Assistance with personal hygiene | [ServiceRequest-example-drp-nursing-hygienic-care.json](ServiceRequest-example-drp-nursing-hygienic-care.json) |
| Chronic peritoneal dialysis | [ServiceRequest-example-drp-nursing-chronic-dialysis.json](ServiceRequest-example-drp-nursing-chronic-dialysis.json) |
| Glycemia test with glucometer | [ServiceRequest-example-drp-nursing-glycemic-test.json](ServiceRequest-example-drp-nursing-glycemic-test.json) |
| Sampling | [ServiceRequest-example-drp-nursing-sampling.json](ServiceRequest-example-drp-nursing-sampling.json) |
| Bloodletting | [ServiceRequest-example-drp-nursing-bloodletting.json](ServiceRequest-example-drp-nursing-bloodletting.json) |
| Measurement of parameters | [ServiceRequest-example-drp-nursing-parameters.json](ServiceRequest-example-drp-nursing-parameters.json) |

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
