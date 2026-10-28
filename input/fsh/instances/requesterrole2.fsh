Instance: requesterrole2
InstanceOf: BePractitionerRole
Title: "Nurse Requester"
Description: "Nurse acting as a Requester"
Usage: #example
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole|2.2.0"
* id = "NURSE-45094508408"
* practitioner = Reference(practitioner2)
* code = $cd-hcparty#persnurse "nurse"
