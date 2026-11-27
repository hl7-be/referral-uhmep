# P2M - Nursing - Classifying a prescription without consequence - eReferral Implementation Guide v3.0.2

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **P2M - Nursing - Classifying a prescription without consequence**

## P2M - Nursing - Classifying a prescription without consequence

### Scenario

The Word identifies this test as cancellation of a prescription. Apply the cancellation operation defined by the IG to an existing eligible prescription.

### Cancel Prescription

`PATCH /ServiceRequest/{{serviceRequestId}}`

Request resource: FHIR R4 Parameters. This operation body is not a Task or ServiceRequest instance.

Use the FHIRPath Patch body documented in [Cancel Medical Document](operation-cancel-medical-document.md). Do not use the literal status cancelled, which is not the ServiceRequest cancellation status.

#### Business Values

| | |
| :--- | :--- |
| Prescription / proposal | {{serviceRequestId}} |
| Prescription state | Cancelled |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Prescription state | `Parameters.parameter` | ````[ { "name": "operation", "part": [ { "name": "type", "valueCode": "replace" }, { "name": "path", "valueString": "ServiceRequest.status" }, { "name": "value", "valueString": "revoked" } ] } ]```` |

#### Complete FHIR Payload

```
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

