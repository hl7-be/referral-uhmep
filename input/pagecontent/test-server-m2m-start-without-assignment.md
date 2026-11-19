{% raw %}



### Scenario

The nurse identified by test SSIN {{nurseSsin}} starts work on a prescription without a prior performer assignment.

### Start Without Existing Assignment

`POST /Task`

Profile: [be-performer-task](https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition-be-performer-task.html).

The organization assignment exists, but no performer assignment exists for this nurse. Create the performer task with basedOn referencing the BeOrganizationTask and partOf referencing the BeReferralTask.

#### Business Values

| Business Field | Value |
| --- | --- |
| Prescription / proposal | {{serviceRequestId}} |
| Prescription workflow | {{referralTaskId}} |
| Assigned care provider | Nurse, SSIN {{nurseSsin}} |
| Organization assignment | {{organizationTaskId}} |
| Assignment state | In progress |
| Action date | {{executionStartedAt}} |
| Execution start | {{executionStartedAt}} |

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
  &quot;reference&quot;: &quot;PractitionerRole/{{nurseSsin}}-NURSE&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Organization assignment</td><td style="overflow-wrap: anywhere;"><code>Task.basedOn</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;reference&quot;: &quot;Task/{{organizationTaskId}}&quot;
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Assignment state</td><td style="overflow-wrap: anywhere;"><code>Task.status</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;status&quot;: &quot;in-progress&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Action date</td><td style="overflow-wrap: anywhere;"><code>Task.authoredOn</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;authoredOn&quot;: &quot;{{executionStartedAt}}&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Execution start</td><td style="overflow-wrap: anywhere;"><code>Task.executionPeriod</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;start&quot;: &quot;{{executionStartedAt}}&quot;
}</code></pre></td></tr>
</tbody></table>

#### Complete FHIR Payload

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-performer-task"
    ]
  },
  "status": "in-progress",
  "intent": "order",
  "focus": {
    "reference": "ServiceRequest/{{serviceRequestId}}"
  },
  "partOf": [
    {
      "reference": "Task/{{referralTaskId}}"
    }
  ],
  "authoredOn": "{{executionStartedAt}}",
  "owner": {
    "reference": "PractitionerRole/{{nurseSsin}}-NURSE"
  },
  "basedOn": [
    {
      "reference": "Task/{{organizationTaskId}}"
    }
  ],
  "executionPeriod": {
    "start": "{{executionStartedAt}}"
  }
}
```

{% endraw %}
