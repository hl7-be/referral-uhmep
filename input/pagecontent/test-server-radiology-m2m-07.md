{% raw %}



### Scenario

<ol>
<li>An eight-year-old boy has headaches after head trauma and requires follow-up after a previous stroke.</li>
<li>The physician assesses the neurological presentation and retains the head MR angiography described in the business narrative.</li>
<li>After age-appropriate safety screening and confirmation of the imaging protocol, the physician creates the prescription. The abdominal scenario from Technical Data is not substituted.</li>
</ol>

Business Data is authoritative: the eight-year-old child, head trauma, stroke follow-up and head MR angiography are retained. Technical Data describes suspected appendicitis and selects abdominal ultrasound (45036003), an incompatible scenario that is not used. Contrast use remains to be confirmed.

### Create Prescription: MR angiography of the head, with or without IV contrast

`POST /ServiceRequest`

Profile: [ereferral-servicerequest-diagnosticimaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.html).

The physician completes imaging safety screening and creates the prescription. Age and sex at birth remain visible as business values, while the contained patient carries encrypted values. Safety answers not supplied by the scenario are runtime inputs, not assumed negative findings. Complete and review them before submitting the completed questionnaire. The representing organization is identified in the requester reference.

#### Business Values

| Business Field | Value |
| --- | --- |
| Patient age | 8 years |
| Sex at birth | Male |
| Examination | MR angiography of the head, with or without IV contrast |
| Clinical indications | Head trauma with headaches<br>Stroke follow-up |
| Clinical context | An eight-year-old child with headaches after head trauma and a history of stroke requires neurological assessment and comparison with the prior stroke baseline. No known drug allergies are reported in the business narrative. |
| Patient | Patient pseudonym: {{SEC1}} / {{transitInfo}} |
| Requester | Physician, SSIN {{prescriberSsin}}, representing organization NIHII {{organizationNihii}} |
| Creation date | {{createdAt}} |
| Validity start | {{validityStartDate}} |
| Priority | {{imagingPriority}} |
| Care setting | {{careTrack}} |
| Diabetes | {{hasDiabetes}} |
| Contrast-agent allergy | No known allergy reported |
| Metallic debris | {{hasMetallicDebris}} |
| Renal dysfunction | {{hasRenalDysfunction}} |
| No imaging attention condition | {{noAttentionCondition}} |

#### FHIR Mapping

