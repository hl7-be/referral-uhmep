# P2M - Nursing - Execute a valid prescription - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **P2M - Nursing - Execute a valid prescription**

## P2M - Nursing - Execute a valid prescription

### Scenario

The nurse identified by test SSIN {{nurseSsin}} starts work on a prescription without a prior performer assignment.

### Start Without Existing Assignment

`POST /Task`

Profile: [be-performer-task](https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition-be-performer-task.html).

Create a performer task directly in progress, including the actual start timestamp. No organization task is introduced into the P2M scenario.

#### Business Values

| | |
| :--- | :--- |
| Prescription / proposal | {{serviceRequestId}} |
| Prescription workflow | {{referralTaskId}} |
| Assigned care provider | Nurse, SSIN {{nurseSsin}} |
| Assignment state | In progress |
| Action date | {{executionStartedAt}} |
| Execution start | {{executionStartedAt}} |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Prescription / proposal | `Task.focus` | ````{ "reference": "ServiceRequest/{{serviceRequestId}}" }```` |
| Prescription workflow | `Task.partOf` | ````[ { "reference": "Task/{{referralTaskId}}" } ]```` |
| Assigned care provider | `Task.owner` | ````{ "reference": "PractitionerRole/{{nurseSsin}}-NURSE" }```` |
| Assignment state | `Task.status` | ````{ "status": "in-progress" }```` |
| Action date | `Task.authoredOn` | ````{ "authoredOn": "{{executionStartedAt}}" }```` |
| Execution start | `Task.executionPeriod` | ````{ "start": "{{executionStartedAt}}" }```` |

#### Complete FHIR Payload

```
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
  "executionPeriod": {
    "start": "{{executionStartedAt}}"
  }
}

```

