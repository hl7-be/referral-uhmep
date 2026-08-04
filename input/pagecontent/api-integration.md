This page summarizes cross-cutting eReferral FHIR API integration rules that complement the FHIR profiles and examples.

The FHIR artifacts remain the source of truth for resource structure. This page focuses on what an integrator needs around those resources: authentication, identifiers, visibility, validation, and errors. Entry points, required headers, reference documents, support contacts, and certificates are on the [Technical](technical.html) page.

### Authentication and Headers

All protected eReferral API calls require an exchanged eHealth token:

```
Authorization: Bearer <exchanged_ehealth_token>
```

The token exchange is important because the original user token may contain rights or claims (pseudo, identify) that eReferral must not receive directly. The system uses the exchanged token to determine the connected user's SSIN, discipline, role, and, for organizations, organization information such as NIHDI.

To obtain an exchanged token, the integrator must hold a valid eHealth platform certificate that
identifies the initiator of the request. Certificate details, support contacts, required tracing
headers (`User-Agent`, `From`), and API entry points are listed on the
[Technical](technical.html) page.

### Access Control

eReferral applies several layers of access control before processing a request. Full detail — roles,
the INAMI access matrix, suspension effects, and search-filter access control — is on the
[Access Matrix](operation-access-matrix.html) page.

| Layer | Integration impact |
|----|----|
| Role | The connected user is treated as one of:<br>- patient<br>- prescriber<br>- caregiver<br>- organization<br>- restricted healthcare professional |
| Access matrix | The operation must be authorized.<br>- The prescription template must be authorized.<br>- The discipline must be authorized.<br>- Unauthorized combinations return `403 Forbidden`. |
| Suspension | Suspended healthcare professionals have limited access. Some operations are blocked, while retroactive execution registration may remain possible for work done before suspension. |
| Patient privacy | Checks applied depending on the operation:<br>- informed consent<br>- therapeutic relationship<br>- therapeutic exclusion |
| M2M responsibility | In machine-to-machine integrations, some access and privacy checks may remain the responsibility of the calling organization. |

### Resource Identifiers and References

eReferral exposes related actor resources so clients can resolve references used in prescriptions and tasks.

| Resource | Identifier format | Example reference | Notes |
|----|----|----|----|
| `PractitionerRole` | `{SSIN}-{DISCIPLINE}` | `PractitionerRole/82042605839-NURSE` | Discipline is uppercase and spaces are replaced by `_`. |
| Organization-scoped `PractitionerRole` | `{SSIN}-{DISCIPLINE}-NIHII-{nihii11Organization}` | `PractitionerRole/82042605839-NURSE-NIHII-12345678901` | Used when an organization acts on behalf of an internal healthcare professional. The organization is authenticated by an M2M token and eReferral verifies the professional rights (privileges, suspension, therapeutic exclusion, …). |
| `Practitioner` | `{SSIN}` | `Practitioner/82042605839` | Healthcare-professional endpoint |
| `Organization` | `NIHII-{nihii11Organization}` | `Organization/NIHII-94754895940` | Organization type comes from CoBRHA/eHealth-INAMI references. |

Authenticated users may resolve `Practitioner` and `PractitionerRole` references that are
exposed through prescriptions and tasks they are allowed to consult:

```
GET /Practitioner/{SSIN}
GET /PractitionerRole/{SSIN}-{DISCIPLINE}
```

The organization-scoped `PractitionerRole` id uses the **11-digit** NIHII number of the
organization (`{nihii11Organization}`), consistently with the `requester` search filter and the
"internal professional represented by an organization" variant on
[Create a Medical Document](operation-create-medical-document.html).

The `BeReferralTask` created for a medical document (prescription, proposal, …) uses the same logical ID as the related `ServiceRequest` and references it through `Task.focus`.

When an organization creates a medical document on behalf of an internal healthcare professional, `ServiceRequest.requester` must reference the organization-scoped `PractitionerRole`. The organization itself is determined from the exchanged M2M token, while the requester reference identifies the internal professional represented in the clinical workflow.

The organization assignment is represented by a `BeOrganizationTask`, and the internal professional assignment is represented by a `BePerformerTask` whose `basedOn` references that `BeOrganizationTask`.

### Pseudonymization

