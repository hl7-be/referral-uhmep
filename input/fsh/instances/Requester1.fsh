Instance: Requester1
InstanceOf: BePractitioner
Title: "Physician"
Description: "Example practitioner acting as a requesting physician."
Usage: #example
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner|2.2.0"
* identifier.use = #official
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* identifier.value = "10829059004"
* name[0].use = #official
* name[=].family = "McCoy"
* name[=].given = "Leonard"
* name[+].use = #nickname
* name[=].given = "Bones"
