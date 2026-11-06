This page groups the business field mappings for telemonitoring prescription types.

| Prescription type | Mapping page | Example |
| --- | --- | --- |
| Chronic heart failure telemonitoring | [Chronic heart failure telemonitoring](mapper-telemonitoring-chronic-heart-failure.html) | [example-drp-telemonitoring-chronic-heart-failure](ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.html) |

The prescription uses a single `ServiceRequest.reasonCode`, fixed to SNOMED CT `48447003` (chronic heart failure). Detailed diagnosis categories and contained Conditions are not used.

{% include terminology-url-prefixes.html %}

### Telemonitoring terminology

| Artifact | Purpose |
| --- | --- |
| [be-vs-telemonitoring-parameter-type](ValueSet-be-vs-telemonitoring-parameter-type.html) | SNOMED CT codes for the monitored clinical parameters configured in the monitoring plan. |
| `be-cs-monitoring-comparator` | Business comparator semantics for threshold and change rules. |
| [be-cs-telemonitoring-completed-status-reason](CodeSystem-be-cs-telemonitoring-completed-status-reason.html) | Status reasons allowed when a telemonitoring prescription is completed. |
