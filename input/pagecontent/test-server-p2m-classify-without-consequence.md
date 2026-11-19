{% raw %}



### Scenario

The Word identifies this test as cancellation of a prescription. Apply the cancellation operation defined by the IG to an existing eligible prescription.

### Cancel Prescription

`PATCH /ServiceRequest/{{serviceRequestId}}`

Request resource: FHIR R4 Parameters. This operation body is not a Task or ServiceRequest instance.

Use the FHIRPath Patch body documented in [Cancel Medical Document](operation-cancel-medical-document.html). Do not use the literal status cancelled, which is not the ServiceRequest cancellation status.

#### Business Values

| Business Field | Value |
| --- | --- |
| Prescription / proposal | {{serviceRequestId}} |
| Prescription state | Cancelled |

#### FHIR Mapping

<table class="grid test-server-mapping" style="width: 100%; table-layout: fixed;"><thead><tr><th scope="col" style="width: 22%;">Business Field</th><th scope="col" style="width: 28%;">FHIR Field</th><th scope="col">FHIR JSON</th></tr></thead><tbody>
<tr><td style="overflow-wrap: anywhere;">Prescription state</td><td style="overflow-wrap: anywhere;"><code>Parameters.parameter</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;name&quot;: &quot;operation&quot;,
    &quot;part&quot;: [
      {
        &quot;name&quot;: &quot;type&quot;,
        &quot;valueCode&quot;: &quot;replace&quot;
      },
      {
        &quot;name&quot;: &quot;path&quot;,
        &quot;valueString&quot;: &quot;ServiceRequest.status&quot;
      },
      {
        &quot;name&quot;: &quot;value&quot;,
        &quot;valueString&quot;: &quot;revoked&quot;
      }
    ]
  }
]</code></pre></td></tr>
</tbody></table>

#### Complete FHIR Payload

```json
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "operation",
      "part": [
        {
          "name": "type",
          "valueCode": "replace"
        },
        {
          "name": "path",
          "valueString": "ServiceRequest.status"
        },
        {
          "name": "value",
          "valueString": "revoked"
        }
      ]
    }
  ]
}
```

{% endraw %}
