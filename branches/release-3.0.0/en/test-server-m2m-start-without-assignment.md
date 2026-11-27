# M2M - Nursing - Execute a valid prescription - eReferral Implementation Guide v3.0.2

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **M2M - Nursing - Execute a valid prescription**

## M2M - Nursing - Execute a valid prescription

### Scenario

The nurse identified by test SSIN {{nurseSsin}} starts work on a prescription without a prior performer assignment.

### Start Without Existing Assignment

`POST /Task`

Profile: [be-performer-task](https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition-be-performer-task.html).

The organization assignment exists, but no performer assignment exists for this nurse. Create the performer task with basedOn referencing the BeOrganizationTask and partOf referencing the BeReferralTask.

#### Business Values

| | |
| :--- | :--- |
| Prescription / proposal | {{serviceRequestId}} |
| Prescription workflow | {{referralTaskId}} |
| Assigned care provider | Nurse, SSIN {{nurseSsin}} |
| Organization assignment | {{organizationTaskId}} |
| Assignment state | In progress |
| Action date | {{executionStartedAt}} |
| Execution start | {{executionStartedAt}} |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Prescription / proposal | `Task.focus` | ````{ "reference": "ServiceRequest/{{serviceRequestId}}" }```` |
| Prescription workflow | `Task.partOf` | ````[ { "reference": "Task/{{referralTaskId}}" } ]```` |
| Assigned care provider | `Task.owner` | ````{ "reference": "PractitionerRole/{{nurseSsin}}-NURSE" }```` |
| Organization assignment | `Task.basedOn` | ````[ { "reference": "Task/{{organizationTaskId}}" } ]```` |
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

