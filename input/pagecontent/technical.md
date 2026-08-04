This page groups the technical, non-clinical information an integrator needs to connect to the
eReferral API: entry points, required headers, reference documents, support contacts, and certificates. It consolidates information previously scattered across the eReferral cookbook.

### Entry Points

| Purpose | Endpoint / location | Notes |
|----|----|----|
| Capability statement | `GET /metadata` | Public endpoint. Returns the FHIR `CapabilityStatement` for supported resources and operations. |
| API catalogue | [eHealth API Portal](https://portal.api.ehealth.fgov.be/api-details?apiId=4af2be31-3f32-4c49-b4f8-c5e6bb4f0984&managerId=1&swaggerVersion=3.0&type=rest&usage=api&Itemid=171&catalogModuleId=120#overview) | The operational REST/Swagger description is published through the eHealth API Portal. |
| Acceptance portal | `https://portal-acpt.api.ehealth.fgov.be` | Use the portal to find the acceptance eReferral API endpoint. |
| Production portal | `https://portal.api.ehealth.fgov.be` | Use the portal to find the production eReferral API endpoint. |

### Required Headers

Every API request must include tracing headers, in addition to the exchanged token in
`Authorization` (see [API Integration – Authentication and Headers](api-integration.html#authentication-and-headers)):

| Header | Required content |
|----|----|
| `User-Agent` | Software product and technical stack identifier, for example `MyCompany/myProduct/62.310.4 eHealth/Technical/3.19.0`. |
| `From` | Operational contact email address, for example `info@mycompany.be`. |

### eHealth and FHIR References

Referenced eHealth platform documents (these versions or any later ones may be used):

| Title                                                                                                                                                                                                                             | Version | Date | Author | 
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----|----|----|
| eHealth Services – Web Access                                                                                                                                                                                                     | 2.0 | 2018-07-12 | eHealth platform |
| [Identity & Authorization Management (I.AM) Mobile integration](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/9a7dc4d16e58378f81f999fc3a5333448bcdec8b/iam-mobile-integration-tech-specs-v1-13.pdf)                                                                                                                                                                 | 1.7 | 2023-03-31 | eHealth platform |
| [Pseudonymization REST](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/c6094d06e6a7b74d2e3c1a8c93cce78acb2d6359/pseudonymisation-rest-v1-9-1.pdf)                                                                                                                                                                                                         | 1.0 | 2023-04-04 | eHealth platform |
| [Identity & Authorization Management (IAM) eXchange](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/0517c18466c48701d37b6e06c01188fa1b452571/iam-exchange-technical-specifications-v1-3.pdf) | 1.1 | 2024-06-28 | eHealth platform |

The FHIR resources used by eReferral are defined in the HL7 Belgium implementation guide artifacts.
This IG rewrites the federal `Be*` referral profiles to local `eReferral*` profiles
(see [Profile Rewriting](topic-profile-rewriting.html)); the federal source profiles are the
`BeReferralServiceRequest*`, `BeReferralTask`, `BePerformerTask`, `BeOrganizationTask`,
`BePractitionerRole`, and `BePractitioner` structure definitions.

### Support

For issues related to the eReferral API:

| Environment | Contact |
| --- | --- |
| Acceptance (eReferral) | integration-support@ehealth.fgov.be |
| Production (eReferral) | support@ehealth.fgov.be |
| Acceptance (eHealth certificates) | acceptance-certificates@ehealth.fgov.be |
| Production (eHealth certificates) | support@ehealth.fgov.be |

### Certificates

To access the secured eHealth platform environment, each integrator must obtain an eHealth
platform certificate that identifies the initiator of the request. See the eHealth certificate
pages:

- [eHealth certificates (NL)](https://www.ehealth.fgov.be/ehealthplatform/nl/ehealth-certificaten)
- [eHealth certificates (FR)](https://www.ehealth.fgov.be/ehealthplatform/fr/certificats-ehealth)

### Encryption

Encryption of pseudonymized identifiers and free text is performed through the eHealth
Pseudonymization service (see the referenced eHealth "Pseudonymization REST" document above).
