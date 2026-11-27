# M2M - Nursing - Assign a prescription to a caregiver from the organization - eReferral Implementation Guide v3.0.2

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **M2M - Nursing - Assign a prescription to a caregiver from the organization**

## M2M - Nursing - Assign a prescription to a caregiver from the organization

### Scenario

An organization assigns the nurse identified by test SSIN {{nurseSsin}} to a prescription already assigned to that organization.

### Assign Internal Nurse

`POST /Task`

Profile: [be-performer-task](https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition-be-performer-task.html).

The organization assignment must already exist. basedOn points to that BeOrganizationTask, while partOf points to the prescription BeReferralTask. The owner reference follows the internal-professional assignment convention documented in the IG.

#### Business Values

| | |
| :--- | :--- |
| Prescription / proposal | {{serviceRequestId}} |
| Prescription workflow | {{referralTaskId}} |
| Assigned care provider | Nurse, SSIN {{nurseSsin}} |
| Organization assignment | {{organizationTaskId}} |
| Assignment state | Assigned |
| Action date | {{assignedAt}} |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Prescription / proposal | `Task.focus` | ````{ "reference": "ServiceRequest/{{serviceRequestId}}" }```` |
| Prescription workflow | `Task.partOf` | ````[ { "reference": "Task/{{referralTaskId}}" } ]```` |
| Assigned care provider | `Task.owner` | ````{ "reference": "PractitionerRole/{{nurseSsin}}-NURSE" }```` |
| Organization assignment | `Task.basedOn` | ````[ { "reference": "Task/{{organizationTaskId}}" } ]```` |
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
  },
  "basedOn": [
    {
      "reference": "Task/{{organizationTaskId}}"
    }
  ]
}

```

