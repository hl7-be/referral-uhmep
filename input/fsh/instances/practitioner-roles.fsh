Instance: practitioner-72101230445
InstanceOf: BePractitioner
Title: "Example physician identified by SSIN"
Description: "Example physician referenced by the eReferral examples."
Usage: #example
* id = "72101230445"
* identifier.use = #official
* identifier.system = $be-ns-ssin
* identifier.value = "72101230445"
* name.use = #official
* name.family = "Example"
* name.given = "Physician"

Instance: practitioner-role-72101230445-physician
InstanceOf: BePractitionerRole
Title: "Example physician role"
Description: "Physician role whose identifier follows the {ssin}-{discipline} convention."
Usage: #example
* id = "72101230445-PHYSICIAN"
* practitioner = Reference(practitioner-72101230445)
* code = $cd-hcparty#persphysician "physician"

Instance: practitioner-67120919457
InstanceOf: BePractitioner
Title: "Example nurse identified by SSIN"
Description: "Example nurse referenced by the eReferral examples."
Usage: #example
* id = "67120919457"
* identifier.use = #official
* identifier.system = $be-ns-ssin
* identifier.value = "67120919457"
* name.use = #official
* name.family = "Example"
* name.given = "Nurse"

Instance: practitioner-role-67120919457-nurse
InstanceOf: BePractitionerRole
Title: "Example nurse role"
Description: "Nurse role whose identifier follows the {ssin}-{discipline} convention."
Usage: #example
* id = "67120919457-NURSE"
* practitioner = Reference(practitioner-67120919457)
* code = $cd-hcparty#persnurse "nurse"
