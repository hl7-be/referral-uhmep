// ----------------------------------------------------------------------------
// Telemonitoring completed status reasons
// ----------------------------------------------------------------------------
CodeSystem: BeCSTelemonitoringCompletedStatusReason
Id: be-cs-telemonitoring-completed-status-reason
Title: "BeCSTelemonitoringCompletedStatusReason"
Description: "Status reasons for a completed telemonitoring ServiceRequest"
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-telemonitoring-completed-status-reason"
* ^status = #draft
* ^content = #complete
* ^caseSensitive = false
* ^experimental = false
* ^property[0].code = #snomed
* ^property[=].description = "Related SNOMED CT concept, when available"
* ^property[=].type = #Coding

* #patient-non-compliant "The patient does not comply with the conditions of telemonitoring."
* #patient-non-compliant ^designation[+].language = #nl-BE
* #patient-non-compliant ^designation[=].value = "De patiënt leeft de voorwaarden van telemonitoring niet na."
* #patient-non-compliant ^designation[+].language = #fr-BE
* #patient-non-compliant ^designation[=].value = "Le patient ne respecte pas les conditions de la télésurveillance."
* #patient-non-compliant ^designation[+].language = #de-BE
* #patient-non-compliant ^designation[=].value = "Der Patient hält die Bedingungen des Telemonitorings nicht ein."
* #patient-deceased "The patient has died."
* #patient-deceased ^designation[+].language = #nl-BE
* #patient-deceased ^designation[=].value = "De patiënt is overleden."
* #patient-deceased ^designation[+].language = #fr-BE
* #patient-deceased ^designation[=].value = "Le patient est décédé."
* #patient-deceased ^designation[+].language = #de-BE
* #patient-deceased ^designation[=].value = "Der Patient ist verstorben."
* #patient-deceased ^property[+].code = #snomed
* #patient-deceased ^property[=].valueCoding = $sct#419099009
* #patient-requested-stop "The patient has decided to stop telemonitoring."
* #patient-requested-stop ^designation[+].language = #nl-BE
* #patient-requested-stop ^designation[=].value = "De patiënt heeft besloten om telemonitoring stop te zetten."
* #patient-requested-stop ^designation[+].language = #fr-BE
* #patient-requested-stop ^designation[=].value = "Le patient a décidé d'arrêter la télésurveillance."
* #patient-requested-stop ^designation[+].language = #de-BE
* #patient-requested-stop ^designation[=].value = "Der Patient hat beschlossen, das Telemonitoring zu beenden."
* #medical-reasons "Telemonitoring is stopped for medical reasons."
* #medical-reasons ^designation[+].language = #nl-BE
* #medical-reasons ^designation[=].value = "De telemonitoring wordt om medische redenen stopgezet."
* #medical-reasons ^designation[+].language = #fr-BE
* #medical-reasons ^designation[=].value = "La télésurveillance est arrêtée pour des raisons médicales."
* #medical-reasons ^designation[+].language = #de-BE
* #medical-reasons ^designation[=].value = "Das Telemonitoring wird aus medizinischen Gründen beendet."
* #patient-stabilised "The patient has stabilised."
* #patient-stabilised ^designation[+].language = #nl-BE
* #patient-stabilised ^designation[=].value = "De patiënt is gestabiliseerd."
* #patient-stabilised ^designation[+].language = #fr-BE
* #patient-stabilised ^designation[=].value = "Le patient est stabilisé."
* #patient-stabilised ^designation[+].language = #de-BE
* #patient-stabilised ^designation[=].value = "Der Patient ist stabilisiert."
* #patient-stabilised ^property[+].code = #snomed
* #patient-stabilised ^property[=].valueCoding = $sct#161901003
* #patient-transplanted "The patient received a transplant."
* #patient-transplanted ^designation[+].language = #nl-BE
* #patient-transplanted ^designation[=].value = "De patiënt kreeg een transplantatie."
* #patient-transplanted ^designation[+].language = #fr-BE
* #patient-transplanted ^designation[=].value = "Le patient a reçu une transplantation."
* #patient-transplanted ^designation[+].language = #de-BE
* #patient-transplanted ^designation[=].value = "Der Patient hat eine Transplantation erhalten."
* #patient-transplanted ^property[+].code = #snomed
* #patient-transplanted ^property[=].valueCoding = $sct#77465005
* #other "Other (free text)."
* #other ^designation[+].language = #nl-BE
* #other ^designation[=].value = "Andere (vrije tekst)."
* #other ^designation[+].language = #fr-BE
* #other ^designation[=].value = "Autre (texte libre)."
* #other ^designation[+].language = #de-BE
* #other ^designation[=].value = "Sonstiges (Freitext)."
