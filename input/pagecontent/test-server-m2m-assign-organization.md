{% raw %}



### Scenario

Assign the organization identified by NIHII 94175923001 to an existing prescription. Obtain the prescription and its referral task from consultation.

### Assign Organization

`POST /Task`

Profile: [be-organization-task](https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition-be-organization-task.html).

The organization NIHII is fixed by the Word scenario. The prescription and referral task ids are runtime values.

#### Business Values

| Business Field | Value |
| --- | --- |
| Prescription / proposal | {{serviceRequestId}} |
| Prescription workflow | {{referralTaskId}} |
| Assigned care provider | Organization, NIHII 94175923001 |
| Assignment state | Assigned |
| Action date | {{assignedAt}} |

#### FHIR Mapping

<table class="grid test-server-mapping" style="width: 100%; table-layout: fixed;"><thead><tr><th scope="col" style="width: 22%;">Business Field</th><th scope="col" style="width: 28%;">FHIR Field</th><th scope="col">FHIR JSON</th></tr></thead><tbody>
<tr><td style="overflow-wrap: anywhere;">Prescription / proposal</td><td style="overflow-wrap: anywhere;"><code>Task.focus</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;reference&quot;: &quot;ServiceRequest/{{serviceRequestId}}&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Prescription workflow</td><td style="overflow-wrap: anywhere;"><code>Task.partOf</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;reference&quot;: &quot;Task/{{referralTaskId}}&quot;
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Assigned care provider</td><td style="overflow-wrap: anywhere;"><code>Task.owner</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;reference&quot;: &quot;Organization/NIHII-94175923001&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Assignment state</td><td style="overflow-wrap: anywhere;"><code>Task.status</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;status&quot;: &quot;ready&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Action date</td><td style="overflow-wrap: anywhere;"><code>Task.authoredOn</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;authoredOn&quot;: &quot;{{assignedAt}}&quot;
}</code></pre></td></tr>
</tbody></table>

#### Complete FHIR Payload

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-organization-task"
    ]
  },
  "status": "ready",
  "intent": "order",
  "focus": {
    "reference": "ServiceRequest/{{serviceRequestId}}"
  },
  "partOf": [
    {
      "reference": "Task/{{referralTaskId}}"
    }
  ],
  "authoredOn": "{{assignedAt}}",
  "owner": {
    "reference": "Organization/NIHII-94175923001"
  }
}
```

{% endraw %}
