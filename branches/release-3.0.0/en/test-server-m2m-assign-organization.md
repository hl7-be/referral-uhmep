# M2M - Nursing - Assign a prescription to an organization - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Test Server**](test-server.md)
* **M2M - Nursing - Assign a prescription to an organization**

## M2M - Nursing - Assign a prescription to an organization

### Scenario

Assign the organization identified by NIHII 94175923001 to an existing prescription. Obtain the prescription and its referral task from consultation.

### Assign Organization

`POST /Task`

Profile: [be-organization-task](https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition-be-organization-task.html).

The organization NIHII is fixed by the Word scenario. The prescription and referral task ids are runtime values.

#### Business Values

| | |
| :--- | :--- |
| Prescription / proposal | {{serviceRequestId}} |
| Prescription workflow | {{referralTaskId}} |
| Assigned care provider | Organization, NIHII 94175923001 |
| Assignment state | Assigned |
| Action date | {{assignedAt}} |

#### FHIR Mapping

| | | |
| :--- | :--- | :--- |
| Prescription / proposal | `Task.focus` | ````{ "reference": "ServiceRequest/{{serviceRequestId}}" }```` |
| Prescription workflow | `Task.partOf` | ````[ { "reference": "Task/{{referralTaskId}}" } ]```` |
| Assigned care provider | `Task.owner` | ````{ "reference": "Organization/NIHII-94175923001" }```` |
| Assignment state | `Task.status` | ````{ "status": "ready" }```` |
| Action date | `Task.authoredOn` | ````{ "authoredOn": "{{assignedAt}}" }```` |

#### Complete FHIR Payload

```
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

