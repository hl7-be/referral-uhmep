# P2M - Nursing - Assign a prescription to a treatment provider - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **P2M - Nursing - Assign a prescription to a treatment provider**

## P2M - Nursing - Assign a prescription to a treatment provider

### Scenario

Assign the nurse identified by test SSIN {{nurseSsin}} to an existing prescription.

### Assign Nurse

`POST /Task`

Profile: [be-performer-task](https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition-be-performer-task.html).

Substitute the test nurse SSIN and the current prescription and referral task ids.

#### Business Values

| | |
| :--- | :--- |
| Prescription / proposal | {{serviceRequestId}} |
| Prescription workflow | {{referralTaskId}} |
| Assigned care provider | Nurse, SSIN {{nurseSsin}} |
| Assignment state | Assigned |
| Action date | {{assignedAt}} |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Prescription / proposal | `Task.focus` | ````{ "reference": "ServiceRequest/{{serviceRequestId}}" }```` |
| Prescription workflow | `Task.partOf` | ````[ { "reference": "Task/{{referralTaskId}}" } ]```` |
| Assigned care provider | `Task.owner` | ````{ "reference": "PractitionerRole/{{nurseSsin}}-NURSE" }```` |
| Assignment state | `Task.status` | ````{ "status": "ready" }```` |
| Action date | `Task.authoredOn` | ````{ "authoredOn": "{{assignedAt}}" }```` |

#### Complete FHIR Payload

```
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-performer-task"
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
    "reference": "PractitionerRole/{{nurseSsin}}-NURSE"
  }
}

```

