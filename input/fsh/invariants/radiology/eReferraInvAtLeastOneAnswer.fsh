Invariant: ereferral-inv-at-least-one-answer
Description: "At least one attention condition must be answered"
Severity: #error
Expression: "item.where(answer.exists()).exists()"