<table class="grid test-server-mapping" style="width: 100%; table-layout: fixed;"><thead><tr><th scope="col" style="width: 22%;">Business Field</th><th scope="col" style="width: 28%;">FHIR Field</th><th scope="col">FHIR JSON</th></tr></thead><tbody>
<tr><td style="overflow-wrap: anywhere;">Imaging discipline, prescription type and care setting</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.category</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;363679005&quot;
      }
    ]
  },
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type&quot;,
        &quot;code&quot;: &quot;diagnostic-imaging-appendix-82&quot;
      }
    ]
  },
  {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track&quot;,
        &quot;code&quot;: &quot;{{careTrack}}&quot;
      }
    ]
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Examination and protocol</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.code</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;coding&quot;: [
    {
      &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
      &quot;code&quot;: &quot;417936006&quot;
    }
  ],
  &quot;text&quot;: &quot;urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{imagingDescriptionJwe}}&quot;,
  &quot;_text&quot;: {
    &quot;extension&quot;: [
      {
        &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization&quot;,
        &quot;extension&quot;: [
          {
            &quot;url&quot;: &quot;marker&quot;,
            &quot;valueBoolean&quot;: true
          },
          {
            &quot;url&quot;: &quot;format&quot;,
            &quot;valueCode&quot;: &quot;encrypted&quot;
          },
          {
            &quot;url&quot;: &quot;version&quot;,
            &quot;valuePositiveInt&quot;: 1
          }
        ]
      }
    ]
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Patient age and sex at birth (encrypted)</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.contained (Patient)</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;resourceType&quot;: &quot;Patient&quot;,
  &quot;id&quot;: &quot;patient&quot;,
  &quot;meta&quot;: {
    &quot;profile&quot;: [
      &quot;https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0&quot;
    ]
  },
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth&quot;,
      &quot;valueCodeableConcept&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;http://hl7.org/fhir/administrative-gender&quot;,
            &quot;code&quot;: &quot;other&quot;
          }
        ],
        &quot;extension&quot;: [
          {
            &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content&quot;,
            &quot;extension&quot;: [
              {
                &quot;url&quot;: &quot;encryptedValue&quot;,
                &quot;valueString&quot;: &quot;urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{sexAtBirthJwe}}&quot;
              },
              {
                &quot;url&quot;: &quot;marker&quot;,
                &quot;valueBoolean&quot;: true
              },
              {
                &quot;url&quot;: &quot;format&quot;,
                &quot;valueCode&quot;: &quot;encrypted&quot;
              },
              {
                &quot;url&quot;: &quot;version&quot;,
                &quot;valuePositiveInt&quot;: 1
              }
            ]
          }
        ]
      }
    }
  ],
  &quot;_birthDate&quot;: {
    &quot;extension&quot;: [
      {
        &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content&quot;,
        &quot;extension&quot;: [
          {
            &quot;url&quot;: &quot;encryptedValue&quot;,
            &quot;valueString&quot;: &quot;urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{birthDateJwe}}&quot;
          },
          {
            &quot;url&quot;: &quot;marker&quot;,
            &quot;valueBoolean&quot;: true
          },
          {
            &quot;url&quot;: &quot;format&quot;,
            &quot;valueCode&quot;: &quot;encrypted&quot;
          },
          {
            &quot;url&quot;: &quot;version&quot;,
            &quot;valuePositiveInt&quot;: 1
          }
        ]
      }
    ]
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Patient reference and pseudonym</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.subject</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;identifier&quot;: {
    &quot;use&quot;: &quot;official&quot;,
    &quot;system&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin&quot;,
    &quot;value&quot;: &quot;urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}&quot;,
    &quot;_value&quot;: {
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization&quot;,
          &quot;extension&quot;: [
            {
              &quot;url&quot;: &quot;marker&quot;,
              &quot;valueBoolean&quot;: true
            },
            {
              &quot;url&quot;: &quot;format&quot;,
              &quot;valueCode&quot;: &quot;direct&quot;
            },
            {
              &quot;url&quot;: &quot;version&quot;,
              &quot;valuePositiveInt&quot;: 2
            }
          ]
        }
      ]
    }
  },
  &quot;reference&quot;: &quot;#patient&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Imaging safety screening</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.contained (QuestionnaireResponse)</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;resourceType&quot;: &quot;QuestionnaireResponse&quot;,
  &quot;id&quot;: &quot;safety-checklist&quot;,
  &quot;meta&quot;: {
    &quot;profile&quot;: [
      &quot;https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response&quot;
    ]
  },
  &quot;questionnaire&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions&quot;,
  &quot;status&quot;: &quot;completed&quot;,
  &quot;authored&quot;: &quot;{{createdAt}}&quot;,
  &quot;item&quot;: [
    {
      &quot;linkId&quot;: &quot;diabetes&quot;,
      &quot;answer&quot;: [
        {
          &quot;valueBoolean&quot;: &quot;{{hasDiabetes}}&quot;
        }
      ]
    },
    {
      &quot;linkId&quot;: &quot;allergy-contrast-agent&quot;,
      &quot;answer&quot;: [
        {
          &quot;valueBoolean&quot;: false
        }
      ]
    },
    {
      &quot;linkId&quot;: &quot;metallic-debris&quot;,
      &quot;answer&quot;: [
        {
          &quot;valueBoolean&quot;: &quot;{{hasMetallicDebris}}&quot;
        }
      ]
    },
    {
      &quot;linkId&quot;: &quot;renal-dysfunction&quot;,
      &quot;answer&quot;: [
        {
          &quot;valueBoolean&quot;: &quot;{{hasRenalDysfunction}}&quot;
        }
      ]
    },
    {
      &quot;linkId&quot;: &quot;none&quot;,
      &quot;answer&quot;: [
        {
          &quot;valueBoolean&quot;: &quot;{{noAttentionCondition}}&quot;
        }
      ]
    }
  ]
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Clinical indications and checklist reference</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.supportingInfo</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;reference&quot;: &quot;#safety-checklist&quot;,
    &quot;extension&quot;: [
      {
        &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role&quot;,
        &quot;valueCode&quot;: &quot;safety-checklist&quot;
      }
    ]
  },
  {
    &quot;display&quot;: &quot;Patient condition&quot;,
    &quot;extension&quot;: [
      {
        &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role&quot;,
        &quot;valueCode&quot;: &quot;patient-condition&quot;
      },
      {
        &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept&quot;,
        &quot;valueCodeableConcept&quot;: {
          &quot;text&quot;: &quot;urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{indication1Jwe}}&quot;,
          &quot;_text&quot;: {
            &quot;extension&quot;: [
              {
                &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization&quot;,
                &quot;extension&quot;: [
                  {
                    &quot;url&quot;: &quot;marker&quot;,
                    &quot;valueBoolean&quot;: true
                  },
                  {
                    &quot;url&quot;: &quot;format&quot;,
                    &quot;valueCode&quot;: &quot;encrypted&quot;
                  },
                  {
                    &quot;url&quot;: &quot;version&quot;,
                    &quot;valuePositiveInt&quot;: 1
                  }
                ]
              }
            ]
          }
        }
      }
    ]
  },
  {
    &quot;display&quot;: &quot;Patient condition&quot;,
    &quot;extension&quot;: [
      {
        &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role&quot;,
        &quot;valueCode&quot;: &quot;patient-condition&quot;
      },
      {
        &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept&quot;,
        &quot;valueCodeableConcept&quot;: {
          &quot;text&quot;: &quot;urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{indication2Jwe}}&quot;,
          &quot;_text&quot;: {
            &quot;extension&quot;: [
              {
                &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization&quot;,
                &quot;extension&quot;: [
                  {
                    &quot;url&quot;: &quot;marker&quot;,
                    &quot;valueBoolean&quot;: true
                  },
                  {
                    &quot;url&quot;: &quot;format&quot;,
                    &quot;valueCode&quot;: &quot;encrypted&quot;
                  },
                  {
                    &quot;url&quot;: &quot;version&quot;,
                    &quot;valuePositiveInt&quot;: 1
                  }
                ]
              }
            ]
          }
        }
      }
    ]
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Clinical context</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.reasonCode</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">[
  {
    &quot;text&quot;: &quot;urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{clinicalContextJwe}}&quot;,
    &quot;_text&quot;: {
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization&quot;,
          &quot;extension&quot;: [
            {
              &quot;url&quot;: &quot;marker&quot;,
              &quot;valueBoolean&quot;: true
            },
            {
              &quot;url&quot;: &quot;format&quot;,
              &quot;valueCode&quot;: &quot;encrypted&quot;
            },
            {
              &quot;url&quot;: &quot;version&quot;,
              &quot;valuePositiveInt&quot;: 1
            }
          ]
        }
      ]
    }
  }
]</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Requester</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.requester</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;reference&quot;: &quot;PractitionerRole/{{prescriberSsin}}-PHYSICIAN-NIHII-{{organizationNihii}}&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Validity start</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.extension (be-ext-validity-period)</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;url&quot;: &quot;https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period&quot;,
  &quot;valuePeriod&quot;: {
    &quot;start&quot;: &quot;{{validityStartDate}}&quot;
  }
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Priority</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.priority</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;priority&quot;: &quot;{{imagingPriority}}&quot;
}</code></pre></td></tr>
<tr><td style="overflow-wrap: anywhere;">Creation date</td><td style="overflow-wrap: anywhere;"><code>ServiceRequest.authoredOn</code></td><td><pre style="white-space: pre-wrap; overflow-wrap: anywhere; margin: 0;"><code class="language-json">{
  &quot;authoredOn&quot;: &quot;{{createdAt}}&quot;
}</code></pre></td></tr>
</tbody></table>

