Invariant: ereferral-inv-no-other-selected-value-if-none-is-true
Description: "If 'None' is selected, other boolean questions must be false and implants/other must be empty"
Severity: #error
Expression: "item.where(linkId = 'none').answer.value.ofType(boolean).where($this = true).exists() implies (item.where(linkId != 'none' and linkId != 'implants' and linkId != 'other').answer.value.ofType(boolean).all($this = false) and item.where(linkId = 'implants' or linkId = 'other').answer.empty())"