See [Guidance – Pseudonymization and Free Text](guidance.html#pseudonymization-and-free-text) for
the list of fields that carry patient-specific free text and must be pseudonymized.

Patient SSIN values must be sent as direct pseudonyms in transit:

```text
urn:be:fgov:pseudo:v2:{SEC1}:{transitInfo}
```


Free text must be encrypted and marked with the eHealth pseudonymization extension. Encrypted text references use:

```text
urn:be:fgov:pseudo-encrypted:v1:{kid}:{encrypted-text}
```


The encryption key is carried once in `ServiceRequest.meta` using
`be-ext-key-pseudonymization`. The extension's `id` is the `{kid}` used by encrypted free-text
references:

```json
{
  "meta": {
    "extension": [
      {
        "id": "{kid}",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:{SEC1}:{transitInfo}",
            "_valueString": {
              "extension": [
                {
                  "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization",
                  "extension": [
                    {
                      "url": "marker",
                      "valueBoolean": true
                    },
                    {
                      "url": "format",
                      "valueCode": "direct"
                    },
                    {
                      "url": "version",
                      "valuePositiveInt": 2
                    }
                  ]
                }
              ]
            }
          }
        ]
      }
    ]
  }
}
```

All encrypted free-text fields in the same resource must refer to this matching key identifier.
eReferral rejects resources where encrypted free text has no matching key or where key usage is ambiguous.

The encryption mechanism itself (how the `{encrypted-text}` value is produced) is performed by the
eHealth Pseudonymization service; see the [Technical – Encryption](technical.html#encryption) page.

### Common Validations

| Validation | Rule                                                                                                                         |
|----|------------------------------------------------------------------------------------------------------------------------------|
| Date format | - Dates use `YYYY-MM-DD`.<br>- DateTime values such as `authoredOn` use `YYYY-MM-DDThh:mm:ss+zz:zz`.                         |
| Future timestamps | `authoredOn` and execution dates must not be in the future.                                                                  |
| Template identification | The `ServiceRequest.category[prescriptionType]` code identifies the prescription template and must be present at creation.   |
| Profile conformance | Submitted resources must validate against the correct profile for the prescription type.                                     |
| Prescriber / caregiver | The following must be coherent and resolvable in CoBRHA:<br>- SSIN<br>- discipline<br>- token information                    |
| Organization | NIHDI number and organization type must be coherent and resolvable in CoBRHA.                                                |
| Patient | eReferral verifies the patient and can handle SSIN replacement when searching by patient.                                        |
| Validity period | - `validity.start` must not be more than 5 days before `authoredOn`.<br>- If missing, eReferral may derive it from `authoredOn`. |

### Date and Validity Computation

This section centralizes the date rules referenced by the operation pages.

**Date formats**

- Standard dates use `YYYY-MM-DD`.
- Recorded date/time values such as `authoredOn` use `YYYY-MM-DDThh:mm:ss+zz:zz`
  (for example `2023-05-12T13:37:42+02:00`).
- It is forbidden to create a resource with a timestamp in the future.

**Validity period**

- `validity.start` may be at most 5 days before `authoredOn`.
- If `validity.start` is empty, it is auto-filled with the `authoredOn` date (converted to `YYYY-MM-DD`).
- The maximum `validity.end` depends on the template family
  (see [Prescription Templates – Validity-End Rules](topic-prescription-templates.html#validity-end-rules-per-template)):
  standard nursing = `validity.start` + 2 years − 1 day; 1-year templates = `validity.start` + 1 year;
  end-of-year templates = 31 December of the `validity.start` year.
- Logic: `validity.start <= validity.end <= latest` and `validity.end` (and `latest`) must be `> authoredOn`.
- The `TreatmentValidityEndDate` (`extension[latest]`) is computed and set automatically by the
  backend; for the first nursing iteration, prescribers cannot submit this value themselves
  (the extension is closed with cardinality `0..0` on `eReferralServiceRequestNursing`).

**Execution dates (`Task.executionPeriod`)**

- Execution dates must not be in the future; they may be in the past (for retroactive administrative work).
- If `executionPeriod.start` is in the past:
  - when `authoredOn <= validity.start`, it cannot be before `authoredOn`;
  - when `validity.start < authoredOn`, it cannot be before `validity.start`.
- `executionPeriod.start <= executionPeriod.end` and `executionPeriod.end <= validity.latest`.
- On the first execution start, the backend computes and locks the `TreatmentValidityEndDate`
  for the prescription based on the template rules.

### Visibility Rules

Cancelled prescriptions are strictly restricted:

| Actor | Cancelled prescription visibility                                                                               |
|----|-----------------------------------------------------------------------------------------------------------------|
| Patient | Can see their own cancelled medical documents (prescription, proposal, …).                                      |
| Prescriber | - Can see cancelled prescriptions only if they are the original requester.<br>- Cannot see cancelled proposals. |
| Caregiver | - Cannot see cancelled prescriptions.<br>- Can see cancelled proposals only if they are the original requester. |

Blacklisted prescriptions are normally hidden. They may remain visible when executions already exist, because those executions still need to be processed or audited. The full blacklisting and cancelled-visibility behaviour is on the [Visibility & Blacklisting](topic-visibility-blacklisting.html) page.

### Error Responses

eReferral returns FHIR `OperationOutcome` resources for API errors.

| OperationOutcome field | eReferral usage |
|----|----|
| `issue.severity` | Usually one of:<br>- `error`<br>- `warning` |
| `issue.code` | FHIR issue type, such as:<br>- `business-rule`<br>- `value`<br>- `security`<br>- `forbidden`<br>- `conflict`<br>- `processing` |
| `issue.details.coding.system` | eReferral-defined errors use `urn:uhmep:errors`. |
| `issue.details.coding.code` | eReferral error code. |
| `issue.diagnostics` | Human-readable diagnostic text, including an error id for support tracing. |

The operation-specific catalogue is the
[eReferral API Error Codes workbook](UHMEP_API_ErrorCodes_20260723.xlsx), which is published with this
IG. See [Error Codes](error-codes.html) for workbook contents and filtering guidance.