#### Complete FHIR Payload

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-servicerequest-diagnosticimaging"
    ],
    "extension": [
      {
        "id": "{{kid}}",
        "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization",
        "extension": [
          {
            "url": "key",
            "valueString": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}",
            "_valueString": {
              "extension": [
                {
                  "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization",
                  "extension": [
                    {
                      "url": "marker",
                      "valueBoolean": true
                    },
                    {
                      "url": "format",
                      "valueCode": "direct"
                    },
                    {
                      "url": "version",
                      "valuePositiveInt": 2
                    }
                  ]
                }
              ]
            }
          }
        ]
      }
    ]
  },
  "contained": [
    {
      "resourceType": "Patient",
      "id": "patient",
      "meta": {
        "profile": [
          "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"
        ]
      },
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-gender-at-birth",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/administrative-gender",
                "code": "other"
              }
            ],
            "extension": [
              {
                "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content",
                "extension": [
                  {
                    "url": "encryptedValue",
                    "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{sexAtBirthJwe}}"
                  },
                  {
                    "url": "marker",
                    "valueBoolean": true
                  },
                  {
                    "url": "format",
                    "valueCode": "encrypted"
                  },
                  {
                    "url": "version",
                    "valuePositiveInt": 1
                  }
                ]
              }
            ]
          }
        }
      ],
      "_birthDate": {
        "extension": [
          {
            "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymized-content",
            "extension": [
              {
                "url": "encryptedValue",
                "valueString": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{birthDateJwe}}"
              },
              {
                "url": "marker",
                "valueBoolean": true
              },
              {
                "url": "format",
                "valueCode": "encrypted"
              },
              {
                "url": "version",
                "valuePositiveInt": 1
              }
            ]
          }
        ]
      }
    },
    {
      "resourceType": "QuestionnaireResponse",
      "id": "safety-checklist",
      "meta": {
        "profile": [
          "https://www.riziv-inami.be/standards/fhir/ereferral/StructureDefinition/ereferral-imaging-attention-conditions-response"
        ]
      },
      "questionnaire": "https://www.ehealth.fgov.be/standards/fhir/drp/Questionnaire/be-questionnaire-imaging-attention-conditions",
      "status": "completed",
      "authored": "{{createdAt}}",
      "item": [
        {
          "linkId": "diabetes",
          "answer": [
            {
              "valueBoolean": "{{hasDiabetes}}"
            }
          ]
        },
        {
          "linkId": "allergy-contrast-agent",
          "answer": [
            {
              "valueBoolean": false
            }
          ]
        },
        {
          "linkId": "metallic-debris",
          "answer": [
            {
              "valueBoolean": "{{hasMetallicDebris}}"
            }
          ]
        },
        {
          "linkId": "renal-dysfunction",
          "answer": [
            {
              "valueBoolean": "{{hasRenalDysfunction}}"
            }
          ]
        },
        {
          "linkId": "none",
          "answer": [
            {
              "valueBoolean": "{{noAttentionCondition}}"
            }
          ]
        }
      ]
    }
  ],
  "extension": [
    {
      "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-validity-period",
      "valuePeriod": {
        "start": "{{validityStartDate}}"
      }
    }
  ],
  "status": "active",
  "intent": "order",
  "priority": "{{imagingPriority}}",
  "category": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "363679005"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
          "code": "diagnostic-imaging-appendix-82"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-request-track",
          "code": "{{careTrack}}"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "417936006"
      }
    ],
    "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{imagingDescriptionJwe}}",
    "_text": {
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization",
          "extension": [
            {
              "url": "marker",
              "valueBoolean": true
            },
            {
              "url": "format",
              "valueCode": "encrypted"
            },
            {
              "url": "version",
              "valuePositiveInt": 1
            }
          ]
        }
      ]
    }
  },
  "subject": {
    "identifier": {
      "use": "official",
      "system": "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value": "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transitInfo}}",
      "_value": {
        "extension": [
          {
            "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization",
            "extension": [
              {
                "url": "marker",
                "valueBoolean": true
              },
              {
                "url": "format",
                "valueCode": "direct"
              },
              {
                "url": "version",
                "valuePositiveInt": 2
              }
            ]
          }
        ]
      }
    },
    "reference": "#patient"
  },
  "authoredOn": "{{createdAt}}",
  "requester": {
    "reference": "PractitionerRole/{{prescriberSsin}}-PHYSICIAN-NIHII-{{organizationNihii}}"
  },
  "reasonCode": [
    {
      "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{clinicalContextJwe}}",
      "_text": {
        "extension": [
          {
            "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization",
            "extension": [
              {
                "url": "marker",
                "valueBoolean": true
              },
              {
                "url": "format",
                "valueCode": "encrypted"
              },
              {
                "url": "version",
                "valuePositiveInt": 1
              }
            ]
          }
        ]
      }
    }
  ],
  "supportingInfo": [
    {
      "reference": "#safety-checklist",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
          "valueCode": "safety-checklist"
        }
      ]
    },
    {
      "display": "Patient condition",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
          "valueCode": "patient-condition"
        },
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
          "valueCodeableConcept": {
            "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{indication1Jwe}}",
            "_text": {
              "extension": [
                {
                  "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization",
                  "extension": [
                    {
                      "url": "marker",
                      "valueBoolean": true
                    },
                    {
                      "url": "format",
                      "valueCode": "encrypted"
                    },
                    {
                      "url": "version",
                      "valuePositiveInt": 1
                    }
                  ]
                }
              ]
            }
          }
        }
      ]
    },
    {
      "display": "Patient condition",
      "extension": [
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-radiology-supporting-info-role",
          "valueCode": "patient-condition"
        },
        {
          "url": "https://www.ehealth.fgov.be/standards/fhir/drp/StructureDefinition/be-ext-codeable-concept",
          "valueCodeableConcept": {
            "text": "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{indication2Jwe}}",
            "_text": {
              "extension": [
                {
                  "url": "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization",
                  "extension": [
                    {
                      "url": "marker",
                      "valueBoolean": true
                    },
                    {
                      "url": "format",
                      "valueCode": "encrypted"
                    },
                    {
                      "url": "version",
                      "valuePositiveInt": 1
                    }
                  ]
                }
              ]
            }
          }
        }
      ]
    }
  ]
}
```

{% endraw %}
