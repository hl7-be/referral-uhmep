# Technical - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* **Technical**

## Technical

This page groups the technical, non-clinical information an integrator needs to connect to the eReferral API: entry points, required headers, reference documents, support contacts, and certificates. It consolidates information previously scattered across the eReferral cookbook.

### Entry Points

| | | |
| :--- | :--- | :--- |
| Capability statement | `GET /metadata` | Public endpoint. Returns the FHIR`CapabilityStatement`for supported resources and operations. |
| API catalogue | [eHealth API Portal](https://portal.api.ehealth.fgov.be/api-details?apiId=4af2be31-3f32-4c49-b4f8-c5e6bb4f0984&managerId=1&swaggerVersion=3.0&type=rest&usage=api&Itemid=171&catalogModuleId=120#overview) | The operational REST/Swagger description is published through the eHealth API Portal. |
| Acceptance portal | `https://portal-acpt.api.ehealth.fgov.be` | Use the portal to find the acceptance eReferral API endpoint. |
| Production portal | `https://portal.api.ehealth.fgov.be` | Use the portal to find the production eReferral API endpoint. |

### Required Headers

Every API request must include tracing headers, in addition to the exchanged token in `Authorization` (see [API Integration – Authentication and Headers](api-integration.md#authentication-and-headers)):

| | |
| :--- | :--- |
| `User-Agent` | Software product and technical stack identifier, for example`MyCompany/myProduct/62.310.4 eHealth/Technical/3.19.0`. |
| `From` | Operational contact email address, for example`info@mycompany.be`. |

### eHealth and FHIR References

Referenced eHealth platform documents (these versions or any later ones may be used):

| | | | |
| :--- | :--- | :--- | :--- |
| eHealth Services – Web Access | 2.0 | 2018-07-12 | eHealth platform |
| [Identity & Authorization Management (I.AM) Mobile integration](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/9a7dc4d16e58378f81f999fc3a5333448bcdec8b/iam-mobile-integration-tech-specs-v1-13.pdf) | 1.7 | 2023-03-31 | eHealth platform |
| [Pseudonymization REST](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/c6094d06e6a7b74d2e3c1a8c93cce78acb2d6359/pseudonymisation-rest-v1-9-1.pdf) | 1.0 | 2023-04-04 | eHealth platform |
| [Identity & Authorization Management (IAM) eXchange](https://ehealth.fgov.be/ehealthplatform/file/cc73d96153bbd5448a56f19d925d05b1379c7f21/0517c18466c48701d37b6e06c01188fa1b452571/iam-exchange-technical-specifications-v1-3.pdf) | 1.1 | 2024-06-28 | eHealth platform |

The FHIR resources used by eReferral are defined in the HL7 Belgium implementation guide artifacts. This IG rewrites the federal `Be*` referral profiles to local `eReferral*` profiles (see [Profile Rewriting](topic-profile-rewriting.md)); the federal source profiles are the `BeReferralServiceRequest*`, `BeReferralTask`, `BePerformerTask`, `BeOrganizationTask`, `BePractitionerRole`, and `BePractitioner` structure definitions.

### Support

For issues related to the eReferral API:

| | |
| :--- | :--- |
| Acceptance (eReferral) | integration-support@ehealth.fgov.be |
| Production (eReferral) | support@ehealth.fgov.be |
| Acceptance (eHealth certificates) | acceptance-certificates@ehealth.fgov.be |
| Production (eHealth certificates) | support@ehealth.fgov.be |

### Certificates

To access the secured eHealth platform environment, each integrator must obtain an eHealth platform certificate that identifies the initiator of the request. See the eHealth certificate pages:

* [eHealth certificates (NL)](https://www.ehealth.fgov.be/ehealthplatform/nl/ehealth-certificaten)
* [eHealth certificates (FR)](https://www.ehealth.fgov.be/ehealthplatform/fr/certificats-ehealth)

### Encryption

Encryption of pseudonymized identifiers and free text is performed through the eHealth Pseudonymization service (see the referenced eHealth “Pseudonymization REST” document above). Encrypted free-text payloads use the JWE value returned by that service and are transported in the wire format documented under [API Integration – Pseudonymization](api-integration.md#pseudonymization). Clear patient-specific text must not be sent alongside the encrypted value.

### Privacy Logging and Execution Traceability

The platform records additional privacy audit information for protected-data processing and keeps the treatment execution history needed to trace execution lifecycle operations. Integrators must send the required identity, authorization, and tracing headers and use the documented Task operations so these events can be attributed correctly. Audit logs are platform records and are not a substitute for FHIR workflow resources returned by the API.

### Implementation Guide Metadata

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.0.2/CodeSystem-ISO3166Part1.html): [BeCSPSSIndication](CodeSystem-be-cs-pss-qsi-indications.md), [BeCSPSSQSIDiagnosticImagingProcedure](CodeSystem-be-cs-pss-qsi-diagnostic-imaging-procedure.md)... Show 18 more, [BeCSRadiologySupportingInfoRole](CodeSystem-be-cs-radiology-supporting-info-role.md), [BeCSeReferralDesignationUse](CodeSystem-be-cs-ereferral-designation-use.md), [BeCSeReferralSnomedDesignation](CodeSystem-be-cs-ereferral-snomed-designation.md), [BeExtCodeableConcept](StructureDefinition-be-ext-codeable-concept.md), [BeRadiologySupportingInfoRole](StructureDefinition-be-ext-radiology-supporting-info-role.md), [BeVSDiagnosticImagingCondition](ValueSet-be-vs-diagnostic-imaging-condition.md), [BeVSDiagnosticImagingProcedure](ValueSet-be-vs-diagnostic-imaging-procedure.md), [BeVSHybridDiagnosticImagingProcedure](ValueSet-be-vs-hybrid-diagnostic-imaging-procedure.md), [BeVSPSSQSIDiagnosticImagingProcedure](ValueSet-be-vs-pss-qsi-diagnostic-imaging-procedure.md), [BeVSPSSQSIIndication](ValueSet-be-vs-pss-qsi-indication.md), [BeVSRadiologySupportingInfoRole](ValueSet-be-vs-radiology-supporting-info-role.md), [BeVSeReferralSnomedDesignation](ValueSet-be-vs-ereferral-snomed-designation.md), [EReferral](index.md), [EReferralAnnex81](StructureDefinition-ereferral-annex-81.md), [EReferralImagingAttentionConditionsResponse](StructureDefinition-ereferral-imaging-attention-conditions-response.md), [EReferralServiceRequestDiagnosticImaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md), [EReferralServiceRequestNursing](StructureDefinition-ereferral-servicerequest-nursing.md) and [EReferralVSImagingPatientConditionIndication](ValueSet-ereferral-vs-imaging-patient-condition-indication.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [ServiceRequest/example-drp-nursing-bloodletting](ServiceRequest-example-drp-nursing-bloodletting.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [BeVSDiagnosticImagingCondition](ValueSet-be-vs-diagnostic-imaging-condition.md), [BeVSDiagnosticImagingProcedure](ValueSet-be-vs-diagnostic-imaging-procedure.md)... Show 29 more, [BeVSeReferralSnomedDesignation](ValueSet-be-vs-ereferral-snomed-designation.md), [EReferralAnnex81](StructureDefinition-ereferral-annex-81.md), [EReferralServiceRequestDiagnosticImaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md), [EReferralServiceRequestNursing](StructureDefinition-ereferral-servicerequest-nursing.md), [ServiceRequest/example-drp-clinical-imaging](ServiceRequest-example-drp-clinical-imaging.md), [ServiceRequest/example-drp-nursing-bloodletting](ServiceRequest-example-drp-nursing-bloodletting.md), [ServiceRequest/example-drp-nursing-chronic-dialysis](ServiceRequest-example-drp-nursing-chronic-dialysis.md), [ServiceRequest/example-drp-nursing-de-convention-center](ServiceRequest-example-drp-nursing-de-convention-center.md), [ServiceRequest/example-drp-nursing-de-within-care-trajectory](ServiceRequest-example-drp-nursing-de-within-care-trajectory.md), [ServiceRequest/example-drp-nursing-de-within-start-trajectory](ServiceRequest-example-drp-nursing-de-within-start-trajectory.md), [ServiceRequest/example-drp-nursing-de-without-care-trajectory](ServiceRequest-example-drp-nursing-de-without-care-trajectory.md), [ServiceRequest/example-drp-nursing-generic](ServiceRequest-example-drp-nursing-generic.md), [ServiceRequest/example-drp-nursing-glycemic-test](ServiceRequest-example-drp-nursing-glycemic-test.md), [ServiceRequest/example-drp-nursing-hygienic-care](ServiceRequest-example-drp-nursing-hygienic-care.md), [ServiceRequest/example-drp-nursing-med-prep-not-refunded](ServiceRequest-example-drp-nursing-med-prep-not-refunded.md), [ServiceRequest/example-drp-nursing-med-preparation-appendix-81](ServiceRequest-example-drp-nursing-med-preparation-appendix-81.md), [ServiceRequest/example-drp-nursing-parameters](ServiceRequest-example-drp-nursing-parameters.md), [ServiceRequest/example-drp-nursing-sampling](ServiceRequest-example-drp-nursing-sampling.md), [ServiceRequest/example-prior-drp-clinical-imaging](ServiceRequest-example-prior-drp-clinical-imaging.md), [ServiceRequest/example-pss-radiology-scenario-01](ServiceRequest-example-pss-radiology-scenario-01.md), [ServiceRequest/example-pss-radiology-scenario-02](ServiceRequest-example-pss-radiology-scenario-02.md), [ServiceRequest/example-pss-radiology-scenario-03](ServiceRequest-example-pss-radiology-scenario-03.md), [ServiceRequest/example-pss-radiology-scenario-04](ServiceRequest-example-pss-radiology-scenario-04.md), [ServiceRequest/example-pss-radiology-scenario-05](ServiceRequest-example-pss-radiology-scenario-05.md), [ServiceRequest/example-pss-radiology-scenario-06](ServiceRequest-example-pss-radiology-scenario-06.md), [ServiceRequest/example-pss-radiology-scenario-07](ServiceRequest-example-pss-radiology-scenario-07.md), [ServiceRequest/example-pss-radiology-scenario-08](ServiceRequest-example-pss-radiology-scenario-08.md), [ServiceRequest/example-pss-radiology-scenario-09](ServiceRequest-example-pss-radiology-scenario-09.md) and [ServiceRequest/example-pss-radiology-scenario-10](ServiceRequest-example-pss-radiology-scenario-10.md)













*There are no Global profiles defined*

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (inami.fhir.be.ereferral.r4)](../package.r4.tgz) and [R4B (inami.fhir.be.ereferral.r4b)](../package.r4b.tgz) are available.

