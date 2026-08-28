Instance: requesterrole1
InstanceOf: BePractitionerRole
Title: "Physician Requester"
Description: "Physician acting as a Requester"
Usage: #example
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole|2.2.0"
* id = "72101230445-PHYSICIAN"
* practitioner = Reference(Requester1)
* code = $cd-hcparty#persphysician "physician"
