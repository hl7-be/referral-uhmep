Profile: EReferralImagingAttentionConditionsResponse
Parent: BeImagingAttentionConditionsResponse
Id: ereferral-imaging-attention-conditions-response
Description: "eReferral response to the imaging attention conditions questionnaire."
* ^status = #draft

* obeys ereferral-inv-at-least-one-answer
* obeys ereferral-inv-no-other-selected-value-if-none-is-true
* obeys ereferral-inv-answer-value-string-pseudonymized
