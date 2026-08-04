This page describes the read and search operations used to retrieve medical documents and their workflow tasks.

### Search Methods
#### Consult One Medical Document

| Item | Value                                                 |
| --- |-------------------------------------------------------|
| Business operation | Consult a medical document (prescription or proposal) |
| Endpoints | `GET /ServiceRequest/{referenceId}`                   |
| Successful response | `ServiceRequest`                                      |

```
GET /ServiceRequest/{referenceId}
Authorization: Bearer <exchanged_ehealth_token>
User-Agent: MyCompany/myProduct/1.0
From: support@example.org
```

#### Search for Medical Documents

| Item | Value                          |
| --- |--------------------------------|
| Business operation | Search medical documents       |
| Endpoints | `POST /ServiceRequest/_search` |
| Successful response | `Bundle`   |

Use `application/x-www-form-urlencoded` for search criteria.

```
POST /ServiceRequest/_search
Content-Type: application/x-www-form-urlencoded
```

##### Search Filters

Search filters are submitted as `application/x-www-form-urlencoded` key-value pairs in `POST /ServiceRequest/_search`.

| Filter | Purpose | Status |
|----|----|----|
| `patient` | Filter by patient pseudonym in transit for the eReferral domain. | Active |
| `status` | Filter by FHIR `ServiceRequest.status`; translate from business status first. | Active |
| `statusReason` | Filter by additional prescription status information. | Active |
| `_has:Task:focus:status` with `_profile` | Filter by summary execution/referral-task status. | Active |
| `requester` | Filter by prescriber. Organization-scoped requester references use `PractitionerRole/{SSIN}-{DISCIPLINE}-NIHII-{nihii11Organization}`. | Active |
| `_has:Task:focus:owner` | Filter by assigned caregiver or assigned organization. | Active |
| `code` | Filter by template code using `{system}|{code}`. | To be replaced by `category` with `system=https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type` |
| `intent` | Separate prescriptions (`order`) from proposals (`proposal`). | Active |
| `_count` | Page size. Default and maximum are currently 25. Higher values return an invalid-count error. | Active |
| `_offset` | Zero-based result offset. Defaults to 0. | Active |

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

| Item | Value                                      |
| --- |--------------------------------------------|
| Business operation | Consult tasks linked to a medical document |
| Endpoints | `GET /Task?focus={ServiceRequestID}`       |
| Successful response | `Bundle`                         |

To limit the task type, add `_profile`.

```
GET /Task?focus={ServiceRequestID}&_profile=Profile/be-referral-task
```

Other supported task profile filters include:

```
GET /Task?focus={ServiceRequestID}&_profile=Profile/be-performer-task
```

#### Consult The Referral Graph

| Item | Value                                                                                                                                                                   |
| --- |-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Business operation | Consult a medical document and all attached resources                                                                                                                   |
| Endpoints | `GET /ServiceRequest/{id}/$graph?graph={GraphDefinitionURI}` |
| URI | `https://www.ehealth.fgov.be/standards/fhir/drp/GraphDefinition/full-referral-prescription` |
| Successful response | `Bundle`                                                                                                                                            |

This is useful when the client needs the `ServiceRequest`, related tasks, practitioner roles, practitioners and organizations in a single response.

### Allowed Roles

Prescriber, Caregiver, Patient, Organization.

### Visibility

- The `referenceId` must exist in eReferral.
- When searching by short code + patient SSIN, the system replaces any `O`/`o` with `0` to prevent
  checksum failures.
- Blacklisted prescriptions are returned only when they have at least one execution; cancelled
  prescriptions are strictly restricted (caregivers are blocked). See
  [Visibility & Blacklisting](topic-visibility-blacklisting.html).
- (Prescriber) if suspended, only prescriptions they created are visible.
- (Caregiver) if suspended, only prescriptions they are assigned on or work on are visible.
- (Patient) only prescriptions where they are the subject are visible.
- Search-filter access control depends on the role — see the
  [Access Matrix](operation-access-matrix.html#search-filter-access-control).

### Possible Error Codes

{% include error-codes-reference.md %}

### Sequence

<figure>
  {% include operation-consult-search-medical-documents-sequence.svg %}
  <figcaption>Consult Search Medical Documents sequence</figcaption>
</figure>
