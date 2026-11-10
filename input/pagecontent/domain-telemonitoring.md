This page defines the intended 4.0 FHIR target for the chronic-heart-failure medical Telemonitoring prescription, parameter definitions, mappings and examples. It does not assert that the current gateway implements or exposes every part of this target. No production deployment or reimbursement eligibility is established by this page.

### Medical Prescription

Use the [Telemonitoring ServiceRequest profile](StructureDefinition-ereferral-servicerequest-telemonitoring.html) for the medical prescription, including its patient reference, chronic-heart-failure indication, validity and monitoring plan.

The medical profile fixes `category[prescriptionType]` to `telemonitoring-chronic-heart-failure`, the discipline coding to SNOMED CT `394579002`, the procedure to `879780004` and the indication to `48447003`. Its validity extension requires both start and end. These are the draft profile constraints; code validity must also be checked against the intended SNOMED edition.

### Repeatable Monitoring Parameters

The 4.0 target model represents monitoring rules as repeatable lists:

| Parameter | Target FHIR representation | 4.0 target change |
| --- | --- | --- |
| Body weight | `monitoringPlan.extension[change].valueRatio` | Multiple change rules instead of one period/amount rule. |
| Systolic blood pressure | `monitoringPlan.extension[threshold].extension[range].valueRange` | Multiple threshold ranges instead of one. |
| Diastolic blood pressure | Same threshold/range structure | Multiple threshold ranges instead of one. |
| Heart rate | Same threshold/range structure | Multiple threshold ranges instead of one. |
| Systolic pulmonary artery pressure | Same threshold/range structure | Added to the target parameter model. |
| Diastolic pulmonary artery pressure | Same threshold/range structure | Added to the target parameter model. |

Integrations targeting this contract must preserve all repeated threshold or change entries and their units; do not retain only the first range or change rule. A body-weight change uses the ratio numerator as the amount and denominator as the time period. Runtime support must be verified separately against each target environment.

### Monitoring Plan Extension

Each [monitoring plan](StructureDefinition-be-ext-telemonitoring-plan.html) has one parameter and may contain a reference measurement (`baseline`), repeated threshold ranges, an optional target range and repeated change ratios. The baseline is a reference to a standalone `Observation`, not a contained resource; for body weight it represents the reference weight against which change rules are evaluated. The draft extension also defines an optional `sustainedFor` duration on a threshold.

The target extension includes threshold `range`, `change`, optional `targetRange`, optional `sustainedFor` and optional `baseline`. The inspected gateway mapper consumes `range` and `change`; target runtime support for `targetRange`, `sustainedFor` and `baseline` remains unverified. Implementations need explicit support and round-trip tests before claiming conformance to those target fields.

### Workflow and Privacy Checks

- Use the [operation pages](api-operations.html) for the available FHIR routes, then verify Telemonitoring-specific roles, status transitions and template permissions against the target environment.
- Do not apply radiology track exceptions to Telemonitoring.
- Keep direct patient pseudonyms, encryption keys and encrypted clinical free text consistent with [API Integration](api-integration.html#pseudonymization).
- Validate medical-order examples against the draft profile and confirm the actual route and authorization requirements in the target environment.
- Validate the intended completion-reason terminology without assuming that every preferred code is enforced as required by the backend.

### Examples and Mappings

The [Telemonitoring mappings](mappings-telemonitoring.html) and [chronic-heart-failure field mapping](mapper-telemonitoring-chronic-heart-failure.html) accompany the generated medical prescription example in [Artifacts](artifacts.html). Examples are illustrative, contain placeholders and are not clinical recommendations or production acceptance tests.

This documentation states the intended 4.0 Telemonitoring contract. Its inclusion does not announce feature activation or prove that a deployed environment already supports it; consult the applicable release and environment documentation for availability.