Instance: practitioner2
InstanceOf: BePractitioner
Title: "Nurse"
Description: "Example practitioner acting as a nurse."
Usage: #example
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner|2.2.0"
* identifier.use = #official
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* identifier.value = "45094508408"
* name[0].use = #official
* name[=].family = "Chapel"
* name[=].given = "Christopher"
* name[+].use = #nickname
* name[=].given = "Mr.Nurse"
