# Example: Telemonitoring prescription for chronic heart failure - eReferral Implementation Guide v4.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example: Telemonitoring prescription for chronic heart failure**

## Example ServiceRequest: Example: Telemonitoring prescription for chronic heart failure

Profile: [eReferralServiceRequestTelemonitoring](StructureDefinition-ereferral-servicerequest-telemonitoring.md)

**BeValidityPeriod**: 2026-05-22 --> 2026-11-22

> **Telemonitoring plan**
* parameter: Body weight (observable entity)
* baseline: [Observation Body weight](Observation-example-telemonitoring-reference-weight.md)
* change: 2 kg (Details: UCUM codekg = 'kg')/3 d (Details: UCUM coded = 'd')
* change: -2 kg (Details: UCUM codekg = 'kg')/3 d (Details: UCUM coded = 'd')

> **Telemonitoring plan**
> **url**parameter
**value**: Systolic blood pressure (observable entity)**range**: 160-?
> **url**threshold
**range**: ?-90
> **url**threshold

> **Telemonitoring plan**
> **url**parameter
**value**: Diastolic blood pressure (observable entity)**range**: 100-?
> **url**threshold
**range**: ?-60
> **url**threshold

> **Telemonitoring plan**
> **url**parameter
**value**: Heart rate (observable entity)**range**: 110-?
> **url**threshold
**range**: ?-50
> **url**threshold

> **Telemonitoring plan**
> **url**parameter
**value**: Pulmonary artery systolic pressure (observable entity)**range**: 50-?
> **url**threshold
**range**: ?-10
> **url**threshold

> **Telemonitoring plan**
> **url**parameter
**value**: Pulmonary artery diastolic pressure (observable entity)**range**: 30-?
> **url**threshold
**range**: ?-5
> **url**threshold

**status**: Active

**intent**: Order

**category**: Cardiology, telemonitoring-chronic-heart-failure

**code**: Telehealth monitoring for chronic heart failure

**subject**: Identifier: [BeSSINNamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html)/urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}} (use: official)

**occurrence**: Once per 1 day

**authoredOn**: 2026-05-22 09:30:00+0200

