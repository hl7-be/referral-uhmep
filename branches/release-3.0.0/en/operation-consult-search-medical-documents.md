# Consult or Search Medical Documents - eReferral Implementation Guide v3.0.2

* [**Table of Contents**](toc.md)
* [**API Operations**](api-operations.md)
* **Consult or Search Medical Documents**

## Consult or Search Medical Documents

This page describes the read and search operations used to retrieve medical documents and their workflow tasks.

### Search Methods

#### Consult One Medical Document

| | |
| :--- | :--- |
| Business operation | Consult a medical document (prescription or proposal) |
| Endpoints | `GET /ServiceRequest/{referenceId}` |
| Successful response | `ServiceRequest` |

```
GET /ServiceRequest/{referenceId}
Authorization: Bearer <exchanged_ehealth_token>
User-Agent: MyCompany/myProduct/1.0
From: support@example.org

```

#### Search for Medical Documents

| | |
| :--- | :--- |
| Business operation | Search medical documents |
| Endpoints | `POST /ServiceRequest/_search` |
| Successful response | `Bundle` |

Use `application/x-www-form-urlencoded` for search criteria.

```
POST /ServiceRequest/_search
Content-Type: application/x-www-form-urlencoded

```

##### Search Filters

Search filters are submitted as `application/x-www-form-urlencoded` key-value pairs in `POST /ServiceRequest/_search`.

| | | | |
| :--- | :--- | :--- | :--- |
| `patient` | Patient pseudonym in transit (domain UHMEP), e.g.`urn:be:fgov:pseudo:v2:{SEC1}:{transitInfo}` | Filter by patient of the prescription. | Active |
| `status` | `{status}` | Filter by prescription status. | Active |
| `statusReason` | `{statusReason}` | Filter by additional information for prescription status. | Active |
| `_has:Task:focus:status-_profile` | `{status}$Profile/be-referral-task` | Filter by summary of execution status. | Active |
| `requester` | `PractitionerRole/{Prescriber SSIN}-{Prescriber discipline}` | Filter by prescriber of the prescription. | Active |
| `_has:Task:focus:owner` | `PractitionerRole/{Caregiver SSIN}-{Caregiver discipline}` | Filter by caregiver assigned to the prescription. | Active |
| `_has:Task:focus:owner` | `Organization/{IdType}-{Id}` | Filter by organization assigned to the prescription. | Active |
| `code` | `{code system}|{template code}` | Filter on the template of the prescription. | To be replaced by`category`with`system=https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type` |
| `intent` | `order`or`proposal` | Separate prescriptions from proposals. | Active |
| `_count` | Integer between`1`and`25` | Page size. The default and maximum are`25`. Values below`1`or above`25`are rejected. | Active |
| `_offset` | Integer | Zero-based result offset. If omitted, it defaults to`0`. | Active |

For Organizations, list visibility is governed by separate authorization for prescription lists and proposal lists. Permission to consult an individual document does not by itself grant access to its list. The backend filters the accessible templates using those list permissions. A template without a matching list permission is excluded. Other roles use their individual document-consultation permissions.

##### Examples

###### Search By Patient And Status

```
POST /ServiceRequest/_search
Content-Type: application/x-www-form-urlencoded

patient=urn%3Abe%3Afgov%3Apseudo%3Av2%3A%7BSEC1%7D%3A%7BtransitInfo%7D&status=active&_count=25&_offset=0

```

###### Search By Short Code And Patient

```
POST /ServiceRequest/_search
Content-Type: application/x-www-form-urlencoded

identifier={shortCode}&patient=urn%3Abe%3Afgov%3Apseudo%3Av2%3A%7BSEC1%7D%3A%7BtransitInfo%7D

```

#### Consult Linked Tasks

| | |
| :--- | :--- |
| Business operation | Consult tasks linked to a medical document |
| Endpoints | `GET /Task?focus={ServiceRequestID}` |
| Successful response | `Bundle` |

To limit the task type, add `_profile`.

```
GET /Task?focus={ServiceRequestID}&_profile=Profile/be-referral-task

```

Other supported task profile filters include:

```
GET /Task?focus={ServiceRequestID}&_profile=Profile/be-performer-task

```

#### Consult The Referral Graph

| | |
| :--- | :--- |
| Business operation | Consult a medical document and all attached resources |
| Endpoints | `GET /ServiceRequest/{id}/$graph?graph={GraphDefinitionURI}` |
| URI | `https://www.ehealth.fgov.be/standards/fhir/referral/GraphDefinition/full-referral-prescription` |
| Successful response | `Bundle` |

This is useful when the client needs the `ServiceRequest`, related tasks, practitioner roles, practitioners and organizations in a single response.

### Allowed Roles

Prescriber, Caregiver, Patient, Organization.

### Visibility

* The `referenceId` must exist in eReferral.
* When searching by short code + patient SSIN, the system replaces any `O`/`o` with `0` to prevent checksum failures.
* Blacklisted prescriptions are returned only when they have at least one execution. Cancelled prescriptions are strictly restricted (caregivers are blocked). See [Visibility & Blacklisting](topic-visibility-blacklisting.md).
* (Prescriber) if suspended, only prescriptions they created are visible.
* (Caregiver) if suspended, only prescriptions they are assigned on or work on are visible.
* (Patient) only prescriptions where they are the subject are visible.
* Search-filter access control depends on the role: see the [Access Matrix](operation-access-matrix.md#search-filter-access-control).

### Possible Error Codes

The errors for this operation are listed in the [eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx). Filter the **Business Operations** or **API endpoint(s)** sheet for the relevant operation or endpoint. See [Error Codes](error-codes.md) for workbook guidance.

### Sequence

Consult Search Medical Documents sequence

