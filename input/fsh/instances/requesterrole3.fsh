Instance: requesterrole3
InstanceOf: BePractitionerRole
Title: "Urgency Physician Requester"
Description: "Urgency Physician acting as a Requester"
Usage: #example
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole|2.2.0"
* id = "DOCTOR-12009390800"
* practitioner = Reference(practitioner2)
* code = $cd-hcparty#persphysician "physician"
