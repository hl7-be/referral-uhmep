# eReferral Body Site - eReferral Prescription Implementation Guide v1.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral Body Site**

## ValueSet: eReferral Body Site 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-site | *Version*:1.1.1 |
| Active as of 2026-10-28 | *Computable Name*:BeVSBodySite |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright Â© 2002+ International Health Terminology Standards Development Organisation (IHTSDO). | |

 
Anatomical body sites based on SNOMED CT for use in referral prescriptions. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-body-site",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-site",
  "version" : "1.1.1",
  "name" : "BeVSBodySite",
  "title" : "eReferral Body Site",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-28T16:38:41+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be/standards/fhir"
    },
    {
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net"
    }]
  },
  {
    "name" : "Message Structure eHealth",
    "telecom" : [{
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net",
      "use" : "work"
    }]
  }],
  "description" : "Anatomical body sites based on SNOMED CT for use in referral prescriptions.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright Â© 2002+ International Health Terminology Standards Development Organisation (IHTSDO).",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "31640002",
        "display" : "Occipital bone structure"
      },
      {
        "code" : "789699009",
        "display" : "Structure of occipital condyle"
      },
      {
        "code" : "78277001",
        "display" : "Temporal lobe structure"
      },
      {
        "code" : "69536005",
        "display" : "Head structure"
      },
      {
        "code" : "81745001",
        "display" : "Structure of eye proper"
      },
      {
        "code" : "117590005",
        "display" : "Ear structure"
      },
      {
        "code" : "123851003",
        "display" : "Mouth region structure"
      },
      {
        "code" : "45206002",
        "display" : "Nasal structure"
      },
      {
        "code" : "1797002",
        "display" : "Structure of anterior naris"
      },
      {
        "code" : "48477009",
        "display" : "Lip structure"
      },
      {
        "code" : "60819002",
        "display" : "Cheek structure"
      },
      {
        "code" : "51185008",
        "display" : "Thoracic structure"
      },
      {
        "code" : "63337009",
        "display" : "Structure of abdominopelvic segment of trunk"
      },
      {
        "code" : "727234005",
        "display" : "Entire back of trunk"
      },
      {
        "code" : "53120007",
        "display" : "Upper limb structure"
      },
      {
        "code" : "40983000",
        "display" : "Structure of upper limb between shoulder and elbow"
      },
      {
        "code" : "14975008",
        "display" : "Forearm structure"
      },
      {
        "code" : "127949000",
        "display" : "Elbow region structure"
      },
      {
        "code" : "85562004",
        "display" : "Hand structure"
      },
      {
        "code" : "16982005",
        "display" : "Shoulder region structure"
      },
      {
        "code" : "182281004",
        "display" : "Entire lower limb"
      },
      {
        "code" : "78234002",
        "display" : "Shin structure"
      },
      {
        "code" : "72696002",
        "display" : "Knee region structure"
      },
      {
        "code" : "71341001",
        "display" : "Bone structure of femur"
      },
      {
        "code" : "30547004",
        "display" : "Structure of greater trochanter of femur"
      },
      {
        "code" : "87342007",
        "display" : "Bone structure of fibula"
      },
      {
        "code" : "360857004",
        "display" : "Malleolar structure of fibula"
      },
      {
        "code" : "244015008",
        "display" : "Entire calf of leg"
      },
      {
        "code" : "13765007",
        "display" : "Malleolar region structure"
      },
      {
        "code" : "344001",
        "display" : "Ankle region structure"
      },
      {
        "code" : "76853006",
        "display" : "Heel structure"
      },
      {
        "code" : "244187005",
        "display" : "Skin structure over instep of foot"
      },
      {
        "code" : "56459004",
        "display" : "Foot structure"
      },
      {
        "code" : "78883009",
        "display" : "Great toe structure"
      },
      {
        "code" : "55078004",
        "display" : "Second toe structure"
      },
      {
        "code" : "78132007",
        "display" : "Third toe structure"
      },
      {
        "code" : "80349001",
        "display" : "Fourth toe structure"
      },
      {
        "code" : "39915008",
        "display" : "Fifth toe structure"
      },
      {
        "code" : "79601000",
        "display" : "Bone structure of scapula"
      },
      {
        "code" : "85710004",
        "display" : "Bone structure of ischium"
      },
      {
        "code" : "182034009",
        "display" : "Entire iliac crest"
      },
      {
        "code" : "18911002",
        "display" : "Penile structure"
      },
      {
        "code" : "76784001",
        "display" : "Vaginal structure"
      },
      {
        "code" : "53505006",
        "display" : "Anal structure"
      },
      {
        "code" : "52795006",
        "display" : "Forehead structure"
      },
      {
        "code" : "89545001",
        "display" : "Face structure"
      },
      {
        "code" : "45048000",
        "display" : "Neck structure"
      },
      {
        "code" : "76505004",
        "display" : "Thumb structure"
      },
      {
        "code" : "83738005",
        "display" : "Index finger structure"
      },
      {
        "code" : "65531009",
        "display" : "Middle finger structure"
      },
      {
        "code" : "82002001",
        "display" : "Ring finger structure"
      },
      {
        "code" : "12406000",
        "display" : "Little finger structure"
      },
      {
        "code" : "29836001",
        "display" : "Hip region structure"
      },
      {
        "code" : "68367000",
        "display" : "Thigh structure"
      },
      {
        "code" : "30021000",
        "display" : "Structure of lower extremity from knee to ankle"
      },
      {
        "code" : "699698002",
        "display" : "Structure of sacral vertebral column"
      },
      {
        "code" : "66040006",
        "display" : "Bone structure of pubis"
      },
      {
        "code" : "278915007",
        "display" : "Structure of coccygeal vertebral column"
      }]
    }]
  }
}

```
