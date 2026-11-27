# Test Server - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* **Test Server**

## Test Server

This page indexes the FHIR JSON examples intended for Test Server integration scenarios. Examples are generated from the profiles in this guide.

The examples contain pseudonymization placeholders and illustrative values. They demonstrate profile-valid payloads. They do not establish deployment support or clinical guidance.

Where a scenario narrative conflicts with its structured template, the JSON follows the template: bloodletting specifies four sessions in the template but mentions five in the narrative, and sampling specifies wound fluid only in the template although the narrative also mentions a blood draw. For convention-centre education, the example follows the narrative frequency of three sessions per week, with a maximum of 30 sessions and no invented treatment duration.

Captured P2M requests are adapted to the 4.0 draft canonicals. Their target environment was not retained, and they have not been sent to or validated against a 4.0 server.

### Nursing

#### P2M

##### Captured P2M requests

| | |
| :--- | :--- |
| Generic nursing care | [Open captured request](test-server-p2m-payload-generic-nursing.md) |
| Medication preparation, Annex 81 proposal | Not included |
| Medication prefill preparation, not refunded | [Open captured request](test-server-p2m-payload-medication-prefill.md) |
| Diabetes education via convention centre | [Open captured request](test-server-p2m-payload-diabetes-convention-centre.md) |
| Diabetes education within start trajectory | [Open captured request](test-server-p2m-payload-diabetes-start-trajectory.md) |
| Diabetes education within care trajectory | [Open captured request](test-server-p2m-payload-diabetes-care-trajectory.md) |
| Diabetes education without care trajectory | [Open captured request](test-server-p2m-payload-diabetes-without-care-trajectory.md) |
| Assistance with personal hygiene | [Open captured request](test-server-p2m-payload-personal-hygiene.md) |
| Chronic peritoneal dialysis | [Open captured request](test-server-p2m-payload-peritoneal-dialysis.md) |
| Glycemia test with glucometer | [Open captured request](test-server-p2m-payload-glycemia-test.md) |
| Sampling | [Open captured request](test-server-p2m-payload-sampling.md) |
| Bloodletting | [Open captured request](test-server-p2m-payload-bloodletting.md) |
| Measurement of parameters | [Open captured request](test-server-p2m-payload-parameters.md) |

#### M2M

The Word scenarios provide four M2M Nursing creation payloads. Their requester references include the requesting organization’s NIHII. The separate Task payloads for assignment and execution are workflow resources, not Nursing prescriptions.

### Radiology

#### P2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use.

#### M2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use.

### Telemonitoring

#### P2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use. The illustrative profile example is available in [Artifacts](ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.json).

#### M2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use.

