# eReferral/PSS Diagnostic Imaging Procedure - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eReferral/PSS Diagnostic Imaging Procedure**

## ValueSet: eReferral/PSS Diagnostic Imaging Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diagnostic-imaging-procedure | *Version*:3.0.0 |
| Draft as of 2026-10-29 | *Computable Name*:BeVSDiagnosticImagingProcedure |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO). | |

 
Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT. 

 **References** 

* Included into [Hybrid SNOMED CT and PSS/QSI Diagnostic Imaging Procedure](ValueSet-be-vs-hybrid-diagnostic-imaging-procedure.md)
* [BeServiceRequestDiagnosticImaging](https://build.fhir.org/ig/hl7-be/referral-uhmep/StructureDefinition-be-referral-servicerequest-diagnosticimaging.html)
* [EReferralServiceRequestDiagnosticImaging](StructureDefinition-ereferral-servicerequest-diagnosticimaging.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-diagnostic-imaging-procedure",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-diagnostic-imaging-procedure",
  "version" : "3.0.0",
  "name" : "BeVSDiagnosticImagingProcedure",
  "title" : "eReferral/PSS Diagnostic Imaging Procedure",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-29T06:41:01+00:00",
  "publisher" : "Riziv-Inami Platform",
  "contact" : [{
    "name" : "Riziv-Inami Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.riziv-inami.be/standards/fhir"
    },
    {
      "system" : "email",
      "value" : "support-uhmep@smals.be"
    }]
  },
  {
    "name" : "Message Structure Smals",
    "telecom" : [{
      "system" : "email",
      "value" : "support-uhmep@smals.be",
      "use" : "work"
    }]
  }],
  "description" : "Diagnostic care services that can be prescribed for diagnostic imaging using SNOMED CT.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO).",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "32962002",
        "display" : "Computed tomography of abdomen with contrast (procedure)"
      },
      {
        "code" : "396101000119105",
        "display" : "Computed tomography of abdomen without contrast (procedure)"
      },
      {
        "code" : "16444991000119109",
        "display" : "Computed tomography of kidney, ureter and urinary bladder without contrast (procedure)"
      },
      {
        "code" : "1148701004",
        "display" : "Computed tomography of abdomen and pelvis with intravenous contrast (procedure)"
      },
      {
        "code" : "16457501000119102",
        "display" : "Computed tomography of abdomen and pelvis without contrast (procedure)"
      },
      {
        "code" : "432370003",
        "display" : "Computed tomography of abdomen and pelvis with contrast (procedure)"
      },
      {
        "code" : "30367100",
        "display" : "Computed tomography of abdominal vascular structure with contrast (procedure)"
      },
      {
        "code" : "9521000087109",
        "display" : "Computed tomography angiography of abdominal artery and pelvic artery with contrast (procedure)"
      },
      {
        "code" : "15391000087101",
        "display" : "Computed tomography angiography of abdomen, pelvis and lower limb with contrast (procedure)"
      },
      {
        "code" : "444970007",
        "display" : "Computed tomography angiography of thoracic aorta with contrast (procedure)"
      },
      {
        "code" : "16332841000119106",
        "display" : "Computed tomography angiography of pulmonary artery with contrast (procedure)"
      },
      {
        "code" : "411251000119104",
        "display" : "Computed tomography angiography of chest with contrast (procedure)"
      },
      {
        "code" : "16326461000119108",
        "display" : "Computed tomography angiography of chest and abdomen with contrast (procedure)"
      },
      {
        "code" : "16462121000119108",
        "display" : "Computed tomography angiography of thorax and abdomen and pelvis with contrast (procedure)"
      },
      {
        "code" : "582101000119108",
        "display" : "Computed tomography angiography of head with contrast (procedure)"
      },
      {
        "code" : "702430003",
        "display" : "Computed tomography angiography of head and neck with contrast (procedure)"
      },
      {
        "code" : "419545005",
        "display" : "Computed tomography angiography of coronary artery with contrast (procedure)"
      },
      {
        "code" : "712809006",
        "display" : "Computed tomography angiography of lower limb with contrast (procedure)"
      },
      {
        "code" : "702435008",
        "display" : "Computed tomography angiography of vascular structure of neck with contrast (procedure)"
      },
      {
        "code" : "709767008",
        "display" : "Computed tomography of vascular structure of pelvis with contrast (procedure)"
      },
      {
        "code" : "710305000",
        "display" : "Computed tomography angiography of pelvis and lower limb with contrast (procedure)"
      },
      {
        "code" : "443426000",
        "display" : "Computed tomography angiography of vascular structure of spine with contrast (procedure)"
      },
      {
        "code" : "419277007",
        "display" : "Computed tomography angiography of artery of upper limb with contrast (procedure)"
      },
      {
        "code" : "1331946003",
        "display" : "Computed tomography with contrast (procedure)"
      },
      {
        "code" : "399331006",
        "display" : "Computed tomography without contrast (procedure)"
      },
      {
        "code" : "241588009",
        "display" : "Computed tomography arthrogram of ankle (procedure)"
      },
      {
        "code" : "241586008",
        "display" : "Computed tomography arthrogram of hip (procedure)"
      },
      {
        "code" : "241587004",
        "display" : "Computed tomography arthrogram of knee (procedure)"
      },
      {
        "code" : "241584006",
        "display" : "Computed tomography arthrogram of elbow (procedure)"
      },
      {
        "code" : "241583000",
        "display" : "Computed tomography arthrogram of shoulder (procedure)"
      },
      {
        "code" : "241585007",
        "display" : "Computed tomography arthrogram of wrist (procedure)"
      },
      {
        "code" : "504981000119108",
        "display" : "Computed tomography of heart without contrast with calcium scoring (procedure)"
      },
      {
        "code" : "417973009",
        "display" : "Computed tomography of acromioclavicular joint (procedure)"
      },
      {
        "code" : "702493004",
        "display" : "Computed tomography of clavicle with contrast (procedure)"
      },
      {
        "code" : "432552002",
        "display" : "Computed tomography of clavicle (procedure)"
      },
      {
        "code" : "16335031000119103",
        "display" : "High resolution computed tomography of chest without contrast (procedure)"
      },
      {
        "code" : "702506003",
        "display" : "Computed tomography of sternoclavicular joint with contrast (procedure)"
      },
      {
        "code" : "492661000119109",
        "display" : "Computed tomography of sternoclavicular joint without contrast (procedure)"
      },
      {
        "code" : "702507007",
        "display" : "Computed tomography of sternum with contrast (procedure)"
      },
      {
        "code" : "16334791000119101",
        "display" : "Computed tomography of sternum without contrast (procedure)"
      },
      {
        "code" : "75385009",
        "display" : "Computed tomography of thorax with contrast (procedure)"
      },
      {
        "code" : "868213000",
        "display" : "Computed tomography of chest and upper abdomen with contrast (procedure)"
      },
      {
        "code" : "395081000119108",
        "display" : "Computed tomography of chest without contrast (procedure)"
      },
      {
        "code" : "868212005",
        "display" : "Computed tomography of chest and upper abdomen (procedure)"
      },
      {
        "code" : "16334891000119106",
        "display" : "Low dose computed tomography of chest without contrast (procedure)"
      },
      {
        "code" : "429864007",
        "display" : "Computed tomography of thorax and abdomen with contrast (procedure)"
      },
      {
        "code" : "427101000119106",
        "display" : "Computed tomography of chest and abdomen without contrast (procedure)"
      },
      {
        "code" : "1148700003",
        "display" : "Computed tomography of thorax, abdomen and pelvis with intravenous contrast (procedure)"
      },
      {
        "code" : "393161000119104",
        "display" : "Computed tomography of chest, abdomen and pelvis without contrast (procedure)"
      },
      {
        "code" : "1343578009",
        "display" : "Computed tomography of ventricle of brain with contrast (procedure)"
      },
      {
        "code" : "418714002",
        "display" : "Virtual computed tomography colonoscopy (procedure)"
      },
      {
        "code" : "718286004",
        "display" : "Cone beam computed tomography of bone structure of face (procedure)"
      },
      {
        "code" : "1380331007",
        "display" : "Computed tomography cystography with intravenous contrast (procedure)"
      },
      {
        "code" : "1251643002",
        "display" : "Computed tomography discography with injection of contrast into intervertebral disc of lumbar spine (procedure)"
      },
      {
        "code" : "383941000119102",
        "display" : "Computed tomography of knee without contrast (procedure)"
      },
      {
        "code" : "431214001",
        "display" : "Computed tomography enteroclysis (procedure)"
      },
      {
        "code" : "715970002",
        "display" : "Computed tomography of small intestine with contrast (procedure)"
      },
      {
        "code" : "16439801000119108",
        "display" : "Computed tomography of heart with contrast for cardiac structure and morphology (procedure)"
      },
      {
        "code" : "702505004",
        "display" : "Computed tomography of mastoid with contrast (procedure)"
      },
      {
        "code" : "388131000119100",
        "display" : "Computed tomography of mastoid without contrast (procedure)"
      },
      {
        "code" : "429852004",
        "display" : "Computed tomography of orbit with contrast (procedure)"
      },
      {
        "code" : "383381000119106",
        "display" : "Computed tomography of orbit without contrast (procedure)"
      },
      {
        "code" : "700246004",
        "display" : "Computed tomography of temporal bone with contrast (procedure)"
      },
      {
        "code" : "527231000119104",
        "display" : "Computed tomography of temporal bone without contrast (procedure)"
      },
      {
        "code" : "711232001",
        "display" : "Computed tomography of head with contrast (procedure)"
      },
      {
        "code" : "383371000119108",
        "display" : "Computed tomography of head without contrast (procedure)"
      },
      {
        "code" : "448335009",
        "display" : "Computed tomography of head and neck with contrast (procedure)"
      },
      {
        "code" : "429858000",
        "display" : "Computed tomography of head and neck (procedure)"
      },
      {
        "code" : "241547009",
        "display" : "Computed tomography of heart (procedure)"
      },
      {
        "code" : "702491002",
        "display" : "Computed tomography of ankle with contrast (procedure)"
      },
      {
        "code" : "566341000119106",
        "display" : "Computed tomography of ankle without contrast (procedure)"
      },
      {
        "code" : "702495006",
        "display" : "Computed tomography of foot with contrast (procedure)"
      },
      {
        "code" : "566321000119100",
        "display" : "Computed tomography of foot without contrast (procedure)"
      },
      {
        "code" : "702492009",
        "display" : "Computed tomography of calcaneum with contrast (procedure)"
      },
      {
        "code" : "420145009",
        "display" : "Computed tomography of calcaneum (procedure)"
      },
      {
        "code" : "431665001",
        "display" : "Computed tomography of hip with contrast (procedure)"
      },
      {
        "code" : "1371579003",
        "display" : "Computed tomography of hip without contrast (procedure)"
      },
      {
        "code" : "1741000087107",
        "display" : "Computed tomography of bilateral hips with contrast (procedure)"
      },
      {
        "code" : "384471000119103",
        "display" : "Computed tomography of bilateral hips without contrast (procedure)"
      },
      {
        "code" : "702501008",
        "display" : "Computed tomography of knee with contrast (procedure)"
      },
      {
        "code" : "430436009",
        "display" : "Computed tomography of lower leg with contrast (procedure)"
      },
      {
        "code" : "383931000119106",
        "display" : "Computed tomography of lower leg without contrast (procedure)"
      },
      {
        "code" : "430432006",
        "display" : "Computed tomography of thigh with contrast (procedure)"
      },
      {
        "code" : "241572009",
        "display" : "Computed tomography of thigh (procedure)"
      },
      {
        "code" : "429853009",
        "display" : "Computed tomography of toe (procedure)"
      },
      {
        "code" : "431492000",
        "display" : "Computed tomography of paranasal sinuses with contrast (procedure)"
      },
      {
        "code" : "383471000119101",
        "display" : "Computed tomography of paranasal sinus without contrast (procedure)"
      },
      {
        "code" : "83788002",
        "display" : "Computed tomography of maxillofacial area with contrast (procedure)"
      },
      {
        "code" : "572021000119109",
        "display" : "Computed tomography of maxillofacial area without contrast (procedure)"
      },
      {
        "code" : "241589001",
        "display" : "Computed tomography myelogram (procedure)"
      },
      {
        "code" : "241590005",
        "display" : "Computed tomography myelogram of cervical region (procedure)"
      },
      {
        "code" : "241591009",
        "display" : "Computed tomography myelogram of thoracic region (procedure)"
      },
      {
        "code" : "241592002",
        "display" : "Computed tomography myelogram of lumbar region (procedure)"
      },
      {
        "code" : "431326009",
        "display" : "Computed tomography of neck with contrast (procedure)"
      },
      {
        "code" : "169068008",
        "display" : "Computed tomography of neck (procedure)"
      },
      {
        "code" : "429927002",
        "display" : "Computed tomography of neck and thorax with contrast (procedure)"
      },
      {
        "code" : "393091000119105",
        "display" : "Computed tomography of neck and chest without contrast (procedure)"
      },
      {
        "code" : "709547001",
        "display" : "Computed tomography arthrography of sacroiliac joint with contrast (procedure)"
      },
      {
        "code" : "418618007",
        "display" : "Computed tomography of sacroiliac joints (procedure)"
      },
      {
        "code" : "74710000",
        "display" : "Computed tomography of pelvis with contrast (procedure)"
      },
      {
        "code" : "395771000119107",
        "display" : "Computed tomography of pelvis without contrast (procedure)"
      },
      {
        "code" : "709698004",
        "display" : "Computed tomography of lumbar spine and sacroiliac joint with contrast (procedure)"
      },
      {
        "code" : "702523007",
        "display" : "Computed tomography of lumbar spine and sacroiliac joints (procedure)"
      },
      {
        "code" : "433111008",
        "display" : "Computed tomography of brain perfusion (procedure)"
      },
      {
        "code" : "22059005",
        "display" : "Computed tomography bone density study (procedure)"
      },
      {
        "code" : "241599006",
        "display" : "Digital slit-beam radiograph of leg length (procedure)"
      },
      {
        "code" : "762008",
        "display" : "Computed tomography of cervical spine with contrast (procedure)"
      },
      {
        "code" : "572061000119104",
        "display" : "Computed tomography of cervical spine without contrast (procedure)"
      },
      {
        "code" : "241577003",
        "display" : "Computed tomography of spine (procedure)"
      },
      {
        "code" : "90523008",
        "display" : "Computed tomography of lumbar vertebral column with contrast (procedure)"
      },
      {
        "code" : "572091000119106",
        "display" : "Computed tomography of lumbar spine without contrast (procedure)"
      },
      {
        "code" : "723646000",
        "display" : "Computed tomography of lumbar and sacral spine with contrast (procedure)"
      },
      {
        "code" : "711224009",
        "display" : "Computed tomography of lumbar and sacral spine (procedure)"
      },
      {
        "code" : "430452007",
        "display" : "Computed tomography of sacral spine with contrast (procedure)"
      },
      {
        "code" : "241581003",
        "display" : "Computed tomography of sacral spine (procedure)"
      },
      {
        "code" : "113105001",
        "display" : "Computed tomography of thoracic spine with contrast (procedure)"
      },
      {
        "code" : "572081000119108",
        "display" : "Computed tomography of thoracic spine without contrast (procedure)"
      },
      {
        "code" : "702488002",
        "display" : "Computed tomography of thoracic and lumbar spine with contrast (procedure)"
      },
      {
        "code" : "702487007",
        "display" : "Computed tomography of thoracic and lumbar spine (procedure)"
      },
      {
        "code" : "429859008",
        "display" : "Computed tomography of whole spine with contrast (procedure)"
      },
      {
        "code" : "429875006",
        "display" : "Computed tomography of whole spine (procedure)"
      },
      {
        "code" : "26946001",
        "display" : "Computed tomography of upper extremity with contrast (procedure)"
      },
      {
        "code" : "394491000119101",
        "display" : "Computed tomography of upper limb without contrast (procedure)"
      },
      {
        "code" : "702494005",
        "display" : "Computed tomography of elbow with contrast (procedure)"
      },
      {
        "code" : "16335961000119107",
        "display" : "Computed tomography of elbow without contrast (procedure)"
      },
      {
        "code" : "429924009",
        "display" : "Computed tomography of finger (procedure)"
      },
      {
        "code" : "431621009",
        "display" : "Computed tomography of forearm with contrast (procedure)"
      },
      {
        "code" : "241567000",
        "display" : "Computed tomography of forearm (procedure)"
      },
      {
        "code" : "702647009",
        "display" : "Computed tomography of hand with contrast (procedure)"
      },
      {
        "code" : "241569002",
        "display" : "Computed tomography of hand (procedure)"
      },
      {
        "code" : "712738001",
        "display" : "Computed tomography of scapula with contrast (procedure)"
      },
      {
        "code" : "432665004",
        "display" : "Computed tomography of scapula (procedure)"
      },
      {
        "code" : "429854003",
        "display" : "Computed tomography of shoulder with contrast (procedure)"
      },
      {
        "code" : "383761000119101",
        "display" : "Computed tomography of shoulder without contrast (procedure)"
      },
      {
        "code" : "430431004",
        "display" : "Computed tomography of thumb (procedure)"
      },
      {
        "code" : "702512008",
        "display" : "Computed tomography of wrist with contrast (procedure)"
      },
      {
        "code" : "2751000087101",
        "display" : "Computed tomography of bilateral wrists with contrast (procedure)"
      },
      {
        "code" : "383771000119107",
        "display" : "Computed tomography of wrist without contrast (procedure)"
      },
      {
        "code" : "2741000087104",
        "display" : "Computed tomography of bilateral wrists (procedure)"
      },
      {
        "code" : "440494008",
        "display" : "Computed tomography of urinary tract with contrast (procedure)"
      },
      {
        "code" : "431676002",
        "display" : "Computed tomography venography with contrast (procedure)"
      },
      {
        "code" : "772247005",
        "display" : "Computed tomography venography of vein of lower limb with contrast (procedure)"
      },
      {
        "code" : "440496005",
        "display" : "Dual energy X-ray absorptiometry of whole body (procedure)"
      },
      {
        "code" : "439477003",
        "display" : "Dual energy X-ray absorptiometry of neck of femur (procedure)"
      },
      {
        "code" : "429529009",
        "display" : "Dual energy X-ray absorptiometry of bone of hip joint region (procedure)"
      },
      {
        "code" : "708690003",
        "display" : "Dual energy X-ray absorptiometry of bone of spine (procedure)"
      },
      {
        "code" : "726548004",
        "display" : "Dual energy X-ray absorptiometry of bone of lateral spine (procedure)"
      },
      {
        "code" : "413841000119101",
        "display" : "Dual energy X-ray absorptiometry of bone of hip joint region and bone of spine (procedure)"
      },
      {
        "code" : "1345129006",
        "display" : "Dual energy X-ray absorptiometry of bone of lumbar vertebra (procedure)"
      },
      {
        "code" : "174651007",
        "display" : "Endoscopic retrograde pancreatography using fluoroscopic guidance with contrast (procedure)"
      },
      {
        "code" : "418462009",
        "display" : "Fluoroscopic antegrade pyelography (procedure)"
      },
      {
        "code" : "419644004",
        "display" : "Fluoroscopic urethrography with contrast (procedure)"
      },
      {
        "code" : "1343711006",
        "display" : "Fluoroscopy of upper gastrointestinal tract with barium contrast (procedure)"
      },
      {
        "code" : "384041000119100",
        "display" : "Fluoroscopy of esophagus with barium (procedure)"
      },
      {
        "code" : "82327001",
        "display" : "Cardiac fluoroscopy (procedure)"
      },
      {
        "code" : "38930009",
        "display" : "Fluoroscopy of chest (procedure)"
      },
      {
        "code" : "711421003",
        "display" : "Fluoroscopic contrast enema (procedure)"
      },
      {
        "code" : "418135007",
        "display" : "Fluoroscopic cystography with contrast (procedure)"
      },
      {
        "code" : "418253005",
        "display" : "Fluoroscopic defecating proctography (procedure)"
      },
      {
        "code" : "1372723000",
        "display" : "Fluoroscopy of lower gastrointestinal tract with barium and air contrast enema (procedure)"
      },
      {
        "code" : "419108008",
        "display" : "Fluoroscopic pharyngography (procedure)"
      },
      {
        "code" : "241162004",
        "display" : "Small bowel barium enema (procedure)"
      },
      {
        "code" : "418919001",
        "display" : "Fluoroscopy of lower limb (procedure)"
      },
      {
        "code" : "431241006",
        "display" : "Fluoroscopy of genitourinary system with contrast (procedure)"
      },
      {
        "code" : "418880005",
        "display" : "Fluoroscopy of hip (procedure)"
      },
      {
        "code" : "418120006",
        "display" : "Fluoroscopic hysterosalpingography with contrast (procedure)"
      },
      {
        "code" : "702589008",
        "display" : "Fluoroscopic pyelography with intravenous contrast (procedure)"
      },
      {
        "code" : "418219006",
        "display" : "Fluoroscopic arthrography of knee (procedure)"
      },
      {
        "code" : "419407006",
        "display" : "Fluoroscopic ileal conduitography (procedure)"
      },
      {
        "code" : "1343705008",
        "display" : "Fluoroscopy of pharynx and cervical esophagus with contrast (procedure)"
      },
      {
        "code" : "1380321000",
        "display" : "Fluoroscopic retrograde cystography with contrast (procedure)"
      },
      {
        "code" : "418766006",
        "display" : "Fluoroscopic retrograde pyelography with contrast (procedure)"
      },
      {
        "code" : "702588000",
        "display" : "Fluoroscopic retrograde urethrography with contrast (procedure)"
      },
      {
        "code" : "702984009",
        "display" : "Fluoroscopy of upper gastrointestinal tract and small bowel follow through (procedure)"
      },
      {
        "code" : "1351227004",
        "display" : "Fluoroscopic barium enema (procedure)"
      },
      {
        "code" : "384051000119103",
        "display" : "Fluoroscopy of esophagus with contrast (procedure)"
      },
      {
        "code" : "418206007",
        "display" : "Fluoroscopic sinography with contrast (procedure)"
      },
      {
        "code" : "430471009",
        "display" : "Fluoroscopy of ankle (procedure)"
      },
      {
        "code" : "419664009",
        "display" : "Fluoroscopy of upper gastrointestinal tract (procedure)"
      },
      {
        "code" : "419245009",
        "display" : "Fluoroscopic micturating cystourethrography with contrast (procedure)"
      },
      {
        "code" : "418867007",
        "display" : "Fluoroscopic angiography of abdominal vascular structure with contrast (procedure)"
      },
      {
        "code" : "420031001",
        "display" : "Fluoroscopic angiography of abdominal aorta with contrast (procedure)"
      },
      {
        "code" : "420013002",
        "display" : "Fluoroscopic angiography of renal artery with contrast (procedure)"
      },
      {
        "code" : "79516005",
        "display" : "Angiography of renal artery (procedure)"
      },
      {
        "code" : "241234000",
        "display" : "Angiography of abdominal blood vessel (procedure)"
      },
      {
        "code" : "303941006",
        "display" : "Fluoroscopy of abdomen (procedure)"
      },
      {
        "code" : "1340201004",
        "display" : "Fluoroscopic angiography of abdominal aorta and bilateral iliac and femoral arteries with contrast (procedure)"
      },
      {
        "code" : "712975003",
        "display" : "Fluoroscopic angiography of artery of abdomen with contrast (procedure)"
      },
      {
        "code" : "15771000087104",
        "display" : "Fluoroscopic angiography of artery of abdomen and femoral artery with contrast (procedure)"
      },
      {
        "code" : "710339001",
        "display" : "Fluoroscopic angiography of chest with contrast (procedure)"
      },
      {
        "code" : "418214001",
        "display" : "Fluoroscopic angiography of thoracic aorta with contrast (procedure)"
      },
      {
        "code" : "418110001",
        "display" : "Fluoroscopic angiography of bronchial artery with contrast (procedure)"
      },
      {
        "code" : "418549007",
        "display" : "Fluoroscopic angiography of pulmonary artery with contrast (procedure)"
      },
      {
        "code" : "419177004",
        "display" : "Fluoroscopic angiography of right side of heart with contrast (procedure)"
      },
      {
        "code" : "419802007",
        "display" : "Fluoroscopic angiography of aorta with contrast (procedure)"
      },
      {
        "code" : "419364000",
        "display" : "Fluoroscopic angiography of cerebral artery with contrast (procedure)"
      },
      {
        "code" : "710317003",
        "display" : "Fluoroscopic angiography of head with contrast (procedure)"
      },
      {
        "code" : "1396535008",
        "display" : "Angiography of artery of head and/or neck and/or brain (procedure)"
      },
      {
        "code" : "1343469001",
        "display" : "Fluoroscopic selective angiocardiography with contrast (procedure)"
      },
      {
        "code" : "419416005",
        "display" : "Fluoroscopic angiography of coronary artery with contrast (procedure)"
      },
      {
        "code" : "418903008",
        "display" : "Fluoroscopic angiography of left ventricle and coronary artery with contrast (procedure)"
      },
      {
        "code" : "418994005",
        "display" : "Fluoroscopic angiography of lower limb artery with contrast (procedure)"
      },
      {
        "code" : "710308003",
        "display" : "Fluoroscopic angiography of neck with contrast (procedure)"
      },
      {
        "code" : "419658002",
        "display" : "Fluoroscopic angiography of pelvic vascular structure with contrast (procedure)"
      },
      {
        "code" : "7576008",
        "display" : "Selective angiography of blood vessel of spine (procedure)"
      },
      {
        "code" : "418986003",
        "display" : "Fluoroscopic angiography of upper limb artery with contrast (procedure)"
      },
      {
        "code" : "418410007",
        "display" : "Fluoroscopic angiography of axillary artery with contrast (procedure)"
      },
      {
        "code" : "420040002",
        "display" : "Fluoroscopic angiography with contrast (procedure)"
      },
      {
        "code" : "241203004",
        "display" : "Arthrography of ankle joint (procedure)"
      },
      {
        "code" : "168918009",
        "display" : "Arthrography of hip joint (procedure)"
      },
      {
        "code" : "168908004",
        "display" : "Arthrography of knee joint (procedure)"
      },
      {
        "code" : "79092002",
        "display" : "Arthrography of shoulder (procedure)"
      },
      {
        "code" : "303776003",
        "display" : "Arthrogram of shoulder girdle and upper limb joint (procedure)"
      },
      {
        "code" : "46822003",
        "display" : "Arthrography of wrist (procedure)"
      },
      {
        "code" : "91602002",
        "display" : "Thoracentesis (procedure)"
      },
      {
        "code" : "14766002",
        "display" : "Aspiration (procedure)"
      },
      {
        "code" : "281809009",
        "display" : "Aspiration of hip joint (procedure)"
      },
      {
        "code" : "281810004",
        "display" : "Aspiration of knee joint (procedure)"
      },
      {
        "code" : "419791000",
        "display" : "Ultrasound scan and aspiration of pelvis (procedure)"
      },
      {
        "code" : "702459003",
        "display" : "Aspiration of upper limb using fluoroscopic guidance (procedure)"
      },
      {
        "code" : "281808001",
        "display" : "Aspiration of elbow joint (procedure)"
      },
      {
        "code" : "432107006",
        "display" : "Aspiration of hand using ultrasound guidance (procedure)"
      },
      {
        "code" : "431983006",
        "display" : "Aspiration of shoulder using ultrasound guidance (procedure)"
      },
      {
        "code" : "432629009",
        "display" : "Aspiration of wrist using ultrasound guidance (procedure)"
      },
      {
        "code" : "48426002",
        "display" : "Fine needle biopsy of kidney (procedure)"
      },
      {
        "code" : "92691000112101",
        "display" : "Biopsy of abdomen (procedure)"
      },
      {
        "code" : "274371008",
        "display" : "Biopsy of adrenal gland (procedure)"
      },
      {
        "code" : "438813007",
        "display" : "Biopsy of kidney using ultrasound guidance (procedure)"
      },
      {
        "code" : "86259008",
        "display" : "Biopsy of liver (procedure)"
      },
      {
        "code" : "7246002",
        "display" : "Kidney biopsy (procedure)"
      },
      {
        "code" : "86273004",
        "display" : "Biopsy (procedure)"
      },
      {
        "code" : "213079008",
        "display" : "Biopsy of thorax (procedure)"
      },
      {
        "code" : "269612002",
        "display" : "Biopsy of femur (procedure)"
      },
      {
        "code" : "81899004",
        "display" : "Biopsy of fallopian tube (procedure)"
      },
      {
        "code" : "723686008",
        "display" : "Biopsy of prostate using magnetic resonance imaging guidance (procedure)"
      },
      {
        "code" : "307099006",
        "display" : "Biopsy of spine (procedure)"
      },
      {
        "code" : "40403005",
        "display" : "Catheterization of right heart (procedure)"
      },
      {
        "code" : "711355001",
        "display" : "Fluoroscopic cholangiography with contrast (procedure)"
      },
      {
        "code" : "44578009",
        "display" : "Core needle biopsy of breast"
      },
      {
        "code" : "1251645009",
        "display" : "Discography with injection of contrast into intervertebral disc (procedure)"
      },
      {
        "code" : "1251646005",
        "display" : "Discography with injection of contrast into intervertebral disc of cervical spine (procedure)"
      },
      {
        "code" : "1251647001",
        "display" : "Discography with injection of contrast into intervertebral disc of lumbar spine (procedure)"
      },
      {
        "code" : "711508007",
        "display" : "Percutaneous fine needle aspiration biopsy of breast using imaging guidance (procedure)"
      },
      {
        "code" : "442865000",
        "display" : "Fine needle aspiration biopsy of thyroid using ultrasound guidance (procedure)"
      },
      {
        "code" : "231284009",
        "display" : "Injection of local anesthetic and steroid into sacroiliac joint (procedure)"
      },
      {
        "code" : "34333007",
        "display" : "Injection of joint of ankle (procedure)"
      },
      {
        "code" : "431344001",
        "display" : "Injection of tendon sheath using ultrasound guidance (procedure)"
      },
      {
        "code" : "14381006",
        "display" : "Injection of hip joint (procedure)"
      },
      {
        "code" : "1217550004",
        "display" : "Injection of drug or medicament into tendon (procedure)"
      },
      {
        "code" : "241196006",
        "display" : "Facet joint arthrogram (procedure)"
      },
      {
        "code" : "431814007",
        "display" : "Fluoroscopic intravenous digital subtraction angiography of kidney with contrast (procedure)"
      },
      {
        "code" : "118712001",
        "display" : "Procedure on thigh (procedure)"
      },
      {
        "code" : "1336149005",
        "display" : "Fluoroscopic lymphangiography with contrast (procedure)"
      },
      {
        "code" : "1336155000",
        "display" : "Fluoroscopic lymphangiography of pelvis with contrast (procedure)"
      },
      {
        "code" : "367401004",
        "display" : "Myelogram (procedure)"
      },
      {
        "code" : "417925004",
        "display" : "Fluoroscopic cervical myelogram (procedure)"
      },
      {
        "code" : "419722002",
        "display" : "Fluoroscopic thoracic myelogram (procedure)"
      },
      {
        "code" : "418828001",
        "display" : "Fluoroscopic lumbar myelogram (procedure)"
      },
      {
        "code" : "711208008",
        "display" : "Needle localization of lesion of breast using ultrasonographic guidance (procedure)"
      },
      {
        "code" : "174525001",
        "display" : "Percutaneous cholecystostomy (procedure)"
      },
      {
        "code" : "92701000112101",
        "display" : "Drainage of abdomen (procedure)"
      },
      {
        "code" : "431867007",
        "display" : "Sampling of blood of renal vein using fluoroscopic guidance with contrast (procedure)"
      },
      {
        "code" : "431605004",
        "display" : "Transrectal biopsy of prostate using ultrasound guidance (procedure)"
      },
      {
        "code" : "418819002",
        "display" : "Fluoroscopic venography of superior vena cava with contrast (procedure)"
      },
      {
        "code" : "113099003",
        "display" : "Phlebography of veins of head and neck (procedure)"
      },
      {
        "code" : "79073004",
        "display" : "Venography of lower extremity (procedure)"
      },
      {
        "code" : "168968001",
        "display" : "Venography: head/neck/thorax (procedure)"
      },
      {
        "code" : "241256002",
        "display" : "Pelvic venogram (procedure)"
      },
      {
        "code" : "22458007",
        "display" : "Epidural venography (procedure)"
      },
      {
        "code" : "243764001",
        "display" : "Petrosal sinus sampling catheter procedure (procedure)"
      },
      {
        "code" : "233445008",
        "display" : "Transjugular intrahepatic portosystemic shunt (procedure)"
      },
      {
        "code" : "55612007",
        "display" : "Hepatic venography (procedure)"
      },
      {
        "code" : "432230007",
        "display" : "Epidural injection of lumbar spine using fluoroscopic guidance (procedure)"
      },
      {
        "code" : "450566007",
        "display" : "Digital tomosynthesis of breast (procedure)"
      },
      {
        "code" : "71651007",
        "display" : "Mammography (procedure)"
      },
      {
        "code" : "43204002",
        "display" : "Mammography of bilateral breasts (procedure)"
      },
      {
        "code" : "18102001",
        "display" : "Mammary ductogram (procedure)"
      },
      {
        "code" : "24623002",
        "display" : "Screening mammography (procedure)"
      },
      {
        "code" : "252792007",
        "display" : "Magnetoencephalography (procedure)"
      },
      {
        "code" : "241624001",
        "display" : "Magnetic resonance imaging of kidneys (procedure)"
      },
      {
        "code" : "432551009",
        "display" : "Magnetic resonance imaging of liver and spleen (procedure)"
      },
      {
        "code" : "432369004",
        "display" : "Magnetic resonance imaging of abdomen with contrast (procedure)"
      },
      {
        "code" : "394531000119101",
        "display" : "Magnetic resonance imaging of abdomen without contrast (procedure)"
      },
      {
        "code" : "414121000119100",
        "display" : "Magnetic resonance imaging of abdomen and pelvis without contrast (procedure)"
      },
      {
        "code" : "699582003",
        "display" : "Magnetic resonance imaging of abdomen and pelvis with contrast (procedure)"
      },
      {
        "code" : "711273000",
        "display" : "Magnetic resonance angiography of abdominal vascular structure with contrast (procedure)"
      },
      {
        "code" : "16443821000119102",
        "display" : "Magnetic resonance angiography of abdomen without contrast (procedure)"
      },
      {
        "code" : "414131000119102",
        "display" : "Magnetic resonance angiography of abdomen and pelvis without contrast (procedure)"
      },
      {
        "code" : "1396134000",
        "display" : "Magnetic resonance angiography of blood vessel of abdomen, pelvis and lower limb (procedure)"
      },
      {
        "code" : "418786005",
        "display" : "Magnetic resonance angiography of pulmonary artery (procedure)"
      },
      {
        "code" : "702682005",
        "display" : "Magnetic resonance angiography of chest (procedure)"
      },
      {
        "code" : "711498001",
        "display" : "Magnetic resonance angiography of vascular structure of chest with contrast (procedure)"
      },
      {
        "code" : "431431005",
        "display" : "Magnetic resonance angiography of entire aorta (procedure)"
      },
      {
        "code" : "716067009",
        "display" : "Magnetic resonance angiography of entire aorta with contrast (procedure)"
      },
      {
        "code" : "699583008",
        "display" : "Magnetic resonance imaging of thorax, abdomen and pelvis (procedure)"
      },
      {
        "code" : "414151000119108",
        "display" : "Magnetic resonance angiography of chest, abdomen and pelvis without contrast (procedure)"
      },
      {
        "code" : "417936006",
        "display" : "Magnetic resonance angiography of vascular structure of head (procedure)"
      },
      {
        "code" : "702684006",
        "display" : "Magnetic resonance angiography of head with contrast (procedure)"
      },
      {
        "code" : "437731000119100",
        "display" : "Magnetic resonance angiography of head without contrast (procedure)"
      },
      {
        "code" : "702726002",
        "display" : "Magnetic resonance angiography of head and neck (procedure)"
      },
      {
        "code" : "702727006",
        "display" : "Magnetic resonance angiography of head and neck with contrast (procedure)"
      },
      {
        "code" : "241620005",
        "display" : "Magnetic resonance imaging of heart (procedure)"
      },
      {
        "code" : "736793003",
        "display" : "Magnetic resonance imaging of heart with contrast (procedure)"
      },
      {
        "code" : "716146006",
        "display" : "Magnetic resonance angiography of vascular structure of lower limb with contrast (procedure)"
      },
      {
        "code" : "711274006",
        "display" : "Magnetic resonance angiography of vascular structure of lower limb (procedure)"
      },
      {
        "code" : "16324841000119100",
        "display" : "Magnetic resonance imaging of face without contrast (procedure)"
      },
      {
        "code" : "443233002",
        "display" : "Magnetic resonance imaging of face using contrast (procedure)"
      },
      {
        "code" : "241665001",
        "display" : "Magnetic resonance angiography of vascular structure of neck (procedure)"
      },
      {
        "code" : "16321761000119108",
        "display" : "Magnetic resonance angiography of neck without contrast (procedure)"
      },
      {
        "code" : "709571008",
        "display" : "Magnetic resonance angiography of vascular structure of pelvis with contrast (procedure)"
      },
      {
        "code" : "16383281000119103",
        "display" : "Magnetic resonance angiography of spine without contrast (procedure)"
      },
      {
        "code" : "709567005",
        "display" : "Magnetic resonance angiography of vascular structure of spine with contrast (procedure)"
      },
      {
        "code" : "718027001",
        "display" : "Magnetic resonance angiography of vascular structure of upper limb with contrast (procedure)"
      },
      {
        "code" : "709573006",
        "display" : "Magnetic resonance angiography of vascular structure of upper limb (procedure)"
      },
      {
        "code" : "90084008",
        "display" : "Magnetic resonance imaging without contrast (procedure)"
      },
      {
        "code" : "51619007",
        "display" : "Magnetic resonance imaging with contrast (procedure)"
      },
      {
        "code" : "241655007",
        "display" : "Magnetic resonance imaging arthrography of ankle (procedure)"
      },
      {
        "code" : "241653000",
        "display" : "Magnetic resonance imaging arthrography of hip (procedure)"
      },
      {
        "code" : "241654006",
        "display" : "Magnetic resonance imaging arthrography of knee (procedure)"
      },
      {
        "code" : "241651003",
        "display" : "Magnetic resonance imaging arthrography of elbow (procedure)"
      },
      {
        "code" : "241650002",
        "display" : "Magnetic resonance imaging arthrography of shoulder (procedure)"
      },
      {
        "code" : "432854007",
        "display" : "Magnetic resonance imaging of thumb (procedure)"
      },
      {
        "code" : "241652005",
        "display" : "Magnetic resonance imaging arthrography of wrist (procedure)"
      },
      {
        "code" : "241615005",
        "display" : "Magnetic resonance imaging of breast (procedure)"
      },
      {
        "code" : "427021000119103",
        "display" : "Magnetic resonance imaging of bilateral breasts without contrast (procedure)"
      },
      {
        "code" : "432634008",
        "display" : "Magnetic resonance imaging of breast with contrast (procedure)"
      },
      {
        "code" : "427031000119100",
        "display" : "Magnetic resonance imaging of bilateral breasts with contrast (procedure)"
      },
      {
        "code" : "432878002",
        "display" : "Magnetic resonance imaging of acromioclavicular joint (procedure)"
      },
      {
        "code" : "16342871000119103",
        "display" : "Magnetic resonance imaging of clavicle without contrast (procedure)"
      },
      {
        "code" : "709526000",
        "display" : "Magnetic resonance imaging of clavicle with contrast (procedure)"
      },
      {
        "code" : "431986003",
        "display" : "Magnetic resonance imaging of sternoclavicular joint (procedure)"
      },
      {
        "code" : "438821001",
        "display" : "Magnetic resonance imaging of sternoclavicular joint with contrast (procedure)"
      },
      {
        "code" : "16334661000119100",
        "display" : "Magnetic resonance imaging of sternum without contrast (procedure)"
      },
      {
        "code" : "709502002",
        "display" : "Magnetic resonance imaging of sternum with contrast (procedure)"
      },
      {
        "code" : "16334561000119101",
        "display" : "Magnetic resonance imaging of chest without contrast (procedure)"
      },
      {
        "code" : "432815006",
        "display" : "Magnetic resonance imaging of chest with contrast (procedure)"
      },
      {
        "code" : "431225005",
        "display" : "Magnetic resonance imaging of cerebrospinal fluid flow (procedure)"
      },
      {
        "code" : "440112003",
        "display" : "Defecating proctogram using magnetic resonance imaging (procedure)"
      },
      {
        "code" : "448306001",
        "display" : "Diffusion tensor magnetic resonance imaging of brain (procedure)"
      },
      {
        "code" : "433139009",
        "display" : "Dynamic magnetic resonance imaging of knee (procedure)"
      },
      {
        "code" : "709523008",
        "display" : "Magnetic resonance imaging of rectum with contrast (procedure)"
      },
      {
        "code" : "716004000",
        "display" : "Magnetic resonance elastography (procedure)"
      },
      {
        "code" : "716694009",
        "display" : "Magnetic resonance enteroclysis (procedure)"
      },
      {
        "code" : "1231763005",
        "display" : "Magnetic resonance imaging of small intestine with contrast (procedure)"
      },
      {
        "code" : "16439481000119102",
        "display" : "Magnetic resonance imaging for cardiac morphology and function without contrast (procedure)"
      },
      {
        "code" : "449879007",
        "display" : "Magnetic resonance imaging for cardiac morphology and function with contrast (procedure)"
      },
      {
        "code" : "931021000000101",
        "display" : "Magnetic resonance imaging of heart for assessment of myocardial viability (procedure)"
      },
      {
        "code" : "241601008",
        "display" : "Magnetic resonance imaging of head (procedure)"
      },
      {
        "code" : "449882002",
        "display" : "Magnetic resonance imaging for cardiac morphology and function under stress (procedure)"
      },
      {
        "code" : "449883007",
        "display" : "Magnetic resonance imaging for cardiac morphology and function under stress with contrast (procedure)"
      },
      {
        "code" : "715169004",
        "display" : "Magnetic resonance imaging of mastoid (procedure)"
      },
      {
        "code" : "715188006",
        "display" : "Magnetic resonance imaging of mastoid with contrast (procedure)"
      },
      {
        "code" : "383311000119100",
        "display" : "Magnetic resonance imaging of orbits without contrast (procedure)"
      },
      {
        "code" : "433133005",
        "display" : "Magnetic resonance imaging of orbit with contrast (procedure)"
      },
      {
        "code" : "411301000119105",
        "display" : "Magnetic resonance imaging of brain and internal auditory canal without contrast (procedure)"
      },
      {
        "code" : "432874000",
        "display" : "Magnetic resonance imaging of head with contrast (procedure)"
      },
      {
        "code" : "431625000",
        "display" : "Magnetic resonance imaging of internal auditory meatus with contrast (procedure)"
      },
      {
        "code" : "241609005",
        "display" : "Magnetic resonance imaging of paranasal sinuses (procedure)"
      },
      {
        "code" : "16323611000119102",
        "display" : "Magnetic resonance imaging of orbit, face and neck without contrast (procedure)"
      },
      {
        "code" : "411151000119106",
        "display" : "Magnetic resonance imaging of orbit, face and neck with contrast (procedure)"
      },
      {
        "code" : "702725003",
        "display" : "Magnetic resonance imaging of head and neck (procedure)"
      },
      {
        "code" : "702724004",
        "display" : "Magnetic resonance imaging of head and neck with contrast (procedure)"
      },
      {
        "code" : "16329211000119102",
        "display" : "Magnetic resonance imaging of ankle joint without contrast (procedure)"
      },
      {
        "code" : "432111000",
        "display" : "Magnetic resonance imaging of ankle with contrast (procedure)"
      },
      {
        "code" : "432240005",
        "display" : "Magnetic resonance imaging of foot with contrast (procedure)"
      },
      {
        "code" : "241644007",
        "display" : "Magnetic resonance imaging of foot (procedure)"
      },
      {
        "code" : "432653003",
        "display" : "Magnetic resonance imaging of calcaneus (procedure)"
      },
      {
        "code" : "241639000",
        "display" : "Magnetic resonance imaging of hip (procedure)"
      },
      {
        "code" : "431624001",
        "display" : "Magnetic resonance imaging of hip with contrast (procedure)"
      },
      {
        "code" : "2951000087104",
        "display" : "Magnetic resonance imaging of bilateral hips (procedure)"
      },
      {
        "code" : "2961000087101",
        "display" : "Magnetic resonance imaging of bilateral hips with contrast (procedure)"
      },
      {
        "code" : "241641004",
        "display" : "Magnetic resonance imaging of knee (procedure)"
      },
      {
        "code" : "432719005",
        "display" : "Magnetic resonance imaging of knee with contrast (procedure)"
      },
      {
        "code" : "113109007",
        "display" : "Magnetic resonance imaging of lower extremity (procedure)"
      },
      {
        "code" : "433009001",
        "display" : "Magnetic resonance imaging of lower leg with contrast (procedure)"
      },
      {
        "code" : "241640003",
        "display" : "Magnetic resonance imaging of thigh (procedure)"
      },
      {
        "code" : "17501000087108",
        "display" : "Magnetic resonance imaging of bilateral thighs (procedure)"
      },
      {
        "code" : "718071002",
        "display" : "Magnetic resonance imaging of thigh with contrast (procedure)"
      },
      {
        "code" : "724215003",
        "display" : "Magnetic resonance imaging of bilateral thighs with contrast (procedure)"
      },
      {
        "code" : "433170001",
        "display" : "Magnetic resonance imaging of forefoot (procedure)"
      },
      {
        "code" : "406571000119104",
        "display" : "Magnetic resonance imaging of paranasal sinuses without contrast (procedure)"
      },
      {
        "code" : "432368007",
        "display" : "Magnetic resonance imaging of nasal sinuses with contrast (procedure)"
      },
      {
        "code" : "57902003",
        "display" : "Magnetic resonance imaging of temporomandibular joint (procedure)"
      },
      {
        "code" : "702721007",
        "display" : "Magnetic resonance imaging of temporomandibular joint with contrast (procedure)"
      },
      {
        "code" : "314635004",
        "display" : "Magnetic resonance cholangiopancreatography (procedure)"
      },
      {
        "code" : "430272004",
        "display" : "Magnetic resonance cholangiopancreatography with contrast (procedure)"
      },
      {
        "code" : "431299007",
        "display" : "Magnetic resonance imaging of perfusion of heart under stress (procedure)"
      },
      {
        "code" : "382911000119105",
        "display" : "Magnetic resonance imaging of neck without contrast (procedure)"
      },
      {
        "code" : "432541008",
        "display" : "Magnetic resonance imaging of neck with contrast (procedure)"
      },
      {
        "code" : "241618007",
        "display" : "Magnetic resonance imaging of brachial plexus (procedure)"
      },
      {
        "code" : "712876003",
        "display" : "Magnetic resonance imaging of upper limb with contrast (procedure)"
      },
      {
        "code" : "447224000",
        "display" : "Magnetic resonance imaging of anal sphincter (procedure)"
      },
      {
        "code" : "709525001",
        "display" : "Magnetic resonance imaging of prostate with contrast (procedure)"
      },
      {
        "code" : "1332288001",
        "display" : "Magnetic resonance imaging of bilateral sacroiliac joints without contrast (procedure)"
      },
      {
        "code" : "1332285003",
        "display" : "Magnetic resonance imaging of sacroiliac joint with contrast (procedure)"
      },
      {
        "code" : "409781000119101",
        "display" : "Magnetic resonance imaging of scrotum without contrast (procedure)"
      },
      {
        "code" : "709505000",
        "display" : "Magnetic resonance imaging of scrotum with contrast (procedure)"
      },
      {
        "code" : "2690005",
        "display" : "Magnetic resonance imaging of pelvis (procedure)"
      },
      {
        "code" : "396161000119106",
        "display" : "Magnetic resonance imaging of pelvis without contrast (procedure)"
      },
      {
        "code" : "433138001",
        "display" : "Magnetic resonance imaging of pelvis with contrast (procedure)"
      },
      {
        "code" : "432672003",
        "display" : "Magnetic resonance imaging of pelvis and hip (procedure)"
      },
      {
        "code" : "443078008",
        "display" : "Magnetic resonance imaging of lumbosacral plexus (procedure)"
      },
      {
        "code" : "781526004",
        "display" : "Magnetic resonance imaging of lumbosacral plexus with contrast (procedure)"
      },
      {
        "code" : "1332287006",
        "display" : "Magnetic resonance imaging of sacroiliac joint without contrast (procedure)"
      },
      {
        "code" : "726546000",
        "display" : "Magnetic resonance imaging of lumbar spine and sacroiliac joint (procedure)"
      },
      {
        "code" : "709653005",
        "display" : "Magnetic resonance imaging of lumbar spine and sacroiliac joint with contrast (procedure)"
      },
      {
        "code" : "388321000119101",
        "display" : "Magnetic resonance imaging of sacrum without contrast (procedure)"
      },
      {
        "code" : "709527009",
        "display" : "Magnetic resonance imaging of sacral spine with contrast (procedure)"
      },
      {
        "code" : "419059006",
        "display" : "Magnetic resonance imaging cerebral perfusion study (procedure)"
      },
      {
        "code" : "16339401000119102",
        "display" : "Magnetic resonance spectroscopy of brain without contrast (procedure)"
      },
      {
        "code" : "60443006",
        "display" : "Magnetic resonance imaging of cervical spine with contrast (procedure)"
      },
      {
        "code" : "571891000119109",
        "display" : "Magnetic resonance imaging of cervical spine without contrast (procedure)"
      },
      {
        "code" : "495741000119105",
        "display" : "Magnetic resonance imaging of cervical, thoracic, and lumbar spine with contrast (procedure)"
      },
      {
        "code" : "411611000119102",
        "display" : "Magnetic resonance imaging of cervical, thoracic, and lumbar spine without contrast (procedure)"
      },
      {
        "code" : "713206003",
        "display" : "Magnetic resonance imaging myelography (procedure)"
      },
      {
        "code" : "41333006",
        "display" : "Magnetic resonance imaging of lumbar spine with contrast (procedure)"
      },
      {
        "code" : "394451000119106",
        "display" : "Magnetic resonance imaging of lumbar spine without contrast (procedure)"
      },
      {
        "code" : "433141005",
        "display" : "Magnetic resonance imaging of lumbar and sacral spine (procedure)"
      },
      {
        "code" : "433140006",
        "display" : "Magnetic resonance imaging of lumbar and sacral spine with contrast (procedure)"
      },
      {
        "code" : "91333005",
        "display" : "Magnetic resonance imaging of thoracic spine with contrast (procedure)"
      },
      {
        "code" : "396171000119100",
        "display" : "Magnetic resonance imaging of thoracic spine without contrast (procedure)"
      },
      {
        "code" : "411571000119106",
        "display" : "Magnetic resonance imaging of thoracic spine and lumbar spine without contrast (procedure)"
      },
      {
        "code" : "448641007",
        "display" : "Magnetic resonance imaging of thoracic and lumbar spine with contrast (procedure)"
      },
      {
        "code" : "241645008",
        "display" : "Magnetic resonance imaging of spine (procedure)"
      },
      {
        "code" : "431985004",
        "display" : "Magnetic resonance imaging of spine with contrast (procedure)"
      },
      {
        "code" : "702719002",
        "display" : "Magnetic resonance imaging of lower limb with contrast (procedure)"
      },
      {
        "code" : "241634005",
        "display" : "Magnetic resonance imaging of upper arm (procedure)"
      },
      {
        "code" : "432215003",
        "display" : "Magnetic resonance imaging of upper arm with contrast (procedure)"
      },
      {
        "code" : "431849000",
        "display" : "Magnetic resonance imaging of brachial plexus with contrast (procedure)"
      },
      {
        "code" : "241635006",
        "display" : "Magnetic resonance imaging of elbow (procedure)"
      },
      {
        "code" : "432151002",
        "display" : "Magnetic resonance imaging of elbow with contrast (procedure)"
      },
      {
        "code" : "1289996000",
        "display" : "Magnetic resonance imaging of finger (procedure)"
      },
      {
        "code" : "241636007",
        "display" : "Magnetic resonance imaging of forearm (procedure)"
      },
      {
        "code" : "432673008",
        "display" : "Magnetic resonance imaging of forearm with contrast (procedure)"
      },
      {
        "code" : "241638008",
        "display" : "Magnetic resonance imaging of hand (procedure)"
      },
      {
        "code" : "432000006",
        "display" : "Magnetic resonance imaging of hand with contrast (procedure)"
      },
      {
        "code" : "413921000119104",
        "display" : "Magnetic resonance imaging of scapula without contrast (procedure)"
      },
      {
        "code" : "702722000",
        "display" : "Magnetic resonance imaging of scapula with contrast (procedure)"
      },
      {
        "code" : "241633004",
        "display" : "Magnetic resonance imaging of shoulder (procedure)"
      },
      {
        "code" : "432403004",
        "display" : "Magnetic resonance imaging of shoulder with contrast (procedure)"
      },
      {
        "code" : "241637003",
        "display" : "Magnetic resonance imaging of wrist (procedure)"
      },
      {
        "code" : "702720008",
        "display" : "Magnetic resonance imaging of wrist with contrast (procedure)"
      },
      {
        "code" : "419275004",
        "display" : "Magnetic resonance imaging of urinary tract (procedure)"
      },
      {
        "code" : "712848006",
        "display" : "Magnetic resonance imaging of urinary tract with contrast (procedure)"
      },
      {
        "code" : "419934004",
        "display" : "Magnetic resonance imaging venography of superior vena cava (procedure)"
      },
      {
        "code" : "709574000",
        "display" : "Magnetic resonance venography of intracranial vein with contrast (procedure)"
      },
      {
        "code" : "16333021000119102",
        "display" : "Magnetic resonance venography of intracranial veins without contrast (procedure)"
      },
      {
        "code" : "16333901000119107",
        "display" : "Magnetic resonance venography of neck without contrast (procedure)"
      },
      {
        "code" : "718074005",
        "display" : "Magnetic resonance venography of neck with contrast (procedure)"
      },
      {
        "code" : "439085003",
        "display" : "Magnetic resonance venography of pelvis (procedure)"
      },
      {
        "code" : "709575004",
        "display" : "Magnetic resonance venography of vein of pelvis with contrast (procedure)"
      },
      {
        "code" : "426252008",
        "display" : "Magnetic resonance imaging of whole body (procedure)"
      },
      {
        "code" : "416323006",
        "display" : "Positron emission tomography breast study (procedure)"
      },
      {
        "code" : "764666002",
        "display" : "Positron emission tomography of brain (procedure)"
      },
      {
        "code" : "82918005",
        "display" : "Positron emission tomography (procedure)"
      },
      {
        "code" : "241439007",
        "display" : "Positron emission tomography heart study (procedure)"
      },
      {
        "code" : "788433009",
        "display" : "Positron emission tomography myocardial stress imaging using rubidium-82 (procedure)"
      },
      {
        "code" : "1373815000",
        "display" : "Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F) (procedure)"
      },
      {
        "code" : "764665003",
        "display" : "Positron emission tomography with computed tomography of brain using fluorodeoxyglucose (18-F) (procedure)"
      },
      {
        "code" : "443534009",
        "display" : "Positron emission tomography using fluorodeoxyglucose with computed tomography myocardial rest imaging (procedure)"
      },
      {
        "code" : "443473006",
        "display" : "Positron emission tomography with computed tomography carbon 11 choline uptake study (procedure)"
      },
      {
        "code" : "725928006",
        "display" : "Positron emission tomography with computed tomography fluorodeoxyglucose F18 imaging of base of brain to mid-thigh (procedure)"
      },
      {
        "code" : "443271005",
        "display" : "Positron emission tomography with computed tomography of whole body using fluorodeoxyglucose (18-F) (procedure)"
      },
      {
        "code" : "414459003",
        "display" : "Imaging of upper limb (procedure)"
      },
      {
        "code" : "45036003",
        "display" : "Ultrasonography of abdomen (procedure)"
      },
      {
        "code" : "241480000",
        "display" : "Ultrasound scan of adrenals (procedure)"
      },
      {
        "code" : "241460001",
        "display" : "Ultrasound angiography of aorta (procedure)"
      },
      {
        "code" : "306005",
        "display" : "Echography of kidney (procedure)"
      },
      {
        "code" : "420052009",
        "display" : "Ultrasound scan of lower abdomen (procedure)"
      },
      {
        "code" : "169252006",
        "display" : "Endoscopic ultrasound of upper gastrointestinal tract (procedure)"
      },
      {
        "code" : "444900008",
        "display" : "Ultrasonography of abdomen with contrast (procedure)"
      },
      {
        "code" : "418394000",
        "display" : "Ultrasound scan of abdomen and pelvis (procedure)"
      },
      {
        "code" : "1076851000000101",
        "display" : "Ultrasonography of kidney and bladder (procedure)"
      },
      {
        "code" : "394211000119109",
        "display" : "Ultrasonography for fetal biophysical profile with non-stress testing (procedure)"
      },
      {
        "code" : "21623001",
        "display" : "Fetal biophysical profile (procedure)"
      },
      {
        "code" : "47079000",
        "display" : "Ultrasonography of breast (procedure)"
      },
      {
        "code" : "1571000087109",
        "display" : "Ultrasonography of bilateral breasts (procedure)"
      },
      {
        "code" : "25850001",
        "display" : "Ultrasonography of thorax (procedure)"
      },
      {
        "code" : "13801000087100",
        "display" : "Ultrasonography of chest and axilla (procedure)"
      },
      {
        "code" : "10321000087109",
        "display" : "Ultrasonography of chest and abdomen (procedure)"
      },
      {
        "code" : "439065002",
        "display" : "Doppler ultrasonography of abdominal and pelvic arteries (procedure)"
      },
      {
        "code" : "418354002",
        "display" : "Doppler ultrasonography of kidney (procedure)"
      },
      {
        "code" : "423736003",
        "display" : "Color Doppler ultrasound (procedure)"
      },
      {
        "code" : "1177191006",
        "display" : "Duplex ultrasonography (procedure)"
      },
      {
        "code" : "312725000",
        "display" : "Duplex ultrasonography of veins of lower limb (procedure)"
      },
      {
        "code" : "1178980000",
        "display" : "Duplex ultrasonography of carotid artery (procedure)"
      },
      {
        "code" : "312726004",
        "display" : "Duplex ultrasonography of arteries of upper limb (procedure)"
      },
      {
        "code" : "312727008",
        "display" : "Duplex ultrasonography of veins of upper limb (procedure)"
      },
      {
        "code" : "433235006",
        "display" : "Fetal echocardiography (procedure)"
      },
      {
        "code" : "105376000",
        "display" : "Transesophageal echocardiography (procedure)"
      },
      {
        "code" : "433236007",
        "display" : "Transthoracic echocardiography (procedure)"
      },
      {
        "code" : "816996009",
        "display" : "Stress echocardiography (procedure)"
      },
      {
        "code" : "448764002",
        "display" : "Ultrasound elastography (procedure)"
      },
      {
        "code" : "450556004",
        "display" : "Endoscopic ultrasonography (procedure)"
      },
      {
        "code" : "241449005",
        "display" : "Ultrasound scan of head (procedure)"
      },
      {
        "code" : "314608008",
        "display" : "Laparoscopic ultrasound examination (procedure)"
      },
      {
        "code" : "241467003",
        "display" : "Intravascular ultrasound of artery (procedure)"
      },
      {
        "code" : "241505005",
        "display" : "Ultrasonography of ankle (procedure)"
      },
      {
        "code" : "427072002",
        "display" : "Ultrasound scan of foot (procedure)"
      },
      {
        "code" : "391077008",
        "display" : "Quantitative ultrasound scan of heel (procedure)"
      },
      {
        "code" : "241502008",
        "display" : "Ultrasound scan of hip (procedure)"
      },
      {
        "code" : "426903000",
        "display" : "Ultrasound scan of both hips (procedure)"
      },
      {
        "code" : "241504009",
        "display" : "Ultrasonography of knee (procedure)"
      },
      {
        "code" : "449922004",
        "display" : "Ultrasonography of lower limb (procedure)"
      },
      {
        "code" : "425410009",
        "display" : "Ultrasound scan of thigh (procedure)"
      },
      {
        "code" : "1691000087109",
        "display" : "Ultrasonography of bilateral thighs (procedure)"
      },
      {
        "code" : "418575006",
        "display" : "Ultrasound scan of face (procedure)"
      },
      {
        "code" : "241453007",
        "display" : "Ultrasound scan of neck (procedure)"
      },
      {
        "code" : "241455000",
        "display" : "Ultrasound scan of thyroid (procedure)"
      },
      {
        "code" : "24848001",
        "display" : "Pelvic echography (procedure)"
      },
      {
        "code" : "169251004",
        "display" : "Ultrasonography of urinary bladder (procedure)"
      },
      {
        "code" : "241487002",
        "display" : "Ultrasound scan of prostate (procedure)"
      },
      {
        "code" : "710316007",
        "display" : "Ultrasonography of cervix uteri (procedure)"
      },
      {
        "code" : "55052008",
        "display" : "Diagnostic ultrasound of gravid uterus (procedure)"
      },
      {
        "code" : "432674002",
        "display" : "Ultrasonography of sacroiliac joint (procedure)"
      },
      {
        "code" : "1220587009",
        "display" : "Ultrasonography of scrotum (procedure)"
      },
      {
        "code" : "438818003",
        "display" : "Ultrasonography of uterus with saline infusion (procedure)"
      },
      {
        "code" : "241516003",
        "display" : "Ultrasound scan of spine (procedure)"
      },
      {
        "code" : "431623007",
        "display" : "Ultrasonography of cervical spine (procedure)"
      },
      {
        "code" : "432651001",
        "display" : "Ultrasonography of lumbar spine (procedure)"
      },
      {
        "code" : "428605000",
        "display" : "Ultrasound scan of sacral spine (procedure)"
      },
      {
        "code" : "432898007",
        "display" : "Ultrasonography of thoracic spine (procedure)"
      },
      {
        "code" : "1381843006",
        "display" : "Transabdominal ultrasonography of pelvis (procedure)"
      },
      {
        "code" : "268445003",
        "display" : "Ultrasound scan - obstetric (procedure)"
      },
      {
        "code" : "1380210006",
        "display" : "Suprapubic ultrasonography of prostate (procedure)"
      },
      {
        "code" : "440036001",
        "display" : "Transcranial Doppler ultrasonography of intracranial artery using microbubble contrast media for detection of emboli (procedure)"
      },
      {
        "code" : "431648005",
        "display" : "Transcranial Doppler ultrasonography (procedure)"
      },
      {
        "code" : "13205008",
        "display" : "Transvaginal echography (procedure)"
      },
      {
        "code" : "446045006",
        "display" : "Ultrasonography by transrectal approach (procedure)"
      },
      {
        "code" : "431553009",
        "display" : "Endoanal ultrasound examination of rectal sphincter (procedure)"
      },
      {
        "code" : "22034001",
        "display" : "Transrectal ultrasonography of prostate (procedure)"
      },
      {
        "code" : "432246004",
        "display" : "Transvaginal obstetric Doppler ultrasonography (procedure)"
      },
      {
        "code" : "429915000",
        "display" : "Transvaginal ultrasonography of pelvis (procedure)"
      },
      {
        "code" : "430064008",
        "display" : "Transvaginal obstetric ultrasonography (procedure)"
      },
      {
        "code" : "449921006",
        "display" : "Ultrasonography of upper limb (procedure)"
      },
      {
        "code" : "427043003",
        "display" : "Ultrasound scan of upper arm (procedure)"
      },
      {
        "code" : "241498001",
        "display" : "Ultrasound scan of elbow (procedure)"
      },
      {
        "code" : "241500000",
        "display" : "Ultrasonography of finger (procedure)"
      },
      {
        "code" : "426019005",
        "display" : "Ultrasonography of forearm (procedure)"
      },
      {
        "code" : "303924009",
        "display" : "Ultrasound scan of hand (procedure)"
      },
      {
        "code" : "303922008",
        "display" : "Ultrasound of shoulder region (procedure)"
      },
      {
        "code" : "432002003",
        "display" : "Ultrasonography of thumb (procedure)"
      },
      {
        "code" : "241499009",
        "display" : "Ultrasonography of wrist (procedure)"
      },
      {
        "code" : "432104004",
        "display" : "Ultrasonography of urinary bladder for flow rate (procedure)"
      },
      {
        "code" : "168702005",
        "display" : "Plain X-ray of abdomen (procedure)"
      },
      {
        "code" : "1345246000",
        "display" : "Plain X-ray of urinary system (procedure)"
      },
      {
        "code" : "1295429000",
        "display" : "Plain X-ray survey of entire skeleton (procedure)"
      },
      {
        "code" : "168537006",
        "display" : "Plain X-ray (procedure)"
      },
      {
        "code" : "399208008",
        "display" : "Plain X-ray of chest (procedure)"
      },
      {
        "code" : "1290552001",
        "display" : "Plain X-ray of acromioclavicular joint (procedure)"
      },
      {
        "code" : "168594001",
        "display" : "Plain X-ray of clavicle (procedure)"
      },
      {
        "code" : "1251531008",
        "display" : "Plain X-ray of bone structure of rib (procedure)"
      },
      {
        "code" : "1290587001",
        "display" : "Plain X-ray of sternoclavicular joint (procedure)"
      },
      {
        "code" : "1295209004",
        "display" : "Plain X-ray of sternum (procedure)"
      },
      {
        "code" : "420233006",
        "display" : "Plain X-ray of chest and abdomen (procedure)"
      },
      {
        "code" : "1293029006",
        "display" : "Plain X-ray of mastoid (procedure)"
      },
      {
        "code" : "1293026004",
        "display" : "Plain X-ray of orbit proper (procedure)"
      },
      {
        "code" : "1356808003",
        "display" : "Plain X-ray of sella turcica (procedure)"
      },
      {
        "code" : "55965002",
        "display" : "Plain X-ray of bone of cranium (procedure)"
      },
      {
        "code" : "718544006",
        "display" : "X-ray tomography of lower limb (procedure)"
      },
      {
        "code" : "1290611003",
        "display" : "Plain X-ray of lower limb (procedure)"
      },
      {
        "code" : "1290459008",
        "display" : "Plain X-ray of ankle region (procedure)"
      },
      {
        "code" : "241085001",
        "display" : "Plain X-ray of subtalar joint (procedure)"
      },
      {
        "code" : "241075002",
        "display" : "Plain X-ray of femur (procedure)"
      },
      {
        "code" : "1290452004",
        "display" : "Plain X-ray of foot (procedure)"
      },
      {
        "code" : "1356788009",
        "display" : "Plain X-ray of foot under stress (procedure)"
      },
      {
        "code" : "1290447009",
        "display" : "Plain X-ray of calcaneum (procedure)"
      },
      {
        "code" : "783628002",
        "display" : "Plain X-ray of hip (procedure)"
      },
      {
        "code" : "4051000087106",
        "display" : "Plain X-ray of bilateral hips (procedure)"
      },
      {
        "code" : "1290407002",
        "display" : "Plain X-ray of knee region (procedure)"
      },
      {
        "code" : "1290525006",
        "display" : "Plain X-ray of lower leg (procedure)"
      },
      {
        "code" : "783631001",
        "display" : "Plain X-ray of tibia and fibula (procedure)"
      },
      {
        "code" : "785711007",
        "display" : "Plain X-ray of toe (procedure)"
      },
      {
        "code" : "1290814009",
        "display" : "Plain X-ray of bone of face (procedure)"
      },
      {
        "code" : "1293056008",
        "display" : "Plain X-ray of nasal sinus (procedure)"
      },
      {
        "code" : "303938002",
        "display" : "Plain X-ray of neck (procedure)"
      },
      {
        "code" : "713021002",
        "display" : "Plain X-ray of pelvis (procedure)"
      },
      {
        "code" : "783627007",
        "display" : "Plain X-ray of sacroiliac joint (procedure)"
      },
      {
        "code" : "1290608004",
        "display" : "Plain X-ray of bone of pelvis and bone of hip joint region (procedure)"
      },
      {
        "code" : "716679005",
        "display" : "Plain X-ray of pelvis and lower limb (procedure)"
      },
      {
        "code" : "432769002",
        "display" : "Plain X-ray of chest using mobile image intensifier (procedure)"
      },
      {
        "code" : "713024005",
        "display" : "Plain X-ray of wrist region (procedure)"
      },
      {
        "code" : "1290640000",
        "display" : "Plain X-ray of vertebral column region (procedure)"
      },
      {
        "code" : "712970008",
        "display" : "Plain X-ray of cervical vertebral column region (procedure)"
      },
      {
        "code" : "1362050003",
        "display" : "Dynamic plain X-ray of cervical vertebral column region (procedure)"
      },
      {
        "code" : "711104001",
        "display" : "Plain X-ray of cervical and thoracic spine (procedure)"
      },
      {
        "code" : "840361000",
        "display" : "Plain X-ray of lumbar vertebral column region (procedure)"
      },
      {
        "code" : "22791004",
        "display" : "Plain X-ray of lumbar and sacral spine (procedure)"
      },
      {
        "code" : "1290655009",
        "display" : "Plain X-ray of sacral vertebral column region (procedure)"
      },
      {
        "code" : "1367647005",
        "display" : "Plain X-ray of entire vertebral column (procedure)"
      },
      {
        "code" : "1290654008",
        "display" : "Plain X-ray of thoracic vertebral column region (procedure)"
      },
      {
        "code" : "444634007",
        "display" : "Plain X-ray of thoracic and lumbar spine (procedure)"
      },
      {
        "code" : "13661000087100",
        "display" : "Plain X-ray of lumbar vertebral column and hip region (procedure)"
      },
      {
        "code" : "1290456001",
        "display" : "Plain X-ray of ankle joint under stress (procedure)"
      },
      {
        "code" : "713025006",
        "display" : "Plain X-ray of elbow (procedure)"
      },
      {
        "code" : "1290482005",
        "display" : "Plain X-ray of thumb under stress (procedure)"
      },
      {
        "code" : "169031005",
        "display" : "Tomography - head/neck (procedure)"
      },
      {
        "code" : "713023004",
        "display" : "Plain X-ray of upper limb (procedure)"
      },
      {
        "code" : "786844003",
        "display" : "Plain X-ray of finger (procedure)"
      },
      {
        "code" : "783544001",
        "display" : "Plain X-ray of forearm (procedure)"
      },
      {
        "code" : "713027003",
        "display" : "Plain X-ray of hand (procedure)"
      },
      {
        "code" : "713026007",
        "display" : "Plain X-ray of humerus (procedure)"
      },
      {
        "code" : "713028008",
        "display" : "Plain X-ray of scapula (procedure)"
      },
      {
        "code" : "783543007",
        "display" : "Plain X-ray of shoulder (procedure)"
      },
      {
        "code" : "783542002",
        "display" : "Plain X-ray of thumb (procedure)"
      }]
    }]
  }
}

```