**requester**: [Physician Example (official) (https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#72101230445 (use: official)): physician](PractitionerRole-72101230445-PHYSICIAN.md)

**reasonCode**: Chronic heart failure

**note**: 

> 

urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-general-remarks}}




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "example-drp-telemonitoring-chronic-heart-failure",
  "meta" : {
    "extension" : [{
      "id" : "{{kid}}",
      "extension" : [{
        "url" : "key",
        "valueString" : "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
        "_valueString" : {
          "extension" : [{
            "extension" : [{
              "url" : "marker",
              "valueBoolean" : true
            },
            {
              "url" : "format",
              "valueCode" : "direct"
            },
            {
              "url" : "version",
              "valuePositiveInt" : 2
            }],
            "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
          }]
        }
      }],
      "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization"
    }],
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/riziv-inami-ereferral/StructureDefinition/ereferral-servicerequest-telemonitoring"]
  },
  "extension" : [{
    "url" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period",
    "valuePeriod" : {
      "start" : "2026-05-22",
      "end" : "2026-11-22"
    }
  },
  {
    "extension" : [{
      "url" : "parameter",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "27113001",
          "display" : "Body weight (observable entity)"
        }]
      }
    },
    {
      "url" : "baseline",
      "valueReference" : {
        "reference" : "Observation/example-telemonitoring-reference-weight"
      }
    },
    {
      "url" : "change",
      "valueRatio" : {
        "numerator" : {
          "value" : 2,
          "system" : "http://unitsofmeasure.org",
          "code" : "kg"
        },
        "denominator" : {
          "value" : 3,
          "system" : "http://unitsofmeasure.org",
          "code" : "d"
        }
      }
    },
    {
      "url" : "change",
      "valueRatio" : {
        "numerator" : {
          "value" : -2,
          "system" : "http://unitsofmeasure.org",
          "code" : "kg"
        },
        "denominator" : {
          "value" : 3,
          "system" : "http://unitsofmeasure.org",
          "code" : "d"
        }
      }
    }],
    "url" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
  },
  {
    "extension" : [{
      "url" : "parameter",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "271649006",
          "display" : "Systolic blood pressure (observable entity)"
        }]
      }
    },
    {
      "extension" : [{
        "url" : "range",
        "valueRange" : {
          "low" : {
            "value" : 160,
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]"
          }
        }
      }],
      "url" : "threshold"
    },
    {
      "extension" : [{
        "url" : "range",
        "valueRange" : {
          "high" : {
            "value" : 90,
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]"
          }
        }
      }],
      "url" : "threshold"
    }],
    "url" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
  },
  {
    "extension" : [{
      "url" : "parameter",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "271650006",
          "display" : "Diastolic blood pressure (observable entity)"
        }]
      }
    },
    {
      "extension" : [{
        "url" : "range",
        "valueRange" : {
          "low" : {
            "value" : 100,
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]"
          }
        }
      }],
      "url" : "threshold"
    },
    {
      "extension" : [{
        "url" : "range",
        "valueRange" : {
          "high" : {
            "value" : 60,
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]"
          }
        }
      }],
      "url" : "threshold"
    }],
    "url" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
  },
  {
    "extension" : [{
      "url" : "parameter",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364075005",
          "display" : "Heart rate (observable entity)"
        }]
      }
    },
    {
      "extension" : [{
        "url" : "range",
        "valueRange" : {
          "low" : {
            "value" : 110,
            "system" : "http://unitsofmeasure.org",
            "code" : "/min"
          }
        }
      }],
      "url" : "threshold"
    },
    {
      "extension" : [{
        "url" : "range",
        "valueRange" : {
          "high" : {
            "value" : 50,
            "system" : "http://unitsofmeasure.org",
            "code" : "/min"
          }
        }
      }],
      "url" : "threshold"
    }],
    "url" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
  },
  {
    "extension" : [{
      "url" : "parameter",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "250768007",
          "display" : "Pulmonary artery systolic pressure (observable entity)"
        }]
      }
    },
    {
      "extension" : [{
        "url" : "range",
        "valueRange" : {
          "low" : {
            "value" : 50,
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]"
          }
        }
      }],
      "url" : "threshold"
    },
    {
      "extension" : [{
        "url" : "range",
        "valueRange" : {
          "high" : {
            "value" : 10,
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]"
          }
        }
      }],
      "url" : "threshold"
    }],
    "url" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
  },
  {
    "extension" : [{
      "url" : "parameter",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "250769004",
          "display" : "Pulmonary artery diastolic pressure (observable entity)"
        }]
      }
    },
    {
      "extension" : [{
        "url" : "range",
        "valueRange" : {
          "low" : {
            "value" : 30,
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]"
          }
        }
      }],
      "url" : "threshold"
    },
    {
      "extension" : [{
        "url" : "range",
        "valueRange" : {
          "high" : {
            "value" : 5,
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]"
          }
        }
      }],
      "url" : "threshold"
    }],
    "url" : "https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-telemonitoring-plan"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394579002"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-prescription-type",
      "code" : "telemonitoring-chronic-heart-failure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "879780004"
    }]
  },
  "subject" : {
    "identifier" : {
      "use" : "official",
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value" : "urn:be:fgov:pseudo:v2:{{SEC1}}:{{transit-info}}",
      "_value" : {
        "extension" : [{
          "extension" : [{
            "url" : "marker",
            "valueBoolean" : true
          },
          {
            "url" : "format",
            "valueCode" : "direct"
          },
          {
            "url" : "version",
            "valuePositiveInt" : 2
          }],
          "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
        }]
      }
    }
  },
  "occurrenceTiming" : {
    "repeat" : {
      "boundsDuration" : {
        "value" : 6,
        "system" : "http://unitsofmeasure.org",
        "code" : "mo"
      },
      "frequency" : 1,
      "period" : 1,
      "periodUnit" : "d"
    }
  },
  "authoredOn" : "2026-05-22T09:30:00+02:00",
  "requester" : {
    "reference" : "PractitionerRole/72101230445-PHYSICIAN"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "48447003",
      "display" : "Chronic heart failure"
    }]
  }],
  "note" : [{
    "extension" : [{
      "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-note-types",
          "code" : "general-remarks"
        }]
      }
    }],
    "text" : "urn:be:fgov:pseudo-encrypted:v1:{{kid}}:{{encrypted-general-remarks}}",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "marker",
          "valueBoolean" : true
        },
        {
          "url" : "format",
          "valueCode" : "encrypted"
        },
        {
          "url" : "version",
          "valuePositiveInt" : 1
        }],
        "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
      }]
    }
  }]
}

```
