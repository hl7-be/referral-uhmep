Extension: BeRadiologySupportingInfoRole
Id: be-ext-radiology-supporting-info-role
Title: "eReferral Radiology SupportingInfo Role"
Description: "Identifies the role of a ServiceRequest.supportingInfo entry used in a diagnostic imaging referral."
Context: ServiceRequest.supportingInfo
* ^url = "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role"
* value[x] only code
* valueCode from BeVSRadiologySupportingInfoRole (required)
