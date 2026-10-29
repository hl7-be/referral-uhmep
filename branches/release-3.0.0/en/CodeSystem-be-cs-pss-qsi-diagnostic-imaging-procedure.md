# PSS/QSI Diagnostic Imaging Procedure - eReferral Implementation Guide v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS/QSI Diagnostic Imaging Procedure**

## CodeSystem: PSS/QSI Diagnostic Imaging Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-pss-qsi-diagnostic-imaging-procedure | *Version*:3.0.0 |
| Draft as of 2026-10-29 | *Computable Name*:BeCSPSSQSIDiagnosticImagingProcedure |

 
PSS/QSI diagnostic imaging procedure codes with English displays and Belgian French, Dutch and German designations. 

This Code system is referenced in the definition of the following value sets:

* [PSS/QSI Diagnostic Imaging Procedure](ValueSet-be-vs-pss-qsi-diagnostic-imaging-procedure.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-pss-qsi-diagnostic-imaging-procedure",
  "language" : "en",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/be-cs-pss-qsi-diagnostic-imaging-procedure",
  "version" : "3.0.0",
  "name" : "BeCSPSSQSIDiagnosticImagingProcedure",
  "title" : "PSS/QSI Diagnostic Imaging Procedure",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-29T04:45:11+00:00",
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
  "description" : "PSS/QSI diagnostic imaging procedure codes with English displays and Belgian French, Dutch and German designations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 863,
  "concept" : [{
    "code" : "114044",
    "display" : "CT, abdomen, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'abdomen avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van abdomen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Abdomen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114045",
    "display" : "CT, abdomen, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, abdomen, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, abdomen, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Abdomen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114952",
    "display" : "CT, abdomen, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'abdomen avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van abdomen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Abdomen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000012",
    "display" : "CT, abdomen-pelvis, KUB-stone eval, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, abdomen-bassin, reins-uretères-évaluation de calcul urinaire, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, abdomen-bekken, nier-ureter-blaassteen evaluatie, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Abdomen-Becken, Steinsuche (low-dose), ohne i.v.-Kontrast"
    }]
  },
  {
    "code" : "114040",
    "display" : "CT, abdomen-pelvis, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie de l'abdomen et du pelvis avec injection intraveineuse de produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van abdomen en bekken met intraveneus contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Abdomen-Becken, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114042",
    "display" : "CT, abdomen-pelvis, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, abdomen-bassin, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, abdomen-bekken, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Abdomen-Becken, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114041",
    "display" : "CT, abdomen-pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'abdomen et du pelvis avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van abdomen en bekken met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Abdomen-Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114373",
    "display" : "CT, angiography, abdomen, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, angiographie, abdomen, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, angiografie, abdomen, met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Abdomen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "125052",
    "display" : "CT, angiography, abdomen-pelvis, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par tomodensitométrie d'artères abdominales et pelviennes avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomoangiografie van abdominale arterie en bekkenarterie"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Abdomen-Becken, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000111",
    "display" : "CT, angiography, abdomen-pelvis-lower extremity, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angio-CT de l'abdomen, du bassin et du membre inférieur avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomoangiografie van abdomen, pelvis en onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Abdomen-Becken-untere Extremität, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "11037",
    "display" : "CT, angiography, chest, aortic arch, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'aorte thoracique avec injection de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van thoracale aorta met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Aorta thoracalis + supraaortale Äste, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000013",
    "display" : "CT, angiography, chest, pulmonary arteries, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, angiographie, thorax, artères pulmonaires, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, angiografie, thorax, pulmonale arteries, met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Pulmonalarterien, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114063",
    "display" : "CT, angiography, chest, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, angiographie, thorax, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, angiografie, thorax, met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Thorax, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114966",
    "display" : "CT, angiography, chest-abdomen, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, angiographie, thorax-abdomen, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, angiografie, thorax-abdomen, met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Thorax-Abdomen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "125053",
    "display" : "CT, angiography, chest-abdomen-pelvis, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, angiographie, thorax-abdomen-bassin, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, angiografie, thorax-abdomen-bekken, met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Thorax-Abdomen-Becken, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114374",
    "display" : "CT, angiography, head, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angioscanner de la tête avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-angiografie van hoofd"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Schädel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114375",
    "display" : "CT, angiography, head-neck, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan de la tête et du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-angiografie van hoofd-halsregio met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Schädel-Hals, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114774",
    "display" : "CT, angiography, heart, coronary arteries, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan coronaire"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomoangiografie van coronairarterie"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Herz, Koronararterien, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115498",
    "display" : "CT, angiography, heart, coronary arteries, w iv contrast, low dose",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan coronaire"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomoangiografie van coronairarterie"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Herz, Koronararterien (low-dose), mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141649",
    "display" : "CT, angiography, lower extremity, ankle, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan de membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-angiografie van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, untere Extremität, Sprunggelenk, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141650",
    "display" : "CT, angiography, lower extremity, foot, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan de membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-angiografie van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, untere Extremität, Fuß, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141647",
    "display" : "CT, angiography, lower extremity, knee, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan de membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-angiografie van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, untere Extremität, Knie, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141648",
    "display" : "CT, angiography, lower extremity, leg, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan de membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-angiografie van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, untere Extremität, Bein, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141646",
    "display" : "CT, angiography, lower extremity, thigh, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan de membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-angiografie van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, untere Extremität, Oberschenkel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114376",
    "display" : "CT, angiography, lower extremity, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan de membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-angiografie van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, untere Extremität, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130736",
    "display" : "CT, angiography, maxface, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, angiographie, maxillo-facial, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, angiografie, maxillofaciaal, met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Gesichtsschädel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114377",
    "display" : "CT, angiography, neck, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan des vaisseaux du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-angiografie van bloedvat van hals"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Hals, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141640",
    "display" : "CT, angiography, pelvis, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan des vaisseaux du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van bloedvat van bekken"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Becken, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000011",
    "display" : "CT, angiography, pelvis-lower extremity, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan du pelvis et membres inférieurs"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomoangiografie van bekken en onderste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Becken-untere Extremitäten, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114058",
    "display" : "CT, angiography, spine, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan des structures vasculaires de la colonne vertébrale"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-angiografie van bloedvat van wervelkolom"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, Wirbelsäule, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141641",
    "display" : "CT, angiography, upper extremity, arm, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan d'artère du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CTA van arterie van bovenste ledemaat"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, obere Extremität, Arm, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141642",
    "display" : "CT, angiography, upper extremity, elbow, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan d'artère du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CTA van arterie van bovenste ledemaat"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, obere Extremität, Ellbogen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141643",
    "display" : "CT, angiography, upper extremity, forearm, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan d'artère du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CTA van arterie van bovenste ledemaat"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, obere Extremität, Unterarm, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141645",
    "display" : "CT, angiography, upper extremity, hand, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan d'artère du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CTA van arterie van bovenste ledemaat"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, obere Extremität, Hand, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3117468",
    "display" : "CT, angiography, upper extremity, shoulder, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan d'artère du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CTA van arterie van bovenste ledemaat"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, obere Extremität, Schulter, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130746",
    "display" : "CT, angiography, upper extremity, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie - CT scan d'artère du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CTA van arterie van bovenste ledemaat"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie, obere Extremität, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000014",
    "display" : "CT, angiography-perfusion, head, stroke eval, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, angiographie de perfusion, cerveau, bilan AVC, sans / avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, perfusie angiografie, hoofd, CVA evaluatie, zonder/met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Angiographie-Perfusion, Schädel, Schlaganfallevaluierung, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "128556",
    "display" : "CT, area of interest, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Zielregion, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114372",
    "display" : "CT, area of interest, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Zielregion, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126703",
    "display" : "CT, area of interest, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, ROI, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114035",
    "display" : "CT, arthrography, lower extremity, ankle",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie - CT scan de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie met artrografie van enkel"
    },
    {
      "language" : "de",
      "value" : "CT, Arthrographie, untere Extremität, Sprunggelenk"
    }]
  },
  {
    "code" : "130510",
    "display" : "CT, arthrography, lower extremity, ankle, incl hindfoot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie - CT scan de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie met artrografie van enkel"
    },
    {
      "language" : "de",
      "value" : "CT, Arthrographie, untere Extremität, Sprunggelenk und Hinterfuß"
    }]
  },
  {
    "code" : "114057",
    "display" : "CT, arthrography, lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie - CT scan de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-artrografie van heup"
    },
    {
      "language" : "de",
      "value" : "CT, Arthrographie, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "115032",
    "display" : "CT, arthrography, lower extremity, knee",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie - CT scan du genou"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-artrografie van articulatio genus"
    },
    {
      "language" : "de",
      "value" : "CT, Arthrographie, untere Extremität, Knie"
    }]
  },
  {
    "code" : "115017",
    "display" : "CT, arthrography, upper extremity, elbow",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie - CT scan du coude"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-artrografie van elleboog"
    },
    {
      "language" : "de",
      "value" : "CT, Arthrographie, obere Extremität, Ellbogen"
    }]
  },
  {
    "code" : "114036",
    "display" : "CT, arthrography, upper extremity, shoulder",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie - CT scan de l'épaule"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie met artrografie van schouder"
    },
    {
      "language" : "de",
      "value" : "CT, Arthrographie, obere Extremität, Schulter"
    }]
  },
  {
    "code" : "115079",
    "display" : "CT, arthrography, upper extremity, wrist",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie - CT scan du poignet"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-artrografie van pols"
    },
    {
      "language" : "de",
      "value" : "CT, Arthrographie, obere Extremität, Handgelenk"
    }]
  },
  {
    "code" : "114062",
    "display" : "CT, calcium score, heart, coronary arteries, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan cardiaque sans produit de contraste avec calcul du score calcique"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hart zonder contrast met bepaling van coronaire calciumscore"
    },
    {
      "language" : "de",
      "value" : "CT, Calcium-Score, Herz, Koronararterien, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000067",
    "display" : "CT, chest, acromioclavicular joint, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'articulation acromio-claviculaire"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van acromioclaviculair gewricht"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Akromioklavikulargelenk, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000065",
    "display" : "CT, chest, acromioclavicular joint, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'articulation acromio-claviculaire"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van acromioclaviculair gewricht"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Akromioklavikulargelenk, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000066",
    "display" : "CT, chest, acromioclavicular joint, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'articulation acromio-claviculaire"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van acromioclaviculair gewricht"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Akromioklavikulargelenk, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000068",
    "display" : "CT, chest, clavicle, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la clavicule avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie met contrast van clavicula"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Schlüsselbein, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000069",
    "display" : "CT, chest, clavicle, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de clavicule"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van clavicula"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Schlüsselbein, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000070",
    "display" : "CT, chest, clavicle, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la clavicule avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie met contrast van clavicula"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Schlüsselbein, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000016",
    "display" : "CT, chest, high resolution, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, thorax, haute résolution, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, thorax, hoge resolutie, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, hochauflösend, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000082",
    "display" : "CT, chest, sternoclavicular joint, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'articulation sterno-claviculaire avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sternoclaviculair gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Sternoklavikulargelenk, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000080",
    "display" : "CT, chest, sternoclavicular joint, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthro-CT sternoclaviculaire sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sternoclaviculair gewricht zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Sternoklavikulargelenk, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000081",
    "display" : "CT, chest, sternoclavicular joint, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'articulation sterno-claviculaire avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sternoclaviculair gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Sternoklavikulargelenk, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126748",
    "display" : "CT, chest, sternum, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du sternum avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT met contrast van sternum"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Sternum, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115391",
    "display" : "CT, chest, sternum, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, thorax, sternum, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, thorax, sternum, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Sternum, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126749",
    "display" : "CT, chest, sternum, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du sternum avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT met contrast van sternum"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, Sternum, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114049",
    "display" : "CT, chest, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan thoracique avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van thorax met contrastmiddel"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126894",
    "display" : "CT, chest, w iv contrast, incl upper abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan thoracique et abdominal supérieur avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van thorax en bovenste gedeelte van abdomen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, mit i.v. Kontrast, inkl. oberes Abdomen"
    }]
  },
  {
    "code" : "114957",
    "display" : "CT, chest, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan thoracique sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van thorax zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126895",
    "display" : "CT, chest, wo iv contrast, incl upper abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie du thorax et de l'abdomen supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van borstkas en bovenbuik"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, ohne i.v. Kontrast, inkl. oberes Abdomen"
    }]
  },
  {
    "code" : "5000022",
    "display" : "CT, chest, wo iv contrast, low dose",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, thorax, sans contraste IV, low dose"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, thorax, zonder IV contrast, low dose"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax (low-dose), ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126709",
    "display" : "CT, chest, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan thoracique avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van thorax met contrastmiddel"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126896",
    "display" : "CT, chest, wo/w iv contrast, incl upper abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan thoracique et abdominal supérieur avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van thorax en bovenste gedeelte van abdomen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, ohne/mit i.v. Kontrast, inkl. oberes Abdomen"
    }]
  },
  {
    "code" : "3082522",
    "display" : "CT, chest-abdomen, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du thorax et de l'abdomen avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van thorax en abdomen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax-Abdomen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082520",
    "display" : "CT, chest-abdomen, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie du thorax et de l'abdomen sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-scan van thorax en abdomen zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax-Abdomen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3082521",
    "display" : "CT, chest-abdomen, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du thorax et de l'abdomen avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van thorax en abdomen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax-Abdomen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114955",
    "display" : "CT, chest-abdomen-pelvis, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) thoracique, abdominale et pelvienne avec produit de contraste IV (intraveineux)"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-scan van thorax, abdomen en pelvis met IV-contrastmiddel"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax-Abdomen-Becken, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "125045",
    "display" : "CT, chest-abdomen-pelvis, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan thoraco-abdomino-pelvien sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-scan van thorax, abdomen en bekken zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax-Abdomen-Becken, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126708",
    "display" : "CT, chest-abdomen-pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) thoracique, abdominale et pelvienne avec produit de contraste IV (intraveineux)"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-scan van thorax, abdomen en pelvis met IV-contrastmiddel"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax-Abdomen-Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3098603",
    "display" : "CT, cisternography, head, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, cisternographie, cerveau, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van hersenventrikel met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Zisternographie, Schädel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114037",
    "display" : "CT, colonography, abdomen-pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, colonographie, abdomen-bassin"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, colonografie, abdomen-bekken"
    },
    {
      "language" : "de",
      "value" : "CT, Kolonographie, Abdomen-Becken"
    }]
  },
  {
    "code" : "3104514",
    "display" : "CT, cone beam, maxface, paranasal sinuses, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie à faisceau conique des os de la face"
    },
    {
      "language" : "nl-BE",
      "value" : "'cone beam'-computertomografie van bot van aangezicht"
    },
    {
      "language" : "de",
      "value" : "CT, Volumentomographie, Gesichtsschädel, Nasennebenhöhlen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115388",
    "display" : "CT, cystography, pelvis, unspec iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, cystographie, bassin, contraste IV non spécifié"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie-cystografie met intraveneus contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Zystographie, Becken, mit Kontrast"
    }]
  },
  {
    "code" : "126899",
    "display" : "CT, discography, spine, lumbar, unspec iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, discographie, colonne, lombaire, contraste IV non spécifié"
    },
    {
      "language" : "nl-BE",
      "value" : "discografie met computertomografie met injectie van contrast in tussenwervelschijf van lumbale wervelkolom"
    },
    {
      "language" : "de",
      "value" : "CT, Diskographie, Wirbelsäule, lumbal, mit Kontrast"
    }]
  },
  {
    "code" : "5000056",
    "display" : "CT, dynamic, lower extremity, knee, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie du genou sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van knie zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, dynamisch, untere Extremität, Knie, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115073",
    "display" : "CT, enteroclysis, abdomen-pelvis, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "entéroclyse par CT scan"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-scan bij dunnedarmpassageonderzoek"
    },
    {
      "language" : "de",
      "value" : "CT, Enteroklysma, Abdomen-Becken, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115070",
    "display" : "CT, enterography, abdomen-pelvis, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'intestin grêle avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van dunne darm met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Enterographie, Abdomen-Becken, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115484",
    "display" : "CT, follow up, chest, unspec iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan thoracique avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van thorax met contrastmiddel"
    },
    {
      "language" : "de",
      "value" : "CT, Thorax, ohne oder mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114056",
    "display" : "CT, function and morphology, heart, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, fonctionnel et morphologique, coeur, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, functie en morfologie, hart, met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Funktion und Morphologie, Herz, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000074",
    "display" : "CT, head, mastoid, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de mastoide avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie met contrast van mastoïd"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, Mastoid, mit i.v.Kontrast"
    }]
  },
  {
    "code" : "5000075",
    "display" : "CT, head, mastoid, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie du processus mastoïde de l'os temporal sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie zonder contrast van mastoïd"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, Mastoid, ohne i.v.Kontrast"
    }]
  },
  {
    "code" : "5000076",
    "display" : "CT, head, mastoid, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de mastoide avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie met contrast van mastoïd"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, Mastoid, ohne/mit i.v.Kontrast"
    }]
  },
  {
    "code" : "130729",
    "display" : "CT, head, orbits, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan d'orbite avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van orbita met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, Orbita, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130731",
    "display" : "CT, head, orbits, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) de l'orbite sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van orbita zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, Orbita, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130730",
    "display" : "CT, head, orbits, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan d'orbite avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van orbita met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, Orbita, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126750",
    "display" : "CT, head, temporal bone, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'os temporal avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT met contrast van os temporale"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, Schläfenbein, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115392",
    "display" : "CT, head, temporal bone, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) de l'os temporal sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie zonder contrast van os temporale"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, Schläfenbein, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126751",
    "display" : "CT, head, temporal bone, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'os temporal avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT met contrast van os temporale"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, Schläfenbein, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114053",
    "display" : "CT, head, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la tête avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hoofd met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3122039",
    "display" : "CT, head, w iv contrast, incl sinuses",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la tête avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hoofd met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, mit i.v. Kontrast, inkl. Nebenhöhlen"
    }]
  },
  {
    "code" : "114055",
    "display" : "CT, head, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan de la tête sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hoofd zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5900001",
    "display" : "CT, head, wo iv contrast (Clinical Calculator)",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan de la tête sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hoofd zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, ohne i.v. Kontrast (Clinical Calculator)"
    }]
  },
  {
    "code" : "3122038",
    "display" : "CT, head, wo iv contrast, incl sinuses",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan de la tête sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hoofd zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, ohne i.v. Kontrast, inkl. Nebenhöhlen"
    }]
  },
  {
    "code" : "114054",
    "display" : "CT, head, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la tête avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hoofd met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3122040",
    "display" : "CT, head, wo/w iv contrast, incl sinuses",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la tête avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hoofd met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel ohne/mit i.v. Kontrast, inkl. Nebenhöhlen"
    }]
  },
  {
    "code" : "115493",
    "display" : "CT, head-neck, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la tête et du cou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van hoofd-halsregio met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel-Hals, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115494",
    "display" : "CT, head-neck, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie de la tête et du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hoofd-halsgebied"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel-Hals, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126721",
    "display" : "CT, head-neck, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la tête et du cou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van hoofd-halsregio met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel-Hals, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082530",
    "display" : "CT, head-orbits, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan d'orbite avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van orbita met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel-Orbita, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082531",
    "display" : "CT, head-orbits, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) de l'orbite sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van orbita zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel-Orbita, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3082532",
    "display" : "CT, head-orbits, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan d'orbite avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van orbita met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Schädel-Orbita, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "2",
    "display" : "CT, heart, unspec iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du coeur"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hart"
    },
    {
      "language" : "de",
      "value" : "CT, Herz, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126701",
    "display" : "CT, lower extremity, ankle, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de cheville avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van enkel met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Sprunggelenk, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130511",
    "display" : "CT, lower extremity, ankle, w iv contrast, incl hindfoot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de cheville avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van enkel met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Sprunggelenk inkl. Hinterfuß, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115077",
    "display" : "CT, lower extremity, ankle, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) de la cheville sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van enkel zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Sprunggelenk, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130513",
    "display" : "CT, lower extremity, ankle, wo iv contrast, incl hindfoot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) de la cheville sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van enkel zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Sprunggelenk inkl. Hinterfuß, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126702",
    "display" : "CT, lower extremity, ankle, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de cheville avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van enkel met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Sprunggelenk, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130512",
    "display" : "CT, lower extremity, ankle, wo/w iv contrast, incl hindfoot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de cheville avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van enkel met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Sprunggelenk, ohne/mit i.v. Kontrast, inkl. Hinterfuß"
    }]
  },
  {
    "code" : "126715",
    "display" : "CT, lower extremity, foot, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du pied avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van voet met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Fuß, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114960",
    "display" : "CT, lower extremity, foot, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan du pied sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van voet zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Fuß, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115083",
    "display" : "CT, lower extremity, foot, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du pied avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van voet met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Fuß, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000071",
    "display" : "CT, lower extremity, heel, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du calcanéum avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hielbeen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Ferse, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000072",
    "display" : "CT, lower extremity, heel, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du calcanéum"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hielbeen"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Ferse, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000073",
    "display" : "CT, lower extremity, heel, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du calcanéum avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hielbeen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Ferse, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3098242",
    "display" : "CT, lower extremity, hip, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la hanche avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van heup met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Hüfte, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114961",
    "display" : "CT, lower extremity, hip, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan de la hanche sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT zonder contrast van heup"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Hüfte, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3098243",
    "display" : "CT, lower extremity, hip, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la hanche avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van heup met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Hüfte, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3097300",
    "display" : "CT, lower extremity, hips, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des deux hanches avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van beide heupen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Hüften, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115086",
    "display" : "CT, lower extremity, hips, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) des deux hanches sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie zonder contrast van beide heupen"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Hüften, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3097302",
    "display" : "CT, lower extremity, hips, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des deux hanches avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van beide heupen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Hüften, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126727",
    "display" : "CT, lower extremity, knee, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du genou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van knie met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Knie, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115031",
    "display" : "CT, lower extremity, knee, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie du genou sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van knie zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Knie, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126729",
    "display" : "CT, lower extremity, knee, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du genou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van knie met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Knie, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130807",
    "display" : "CT, lower extremity, leg, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) de la partie inférieure du membre inférieur avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van onderbeen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Bein, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130809",
    "display" : "CT, lower extremity, leg, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) de la partie inférieure du membre inférieur sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van onderbeen zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Bein, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130808",
    "display" : "CT, lower extremity, leg, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) de la partie inférieure du membre inférieur avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van onderbeen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Bein, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126713",
    "display" : "CT, lower extremity, thigh, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la cuisse avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van bovenbeen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Oberschenkel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3100377",
    "display" : "CT, lower extremity, thigh, w iv contrast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la cuisse avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van bovenbeen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Oberschenkel, mit i.v. Kontrast, bilateral"
    }]
  },
  {
    "code" : "115081",
    "display" : "CT, lower extremity, thigh, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la cuisse"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van bovenbeen"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Oberschenkel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3100376",
    "display" : "CT, lower extremity, thigh, wo iv contrast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la cuisse"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van bovenbeen"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Oberschenkel, ohne i.v. Kontrast, bilateral"
    }]
  },
  {
    "code" : "126714",
    "display" : "CT, lower extremity, thigh, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la cuisse"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van bovenbeen"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Femur, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3100378",
    "display" : "CT, lower extremity, thigh, wo/w iv contrast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la cuisse avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van bovenbeen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Oberschenkel, ohne/mit i.v. Kontrast, bilateral"
    }]
  },
  {
    "code" : "5000083",
    "display" : "CT, lower extremity, toe, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan d'orteil"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van digitus pedis"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Zehe, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000084",
    "display" : "CT, lower extremity, toe, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan d'orteil"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van digitus pedis"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Zehe, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000085",
    "display" : "CT, lower extremity, toe, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan d'orteil"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van digitus pedis"
    },
    {
      "language" : "de",
      "value" : "CT, untere Extremität, Zehe, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115383",
    "display" : "CT, maxface, paranasal sinuses, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie des sinus paranasaux avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-scan van sinus paranasalis met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Gesichtsschädel, Nasennebenhöhlen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115385",
    "display" : "CT, maxface, paranasal sinuses, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomographie computérisée des sinus paranasaux sans contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-scan van sinus paranasalis zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Gesichtsschädel, Nasennebenhöhlen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126735",
    "display" : "CT, maxface, paranasal sinuses, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie des sinus paranasaux avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-scan van sinus paranasalis met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Gesichtsschädel, Nasennebenhöhlen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130733",
    "display" : "CT, maxface, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la région maxillo-faciale avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie met contrast van maxillofaciaal gebied"
    },
    {
      "language" : "de",
      "value" : "CT, Gesichtsschädel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130735",
    "display" : "CT, maxface, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan maxillofacial sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie zonder contrast van maxillofaciaal gebied"
    },
    {
      "language" : "de",
      "value" : "CT, Gesichtsschädel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130734",
    "display" : "CT, maxface, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la région maxillo-faciale avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie met contrast van maxillofaciaal gebied"
    },
    {
      "language" : "de",
      "value" : "CT, Gesichtsschädel, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115195",
    "display" : "CT, myelography, spine",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "myélographie - CT scan"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-myelografie"
    },
    {
      "language" : "de",
      "value" : "CT, Myelographie, Wirbelsäule"
    }]
  },
  {
    "code" : "114663",
    "display" : "CT, myelography, spine, cervical",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "myélotomodensitométrie de la région cervicale"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-myelografie van halswervelkolomgebied"
    },
    {
      "language" : "de",
      "value" : "CT, Myelographie, Wirbelsäule, zervikal"
    }]
  },
  {
    "code" : "3102064",
    "display" : "CT, myelography, spine, cervical-thoracic-lumbar",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, myélographie, colonne, cervico-dorso-lombaire"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, myelografie, wervelkolom, cervico- thoraco-lumbaal"
    },
    {
      "language" : "de",
      "value" : "CT, Myelographie, Wirbelsäule, zervikal-thorakal-lumbal"
    }]
  },
  {
    "code" : "114038",
    "display" : "CT, myelography, spine, lumbar",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "myélographie - CT scan de la région lombaire"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-myelografie van lumbale regio"
    },
    {
      "language" : "de",
      "value" : "CT, Myeolographie, Wirbelsäule, lumbal"
    }]
  },
  {
    "code" : "128659",
    "display" : "CT, myelography, spine, thoracic-lumbar",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, myélographie, colonne, dorso-lombaire"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, myelografie, wervelkolom, thoraco-lumbaal"
    },
    {
      "language" : "de",
      "value" : "CT, Myelographie, Wirbelsäule, thorakal-lumbal"
    }]
  },
  {
    "code" : "115088",
    "display" : "CT, neck, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du cou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van hals en/of nek met contrastmiddel"
    },
    {
      "language" : "de",
      "value" : "CT, Hals, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115380",
    "display" : "CT, neck, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hals"
    },
    {
      "language" : "de",
      "value" : "CT, Hals, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115090",
    "display" : "CT, neck, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du cou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van hals en/of nek met contrastmiddel"
    },
    {
      "language" : "de",
      "value" : "CT, Hals, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000007",
    "display" : "CT, neck-chest, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du cou et du thorax avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hals en/of nek en borstkas met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Hals-Thorax, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000009",
    "display" : "CT, neck-chest, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) cervicale et thoracique sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hals en/of nek en borstkas zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Hals-Thorax, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000008",
    "display" : "CT, neck-chest, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du cou et du thorax avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hals en/of nek en borstkas met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Hals-Thorax, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3098213",
    "display" : "CT, pelvis, sacroiliac joints, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sacro-iliacaal gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken, Sakroiliakalgelenke, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3098211",
    "display" : "CT, pelvis, sacroiliac joints, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van sacro-iliacaal gewricht"
    },
    {
      "language" : "de",
      "value" : "CT, Becken, Sakroiliakalgelenke, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3098212",
    "display" : "CT, pelvis, sacroiliac joints, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sacro-iliacaal gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken, Sakroiliakalgelenke, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114264",
    "display" : "CT, pelvis, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie du pelvis avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van bekken met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114964",
    "display" : "CT, pelvis, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie du pelvis sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van bekken zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126737",
    "display" : "CT, pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie du pelvis avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van bekken met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082535",
    "display" : "CT, pelvis-lower extremity, hips, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, bassin-membre inférieur, hanches, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, bekken-onderste extremiteit, heupen, met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-untere Extremität, Hüfte, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082534",
    "display" : "CT, pelvis-lower extremity, hips, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, bassin-membre inférieur, hanches, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, bekken-onderste extremiteit, heupen, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-untere Extremität, Hüfte, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3082536",
    "display" : "CT, pelvis-lower extremity, hips, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, bassin-membre inférieur, hanches, sans / avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, bekken-onderste extremiteit, heupen, zonder/met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-untere Extremität, Hüfte, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110183",
    "display" : "CT, pelvis-spine, sacroiliac joints-cervical, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sacro-iliacaal gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-cervikal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110179",
    "display" : "CT, pelvis-spine, sacroiliac joints-cervical, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van sacro-iliacaal gewricht"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-cervikal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110184",
    "display" : "CT, pelvis-spine, sacroiliac joints-cervical, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sacro-iliacaal gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-cervikal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110182",
    "display" : "CT, pelvis-spine, sacroiliac joints-lumbar, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne lombaire et des articulations sacro-iliaques avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van lumbale wervelkolom en sacro-iliacaal gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-lumbal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110186",
    "display" : "CT, pelvis-spine, sacroiliac joints-lumbar, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne lombaire et des articulations sacro-iliaques"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van lumbale wervelkolom en SI-gewrichten"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-lumbal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110185",
    "display" : "CT, pelvis-spine, sacroiliac joints-lumbar, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne lombaire et des articulations sacro-iliaques avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van lumbale wervelkolom en sacro-iliacaal gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-lumbal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110189",
    "display" : "CT, pelvis-spine, sacroiliac joints-sacrum, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sacro-iliacaal gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-sacral, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110190",
    "display" : "CT, pelvis-spine, sacroiliac joints-sacrum, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van sacro-iliacaal gewricht"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-sakral, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110181",
    "display" : "CT, pelvis-spine, sacroiliac joints-thoracic, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sacro-iliacaal gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-thorakal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110187",
    "display" : "CT, pelvis-spine, sacroiliac joints-thoracic, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van sacro-iliacaal gewricht"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-thorakal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110188",
    "display" : "CT, pelvis-spine, sacroiliac joints-thoracic, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des articulations sacro-iliaques avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sacro-iliacaal gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Becken-Wirbelsäule, Sakroiliakalgelenke-thorakal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "125049",
    "display" : "CT, perfusion, head, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de perfusion du cerveau"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van hersenperfusie"
    },
    {
      "language" : "de",
      "value" : "CT, Perfusion, Schädel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115523",
    "display" : "CT, quantitative peripheral, upper extremity, forearm",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan pour densité osseuse"
    },
    {
      "language" : "nl-BE",
      "value" : "kwantitatieve computertomografie"
    },
    {
      "language" : "de",
      "value" : "CT, quantitativ peripher, obere Extremität, Unterarm"
    }]
  },
  {
    "code" : "114060",
    "display" : "CT, quantitative, lower extremity, femur",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan pour densité osseuse"
    },
    {
      "language" : "nl-BE",
      "value" : "kwantitatieve computertomografie"
    },
    {
      "language" : "de",
      "value" : "CT, quantitativ, untere Extremität, Femur"
    }]
  },
  {
    "code" : "114061",
    "display" : "CT, quantitative, lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan pour densité osseuse"
    },
    {
      "language" : "nl-BE",
      "value" : "kwantitatieve computertomografie"
    },
    {
      "language" : "de",
      "value" : "CT, quantitativ, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "114304",
    "display" : "CT, quantitative, spine",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan pour densité osseuse"
    },
    {
      "language" : "nl-BE",
      "value" : "kwantitatieve computertomografie"
    },
    {
      "language" : "de",
      "value" : "CT, quantitativ, Wirbelsäule"
    }]
  },
  {
    "code" : "3100423",
    "display" : "CT, quantitative, spine-lower extremity, lumbar-hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan pour densité osseuse"
    },
    {
      "language" : "nl-BE",
      "value" : "kwantitatieve computertomografie"
    },
    {
      "language" : "de",
      "value" : "CT, quantitativ, Wirbelsäule-untere Extremität, lumbal und Hüfte"
    }]
  },
  {
    "code" : "3100433",
    "display" : "CT, quantitative, spine-lower extremity, lumbar-hips",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan pour densité osseuse"
    },
    {
      "language" : "nl-BE",
      "value" : "kwantitatieve computertomografie"
    },
    {
      "language" : "de",
      "value" : "CT, quantitativ, Wirbelsäule-untere Extremität, lumbal und Hüften"
    }]
  },
  {
    "code" : "5000023",
    "display" : "CT, scanogram, lower extremity, leg length",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, scaniométrie, membre inférieur, scanogramme full-leg"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, scanogram, onderste extremiteit, beenlengte"
    },
    {
      "language" : "de",
      "value" : "CT, Scanogramm, untere Extremität, Beinlänge"
    }]
  },
  {
    "code" : "115628",
    "display" : "CT, spine, cervical, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie de la colonne cervicale avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "axiale computertomografie van cervicale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, zervikal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114954",
    "display" : "CT, spine, cervical, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan du rachis cervical sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van halswervelkolom zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, zervikal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126705",
    "display" : "CT, spine, cervical, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie de la colonne cervicale avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "axiale computertomografie van cervicale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, zervikal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126744",
    "display" : "CT, spine, hot area, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne vertébrale"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van wervelkolom"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, szintigraphischer Speicherherd, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126746",
    "display" : "CT, spine, hot area, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne vertébrale"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van wervelkolom"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, szintigraphischer Speicherherd, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126745",
    "display" : "CT, spine, hot area, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne vertébrale"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van wervelkolom"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, Speicherherd, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126731",
    "display" : "CT, spine, lumbar, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne lombaire avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CAT van lumbale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, lumbal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114363",
    "display" : "CT, spine, lumbar, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) du rachis lombaire sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van lumbale wervelkolom zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, lumbal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126732",
    "display" : "CT, spine, lumbar, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne lombaire avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CAT van lumbale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, lumbal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3109465",
    "display" : "CT, spine, lumbar-sacrum, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne lombo-sacrée avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van lumbosacrale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, lumbosakral, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3109464",
    "display" : "CT, spine, lumbar-sacrum, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne lombo-sacrée"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van lumbosacrale wervelkolom"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, lumbosakral, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3109466",
    "display" : "CT, spine, lumbar-sacrum, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne lombo-sacrée avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van lumbosacrale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, lumbosakral, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110202",
    "display" : "CT, spine, sacrum, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du sacrum avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sacrale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, sakral, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110200",
    "display" : "CT, spine, sacrum, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne vertébrale sacrée"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-SWK"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, sakral, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110201",
    "display" : "CT, spine, sacrum, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du sacrum avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van sacrale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, sakral, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3109307",
    "display" : "CT, spine, thoracic, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne thoracique avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CAT van borstwervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, thorakal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3109359",
    "display" : "CT, spine, thoracic, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie de la colonne thoracique sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van thoracale wervelkolom zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, thorakal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3109360",
    "display" : "CT, spine, thoracic, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne thoracique avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CAT van borstwervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, thorakal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "128647",
    "display" : "CT, spine, thoracic-lumbar, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne dorso-lombaire avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van borst- en lendenwervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, thorakal-lumbal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "128649",
    "display" : "CT, spine, thoracic-lumbar, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne dorso-lombaire"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van BWK en LWK"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, thorakal-lumbal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "128648",
    "display" : "CT, spine, thoracic-lumbar, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne dorso-lombaire avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van borst- en lendenwervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, thorakal-lumbal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114368",
    "display" : "CT, spine, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne entière avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van gehele wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114369",
    "display" : "CT, spine, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne entière"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van gehele wervelkolom"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126747",
    "display" : "CT, spine, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la colonne entière avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van gehele wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126722",
    "display" : "CT, spine-lower extremity, hips, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des deux hanches avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van beide heupen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule-untere Extremität, Hüfte, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126724",
    "display" : "CT, spine-lower extremity, hips, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) des deux hanches sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie zonder contrast van beide heupen"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule-untere Extremität, Hüfte, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126723",
    "display" : "CT, spine-lower extremity, hips, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, colonne- membre inférieur, hanches, sans / avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, wervelkolom-onderste extremiteit, heupen, zonder/met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Wirbelsäule-untere Extremität, Hüfte, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130704",
    "display" : "CT, upper extremity, arm, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, membre supérieur, bras, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, bovenste extremiteit, bovenarm, met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Arm, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130706",
    "display" : "CT, upper extremity, arm, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie du membre supérieur sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van bovenste extremiteit zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Arm, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130705",
    "display" : "CT, upper extremity, arm, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, membre supérieur, bras, sans / avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, bovenste extremiteit, bovenarm, zonder/met IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Arm, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126712",
    "display" : "CT, upper extremity, elbow, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du coude avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van elleboog met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Ellbogen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114959",
    "display" : "CT, upper extremity, elbow, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT, membre supérieur, coude, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "CT, bovenste extremiteit, elleboog, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Ellbogen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114958",
    "display" : "CT, upper extremity, elbow, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du coude avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van elleboog met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Ellbogen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082524",
    "display" : "CT, upper extremity, finger, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de doigt"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van vinger, exclusief duim"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Finger, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082525",
    "display" : "CT, upper extremity, finger, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de doigt"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van vinger, exclusief duim"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Finger, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3082526",
    "display" : "CT, upper extremity, finger, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de doigt"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van vinger, exclusief duim"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Finger, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130754",
    "display" : "CT, upper extremity, forearm, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) de l'avant-bras avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van onderarm met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Unterarm, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130756",
    "display" : "CT, upper extremity, forearm, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan de l'avant-bras"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van onderarm"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Unterarm, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130755",
    "display" : "CT, upper extremity, forearm, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TDM (tomodensitométrie) de l'avant-bras avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van onderarm met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Unterarm, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126719",
    "display" : "CT, upper extremity, hand, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la main avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van hand met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Hand, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115021",
    "display" : "CT, upper extremity, hand, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la main"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van hand"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Hand, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126720",
    "display" : "CT, upper extremity, hand, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de la main avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van hand met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Hand, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000077",
    "display" : "CT, upper extremity, scapula, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'omoplate avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT met contrast van schouderblad"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Schulterblatt, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000078",
    "display" : "CT, upper extremity, scapula, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'omoplate"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van scapula"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Schulterblatt, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000079",
    "display" : "CT, upper extremity, scapula, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'omoplate avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT met contrast van schouderblad"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Schulterblatt, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130793",
    "display" : "CT, upper extremity, shoulder, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'épaule avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van schouder met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Schulter, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115496",
    "display" : "CT, upper extremity, shoulder, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT-scan de l'épaule sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van schouder zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Schulter, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115495",
    "display" : "CT, upper extremity, shoulder, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan de l'épaule avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van schouder met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Schulter, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082759",
    "display" : "CT, upper extremity, thumb, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du pouce"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van digitus I van hand"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Daumen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115029",
    "display" : "CT, upper extremity, thumb, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du pouce"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van digitus I van hand"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Daumen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3082760",
    "display" : "CT, upper extremity, thumb, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du pouce"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van digitus I van hand"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Daumen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115395",
    "display" : "CT, upper extremity, wrist, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du poignet avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van pols met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Handgelenk, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082537",
    "display" : "CT, upper extremity, wrist, w iv contrast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des deux poignets avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van linker en rechter pols met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Handgelenk, mit i.v. Kontrast, bilateral"
    }]
  },
  {
    "code" : "114293",
    "display" : "CT, upper extremity, wrist, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie du poignet sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van pols zonder contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Handgelenk, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "9000057",
    "display" : "CT, upper extremity, wrist, wo iv contrast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des deux poignets"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van linker en rechter pols"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Handgelenk, ohne i.v. Kontrast, bilateral"
    }]
  },
  {
    "code" : "126759",
    "display" : "CT, upper extremity, wrist, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan du poignet avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van pols met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Handgelenk, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082538",
    "display" : "CT, upper extremity, wrist, wo/w iv contrast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "CT scan des deux poignets avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT van linker en rechter pols met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, obere Extremität, Handgelenk, ohne/mit i.v. Kontrast, bilateral"
    }]
  },
  {
    "code" : "114950",
    "display" : "CT, urography, abdomen-pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "tomodensitométrie des voies urinaires avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "computertomografie van urinewegen met contrast"
    },
    {
      "language" : "de",
      "value" : "CT, Urographie, Abdomen-Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126765",
    "display" : "CT, venography, chest, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie - CT scan"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-venografie"
    },
    {
      "language" : "de",
      "value" : "CT, Venographie, Thorax, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114064",
    "display" : "CT, venography, chest-lower extremity, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "phlébographie d'une veine du membre inférieur par CT-scan avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-venografie van vena membri inferioris"
    },
    {
      "language" : "de",
      "value" : "CT, Venographie, Thorax, untere Extremität, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3098601",
    "display" : "CT, venography, head, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie - CT scan"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-venografie"
    },
    {
      "language" : "de",
      "value" : "CT, Venographie, Schädel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3100267",
    "display" : "CT, venography, head-neck, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie - CT scan"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-venografie"
    },
    {
      "language" : "de",
      "value" : "CT, Venographie, Schädel-Hals, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115497",
    "display" : "CT, venography, pelvis-lower extremity, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "phlébographie d'une veine du membre inférieur par CT-scan avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "CT-venografie van vena membri inferioris"
    },
    {
      "language" : "de",
      "value" : "CT, Venographie, Becken-untere Extremität, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114248",
    "display" : "END, ERCP, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "pancréatographie endoscopique rétrograde"
    },
    {
      "language" : "nl-BE",
      "value" : "endoscopisch retrograad röntgencontrastonderzoek van ductus pancreaticus"
    },
    {
      "language" : "de",
      "value" : "END, ERCP, Abdomen"
    }]
  },
  {
    "code" : "114540",
    "display" : "FLUOR, antegrade pyelography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "pyélographie antérograde sous radioscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide antegrade pyelografie"
    },
    {
      "language" : "de",
      "value" : "DL, antegrade Pyelographie"
    }]
  },
  {
    "code" : "125111",
    "display" : "FLUOR, balloon urethrography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "urétrographie sous fluoroscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "contrastonderzoek van urethra onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "DL, Urethrographie"
    }]
  },
  {
    "code" : "114002",
    "display" : "FLUOR, barium swallow and UGI",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "FLUORO, déglutition barytée et TOGD"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopie van bovenste deel van maag-darmkanaal met barium"
    },
    {
      "language" : "de",
      "value" : "DL, Bariumsulfat, Videoschluckakt"
    }]
  },
  {
    "code" : "114003",
    "display" : "FLUOR, biphasic esophagram",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radioscopie de l'œsophage avec produit de contraste baryté"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgendoorlichting van oesofagus met barium"
    },
    {
      "language" : "de",
      "value" : "DL, biphasisches Ösophagogramm Videoschluckakt"
    }]
  },
  {
    "code" : "125042",
    "display" : "FLUOR, cardiac valve or artery",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "fluoroscopie cardiaque"
    },
    {
      "language" : "nl-BE",
      "value" : "doorlichting van hart"
    },
    {
      "language" : "de",
      "value" : "DL, Herzklappe oder -arterie"
    }]
  },
  {
    "code" : "5000116",
    "display" : "FLUOR, chest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radioscopie du thorax"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopie van borstkas"
    },
    {
      "language" : "de",
      "value" : "DL, Thorax"
    }]
  },
  {
    "code" : "114174",
    "display" : "FLUOR, contrast enema",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radioscopie du côlon après lavement avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch onderzoek na toediening van klysma met contrast"
    },
    {
      "language" : "de",
      "value" : "DL, Kontrastmitteleinlauf"
    }]
  },
  {
    "code" : "3082951",
    "display" : "FLUOR, cystocolpoproctography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "FLUORO, CCD"
    },
    {
      "language" : "nl-BE",
      "value" : "FLUOROSCOPIE, CystoColpoDefaecografie"
    },
    {
      "language" : "de",
      "value" : "DL, Zystokolpoproktographie"
    }]
  },
  {
    "code" : "114598",
    "display" : "FLUOR, cystography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "cystographie sous radioscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "fluorescentiecystoscopie"
    },
    {
      "language" : "de",
      "value" : "DL, Zystographie"
    }]
  },
  {
    "code" : "3082957",
    "display" : "FLUOR, defecography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "défécographie sous contrôle fluoroscopique"
    },
    {
      "language" : "nl-BE",
      "value" : "defecografie onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "DL, Defäkographie"
    }]
  },
  {
    "code" : "114175",
    "display" : "FLUOR, double contrast barium enema",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "fluoroscopie digestive basse avec lavement baryté à contraste aérien"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopie van distale deel van maag-darmkanaal met contrastklysma van barium en lucht"
    },
    {
      "language" : "de",
      "value" : "DL, Barium-Doppelkontrasteinlauf"
    }]
  },
  {
    "code" : "114591",
    "display" : "FLUOR, dynamic and static, pharynx",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "pharyngographie fluoroscopique"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopische beeldvorming van farynx"
    },
    {
      "language" : "de",
      "value" : "DL, dynamisch und statisch, Pharynx"
    }]
  },
  {
    "code" : "114595",
    "display" : "FLUOR, enteroclysis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "transit grêle"
    },
    {
      "language" : "nl-BE",
      "value" : "bariumklysma voor dunne darm"
    },
    {
      "language" : "de",
      "value" : "DL, Enteroklysma"
    }]
  },
  {
    "code" : "3091674",
    "display" : "FLUOR, foot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radioscopie du membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgendoorlichting van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "DL, Fuß"
    }]
  },
  {
    "code" : "5000024",
    "display" : "FLUOR, genitogram, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radioscopie du système génito-urinaire avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide genitografie"
    },
    {
      "language" : "de",
      "value" : "DL, Genitogramm, Becken"
    }]
  },
  {
    "code" : "3098246",
    "display" : "FLUOR, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "fluoroscopie de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "doorlichting van heup"
    },
    {
      "language" : "de",
      "value" : "DL, Hüfte"
    }]
  },
  {
    "code" : "3091695",
    "display" : "FLUOR, Hysterosalpingography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "hystérosalpingographie fluoroscopique"
    },
    {
      "language" : "nl-BE",
      "value" : "hysterosalpingografie onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "DL, Hysterosalpingographie"
    }]
  },
  {
    "code" : "114589",
    "display" : "FLUOR, IVU/IVP",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "pyélographie IV (intraveineuse) sous fluoroscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide IVP"
    },
    {
      "language" : "de",
      "value" : "DL, IV Urographie"
    }]
  },
  {
    "code" : "114590",
    "display" : "FLUOR, knee",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie du genou sous radioscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopische artrografie van knie"
    },
    {
      "language" : "de",
      "value" : "DL, Knie"
    }]
  },
  {
    "code" : "114539",
    "display" : "FLUOR, loopogram",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "examen radiographique d'un conduit de l'iléon sous fluoroscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "beeldvormend onderzoek van conduit van ileum onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "DL, Loopogramm"
    }]
  },
  {
    "code" : "114001",
    "display" : "FLUOR, modified barium swallow",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "FLUORO, déglutition barytée modifiée"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgendoorlichting van farynx en cervicaal deel van oesofagus met contrast"
    },
    {
      "language" : "de",
      "value" : "DL, Videoschluckakt"
    }]
  },
  {
    "code" : "114592",
    "display" : "FLUOR, retrograde cystography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "FLUORO, cystographie rétrograde"
    },
    {
      "language" : "nl-BE",
      "value" : "retrograad contraströntgenonderzoek van blaas"
    },
    {
      "language" : "de",
      "value" : "DL, retrograde Zystographie"
    }]
  },
  {
    "code" : "115354",
    "display" : "FLUOR, retrograde pyelography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "pyélographie rétrograde sous fluoroscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "retrograde pyelografie onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "DL, retrograde Pyelographie"
    }]
  },
  {
    "code" : "114593",
    "display" : "FLUOR, retrograde urethrography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "urétrographie rétrograde sous radioscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "retrograde urethrografie onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "DL, retrograde Urethrographie"
    }]
  },
  {
    "code" : "114594",
    "display" : "FLUOR, SBFT",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radioscopie du tractus gastro-intestinal supérieur avec progression du transit dans l'intestin grêle"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopie van bovenste deel van maag-darmkanaal en dunnedarmpassage"
    },
    {
      "language" : "de",
      "value" : "DL, Dünndarmpassage"
    }]
  },
  {
    "code" : "114176",
    "display" : "FLUOR, single contrast barium enema",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "fluoroscopie digestive basse après lavement baryté"
    },
    {
      "language" : "nl-BE",
      "value" : "doorlichting van colon met bariumklysma"
    },
    {
      "language" : "de",
      "value" : "DL, Bariumkontrasteinlauf"
    }]
  },
  {
    "code" : "114588",
    "display" : "FLUOR, single contrast esophagram",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "fluoroscopie œsophagienne avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopie van slokdarm met contrast"
    },
    {
      "language" : "de",
      "value" : "FLUOR, Bariumkontrastschluck"
    }]
  },
  {
    "code" : "5000025",
    "display" : "FLUOR, sinogram, abdomen-pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie d'une cavité anormale sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "sinografie onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "DL, Sinugramm, Abdomen-Becken"
    }]
  },
  {
    "code" : "114030",
    "display" : "FLUOR, tenography, ankle",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "fluoroscopie de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "doorlichting van enkel"
    },
    {
      "language" : "de",
      "value" : "DL, Tenographie, Sprunggelenk"
    }]
  },
  {
    "code" : "114596",
    "display" : "FLUOR, UGI",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "fluoroscopie du tractus gastro-intestinal supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopie van bovenste deel van maag-darmkanaal"
    },
    {
      "language" : "de",
      "value" : "DL, Oberer GI-Trakt"
    }]
  },
  {
    "code" : "114597",
    "display" : "FLUOR, UGI and SBFT",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radioscopie du tractus gastro-intestinal supérieur avec progression du transit dans l'intestin grêle"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopie van bovenste deel van maag-darmkanaal en dunnedarmpassage"
    },
    {
      "language" : "de",
      "value" : "DL, Oberer GI-Trakt mit Dünndarmpassage"
    }]
  },
  {
    "code" : "114173",
    "display" : "FLUOR, VCUG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "cysto-urétrographie de miction"
    },
    {
      "language" : "nl-BE",
      "value" : "MCUG onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "DL, Miktionszysturethrographie"
    }]
  },
  {
    "code" : "128646",
    "display" : "INV, angiography, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie d'une structure vasculaire abdominale sous radioscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "contrastangiografie van bloedvat van abdomen onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Abdomen"
    }]
  },
  {
    "code" : "114209",
    "display" : "INV, angiography, abdomen, aorta",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie de l'aorte abdominale sous radioscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopische geleide angiografie van abdominale aorta"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Abdomen, Aorta"
    }]
  },
  {
    "code" : "114242",
    "display" : "INV, angiography, abdomen, kidney",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "artériographie rénale sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "contrastangiografie van arteria renalis onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Abdomen, Niere"
    }]
  },
  {
    "code" : "115240",
    "display" : "INV, angiography, abdomen, kidney, may have embo",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "artériographie rénale"
    },
    {
      "language" : "nl-BE",
      "value" : "arteriografie van nier"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Abdomen, Niere, evtl. Embolisation"
    }]
  },
  {
    "code" : "114291",
    "display" : "INV, angiography, abdomen, kidneys",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "artériographie rénale sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "contrastangiografie van arteria renalis onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Abdomen, Nieren"
    }]
  },
  {
    "code" : "114211",
    "display" : "INV, angiography, abdomen, visceral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie d'un vaisseau sanguin de l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "angiografie van bloedvat van abdomen"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Abdomen, viszeral"
    }]
  },
  {
    "code" : "11003",
    "display" : "INV, angiography, abdomen-pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radioscopie de l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopie van abdomen"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Abdomen-Becken"
    }]
  },
  {
    "code" : "125055",
    "display" : "INV, angiography, abdomen-pelvis, aorta",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, angiographie, abdomen-bassin, aorte"
    },
    {
      "language" : "nl-BE",
      "value" : "contrastangiografie van aorta abdominalis, beide arteriae femorales en beide iliacale arteriën onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Abdomen-Becken, Aorta"
    }]
  },
  {
    "code" : "115403",
    "display" : "INV, angiography, abdomen-pelvis, may have embo",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "artériographie d'une artère de l'abdomen sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "arteriografie van abdominale arterie onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Abdomen-Becken, evtl. Embolisation"
    }]
  },
  {
    "code" : "5000114",
    "display" : "INV, angiography, abdomen-pelvis-lower extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, angiographie, abdomen-bassin-membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "INTERVENTIE, angiografie, abdomen-bekken-onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Abdomen-Becken-untere Extremität"
    }]
  },
  {
    "code" : "11036",
    "display" : "INV, angiography, chest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie du thorax sous radioscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "angiografie van bloedvat van borstkas onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Thorax"
    }]
  },
  {
    "code" : "114240",
    "display" : "INV, angiography, chest, aorta",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "artériographie de l'aorte thoracique sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "contrastangiografie van aorta thoracica onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Thorax, Aorta"
    }]
  },
  {
    "code" : "3082540",
    "display" : "INV, angiography, chest, bronchial artery, may have embo",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "artériographie d'une artère bronchique sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide angiografie van arteria bronchialis"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Thorax, Bronchialarterien, evtl. Embolisation"
    }]
  },
  {
    "code" : "114214",
    "display" : "INV, angiography, chest, pulmonary arteries",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie fluoroscopique des artères pulmonaires"
    },
    {
      "language" : "nl-BE",
      "value" : "contrastangiografie van arteria pulmonalis onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Thorax, Pulmonalarterien"
    }]
  },
  {
    "code" : "114654",
    "display" : "INV, angiography, chest, pulmonary arteries-right heart",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie du côté droit du cœur sous radioscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "contrastangiografie van rechterhelft van hart onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Thorax, Pulmonalarterien-rechte Herzkammer"
    }]
  },
  {
    "code" : "3082519",
    "display" : "INV, angiography, chest-abdomen, aorta",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie de l'aorte sous radioscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "angiografie van aorta onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Thorax-Abdomen, Aorta"
    }]
  },
  {
    "code" : "3104522",
    "display" : "INV, angiography, chest-abdomen-pelvis, aorta",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie de l'aorte sous radioscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "angiografie van aorta onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Thorax-Abdomen-Becken, Aorta"
    }]
  },
  {
    "code" : "114210",
    "display" : "INV, angiography, head, cerebral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie des artéres cérébrales par fluoroscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide angiografie van cerebrale arterie"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Schädel, zerebral"
    }]
  },
  {
    "code" : "115402",
    "display" : "INV, angiography, head, craniofacial",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie de la tête sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "angiografie van bloedvat van hoofd onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Schädel, kraniofazial"
    }]
  },
  {
    "code" : "114216",
    "display" : "INV, angiography, head-neck, cervicocerebral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, angiographie, tête et cou, cervico-cérébrale"
    },
    {
      "language" : "nl-BE",
      "value" : "INTERVENTIE, angiografie, hoofd-hals, cervicocerebraal"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Schädel-Hals, zervikozerebral"
    }]
  },
  {
    "code" : "11022",
    "display" : "INV, angiography, heart",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, angiographie, coeur"
    },
    {
      "language" : "nl-BE",
      "value" : "selectieve contrastangiocardiografie onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Herz"
    }]
  },
  {
    "code" : "114212",
    "display" : "INV, angiography, heart, coronary arteries",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie fluoroscopique de l'artère coronaire avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "arteriografie van coronaire arterie onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Herz, Koronararterien"
    }]
  },
  {
    "code" : "128665",
    "display" : "INV, angiography, heart, coronary arteries, incl ventriculography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie du ventricule gauche et d'une artère coronaire sous radioscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide angiografie van linker ventrikel en arteriae coronariae"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Herz, Koronararterien, inkl. Ventrikulographie"
    }]
  },
  {
    "code" : "114243",
    "display" : "INV, angiography, lower extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "artériographie d'une artère du membre inférieur sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide angiografie van arterie van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, untere Extremität"
    }]
  },
  {
    "code" : "130732",
    "display" : "INV, angiography, maxface",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie de la tête sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "angiografie van bloedvat van hoofd onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Gesichtsschädel"
    }]
  },
  {
    "code" : "114218",
    "display" : "INV, angiography, neck",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie du cou sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "angiografie van bloedvat van hals en/of nek onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Hals"
    }]
  },
  {
    "code" : "125041",
    "display" : "INV, angiography, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie d'une structure vasculaire pelvienne sous radioscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "contrastangiografie van bloedvat van bekken onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Becken"
    }]
  },
  {
    "code" : "114219",
    "display" : "INV, angiography, spine",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie sélective de la colonne vertébrale"
    },
    {
      "language" : "nl-BE",
      "value" : "selectieve angiografie van vasculatuur van wervelkolom"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, Wirbelsäule"
    }]
  },
  {
    "code" : "130745",
    "display" : "INV, angiography, upper extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie artérielle du membre supérieur sous radioscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "arteriografie van arterie van bovenste ledemaat onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, obere Extremität"
    }]
  },
  {
    "code" : "3117467",
    "display" : "INV, angiography, upper extremity, shoulder",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "artériographie de l'artère axillaire sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide angiografie van arteria axillaris"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie, obere Extremität, Schulter"
    }]
  },
  {
    "code" : "114634",
    "display" : "INV, angiography/intervention, area of interest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie à la fluorescéine avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "angiografie onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Angiographie/Intervention, Zielregion"
    }]
  },
  {
    "code" : "114542",
    "display" : "INV, arthrography, lower extremity, ankle",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "artrografie van articulatio talocruralis"
    },
    {
      "language" : "de",
      "value" : "INV, Arthrographie, untere Extremität, Sprunggelenk"
    }]
  },
  {
    "code" : "130525",
    "display" : "INV, arthrography, lower extremity, ankle, incl hindfoot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "artrografie van articulatio talocruralis"
    },
    {
      "language" : "de",
      "value" : "INV, Arthrographie, untere Extremität, Sprunggelenk, inkl. Hinterfuß"
    }]
  },
  {
    "code" : "3098277",
    "display" : "INV, arthrography, lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "beeldvormend onderzoek van articulatio coxae"
    },
    {
      "language" : "de",
      "value" : "INV, Arthrographie, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "114220",
    "display" : "INV, arthrography, lower extremity, hip, incl aspiration",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "beeldvormend onderzoek van articulatio coxae"
    },
    {
      "language" : "de",
      "value" : "INV, Arthrographie, untere Extremität, Hüfte, einschl. Aspiration"
    }]
  },
  {
    "code" : "113997",
    "display" : "INV, arthrography, lower extremity, knee",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie du genou"
    },
    {
      "language" : "nl-BE",
      "value" : "artrografie van kniegewricht"
    },
    {
      "language" : "de",
      "value" : "INV, Arthrographie, untere Extremität, Knie"
    }]
  },
  {
    "code" : "113998",
    "display" : "INV, arthrography, upper extremity, shoulder",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie de l'épaule"
    },
    {
      "language" : "nl-BE",
      "value" : "artrografie van schouder"
    },
    {
      "language" : "de",
      "value" : "INV, Arthrographie, obere Extremität, Schulter"
    }]
  },
  {
    "code" : "113999",
    "display" : "INV, arthrography, upper extremity, thumb",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie de la ceinture scapulaire et du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "beeldvormend onderzoek van gewricht van bovenste ledemaat"
    },
    {
      "language" : "de",
      "value" : "INV, Arthrographie, obere Extremität, Daumen"
    }]
  },
  {
    "code" : "114000",
    "display" : "INV, arthrography, upper extremity, wrist",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie du poignet"
    },
    {
      "language" : "nl-BE",
      "value" : "artrografie van radiocarpaal gewricht"
    },
    {
      "language" : "de",
      "value" : "INV, Arthrographie, obere Extremität, Handgelenk"
    }]
  },
  {
    "code" : "3111248",
    "display" : "INV, aspiration, chest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "thoracentèse"
    },
    {
      "language" : "nl-BE",
      "value" : "thoracocentese"
    },
    {
      "language" : "de",
      "value" : "Thorakozentese"
    }]
  },
  {
    "code" : "3111247",
    "display" : "INV, aspiration, lower extremity, ankle",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ponction-aspiration"
    },
    {
      "language" : "nl-BE",
      "value" : "aspiratie"
    },
    {
      "language" : "de",
      "value" : "Entfernung durch Absaugen"
    }]
  },
  {
    "code" : "3098241",
    "display" : "INV, aspiration, lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "aspiration de l'articulation de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "aspiratie uit articulatio coxae"
    },
    {
      "language" : "de",
      "value" : "INV, Punktion, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "114221",
    "display" : "INV, aspiration, lower extremity, knee",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "aspiration au niveau d'une articulation du genou"
    },
    {
      "language" : "nl-BE",
      "value" : "aspiratie uit kniegewricht"
    },
    {
      "language" : "de",
      "value" : "INV, Punktion, untere Extremität, Knie"
    }]
  },
  {
    "code" : "3111255",
    "display" : "INV, aspiration, lower extremity, leg",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ponction-aspiration"
    },
    {
      "language" : "nl-BE",
      "value" : "aspiratie"
    },
    {
      "language" : "de",
      "value" : "Entfernung durch Absaugen"
    }]
  },
  {
    "code" : "3111250",
    "display" : "INV, aspiration, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie et ponction du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie en aspiratie uit bekken"
    },
    {
      "language" : "de",
      "value" : "INV, Punktion, Becken"
    }]
  },
  {
    "code" : "3111254",
    "display" : "INV, aspiration, upper extremity, arm",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "aspiration au niveau du membre supérieur sous contrôle fluoroscopique"
    },
    {
      "language" : "nl-BE",
      "value" : "aspiratie uit bovenste extremiteit onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Punktion, obere Extremität, Arm"
    }]
  },
  {
    "code" : "3111249",
    "display" : "INV, aspiration, upper extremity, elbow",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ponction de l'articulation du coude"
    },
    {
      "language" : "nl-BE",
      "value" : "punctie uit ellebooggewricht"
    },
    {
      "language" : "de",
      "value" : "INV, Punktion, obere Extremität, Ellbogen"
    }]
  },
  {
    "code" : "3111252",
    "display" : "INV, aspiration, upper extremity, forearm",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "aspiration au niveau du membre supérieur sous contrôle fluoroscopique"
    },
    {
      "language" : "nl-BE",
      "value" : "aspiratie uit bovenste extremiteit onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Punktion, obere Extremität, Unterarm"
    }]
  },
  {
    "code" : "3111253",
    "display" : "INV, aspiration, upper extremity, hand",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ponction de la main sous controle échographique"
    },
    {
      "language" : "nl-BE",
      "value" : "echogeleide aspiratie uit hand"
    },
    {
      "language" : "de",
      "value" : "INV, Punktion, obere Extremität, Hand"
    }]
  },
  {
    "code" : "115535",
    "display" : "INV, aspiration, upper extremity, shoulder",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ponction de l'épaule sous controle échographique"
    },
    {
      "language" : "nl-BE",
      "value" : "echogeleide aspiratie uit schouder"
    },
    {
      "language" : "de",
      "value" : "INV, Punktion, obere Extremität, Schulter"
    }]
  },
  {
    "code" : "115404",
    "display" : "INV, aspiration, upper extremity, wrist",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ponction du poignet sous controle échographique"
    },
    {
      "language" : "nl-BE",
      "value" : "echogeleide aspiratie uit pols"
    },
    {
      "language" : "de",
      "value" : "INV, Punktion, obere Extremität, Handgelenk"
    }]
  },
  {
    "code" : "114222",
    "display" : "INV, biopsy and aspiration, abdomen, kidney",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie à l'aiguille fine du rein"
    },
    {
      "language" : "nl-BE",
      "value" : "fijnenaaldbiopsie van nier"
    },
    {
      "language" : "de",
      "value" : "INV, Punktion und Biopsie, Abdomen, Niere"
    }]
  },
  {
    "code" : "114652",
    "display" : "INV, biopsy, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, biopsie, abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "INTERVENTIE, biopsie, abdomen"
    },
    {
      "language" : "de",
      "value" : "INV, Biopsie, Abdomen"
    }]
  },
  {
    "code" : "114223",
    "display" : "INV, biopsy, abdomen, adrenal",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie de la glande surrénale"
    },
    {
      "language" : "nl-BE",
      "value" : "biopsie van bijnier"
    },
    {
      "language" : "de",
      "value" : "INV, Biopsie, Abdomen, Nebenniere"
    }]
  },
  {
    "code" : "3082553",
    "display" : "INV, biopsy, abdomen, kidney, US guided",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie du rein sous échographie"
    },
    {
      "language" : "nl-BE",
      "value" : "biopsie van nier onder echoscopische begeleiding"
    },
    {
      "language" : "de",
      "value" : "INV, Biopsie, Abdomen, Niere, US-gezielt"
    }]
  },
  {
    "code" : "5000026",
    "display" : "INV, biopsy, abdomen, liver",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie du foie"
    },
    {
      "language" : "nl-BE",
      "value" : "biopsie van lever"
    },
    {
      "language" : "de",
      "value" : "Leberbiopsie"
    }]
  },
  {
    "code" : "3082945",
    "display" : "INV, biopsy, abdomen, renal mass",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie du rein"
    },
    {
      "language" : "nl-BE",
      "value" : "nierbiopsie"
    },
    {
      "language" : "de",
      "value" : "INV, Biopsie, Abdomen, Raumforderung Niere"
    }]
  },
  {
    "code" : "115335",
    "display" : "INV, biopsy, area of interest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie"
    },
    {
      "language" : "nl-BE",
      "value" : "biopsie"
    },
    {
      "language" : "de",
      "value" : "Biopsie"
    }]
  },
  {
    "code" : "114233",
    "display" : "INV, biopsy, chest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie du thorax"
    },
    {
      "language" : "nl-BE",
      "value" : "biopsie van thorax"
    },
    {
      "language" : "de",
      "value" : "INV, Biopsie, Thorax"
    }]
  },
  {
    "code" : "114227",
    "display" : "INV, biopsy, lower extremity, femur",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie du fémur"
    },
    {
      "language" : "nl-BE",
      "value" : "biopsie van femur"
    },
    {
      "language" : "de",
      "value" : "INV, Biopsie, untere Extremität, Femur"
    }]
  },
  {
    "code" : "115401",
    "display" : "INV, biopsy, pelvis, adnexa",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie de la trompe de Fallope"
    },
    {
      "language" : "nl-BE",
      "value" : "biopsie van eileider"
    },
    {
      "language" : "de",
      "value" : "INV, Biopsie, Becken, Adnexe"
    }]
  },
  {
    "code" : "3102431",
    "display" : "INV, biopsy, pelvis, prostate, MRI targeted",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie prostatique sous contrôle par imagerie par résonance magnétique"
    },
    {
      "language" : "nl-BE",
      "value" : "biopsie van glandula prostatica onder geleide van magnetic resonance imaging"
    },
    {
      "language" : "de",
      "value" : "INV, Biopsie, Becken, Prostata, MR-geleitet"
    }]
  },
  {
    "code" : "114228",
    "display" : "INV, biopsy, spine",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie de colonne vertébrale"
    },
    {
      "language" : "nl-BE",
      "value" : "biopsie van columna vertebralis"
    },
    {
      "language" : "de",
      "value" : "INV, Biopsie, Wirbelsäule"
    }]
  },
  {
    "code" : "130519",
    "display" : "INV, catheterization, heart, right heart",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "cathétérisme du coeur droit"
    },
    {
      "language" : "nl-BE",
      "value" : "katheterisatie van rechter harthelft"
    },
    {
      "language" : "de",
      "value" : "INV, Katheter, Herz, rechte Herzkammer"
    }]
  },
  {
    "code" : "5000027",
    "display" : "INV, cholangiogram, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "cholangiographie sous fluoroscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "contrastonderzoek van galwegen onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Cholangiogramm, Abdomen"
    }]
  },
  {
    "code" : "114226",
    "display" : "INV, core biopsy, breast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie du sein à aiguille creuse"
    },
    {
      "language" : "nl-BE",
      "value" : "'core'-biopsie van borst"
    },
    {
      "language" : "de",
      "value" : "INV, Stanzbiopsie, Mamma"
    }]
  },
  {
    "code" : "114664",
    "display" : "INV, discography, spine",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, discographie, colonne"
    },
    {
      "language" : "nl-BE",
      "value" : "discografie met injectie van contrast in tussenwervelschijf"
    },
    {
      "language" : "de",
      "value" : "INV, Diskographie, Wirbelsäule"
    }]
  },
  {
    "code" : "114229",
    "display" : "INV, discography, spine, cervical",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, discographie, colonne, cervicale"
    },
    {
      "language" : "nl-BE",
      "value" : "discografie met injectie van contrast in tussenwervelschijf van cervicale wervelkolom"
    },
    {
      "language" : "de",
      "value" : "Diskographie mit Kontrastmittelinjektion in die Bandscheibe der Halswirbelsäule"
    }]
  },
  {
    "code" : "126829",
    "display" : "INV, discography, spine, lumbar",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, discographie, colonne, lombaire"
    },
    {
      "language" : "nl-BE",
      "value" : "discografie met injectie van contrast in tussenwervelschijf van lumbale wervelkolom"
    },
    {
      "language" : "de",
      "value" : "INV, Diskographie, Wirbelsäule, lumbal"
    }]
  },
  {
    "code" : "114232",
    "display" : "INV, fine needle aspiration, breast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie percutanée du sein par aspiration à l'aiguille fine, guidée par imagerie"
    },
    {
      "language" : "nl-BE",
      "value" : "percutane dunnenaaldbiopsie van borst onder geleide van beeldvormende techniek"
    },
    {
      "language" : "de",
      "value" : "INV, Feinnadelaspiration, Mamma"
    }]
  },
  {
    "code" : "5000058",
    "display" : "INV, fine needle aspiration, thyroid, US guided",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie à l'aiguille fine de la thyroide sous controle échographique"
    },
    {
      "language" : "nl-BE",
      "value" : "aspiratiebiopsie van thyroïd onder echogeleide"
    },
    {
      "language" : "de",
      "value" : "INV, Feinnadelaspiration, Schilddrüse, ultraschallgeleitet"
    }]
  },
  {
    "code" : "3102430",
    "display" : "INV, injection anesthetic +/- corticosteroid, lower extremity, hip or surrounding structures",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "injection d'un anesthésique local et de corticostéroïdes dans l'articulation sacro-iliaque"
    },
    {
      "language" : "nl-BE",
      "value" : "injectie van lokaal anestheticum en steroïd in sacro-iliacaal gewricht"
    },
    {
      "language" : "de",
      "value" : "INV, Inkjektionsanästhesie,+/- Kortikosteroide, untere Extremität, Hüfte oder umgebende Strukturen"
    }]
  },
  {
    "code" : "115400",
    "display" : "INV, injection anesthetic, lower extremity, ankle",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "injection dans une articulation de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "injectie in articulatio talocruralis"
    },
    {
      "language" : "de",
      "value" : "INV, Regionalanästhesie, untere Extremität, Sprunggelenk"
    }]
  },
  {
    "code" : "130524",
    "display" : "INV, injection anesthetic, lower extremity, ankle tendon sheath, US guided",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "injection de la gaine du tendon sous guidage échographique"
    },
    {
      "language" : "nl-BE",
      "value" : "injectie in peesschede onder echogeleide"
    },
    {
      "language" : "de",
      "value" : "INV, Regionalanästhesie, untere Extremität, Sprunggelenk, US-gezielt"
    }]
  },
  {
    "code" : "130514",
    "display" : "INV, injection anesthetic, lower extremity, ankle, incl hindfoot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "injection dans une articulation de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "injectie in articulatio talocruralis"
    },
    {
      "language" : "de",
      "value" : "INV, Regionalanästhesie, untere Extremität, Sprunggelenk, inkl. Hinterfuß"
    }]
  },
  {
    "code" : "3098247",
    "display" : "INV, injection anesthetic, lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "injection intra-articulaire de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "injectie in articulatio coxae"
    },
    {
      "language" : "de",
      "value" : "INV, Regionalanästhesie, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "3098249",
    "display" : "INV, injection anesthetic, lower extremity, hip iliopsoas tendon",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "injection d'une drogue et/ou d'un médicament dans un tendon"
    },
    {
      "language" : "nl-BE",
      "value" : "injectie van medicatie in pees"
    },
    {
      "language" : "de",
      "value" : "INV, Regionalanästhesie, untere Extremität, Iliopsoas-Sehne"
    }]
  },
  {
    "code" : "114543",
    "display" : "INV, injection arthrography, lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "beeldvormend onderzoek van articulatio coxae"
    },
    {
      "language" : "de",
      "value" : "INV, Arthrographie, Injektion, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "114231",
    "display" : "INV, injection arthrography, spine, cervical facet",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie d'une articulation interapophysaire postérieure"
    },
    {
      "language" : "nl-BE",
      "value" : "beeldvormend onderzoek van zygapofysiaal gewricht"
    },
    {
      "language" : "de",
      "value" : "INV, Arthrographie, Wirbelsäule, zervikales Facettengelenk"
    }]
  },
  {
    "code" : "128662",
    "display" : "INV, IVDSA, abdomen, kidney",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie fluoroscopique intraveineuse par soustraction numérique du rein"
    },
    {
      "language" : "nl-BE",
      "value" : "intraveneuze DSA van nier onder doorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, IVDSA, Abdomen, Niere"
    }]
  },
  {
    "code" : "3111251",
    "display" : "INV, lower extremity, thigh",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "procédure crurale"
    },
    {
      "language" : "nl-BE",
      "value" : "verrichting op bovenbeen"
    },
    {
      "language" : "de",
      "value" : "INV, untere  Extremität, Oberschenkel"
    }]
  },
  {
    "code" : "5000028",
    "display" : "INV, lymphangiography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, lymphographie"
    },
    {
      "language" : "nl-BE",
      "value" : "lymfangiografie met contrast onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Lymphangiographie"
    }]
  },
  {
    "code" : "3102582",
    "display" : "INV, lymphangiography, chest-abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, lymphangiographie, thorax-abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "lymfangiografie met contrast onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Lymphangiographie, Thorax-Abdomen"
    }]
  },
  {
    "code" : "125066",
    "display" : "INV, lymphangiography, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, lymphographie, bassin"
    },
    {
      "language" : "nl-BE",
      "value" : "lymfangiografie met contrast van bekken onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Lymphangiographie, Becken"
    }]
  },
  {
    "code" : "114665",
    "display" : "INV, myelography, spine",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "myélogramme"
    },
    {
      "language" : "nl-BE",
      "value" : "myelografie"
    },
    {
      "language" : "de",
      "value" : "Myelogramm"
    }]
  },
  {
    "code" : "114238",
    "display" : "INV, myelography, spine, cervical",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "myélographie cervicale sous radioscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide cervicale myelografie"
    },
    {
      "language" : "de",
      "value" : "INV, Myelographie, Wirbelsäule, zervikal"
    }]
  },
  {
    "code" : "114237",
    "display" : "INV, myelography, spine, cervical-thoracic",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "myélographie thoracique sous radioscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide thoracale myelografie"
    },
    {
      "language" : "de",
      "value" : "INV, Myelographie, Wirbelsäule, zervikal-thorakal"
    }]
  },
  {
    "code" : "114239",
    "display" : "INV, myelography, spine, lumbar",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "myélographie lombaire sous radioscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "lumbale myelografie onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Myelographie, Wirbelsäule, lumbal"
    }]
  },
  {
    "code" : "115506",
    "display" : "INV, needle localization, breast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "localisation à l'aiguille d'une lésion mammaire sous guidage échographique"
    },
    {
      "language" : "nl-BE",
      "value" : "naaldlokalisatie van laesie van mamma onder echoscopische begeleiding"
    },
    {
      "language" : "de",
      "value" : "INV, Herdmarkierung, Mamma"
    }]
  },
  {
    "code" : "114225",
    "display" : "INV, perc cholecystectomy, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "cholécystostomie percutanée"
    },
    {
      "language" : "nl-BE",
      "value" : "percutane galblaasdrainage"
    },
    {
      "language" : "de",
      "value" : "Perkutane Cholezystostomie"
    }]
  },
  {
    "code" : "5000029",
    "display" : "INV, perc drainage, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RI, drainage percutané, abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "drainage van abdomen"
    },
    {
      "language" : "de",
      "value" : "INV, perkutane Drainage, Abdomen"
    }]
  },
  {
    "code" : "114662",
    "display" : "INV, renin assay, abdomen, renal vein",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "prélèvement d'un échantillon sanguin au niveau de la veine rénale, guidé par radioscopie avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "fluoroscopisch geleide afname van bloed uit vena renalis"
    },
    {
      "language" : "de",
      "value" : "INV, Renintest, Abdomen, Nierenvene"
    }]
  },
  {
    "code" : "114656",
    "display" : "INV, transrectal biopsy, pelvis, US guided",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "biopsie transrectale de la prostate sous contrôle échographique"
    },
    {
      "language" : "nl-BE",
      "value" : "echogeleide transrectale biopsie van prostaat"
    },
    {
      "language" : "de",
      "value" : "INV, transrektale Biopsie, Becken, US-gezielt"
    }]
  },
  {
    "code" : "115405",
    "display" : "INV, venography, chest-upper extremity, veins-SVC",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "vénographie de la veine cave supérieure par fluoroscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "angiografie van vena cava superior onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, Venographie, Thorax-obere Extremität, V. cava sup."
    }]
  },
  {
    "code" : "3100271",
    "display" : "INV, venography, head-neck",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie de veines de la tête et du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "flebografie van venen van hoofd-halsregio"
    },
    {
      "language" : "de",
      "value" : "INV, Venographie, Schädel-Hals"
    }]
  },
  {
    "code" : "114658",
    "display" : "INV, venography, lower extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie du membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "flebografie van vene van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "INV, Venographie, untere Extremität"
    }]
  },
  {
    "code" : "5000010",
    "display" : "INV, venography, neck-chest, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie veineuse de la tête et/ou du cou et/ou du thorax"
    },
    {
      "language" : "nl-BE",
      "value" : "flebografie van hoofd/hals/thorax"
    },
    {
      "language" : "de",
      "value" : "INV, Venographie, Hals-Thorax, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114659",
    "display" : "INV, venography, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie d'une veine du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "flebografie van vene van pelvis"
    },
    {
      "language" : "de",
      "value" : "INV, Venographie, Becken"
    }]
  },
  {
    "code" : "3123810",
    "display" : "INV, venography, pelvis-lower extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie du membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "flebografie van vene van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "INV, Venographie, Becken-Untere Extremität"
    }]
  },
  {
    "code" : "114230",
    "display" : "INV, venography, spine, epidural",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie veineuse au niveau de l'espace épidural"
    },
    {
      "language" : "nl-BE",
      "value" : "extradurale venografie"
    },
    {
      "language" : "de",
      "value" : "INV, Venographie, Wirbelsäule, epidural"
    }]
  },
  {
    "code" : "114660",
    "display" : "INV, venous sample, head, petrosal sinus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "prélèvement de sang veineux d'un sinus pétreux par cathéter"
    },
    {
      "language" : "nl-BE",
      "value" : "katheterisatie van sinus petrosus inferior voor bloedafname"
    },
    {
      "language" : "de",
      "value" : "INV, Venensampling, Schädel, Sinus petrosus"
    }]
  },
  {
    "code" : "114661",
    "display" : "INV, wedge venography, abdomen, liver, w TIPS",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "shunt portosystémique intrahépatique par voie percutanée (TIPS)"
    },
    {
      "language" : "nl-BE",
      "value" : "aanleggen van TIPS"
    },
    {
      "language" : "de",
      "value" : "Transjugulärer intrahepatischer portosystemischer Shunt"
    }]
  },
  {
    "code" : "115534",
    "display" : "INV, wedge venography, abdomen, liver, wo TIPS",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie hépatique"
    },
    {
      "language" : "nl-BE",
      "value" : "flebografie van vena hepatica"
    },
    {
      "language" : "de",
      "value" : "INV, Venographie, Abdomen, Leber, ohne TIPS"
    }]
  },
  {
    "code" : "5000001",
    "display" : "INV-FLUOR, lumbar, epidural steroid injection",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "injection péridurale lombaire sous contrôle fluoroscopique"
    },
    {
      "language" : "nl-BE",
      "value" : "epidurale injectie in lumbale wervelkolom onder röntgendoorlichting"
    },
    {
      "language" : "de",
      "value" : "INV, lumbal, epidurale Steroidinjektion, DL-gezielt"
    }]
  },
  {
    "code" : "3100417",
    "display" : "MAM, DBT, diagnostic",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "DBT - digital breast tomosynthesis"
    },
    {
      "language" : "nl-BE",
      "value" : "digitale tomosynthese van borst"
    },
    {
      "language" : "de",
      "value" : "MAM, Tomosynthese, symptomatisch"
    }]
  },
  {
    "code" : "3100418",
    "display" : "MAM, DBT, screening",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "DBT - digital breast tomosynthesis"
    },
    {
      "language" : "nl-BE",
      "value" : "digitale tomosynthese van borst"
    },
    {
      "language" : "de",
      "value" : "MAM, Tomosynthese, Screening"
    }]
  },
  {
    "code" : "3102097",
    "display" : "MAM, DBT, short interval follow-up",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "DBT - digital breast tomosynthesis"
    },
    {
      "language" : "nl-BE",
      "value" : "digitale tomosynthese van borst"
    },
    {
      "language" : "de",
      "value" : "MAM, Tomosynthese, kurzfristige Nachuntersuchung"
    }]
  },
  {
    "code" : "115427",
    "display" : "MAM, diagnostic",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "mammographie"
    },
    {
      "language" : "nl-BE",
      "value" : "mammografie"
    },
    {
      "language" : "de",
      "value" : "Mammographie"
    }]
  },
  {
    "code" : "3082927",
    "display" : "MAM, diagnostic bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "mammographie bilatérale"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenonderzoek van beide mammae"
    },
    {
      "language" : "de",
      "value" : "MAM, diagnostisch, bilateral"
    }]
  },
  {
    "code" : "3102434",
    "display" : "MAM, ductography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "galactographie"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgencontrastonderzoek van melkgang"
    },
    {
      "language" : "de",
      "value" : "MAM, Galaktographie"
    }]
  },
  {
    "code" : "115525",
    "display" : "MAM, return to screening",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "mammographie"
    },
    {
      "language" : "nl-BE",
      "value" : "mammografie"
    },
    {
      "language" : "de",
      "value" : "Mammographie"
    }]
  },
  {
    "code" : "128650",
    "display" : "MAM, screening",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "mammographie de dépistage"
    },
    {
      "language" : "nl-BE",
      "value" : "screeningsmammografie"
    },
    {
      "language" : "de",
      "value" : "Screening mittels Mammographie"
    }]
  },
  {
    "code" : "115430",
    "display" : "MAM, short interval follow-up",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "mammographie"
    },
    {
      "language" : "nl-BE",
      "value" : "mammografie"
    },
    {
      "language" : "de",
      "value" : "Mammographie"
    }]
  },
  {
    "code" : "114244",
    "display" : "MEG, head",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "magnétoencéphalographie (MEG)"
    },
    {
      "language" : "nl-BE",
      "value" : "magneto-encefalografie"
    },
    {
      "language" : "de",
      "value" : "MEG, Schädel"
    }]
  },
  {
    "code" : "19",
    "display" : "MR, abdomen, kidney-adrenal, unspec iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM des reins"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van nier"
    },
    {
      "language" : "de",
      "value" : "MRT, Abdomen, Niere-Nebenniere, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "20",
    "display" : "MR, abdomen, liver-pancreas-spleen, unspec iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du foie et de la rate"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van lever en milt"
    },
    {
      "language" : "de",
      "value" : "MRT, Abdomen, Leber-Pankreas-Milz, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3102425",
    "display" : "MR, abdomen, without and with hepatobiliary contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'abdomen avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van buik met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Abdomen, ohne oder mit häpatobiliärem Kontrast"
    }]
  },
  {
    "code" : "114085",
    "display" : "MR, abdomen, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM abdominale sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van abdomen zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Abdomen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114082",
    "display" : "MR, abdomen, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'abdomen avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van buik met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Abdomen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114079",
    "display" : "MR, abdomen-pelvis, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique de l'abdomen et du pelvis sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van abdomen en bekken zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Abdomen-Becken, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115453",
    "display" : "MR, abdomen-pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'abdomen et du pelvis avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van abdomen en pelvis met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Abdomen-Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141628",
    "display" : "MR, angiography, abdomen, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de l'abdomen avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van abdominaal bloedvat met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Abdomen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126778",
    "display" : "MR, angiography, abdomen, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, angiographie, abdomen, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, angiografie, abdomen, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Abdomen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126777",
    "display" : "MR, angiography, abdomen, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de l'abdomen avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van abdominaal bloedvat met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Abdomen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "125068",
    "display" : "MR, angiography, abdomen-pelvis, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angio-IRM abdominopelvienne sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van abdomen en pelvis zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Abdomen-Becken, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "125067",
    "display" : "MR, angiography, abdomen-pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'abdomen et du pelvis avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van abdomen en pelvis met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Abdomen-Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000113",
    "display" : "MR, angiography, abdomen-pelvis-lower extremity, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, angiographie, abdomen-bassin-membre inférieur, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, angiografie, abdomen-bekken-onderste extremiteit, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Abdomen-Becken-untere Extremität, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000112",
    "display" : "MR, angiography, abdomen-pelvis-lower extremity, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, angiographie, abdomen-bassin-membre inférieur, sans / avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, angiografie, abdomen-bekken-onderste extremiteit, zonder/met IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Abdomen-Becken-untere Extremität, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126794",
    "display" : "MR, angiography, chest, pulmonary arteries, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des artères pulmonaires"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van arteria pulmonalis"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax, Pulmonalarterien, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126793",
    "display" : "MR, angiography, chest, pulmonary arteries, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des artères pulmonaires"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van arteria pulmonalis"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax, Pulmonalarterien, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3104526",
    "display" : "MR, angiography, chest, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, angiographie, thorax, avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, angiografie, thorax, met IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126781",
    "display" : "MR, angiography, chest, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM du thorax"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van borstkas"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115410",
    "display" : "MR, angiography, chest, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux du thorax avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van vasculaire structuur van thorax met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126780",
    "display" : "MR, angiography, chest-abdomen, aorta, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM de l'aorte entière"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van gehele aorta"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax-Abdomen, Aorta, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126779",
    "display" : "MR, angiography, chest-abdomen, aorta, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM de l'aorte entière avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van gehele aorta met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax-Abdomen, Aorta, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126897",
    "display" : "MR, angiography, chest-abdomen, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM du thorax"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van borstkas"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax-Abdomen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126898",
    "display" : "MR, angiography, chest-abdomen, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM du thorax"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van borstkas"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax-Abdomen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3104525",
    "display" : "MR, angiography, chest-abdomen-pelvis, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique (IRM) du thorax, de l'abdomen et du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van thorax, abdomen en bekken"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax-Abdomen-Becken, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "125070",
    "display" : "MR, angiography, chest-abdomen-pelvis, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angio-IRM thoraco-abdomino-pelvienne sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van thorax, abdomen en pelvis zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax-Abdomen-Becken, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "125069",
    "display" : "MR, angiography, chest-abdomen-pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique (IRM) du thorax, de l'abdomen et du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van thorax, abdomen en bekken"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Thorax-Abdomen-Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000015",
    "display" : "MR, angiography, head, stroke eval, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM de la tête et du cerveau"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van hoofd"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Schädel, Schlaganfallevalution, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3104606",
    "display" : "MR, angiography, head, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM de la tête avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van hoofd met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Schädel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "128564",
    "display" : "MR, angiography, head, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par résonance magnétique de la tête sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van hoofd zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Schädel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "125072",
    "display" : "MR, angiography, head, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM de la tête avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van hoofd met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Schädel, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114973",
    "display" : "MR, angiography, head-neck, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM de la tête et du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van arterie van hoofd-halsgebied"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Schädel-Hals, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114972",
    "display" : "MR, angiography, head-neck, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM de la tête et du cou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van hoofd-halsregio met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Schädel-Hals, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126783",
    "display" : "MR, angiography, heart, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coeur"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van hart"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Herz, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126782",
    "display" : "MR, angiography, heart, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coeur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van hart met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Herz, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141638",
    "display" : "MR, angiography, lower extremity, ankle, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux du membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van vasculaire structuur van onderste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, untere Extremität, Sprunggelenk, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141639",
    "display" : "MR, angiography, lower extremity, foot, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux du membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van vasculaire structuur van onderste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, untere Extremität, Fuß, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141636",
    "display" : "MR, angiography, lower extremity, knee, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux du membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van vasculaire structuur van onderste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, untere Extremität, Knie, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126785",
    "display" : "MR, angiography, lower extremity, knee, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM de membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van bloedvat van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, untere Extremität, Knie, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126784",
    "display" : "MR, angiography, lower extremity, knee, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux du membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van vasculaire structuur van onderste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, untere Extremität, Knie, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141637",
    "display" : "MR, angiography, lower extremity, leg, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux du membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van vasculaire structuur van onderste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, untere Extremität, Bein, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141635",
    "display" : "MR, angiography, lower extremity, thigh, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux du membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van vasculaire structuur van onderste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, untere Extremität, Oberschenkel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "128565",
    "display" : "MR, angiography, lower extremity, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM de membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van bloedvat van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, untere Extremität, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126786",
    "display" : "MR, angiography, lower extremity, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux du membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van vasculaire structuur van onderste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, untere Extremität, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130739",
    "display" : "MR, angiography, maxface, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, angiographie, maxillo-faciale, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, angiografie, maxillofaciaal, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Gesichtsschädel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130738",
    "display" : "MR, angiography, maxface, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la face avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van aangezicht met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Gesichtsschädel, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3104607",
    "display" : "MR, angiography, neck, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM des vaisseaux du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van bloedvat van hals"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Hals, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126789",
    "display" : "MR, angiography, neck, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, angiographie, cou, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, angiografie, hals, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Hals, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126787",
    "display" : "MR, angiography, neck, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM des vaisseaux du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van bloedvat van hals"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Hals, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141629",
    "display" : "MR, angiography, pelvis, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux du pelvis avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieangiografie van vasculaire structuur van pelvis met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Becken, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126796",
    "display" : "MR, angiography, spine, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, angiographie, colonne, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, angiografie, wervelkolom, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Wirbelsäule, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126795",
    "display" : "MR, angiography, spine, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de la colonne avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van bloedvat van wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, Wirbelsäule, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141630",
    "display" : "MR, angiography, upper extremity, arm, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de membre supérieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van vasculaire structuur van bovenste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, obere Extremität, Arm, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141631",
    "display" : "MR, angiography, upper extremity, elbow, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de membre supérieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van vasculaire structuur van bovenste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, obere Extremität, Ellbogen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141632",
    "display" : "MR, angiography, upper extremity, forearm, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de membre supérieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van vasculaire structuur van bovenste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, obere Extremität, Unterarm, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141634",
    "display" : "MR, angiography, upper extremity, hand, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de membre supérieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van vasculaire structuur van bovenste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, obere Extremität, Hand, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3117469",
    "display" : "MR, angiography, upper extremity, shoulder, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de membre supérieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van vasculaire structuur van bovenste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, obere Extremität, Schulter, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130748",
    "display" : "MR, angiography, upper extremity, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van bloedvat van bovenste extremiteit"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, obere Extremität, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130747",
    "display" : "MR, angiography, upper extremity, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de membre supérieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van vasculaire structuur van bovenste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, obere Extremität, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3141633",
    "display" : "MR, angiography, upper extremity, wrist, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angiographie par IRM des vaisseaux de membre supérieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-angiografie van vasculaire structuur van bovenste extremiteit met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Angiographie, obere Extremität, Handgelenk, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114423",
    "display" : "MR, area of interest, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Zielregion, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126799",
    "display" : "MR, area of interest, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Zielregion, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114075",
    "display" : "MR, arthrography, lower extremity, ankle",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie par IRM de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-artrografie van enkel"
    },
    {
      "language" : "de",
      "value" : "MRT, Arthrographie, untere Extremität, Sprunggelenk"
    }]
  },
  {
    "code" : "130515",
    "display" : "MR, arthrography, lower extremity, ankle, incl hindfoot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie par IRM de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-artrografie van enkel"
    },
    {
      "language" : "de",
      "value" : "MRT, Arthrographie, untere Extremität, Sprunggelenk inkl. Hinterfuß"
    }]
  },
  {
    "code" : "114971",
    "display" : "MR, arthrography, lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie par IRM de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-artrografie van heup"
    },
    {
      "language" : "de",
      "value" : "MRT, Arthrographie, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "115034",
    "display" : "MR, arthrography, lower extremity, knee",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie par IRM du genou"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-artrografie van knie"
    },
    {
      "language" : "de",
      "value" : "MRT, Arthrographie, untere Extremität, Knie"
    }]
  },
  {
    "code" : "114087",
    "display" : "MR, arthrography, upper extremity, elbow",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie par IRM du coude"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-artrografie van elleboog"
    },
    {
      "language" : "de",
      "value" : "MRT, Arthrographie, obere Extremität, Ellbogen"
    }]
  },
  {
    "code" : "114076",
    "display" : "MR, arthrography, upper extremity, shoulder",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie par IRM de l'épaule"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieartrografie van schouder"
    },
    {
      "language" : "de",
      "value" : "MRT, Arthrographie, obere Extremität, Schulter"
    }]
  },
  {
    "code" : "114088",
    "display" : "MR, arthrography, upper extremity, thumb",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du pouce"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van pollex"
    },
    {
      "language" : "de",
      "value" : "MRT, Arthrographie, obere Extremität, Daumen"
    }]
  },
  {
    "code" : "115406",
    "display" : "MR, arthrography, upper extremity, wrist",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "arthrographie par IRM du poignet"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieartrografie van pols"
    },
    {
      "language" : "de",
      "value" : "MRT, Arthrographie, obere Extremität, Handgelenk"
    }]
  },
  {
    "code" : "126800",
    "display" : "MR, breast, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de sein"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van mamma"
    },
    {
      "language" : "de",
      "value" : "MRT, Mamma, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3082929",
    "display" : "MR, breast, wo iv contrast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM mammaire bilatérale sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van beide mammae zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Mamma, ohne i.v. Kontrast, bilateral"
    }]
  },
  {
    "code" : "115513",
    "display" : "MR, breast, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de sein avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-mammografie met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Mamma, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082928",
    "display" : "MR, breast, wo/w iv contrast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique bilatérale des seins avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van beide mammae met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Mamma, ohne/mit i.v. Kontrast, bilateral"
    }]
  },
  {
    "code" : "5000086",
    "display" : "MR, chest, acromioclavicular joint, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM d'articulation acromio-claviculaire"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van acromioclaviculair gewricht"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax, Akromioklavikulargelenk, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000087",
    "display" : "MR, chest, acromioclavicular joint, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM d'articulation acromio-claviculaire"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van acromioclaviculair gewricht"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax, Akromioklavikulargelenk, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000088",
    "display" : "MR, chest, clavicle, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, thorax, clavicule, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, thorax, sleutelbeen, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax, Schlüsselbein, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000089",
    "display" : "MR, chest, clavicle, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la clavicule avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van clavicula met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax, Schlüsselbein, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000096",
    "display" : "MR, chest, sternoclavicular joint, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'articulation sterno-claviculaire"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van articulatio sternoclavicularis"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax, Sternoklavikulargelenk, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000097",
    "display" : "MR, chest, sternoclavicular joint, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'articulation sternoclaviculaire avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van sternoclaviculair gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax, Sternoklavikulargelenk, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115330",
    "display" : "MR, chest, sternum, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, thorax, sternum, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, thorax, sternum, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax, Sternum, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126822",
    "display" : "MR, chest, sternum, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du sternum avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van sternum met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax, Sternum, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114430",
    "display" : "MR, chest, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, thorax, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, thorax, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114429",
    "display" : "MR, chest, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique du thorax avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van thorax met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3102583",
    "display" : "MR, chest-abdomen, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angio-IRM thoraco-abdomino-pelvienne sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van thorax, abdomen en pelvis zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax-Abdomen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3102584",
    "display" : "MR, chest-abdomen, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique (IRM) du thorax, de l'abdomen et du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van thorax, abdomen en bekken"
    },
    {
      "language" : "de",
      "value" : "MRT, Thorax-Abdomen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3104528",
    "display" : "MR, chest-abdomen-pelvis, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "angio-IRM thoraco-abdomino-pelvienne sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRA van thorax, abdomen en pelvis zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Thorax-Abdomen-Becken, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3104527",
    "display" : "MR, chest-abdomen-pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique (IRM) du thorax, de l'abdomen et du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van thorax, abdomen en bekken"
    },
    {
      "language" : "de",
      "value" : "MR, Thorax-Abdomen-Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114417",
    "display" : "MR, csf flow, spine, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la circulation du liquide céphalorachidien"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van circulatie van hersenvocht"
    },
    {
      "language" : "de",
      "value" : "MRT, Liquorfluss, Wirbelsäule, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3082952",
    "display" : "MR, defecography, pelvis, rectal contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "défécographie par IRM"
    },
    {
      "language" : "nl-BE",
      "value" : "dynamisch rectaal onderzoek met behulp van magnetic resonance imaging"
    },
    {
      "language" : "de",
      "value" : "MRT, Defäkographie, Becken, Kontrast rektal"
    }]
  },
  {
    "code" : "3098600",
    "display" : "MR, DTI, head, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM-TD (imagerie par résonance magnétique du tenseur de diffusion) cérébrale"
    },
    {
      "language" : "nl-BE",
      "value" : "DT-MRI van hersenen"
    },
    {
      "language" : "de",
      "value" : "MRT, Diffusion Tensor Imaging, Schädel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000055",
    "display" : "MR, dynamic, lower extremity, knee, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique dynamique du genou"
    },
    {
      "language" : "nl-BE",
      "value" : "dynamische MRI van knie"
    },
    {
      "language" : "de",
      "value" : "MRT, dynamisch, untere Extremität, Knie, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3082955",
    "display" : "MR, dynamic, pelvis, rectal contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du rectum avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van rectum met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, dynamisch, Becken, Kontrast rektal"
    }]
  },
  {
    "code" : "3102427",
    "display" : "MR, elastography, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "élastographie par IRM"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-elastografie"
    },
    {
      "language" : "de",
      "value" : "MR, Elastographie, Abdomen"
    }]
  },
  {
    "code" : "115416",
    "display" : "MR, enteroclysis, abdomen-pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "entéroclyse par IRM"
    },
    {
      "language" : "nl-BE",
      "value" : "dunnedarmpassageonderzoek met behulp van MRI"
    },
    {
      "language" : "de",
      "value" : "MRT, Enteroklysma, Abdomen-Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115418",
    "display" : "MR, enterography, abdomen-pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, entérographie, abdomen-bassinne, sans / avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van dunne darm met contrastmiddel"
    },
    {
      "language" : "de",
      "value" : "MRT, Enterographie, Abdomen-Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126805",
    "display" : "MR, function and morphology, heart, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, fonctionnelle et morphologique, coeur, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, functioneel en morfologie, hart, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Funktion und Morphologie, Herz, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126804",
    "display" : "MR, function and morphology, heart, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coeur pour morphologie et fonction avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging voor cardiale morfologie en functie met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Funktion und Morphologie, Herz, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3102436",
    "display" : "MR, function and myocardial perfusion, heart, wo/w iv contrast, vasodilator stress",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM cardiaque pour évaluation de la viabilité du myocarde"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van hart voor beoordeling van myocardviabiliteit"
    },
    {
      "language" : "de",
      "value" : "MR, Funktion und myokardiale Perfusion, Herz, ohne/mit i.v. Kontrast, Vasodilatator-Stress"
    }]
  },
  {
    "code" : "114066",
    "display" : "MR, function, head, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la tête"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van hoofd"
    },
    {
      "language" : "de",
      "value" : "MRT, Funktion, Schädel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3102437",
    "display" : "MR, function, heart, wo iv contrast, inotropic stress",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coeur pour morphologie et fonction sous stress"
    },
    {
      "language" : "nl-BE",
      "value" : "stressonderzoek van morfologie en functie van hart met behulp van magnetic resonance imaging"
    },
    {
      "language" : "de",
      "value" : "MR, Funktion, Herz, ohne i.v. Kontrast, inotroper Stress"
    }]
  },
  {
    "code" : "126807",
    "display" : "MR, function, heart, wo iv contrast, may have stress",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, fonctionnelle, coeur, sans contraste IV, avec stress éventuel"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, functioneel,hart, zonder IV contrast, kan met stress"
    },
    {
      "language" : "de",
      "value" : "MRT, Funktion, Herz, ohne i.v. Kontrast, evtl. Stresstest"
    }]
  },
  {
    "code" : "126809",
    "display" : "MR, function, heart, wo iv contrast, stress",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coeur pour morphologie et fonction sous stress"
    },
    {
      "language" : "nl-BE",
      "value" : "stressonderzoek van morfologie en functie van hart met behulp van magnetic resonance imaging"
    },
    {
      "language" : "de",
      "value" : "MRT, Funktion, Herz, ohne i.v. Kontrast, Stresstest"
    }]
  },
  {
    "code" : "3102438",
    "display" : "MR, function, heart, wo/w iv contrast, inotropic stress",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coeur pour morphologie et fonction sous stress avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "cardiale MRI met contrast voor morfologie en functie onder farmacologische stress"
    },
    {
      "language" : "de",
      "value" : "MR, Funktion, Herz, ohne/mit i.v. Kontrast, inotroper Stress"
    }]
  },
  {
    "code" : "126806",
    "display" : "MR, function, heart, wo/w iv contrast, may have stress",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coeur pour morphologie et fonction avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging voor cardiale morfologie en functie met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Funktion, Herz, ohne/mit i.v. Kontrast, evtl. Stresstest"
    }]
  },
  {
    "code" : "126808",
    "display" : "MR, function, heart, wo/w iv contrast, stress",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coeur pour morphologie et fonction sous stress avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "cardiale MRI met contrast voor morfologie en functie onder farmacologische stress"
    },
    {
      "language" : "de",
      "value" : "MRT, Funktion, Herz, ohne/mit i.v. Kontrast, Stresstest"
    }]
  },
  {
    "code" : "5000092",
    "display" : "MR, head, mastoid, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de mastoide"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van processus mastoideus"
    },
    {
      "language" : "de",
      "value" : "MR, Schädel, Mastoid, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000093",
    "display" : "MR, head, mastoid, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de mastoide avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van mastoïd met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Schädel, Mastoid, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3117261",
    "display" : "MR, head, orbits, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM orbitaire sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van orbita zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Schädel, Orbita, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3117260",
    "display" : "MR, head, orbits, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM d'orbite avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van orbita met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Schädel, Orbita, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114092",
    "display" : "MR, head, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la tête"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van hoofd"
    },
    {
      "language" : "de",
      "value" : "MRT, Schädel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115135",
    "display" : "MR, head, wo iv contrast, incl int auditory canals",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM du cerveau et du MAI (méat acoustique interne) sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van hersenen en meatus acusticus internus zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Schädel, ohne i.v. Kontrast, inkl. innere Gehörgänge"
    }]
  },
  {
    "code" : "115137",
    "display" : "MR, head, wo iv contrast, incl sinuses",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la tête"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van hoofd"
    },
    {
      "language" : "de",
      "value" : "MRT, Schädel, ohne i.v. Kontrast, inkl. Sinus"
    }]
  },
  {
    "code" : "114073",
    "display" : "MR, head, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la tête avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van hoofd met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Schädel, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115134",
    "display" : "MR, head, wo/w iv contrast, incl int auditory canals",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du méat auditif interne avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van meatus acusticus internus met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Schädel, ohne/mit i.v. Kontrast, inkl. innere Gehörgänge"
    }]
  },
  {
    "code" : "115136",
    "display" : "MR, head, wo/w iv contrast, incl sinuses",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique des sinus paranasaux"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-scan van sinus paranasalis"
    },
    {
      "language" : "de",
      "value" : "MRT, Schädel, ohne/mit i.v. Kontrast, inkl. Sinus"
    }]
  },
  {
    "code" : "3104517",
    "display" : "MR, head-neck, orbit-face, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, tête et cou, orbite-face, sans iv contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, hoofd-hals, orbita-gezicht, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Schädel-Hals, Orbita-Gesicht, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3104516",
    "display" : "MR, head-neck, orbit-face, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM orbitaire, faciale et cervicale avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van oogkas, aangezicht en hals met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Schädel-Hals, Orbita-Gesicht, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115515",
    "display" : "MR, head-neck, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la tête et du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van hoofd-halsgebied"
    },
    {
      "language" : "de",
      "value" : "MRT, Schädel-Hals, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115514",
    "display" : "MR, head-neck, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la tête et du cou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van hoofd-halsregio met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Schädel-Hals, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114090",
    "display" : "MR, head-orbits, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM orbitaire sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van orbita zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Schädel-Orbita, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114089",
    "display" : "MR, head-orbits, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM d'orbite avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van orbita met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Schädel-Orbita, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "25",
    "display" : "MR, heart, unspec iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coeur"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van hart"
    },
    {
      "language" : "de",
      "value" : "MRT, Herz, ohne oder mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115130",
    "display" : "MR, lower extremity, ankle, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, membre inférieur, cheville, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, onderste extremiteit enkel zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Sprunggelenk, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126798",
    "display" : "MR, lower extremity, ankle, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la cheville avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van enkel met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Sprunggelenk, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130517",
    "display" : "MR, lower extremity, ankle, wo/w iv contrast, incl hindfoot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la cheville avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van enkel met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Sprunggelenk inkl. Hinterfuß, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3109454",
    "display" : "MR, lower extremity, foot, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du pied avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van voet met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, untere Extremität, Fuß, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115462",
    "display" : "MR, lower extremity, foot, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du pied"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van voet"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Fuß, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115133",
    "display" : "MR, lower extremity, foot, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du pied avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van voet met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Fuß, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000090",
    "display" : "MR, lower extremity, heel, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du calcanéum"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van calcaneus"
    },
    {
      "language" : "de",
      "value" : "MR, untere Extremität, Ferse, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000091",
    "display" : "MR, lower extremity, heel, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du calcanéum"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van calcaneus"
    },
    {
      "language" : "de",
      "value" : "MR, untere Extremität, Ferse, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114104",
    "display" : "MR, lower extremity, hip, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van heup"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Hüfte, ohne Kontrast"
    }]
  },
  {
    "code" : "114103",
    "display" : "MR, lower extremity, hip, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la hanche avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van heup met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Hüfte, mit Kontrast"
    }]
  },
  {
    "code" : "115141",
    "display" : "MR, lower extremity, hips, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM des deux hanches"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van linker en rechter heup"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Hüften, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3097299",
    "display" : "MR, lower extremity, hips, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM des deux hanches avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van beide heupen met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Hüften, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115033",
    "display" : "MR, lower extremity, knee, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du genou"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van knie"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Knie, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126813",
    "display" : "MR, lower extremity, knee, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du genou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van knie met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Knie, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130812",
    "display" : "MR, lower extremity, leg, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Bein, ohne Kontrast"
    }]
  },
  {
    "code" : "130811",
    "display" : "MR, lower extremity, leg, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van onderbeen met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Bein, mit Kontrast"
    }]
  },
  {
    "code" : "115131",
    "display" : "MR, lower extremity, thigh, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la cuisse"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van bovenbeen"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Oberschenkel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3100263",
    "display" : "MR, lower extremity, thigh, wo iv contrast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM des deux cuisses"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van linker en rechter bovenbeen"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Oberschenkel, ohne i.v. Kontrast, bilateral"
    }]
  },
  {
    "code" : "126801",
    "display" : "MR, lower extremity, thigh, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la cuisse avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van bovenbeen met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Oberschenkel, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3100262",
    "display" : "MR, lower extremity, thigh, wo/w iv contrast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM des deux cuisses avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van beide bovenbenen met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, untere Extremität, Oberschenkel, ohne/mit i.v. Kontrast, bilateral"
    }]
  },
  {
    "code" : "5000098",
    "display" : "MR, lower extremity, toe, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'avant-pied"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van voorvoet"
    },
    {
      "language" : "de",
      "value" : "MR, untere Extremität, Zeh, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000099",
    "display" : "MR, lower extremity, toe, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'avant-pied"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van voorvoet"
    },
    {
      "language" : "de",
      "value" : "MR, untere Extremität, Zeh, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115328",
    "display" : "MR, maxface, paranasal sinuses, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique des sinus paranasaux sans contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-scan van sinus paranasalis zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Gesichtsschädel, Nasennebenhöhlen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126815",
    "display" : "MR, maxface, paranasal sinuses, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique des sinus paranasaux avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetische resonantiescan van neusbijholten met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Gesichtsschädel, Nasennebenhöhlen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000109",
    "display" : "MR, maxface, TMJ, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'articulation temporo-mandibulaire"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van kaakgewricht"
    },
    {
      "language" : "de",
      "value" : "MR, Gesichtsschädel, Kiefergelenk, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000110",
    "display" : "MR, maxface, TMJ, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'articulation temporo-mandibulaire avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van TMG met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Gesichtsschädel, Kiefergelenk, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130741",
    "display" : "MR, maxface, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, maxillo-faciale, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, maxillofaciaal, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Gesichtsschädel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130740",
    "display" : "MR, maxface, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la face avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van aangezicht met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Gesichtsschädel, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114084",
    "display" : "MR, MRCP, abdomen, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "cholangiopancréatographie par résonance magnétique (MRCP)"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-cholangiopancreaticografie"
    },
    {
      "language" : "de",
      "value" : "MRT, MRCP, Abdomen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115454",
    "display" : "MR, MRCP, abdomen, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM des voies biliaires et du pancréas avec contraste (MRCP)"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-cholangiopancreaticografie met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, MRCP, Abdomen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3097286",
    "display" : "MR, myocardial perfusion, heart, wo/w iv contrast, stress",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coeur pour perfusion sous stress"
    },
    {
      "language" : "nl-BE",
      "value" : "perfusie-MRI van hart onder farmacologische stress"
    },
    {
      "language" : "de",
      "value" : "MRT, myokardiale Perfusion, Herz, ohne/mit i.v. Kontrast, Stresstest"
    }]
  },
  {
    "code" : "115327",
    "display" : "MR, neck, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM du cou sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van hals zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Hals, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114112",
    "display" : "MR, neck, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du cou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van hals met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Hals, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3102441",
    "display" : "MR, neck-spine-chest-upper extremity, brachial plexus, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du plexus brachial"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van plexus brachialis"
    },
    {
      "language" : "de",
      "value" : "MR, Hals-Wirbelsäule-Thorax-Obere Extremität, Brachialplexus, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3102440",
    "display" : "MR, neck-spine-chest-upper extremity, brachial plexus, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du membre supérieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van bovenste ledemaat met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Hals-Wirbelsäule-Thorax-Obere Extremität, Brachialplexus, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082959",
    "display" : "MR, pelvis, anal sphincter, unspec iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du sphincter anal"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van anussfincter"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken, Analsphinkter, ohne oder mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000017",
    "display" : "MR, pelvis, prostate, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la prostate avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van prostaat met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken, Prostata, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3098215",
    "display" : "MR, pelvis, sacroiliac joints, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, bassin, sacro-iliaques, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van beide sacro-iliacale gewrichten zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken, Sakroiliakalgelenke, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3098214",
    "display" : "MR, pelvis, sacroiliac joints, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, bassin, sacro-iliaques, sans / avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van SI-gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken, Sakroiliakalgelenke, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126817",
    "display" : "MR, pelvis, scrotum, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM scrotale sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van scrotum zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken, Skrotum, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114415",
    "display" : "MR, pelvis, scrotum, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du scrotum avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van scrotum met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken, Skrotum, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "24",
    "display" : "MR, pelvis, soft tissue, unspec iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van pelvis"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken, Weichteile, ohne oder mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114114",
    "display" : "MR, pelvis, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM du bassin sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van pelvis zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115465",
    "display" : "MR, pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du pelvis avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van pelvis met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082549",
    "display" : "MR, pelvis-lower extremity, affected hip, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du bassin et de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van bekken en heup"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken-untere Extremität, betroffene Hüfte, ohne Kontrast"
    }]
  },
  {
    "code" : "3082550",
    "display" : "MR, pelvis-lower extremity, affected hip, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du bassin et de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van bekken en heup"
    },
    {
      "language" : "de",
      "value" : "MRT, Becken-untere Extremität, betroffene Hüfte, mit Kontrast"
    }]
  },
  {
    "code" : "3102443",
    "display" : "MR, pelvis-spine, lumbosacral plexus, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de plexus lombosacré"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van plexus lumbosacralis"
    },
    {
      "language" : "de",
      "value" : "MR, Becken-Wirbelsäule, Lumbosakraler Plexus, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3102442",
    "display" : "MR, pelvis-spine, lumbosacral plexus, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM du plexus lombosacré avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van plexus lumbosacralis met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Becken-Wirbelsäule, Lumbosakraler Plexus, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110193",
    "display" : "MR, pelvis-spine, sacroiliac joints-cervical, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, bassin-colonne, sacro-iliaques-cervical, sans contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van sacro-iliacaal gewricht zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Becken-Wirbelsäule, Sakroiliakalgelenke-Zervikal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110192",
    "display" : "MR, pelvis-spine, sacroiliac joints-cervical, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, bassin-colonne, sacro-iliaques-cervical, sans / avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van SI-gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Becken-Wirbelsäule, Sakroiliakalgelenke-Zervikal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110196",
    "display" : "MR, pelvis-spine, sacroiliac joints-lumbar, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne lombaire et des sacro-iliaques"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van LWK en SI-gewricht"
    },
    {
      "language" : "de",
      "value" : "MR, Becken-Wirbelsäule, Sakroiliakalgelenke-Lumbal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110197",
    "display" : "MR, pelvis-spine, sacroiliac joints-lumbar, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne lombaire et des sacro-iliaques avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van lumbale wervelkolom en articulatio sacroiliaca met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Becken-Wirbelsäule, Sakroiliakalgelenke-Lumbal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110198",
    "display" : "MR, pelvis-spine, sacroiliac joints-sacrum, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM sacrée sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van heiligbeen zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Becken-Wirbelsäule, Sakroiliakalgelenke-Sakral, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110199",
    "display" : "MR, pelvis-spine, sacroiliac joints-sacrum, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM rachidienne sacrée avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van sacrale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Becken-Wirbelsäule, Sakroiliakalgelenke-Sakral, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110194",
    "display" : "MR, pelvis-spine, sacroiliac joints-thoracic, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, bassin-colonne, sacro-iliaques-thoraciques, sans contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van sacro-iliacaal gewricht zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Becken-Wirbelsäule, Sakroiliakalgelenke-Thorakal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110195",
    "display" : "MR, pelvis-spine, sacroiliac joints-thoracic, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, bassin-colonne, sacro-iliaques-thoraciques, sans / avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van SI-gewricht met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Becken-Wirbelsäule, Sakroiliakalgelenke-Thorrakal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "128568",
    "display" : "MR, perfusion, head, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM perfusion du cerveau"
    },
    {
      "language" : "nl-BE",
      "value" : "perfusie-MRI van hersenen"
    },
    {
      "language" : "de",
      "value" : "MRT, Perfusion, Schädel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114068",
    "display" : "MR, spectroscopy, head, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, spectroscopie, cerveau, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, spectroscopie, hoofd, zonder IV cotrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Spektroskopie, Schädel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110175",
    "display" : "MR, spine, cervical, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne cervicale avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van CWK met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, zervikal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114095",
    "display" : "MR, spine, cervical, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique de la colonne cervicale sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van CWK zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule, zervikal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114094",
    "display" : "MR, spine, cervical, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne cervicale avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van CWK met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule, zervikal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3102061",
    "display" : "MR, spine, cervical-thoracic-lumbar, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM rachidienne cervicale, thoracique et lombaire avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van cervicale, thoracale en lumbale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule, zervikal-thorakal-lumbal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114097",
    "display" : "MR, spine, cervical-thoracic-lumbar, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM du rachis cervical, dorsal et lombaire sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van CWK, TWK en LWK zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule, zervikal-thorakal-lumbal, ohne Kontrast"
    }]
  },
  {
    "code" : "114096",
    "display" : "MR, spine, cervical-thoracic-lumbar, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM rachidienne cervicale, thoracique et lombaire avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van cervicale, thoracale en lumbale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, zervikal-thorakal-lumbal, mit Kontrast"
    }]
  },
  {
    "code" : "3082552",
    "display" : "MR, spine, incl MR myelography",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "myélographie par IRM"
    },
    {
      "language" : "nl-BE",
      "value" : "MR-myelografie"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule, inkl. MR-Myelographie"
    }]
  },
  {
    "code" : "3110178",
    "display" : "MR, spine, lumbar, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne lombaire sans contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van LWK met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, lumbal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114109",
    "display" : "MR, spine, lumbar, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM du rachis lombaire sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van lumbale wervelkolom zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule, lumbal, ohne Kontrast"
    }]
  },
  {
    "code" : "114108",
    "display" : "MR, spine, lumbar, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne lombaire sans contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van LWK met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, lumbal, mit Kontrast"
    }]
  },
  {
    "code" : "3109462",
    "display" : "MR, spine, lumbar-sacrum, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne lombaire et du sacrum"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van lumbale en sacrale wervelkolom"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, lumbosakral, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3109463",
    "display" : "MR, spine, lumbar-sacrum, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne lombaire et du sacrum avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van lumbale en sacrale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, lumbosakral, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110204",
    "display" : "MR, spine, sacrum, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM sacrée sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van heiligbeen zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, sakral, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3110203",
    "display" : "MR, spine, sacrum, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM rachidienne sacrée avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van sacrale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, sakral, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3110176",
    "display" : "MR, spine, thoracic, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne thoracique avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van thoracale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, thorakal, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3109361",
    "display" : "MR, spine, thoracic, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique de la colonne thoracique sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van thoracale wervelkolom zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, thorakal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3109362",
    "display" : "MR, spine, thoracic, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne thoracique avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van thoracale wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Wirbelsäule, thorakal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "128657",
    "display" : "MR, spine, thoracic-lumbar, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM rachidienne thoracolombaire sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van thoracale en lumbale wervelkolom zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule, thorakal-lumbal, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "128658",
    "display" : "MR, spine, thoracic-lumbar, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne thoracique et lombaire avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van TWK en LWK met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule, thorakal-lumbal, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114420",
    "display" : "MR, spine, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la colonne vertébrale"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van wervelkolom"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114419",
    "display" : "MR, spine, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique du rachis avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van wervelkolom met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126811",
    "display" : "MR, spine-lower extremity, hip, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van heup"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule-untere Extremität, Hüfte, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126810",
    "display" : "MR, spine-lower extremity, hip, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la hanche avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van heup met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule-untere Extremität, Hüfte, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "128570",
    "display" : "MR, spine-lower extremity, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule-untere Extremität, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "128569",
    "display" : "MR, spine-lower extremity, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du membre inférieur avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van been met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Wirbelsäule-untere Extremität, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130709",
    "display" : "MR, upper extremity, arm, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique du bras"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van bovenarm"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Arm, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130708",
    "display" : "MR, upper extremity, arm, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique du bras avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van bovenarm met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Arm, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000031",
    "display" : "MR, upper extremity, brachial plexus, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du plexus brachial"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van plexus brachialis"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Brachialplexus, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000032",
    "display" : "MR, upper extremity, brachial plexus, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de plexus brachial avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van plexus brachialis met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Brachialplexus, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115460",
    "display" : "MR, upper extremity, elbow, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coude"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van elleboog"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Ellbogen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115459",
    "display" : "MR, upper extremity, elbow, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du coude avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van cubitus met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Ellbogen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082544",
    "display" : "MR, upper extremity, finger, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, membre supérieur, doigt, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van digitus van hand, exclusief digitus I"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Finger, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3082545",
    "display" : "MR, upper extremity, finger, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, membre supérieur, doigt, sans / avec contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van digitus van hand, exclusief digitus I"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Finger, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "130761",
    "display" : "MR, upper extremity, forearm, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM de l'avant-bras"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van onderarm"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Unterarm, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "130760",
    "display" : "MR, upper extremity, forearm, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par résonance magnétique de l'avant-bras avec produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van onderarm met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Unterarm, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115022",
    "display" : "MR, upper extremity, hand, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la main"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van hand"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Hand, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126803",
    "display" : "MR, upper extremity, hand, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de la main avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van hand met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Hand, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "5000094",
    "display" : "MR, upper extremity, scapula, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM scapulaire sans produit de contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van schouderblad zonder contrast"
    },
    {
      "language" : "de",
      "value" : "MR, obere Extremität, Scapula, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "5000095",
    "display" : "MR, upper extremity, scapula, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'omoplate avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van schouderblad met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, obere Extremität, Scapula, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115519",
    "display" : "MR, upper extremity, shoulder, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'épaule"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van schouder"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Schulter, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115518",
    "display" : "MR, upper extremity, shoulder, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM de l'épaule avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van schouder met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Schulter, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114421",
    "display" : "MR, upper extremity, thumb, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du pouce"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van pollex"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Daumen, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3082761",
    "display" : "MR, upper extremity, thumb, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du pouce"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van pollex"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Daumen, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114425",
    "display" : "MR, upper extremity, wrist, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du poignet"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van pols"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Handgelenk, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "114424",
    "display" : "MR, upper extremity, wrist, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du poignet avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van pols met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, obere Extremität, Handgelenk, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126888",
    "display" : "MR, urography, abdomen-pelvis, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du tractus urinaire"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van systema urinarium"
    },
    {
      "language" : "de",
      "value" : "MRT, Urographie, Abdomen-Becken, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "115203",
    "display" : "MR, urography, abdomen-pelvis, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie par IRM du tractus urinaire avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van tractus urogenitalis met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Urographie, Abdomen-Becken, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "126775",
    "display" : "MR, venography, chest, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie par IRM de la veine cave supérieure"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van vena cava superior"
    },
    {
      "language" : "de",
      "value" : "MRT, Venographie, Thorax, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126774",
    "display" : "MR, venography, chest, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie par IRM de la veine cave supérieure"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetic resonance imaging van vena cava superior"
    },
    {
      "language" : "de",
      "value" : "MRT, Venographie, Thorax, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3117241",
    "display" : "MR, venography, head, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie par IRM des veines intracraniennes avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieflebografie van intracraniële vene met contrast"
    },
    {
      "language" : "de",
      "value" : "MR, Venographie, Schädel, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3082543",
    "display" : "MR, venography, head, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, phlébographie, tête, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, venografie, hoofd, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Venographie, Schädel, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3098602",
    "display" : "MR, venography, head, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie par IRM des veines intracraniennes avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieflebografie van intracraniële vene met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Venographie, Schädel, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "3100682",
    "display" : "MR, venography, head-neck, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM, phlébographie, tête et cou, sans contraste IV"
    },
    {
      "language" : "nl-BE",
      "value" : "MR, venografie, hoofd-hals, zonder IV contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Venographie, Schädel-Hals, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "3100681",
    "display" : "MR, venography, head-neck, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie par IRM du cou avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "magnetischeresonantieflebografie van hals met contrast"
    },
    {
      "language" : "de",
      "value" : "MRT, Venographie, Schädel-Hals, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114422",
    "display" : "MR, venography, pelvis-lower extremity, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie par IRM du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van bekkenvene"
    },
    {
      "language" : "de",
      "value" : "MRT, Venographie, Becken-untere Extremität, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126776",
    "display" : "MR, venography, pelvis-lower extremity, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "veinographie par IRM du pelvis avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "MRV met contrast van bekken"
    },
    {
      "language" : "de",
      "value" : "MRT, Venographie, Becken-untere Extremität, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115468",
    "display" : "MR, whole body, wo iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM du corps entier"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van gehele lichaam in totaliteit"
    },
    {
      "language" : "de",
      "value" : "MRT, Ganzkörper, ohne i.v. Kontrast"
    }]
  },
  {
    "code" : "126824",
    "display" : "MR, whole body, wo/w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "IRM du corps entier"
    },
    {
      "language" : "nl-BE",
      "value" : "MRI van gehele lichaam in totaliteit"
    },
    {
      "language" : "de",
      "value" : "MRT, Ganzkörper, ohne/mit i.v. Kontrast"
    }]
  },
  {
    "code" : "115429",
    "display" : "PEM, breast, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "étude mammaire par TEP (tomographie par émission de positons)"
    },
    {
      "language" : "nl-BE",
      "value" : "PET van borst"
    },
    {
      "language" : "de",
      "value" : "PEM, Mamma, FDG"
    }]
  },
  {
    "code" : "115522",
    "display" : "PET, brain scan, head, O-15",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie cérébrale par TEP (tomographie par émission de positons)"
    },
    {
      "language" : "nl-BE",
      "value" : "PET-scan van hersenen"
    },
    {
      "language" : "de",
      "value" : "PET, O-15"
    }]
  },
  {
    "code" : "11034",
    "display" : "PET, chest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TEP - tomographie par émission de positons"
    },
    {
      "language" : "nl-BE",
      "value" : "PET-scan"
    },
    {
      "language" : "de",
      "value" : "PET, Thorax"
    }]
  },
  {
    "code" : "11029",
    "display" : "PET, heart",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "étude du cœur par tomographie par émission de positons"
    },
    {
      "language" : "nl-BE",
      "value" : "hartonderzoek met PET"
    },
    {
      "language" : "de",
      "value" : "PET, Herz"
    }]
  },
  {
    "code" : "3098244",
    "display" : "PET, lower extremity, hip, F-18 fluoride",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TEP - tomographie par émission de positons"
    },
    {
      "language" : "nl-BE",
      "value" : "PET-scan"
    },
    {
      "language" : "de",
      "value" : "PET/CT, F-18 Fluorid"
    }]
  },
  {
    "code" : "3098245",
    "display" : "PET, lower extremity, hip, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TEP - tomographie par émission de positons"
    },
    {
      "language" : "nl-BE",
      "value" : "PET-scan"
    },
    {
      "language" : "de",
      "value" : "PET, untere Extremität, Hüfte, FDG"
    }]
  },
  {
    "code" : "11102",
    "display" : "PET, maxface",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TEP - tomographie par émission de positons"
    },
    {
      "language" : "nl-BE",
      "value" : "PET-scan"
    },
    {
      "language" : "de",
      "value" : "PET, Gesichtsschädel"
    }]
  },
  {
    "code" : "114252",
    "display" : "PET, myocardial perfusion, heart, Rb-82, stress",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie myocardique à l'effort par TEP-82Rb (tomographie à émission de positons au rubidium 82)"
    },
    {
      "language" : "nl-BE",
      "value" : "Rb-82-PET van myocardperfusie bij inspanning"
    },
    {
      "language" : "de",
      "value" : "PET/CT, Rb-82"
    }]
  },
  {
    "code" : "11067",
    "display" : "PET, upper extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TEP - tomographie par émission de positons"
    },
    {
      "language" : "nl-BE",
      "value" : "PET-scan"
    },
    {
      "language" : "de",
      "value" : "PET, obere Extremität"
    }]
  },
  {
    "code" : "128561",
    "display" : "PET-CT, abdomen, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, abdomen, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, Abdomen, FDG"
    }]
  },
  {
    "code" : "3091693",
    "display" : "PET-CT, abdomen-pelvis, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, abdomino-bassin, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, Abdomen-Becken, FDG"
    }]
  },
  {
    "code" : "128562",
    "display" : "PET-CT, chest, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, thorax, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, Thorax, FDG"
    }]
  },
  {
    "code" : "3082541",
    "display" : "PET-CT, chest-abdomen, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, thorax-abdomen, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, Thorax-Abdomen, FDG"
    }]
  },
  {
    "code" : "3104523",
    "display" : "PET-CT, chest-abdomen-pelvis, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, thorax abdomen-bassin, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "Positronemissionstomografie–Computertomografie, Thorax-Abdomen-Becken, FDG"
    }]
  },
  {
    "code" : "3082936",
    "display" : "PET-CT, head, amyloid",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TEP - tomographie par émission de positons"
    },
    {
      "language" : "nl-BE",
      "value" : "PET-scan"
    },
    {
      "language" : "de",
      "value" : "PET/CT, F-18 Amyloid"
    }]
  },
  {
    "code" : "114249",
    "display" : "PET-CT, head, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie cérébrale par TEP/TDM au fluorodésoxyglucose 18F (tomographie par émission de positons avec tomodensitométrie au fluorodésoxyglucose 18F)"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT van hersenen"
    },
    {
      "language" : "de",
      "value" : "PET-CT, Schädel, FDG"
    }]
  },
  {
    "code" : "3102439",
    "display" : "PET-CT, heart, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET CT au fluorodeoxyglucose pour imagerie myocardique au repos"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT van myocardperfusie in rust"
    },
    {
      "language" : "de",
      "value" : "Positronemissionstomografie–Computertomografie, Herz, FDG"
    }]
  },
  {
    "code" : "130716",
    "display" : "PET-CT, lower extremity, ankle, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre inférieur, cheville , FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, untere Extremität, Sprunggelenk, FDG"
    }]
  },
  {
    "code" : "130722",
    "display" : "PET-CT, lower extremity, femur, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre inférieur,fémur , FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, untere Extremität, Femur, FDG"
    }]
  },
  {
    "code" : "114968",
    "display" : "PET-CT, lower extremity, foot, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre inférieur, pied , FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, untere Extremität, Fuß, FDG"
    }]
  },
  {
    "code" : "114250",
    "display" : "PET-CT, lower extremity, knee, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre inférieur, genou, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, untere Extremität, Knie, FDG"
    }]
  },
  {
    "code" : "130810",
    "display" : "PET-CT, lower extremity, leg, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre inférieur, jambe , FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, untere Extremität, Bein, FDG"
    }]
  },
  {
    "code" : "130737",
    "display" : "PET-CT, maxface, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, maxillo-facial, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, Gesichtsschädel, FDG"
    }]
  },
  {
    "code" : "115399",
    "display" : "PET-CT, neck, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, cou, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, Hals, FDG"
    }]
  },
  {
    "code" : "126766",
    "display" : "PET-CT, pelvis, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, bassin, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, Becken, FDG"
    }]
  },
  {
    "code" : "3108314",
    "display" : "PET-CT, skull base to mid thigh, C-11 choline",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "étude de la captation de la choline marquée au carbone 11 par tomographie par émission de positons avec tomodensitométrie"
    },
    {
      "language" : "nl-BE",
      "value" : "PET-CT met bepaling van [^11^C]choline-opname"
    },
    {
      "language" : "de",
      "value" : "Positronemissionstomografie–Computertomografie, Schädelbasis bis Mitte Oberschenkel, C-11 Cholin"
    }]
  },
  {
    "code" : "3108315",
    "display" : "PET-CT, skull base to mid thigh, F-18 fluciclovine",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TEP - tomographie par émission de positons"
    },
    {
      "language" : "nl-BE",
      "value" : "PET-scan"
    },
    {
      "language" : "de",
      "value" : "Positronemissionstomografie–Computertomografie, Schädelbasis bis Mitte Oberschenkel, F-18 Fluciclovin"
    }]
  },
  {
    "code" : "125057",
    "display" : "PET-CT, skull base to mid thigh, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "TEP (tomographie par émission de positons) avec CT-scan au 18F-FDG (18F-fluorodéoxyglucose) de la base du cerveau à mi-cuisse"
    },
    {
      "language" : "nl-BE",
      "value" : "fluorodeoxyglucosepositronemissietomografie met computertomografie van hersenbasis tot halverwege bovenbeen"
    },
    {
      "language" : "de",
      "value" : "PET-CT, Schädelbasis bis Oberschenkelmitte, FDG"
    }]
  },
  {
    "code" : "130707",
    "display" : "PET-CT, upper extremity, arm, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre supérieur, bras, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, obere Extremität, Arm, FDG"
    }]
  },
  {
    "code" : "130782",
    "display" : "PET-CT, upper extremity, elbow, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre supérieur, coude, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, obere Extremität, Ellbogen, FDG"
    }]
  },
  {
    "code" : "130757",
    "display" : "PET-CT, upper extremity, forearm, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre supérieur, avant-bras, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, obere Extremität, Unterarm, FDG"
    }]
  },
  {
    "code" : "130767",
    "display" : "PET-CT, upper extremity, hand, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre supérieur, main, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, obere Extremität, Hand, FDG"
    }]
  },
  {
    "code" : "130794",
    "display" : "PET-CT, upper extremity, shoulder, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre supérieur, épaule, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, obere Extremität, Schulter, FDG"
    }]
  },
  {
    "code" : "130773",
    "display" : "PET-CT, upper extremity, wrist, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET-CT, membre supérieur, poignet, FDG"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT - Positron emission tomography with computed tomography using fluorodeoxyglucose (18-F)"
    },
    {
      "language" : "de",
      "value" : "PET-CT, obere Extremität, Handgelenk, FDG"
    }]
  },
  {
    "code" : "114251",
    "display" : "PET-CT, whole body, FDG",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "PET CT du corps entier au fluorodéoxyglucose"
    },
    {
      "language" : "nl-BE",
      "value" : "FDG-PET-CT van gehele lichaam"
    },
    {
      "language" : "de",
      "value" : "PET-CT, ganzer Körper, FDG"
    }]
  },
  {
    "code" : "3100425",
    "display" : "SXA, upper extremity, forearm distal",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "imagerie du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "beeldvormend onderzoek van bovenste ledemaat"
    },
    {
      "language" : "de",
      "value" : "SXA, obere Extremität, Unterarm distal"
    }]
  },
  {
    "code" : "114119",
    "display" : "US, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van abdomen"
    },
    {
      "language" : "de",
      "value" : "US, Abdomen"
    }]
  },
  {
    "code" : "5000115",
    "display" : "US, abdomen, AAA screening",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van abdomen"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Abdomen, AAA-Screening"
    }]
  },
  {
    "code" : "114129",
    "display" : "US, abdomen, adrenal",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie des surrénales"
    },
    {
      "language" : "nl-BE",
      "value" : "echografische beeldvorming van glandula suprarenalis"
    },
    {
      "language" : "de",
      "value" : "US, Abdomen, Nebennieren"
    }]
  },
  {
    "code" : "115340",
    "display" : "US, abdomen, aorta",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'aorte"
    },
    {
      "language" : "nl-BE",
      "value" : "echografische beeldvorming van aorta"
    },
    {
      "language" : "de",
      "value" : "US, Abdomen, Aorta"
    }]
  },
  {
    "code" : "115478",
    "display" : "US, abdomen, kidney, retroperitoneal",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du rein"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van nier"
    },
    {
      "language" : "de",
      "value" : "US, Abdomen, Nieren, Retroperitoneum"
    }]
  },
  {
    "code" : "114122",
    "display" : "US, abdomen, RLQ",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la partie inférieure de l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "echografische beeldvorming van onderste gedeelte van abdomen"
    },
    {
      "language" : "de",
      "value" : "US, Abdomen, rechter Unterbauch"
    }]
  },
  {
    "code" : "114120",
    "display" : "US, abdomen, upper gi tract",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie endoscopique du tractus gastro-intestinal supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "endo-echografie van bovenste deel van maag-darmkanaal"
    },
    {
      "language" : "de",
      "value" : "US, Abdomen, oberer GI-Trakt"
    }]
  },
  {
    "code" : "5000046",
    "display" : "US, abdomen, w iv contrast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie da l'abdomen avec contraste"
    },
    {
      "language" : "nl-BE",
      "value" : "buikecho met contrast"
    },
    {
      "language" : "de",
      "value" : "US, Abdomen, mit i.v. Kontrast"
    }]
  },
  {
    "code" : "114121",
    "display" : "US, abdomen-pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'abdomen et du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "ultrageluidsonderzoek van buik en bekken"
    },
    {
      "language" : "de",
      "value" : "US, Abdomen, Becken"
    }]
  },
  {
    "code" : "3082871",
    "display" : "US, abdomen-pelvis, kidneys-bladder",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, abdomino-bassinne, reins-vessie"
    },
    {
      "language" : "nl-BE",
      "value" : "US, abdomen-bekken, nieren-blaas"
    },
    {
      "language" : "de",
      "value" : "US, Abdomen, Becken, Nieren, Blase"
    }]
  },
  {
    "code" : "3100248",
    "display" : "US, BPP modified, pelvis, pregnant uterus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, BPP, bassin, grossesse"
    },
    {
      "language" : "nl-BE",
      "value" : "US, gewijzigd biofysisch profiel, bekken, zwangerschap"
    },
    {
      "language" : "de",
      "value" : "US, BPP modifiziert, Becken, schwangerer Uterus"
    }]
  },
  {
    "code" : "114115",
    "display" : "US, BPP, pelvis, pregnant uterus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, BPP, bassin, grossesse"
    },
    {
      "language" : "nl-BE",
      "value" : "US, biofysisch profiel, bekken, zwangerschap"
    },
    {
      "language" : "de",
      "value" : "US, BPP, Becken, schwangerer Uterus"
    }]
  },
  {
    "code" : "114133",
    "display" : "US, breast",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du sein"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van mamma"
    },
    {
      "language" : "de",
      "value" : "US, Mamma"
    }]
  },
  {
    "code" : "3082930",
    "display" : "US, breast, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie des deux seins"
    },
    {
      "language" : "nl-BE",
      "value" : "echoscopie van beide borsten"
    },
    {
      "language" : "de",
      "value" : "US, Mamma, bilateral"
    }]
  },
  {
    "code" : "114136",
    "display" : "US, chest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du thorax"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van thorax"
    },
    {
      "language" : "de",
      "value" : "US, Thorax"
    }]
  },
  {
    "code" : "3122241",
    "display" : "US, chest, axilla",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du thorax et du creux axillaire"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van thorax en axilla"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Thorax, Axilla"
    }]
  },
  {
    "code" : "3102586",
    "display" : "US, chest-abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie thoracoabdominale"
    },
    {
      "language" : "nl-BE",
      "value" : "echoscopie van borstkas en buik"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Thorax-Abdomen"
    }]
  },
  {
    "code" : "115341",
    "display" : "US, chest-abdomen-pelvis, FAST",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, thorax-abdomen-bassin, FAST"
    },
    {
      "language" : "nl-BE",
      "value" : "US, thorax-abdomen-bekken, FAST"
    },
    {
      "language" : "de",
      "value" : "US, Thorax, Abdomen, Becken, FAST"
    }]
  },
  {
    "code" : "3104529",
    "display" : "US, color Doppler, abdomen-pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler couleur, abdomen-bassin"
    },
    {
      "language" : "nl-BE",
      "value" : "US, kleuren Doppler, abdomen-bekken"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Farbdoppler, Abdomen-Becken"
    }]
  },
  {
    "code" : "3098255",
    "display" : "US, color Doppler, abdomen-pelvis, kidneys-bladder, retroperitoneal",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler couleur, abdomino-bassin, reins-vessie, rétropéritoine"
    },
    {
      "language" : "nl-BE",
      "value" : "US, kleuren Doppler, abdomen-bekken, nieren-blaas, retroperitoniaal"
    },
    {
      "language" : "de",
      "value" : "US, Farbdoppler, Abdomen, Becken, Nieren, Blase, Retroperitoneum"
    }]
  },
  {
    "code" : "3104519",
    "display" : "US, color Doppler, pelvis, ovaries",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler couleur, bassin, ovaires"
    },
    {
      "language" : "nl-BE",
      "value" : "US, kleuren-Doppler, bekken, eierstokken"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Farbdoppler, Becken, Ovarien"
    }]
  },
  {
    "code" : "115346",
    "display" : "US, duplex doppler transabdominal, pelvis, pregnant uterus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler pulsé transabdominal, bassin, grossesse"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler transabdominaal, bekken, zwangerschap"
    },
    {
      "language" : "de",
      "value" : "US, Duplexdoppler transabdominal, Becken, schwangerer Uterus"
    }]
  },
  {
    "code" : "3128050",
    "display" : "US, duplex doppler, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, abdomen"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Duplex Doppler, Abdomen"
    }]
  },
  {
    "code" : "125100",
    "display" : "US, duplex doppler, abdomen, aorta",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, abdomen , aorte"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, abdomen, aorta"
    },
    {
      "language" : "de",
      "value" : "US, Duplexdoppler, Abdomen, Aorta"
    }]
  },
  {
    "code" : "115479",
    "display" : "US, duplex doppler, abdomen, kidney, retroperitoneal",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, abdomen, reins, rétropéritoine"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, abdomen, nier, retroperitoniaal"
    },
    {
      "language" : "de",
      "value" : "US, Duplexdoppler, Abdomen, Nieren, Retroperitoneum"
    }]
  },
  {
    "code" : "114150",
    "display" : "US, duplex doppler, abdomen, liver",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, abdomen, foie"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, abdomen, lever"
    },
    {
      "language" : "de",
      "value" : "US, Duplexdoppler, Abdomen, Leber"
    }]
  },
  {
    "code" : "3082947",
    "display" : "US, duplex doppler, chest, subclavian artery and vein",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, thorax, artères et veines sous-c vières"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, thorax, arteria en vena subclavia"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, Thorax, A. und V. Subclavia"
    }]
  },
  {
    "code" : "114151",
    "display" : "US, duplex doppler, lower extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, untere Extremität"
    }]
  },
  {
    "code" : "5000018",
    "display" : "US, duplex doppler, lower extremity, arterial",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, membre inférieur, artériel"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, onderste extremiteit, arterieel"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, untere Extremität, arteriell"
    }]
  },
  {
    "code" : "5000019",
    "display" : "US, duplex doppler, lower extremity, venous",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "duplex scan de veines du membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "duplexonderzoek van venen van been"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, untere Extremität, venös"
    }]
  },
  {
    "code" : "114135",
    "display" : "US, duplex doppler, neck, carotid",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie duplex d'une artère carotide"
    },
    {
      "language" : "nl-BE",
      "value" : "duplexonderzoek van arteria carotis"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, Hals, Karotiden"
    }]
  },
  {
    "code" : "114137",
    "display" : "US, duplex doppler, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, bassin"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, bekken"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, Becken"
    }]
  },
  {
    "code" : "3098256",
    "display" : "US, duplex doppler, pelvis, adnexa",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, bassin, annexes"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, bekken, adnexxen"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, Becken, Adnexe"
    }]
  },
  {
    "code" : "130523",
    "display" : "US, duplex doppler, pelvis, kidney, transplant",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, bassin, rein, transp nt"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, bekken, nier, transplant"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, Becken, Niere, Transplantat"
    }]
  },
  {
    "code" : "114533",
    "display" : "US, duplex doppler, pelvis, pregnant uterus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, bassin, grossesse"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, bekken, pelvis, zwangerschap"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, Becken, schwangerer Uterus"
    }]
  },
  {
    "code" : "114307",
    "display" : "US, duplex doppler, pelvis, scrotum",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, bassin, scrotum"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, bekken, scrotum"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, Becken, Skrotum"
    }]
  },
  {
    "code" : "3100246",
    "display" : "US, duplex doppler, pelvis, velocimetry",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, bassin, vélocimétrie"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, bekken, velocimetrie"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, Becken, Velozimetrie"
    }]
  },
  {
    "code" : "3104521",
    "display" : "US, duplex doppler, pelvis-lower extremity, iliofemoral arteries",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, bassin-membre inférieur, artères iliofémorales"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, bekken-onderste extremiteit, iliofemorale slagaders"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Duplex Doppler, Becken-untere Extremität, Iliofemoralarterien"
    }]
  },
  {
    "code" : "114169",
    "display" : "US, duplex doppler, upper extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex doppler, bovenste extremiteit"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, obere Extremität"
    }]
  },
  {
    "code" : "5000020",
    "display" : "US, duplex doppler, upper extremity, arterial",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "duplex scan des artères du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "duplexonderzoek van arterie van bovenste extremiteit"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, obere Extremität, arteriell"
    }]
  },
  {
    "code" : "3121247",
    "display" : "US, duplex doppler, upper extremity, shoulder",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, doppler duplex, membre supérieure, l'épaule"
    },
    {
      "language" : "nl-BE",
      "value" : "US, duplex-doppler, bovenste extremiteit, schouder"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Duplex Doppler, obere Extremität, Schulter"
    }]
  },
  {
    "code" : "5000021",
    "display" : "US, duplex doppler, upper extremity, venous",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "duplex scan des veines du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "duplexonderzoek van aders van arm"
    },
    {
      "language" : "de",
      "value" : "US, Duplex Doppler, obere Extremität, venös"
    }]
  },
  {
    "code" : "3100270",
    "display" : "US, echo, heart, fetal",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du coeur du fétus"
    },
    {
      "language" : "nl-BE",
      "value" : "foetale echocardiografie"
    },
    {
      "language" : "de",
      "value" : "US, Herzecho, fetal"
    }]
  },
  {
    "code" : "114138",
    "display" : "US, echo, heart, transesophageal",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du coeur transoesophagienne"
    },
    {
      "language" : "nl-BE",
      "value" : "transoesofageale echocardiografie"
    },
    {
      "language" : "de",
      "value" : "TEE - Transösophageale Echokardiographie"
    }]
  },
  {
    "code" : "3098609",
    "display" : "US, echo, heart, transesophageal bubble",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, échocardio, transoesophagien (ETO) avec administration de contraste gazeux IV"
    },
    {
      "language" : "nl-BE",
      "value" : "US, echo, hart, transoesofagaal met toediening van IV luchtbellen"
    },
    {
      "language" : "de",
      "value" : "US, Herzecho, transösophageal, mit Kontrast"
    }]
  },
  {
    "code" : "5000062",
    "display" : "US, echo, heart, transthoracic",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du coeur transthoracique"
    },
    {
      "language" : "nl-BE",
      "value" : "transthoracaal echocardiogram"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Echo, Herz, transthorakal"
    }]
  },
  {
    "code" : "3098608",
    "display" : "US, echo, heart, transthoracic bubble",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, échocardio, transthoracique avec administration de contraste gazeux IV"
    },
    {
      "language" : "nl-BE",
      "value" : "US, echo, hart, transthoracaal met toediening van IV luchtbellen"
    },
    {
      "language" : "de",
      "value" : "US, Herzecho, transthorakal, mit Kontrast"
    }]
  },
  {
    "code" : "115532",
    "display" : "US, echo, heart, transthoracic rest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, échocardio, transthoracique , repos"
    },
    {
      "language" : "nl-BE",
      "value" : "US, echo, hart, transthoracaal, rust"
    },
    {
      "language" : "de",
      "value" : "US, Herzecho, transthorakal, Ruhelage"
    }]
  },
  {
    "code" : "114140",
    "display" : "US, echo, heart, transthoracic stress",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échocardiographie de stress"
    },
    {
      "language" : "nl-BE",
      "value" : "stressechocardiografie"
    },
    {
      "language" : "de",
      "value" : "Stressechokardiographie"
    }]
  },
  {
    "code" : "3102429",
    "display" : "US, elastography 1D transient, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, élastographie 1D transitoire, l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "US, elastografie 1D transiënt, abdomen"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Elastographie 1D transient, Abdomen"
    }]
  },
  {
    "code" : "3102428",
    "display" : "US, elastography ARFI, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, élastographie ARFI, abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "US, elastografie ARFI, abdomen"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Elastographie ARFI, Abdomen"
    }]
  },
  {
    "code" : "5000047",
    "display" : "US, elastography, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, élastographie, abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "US, elastografie, abdomen"
    },
    {
      "language" : "de",
      "value" : "US, Elastographie, Abdomen"
    }]
  },
  {
    "code" : "114123",
    "display" : "US, endoscopic, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échoendoscopie"
    },
    {
      "language" : "nl-BE",
      "value" : "echografische beeldvorming met endoscoop"
    },
    {
      "language" : "de",
      "value" : "Endoskopische Ultraschalluntersuchung"
    }]
  },
  {
    "code" : "115337",
    "display" : "US, FAST, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, FAST, abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "US, FAST, abdomen"
    },
    {
      "language" : "de",
      "value" : "US, FAST, Abdomen"
    }]
  },
  {
    "code" : "114126",
    "display" : "US, graded compression, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van abdomen"
    },
    {
      "language" : "de",
      "value" : "US, dosierte Kompression, Abdomen"
    }]
  },
  {
    "code" : "31",
    "display" : "US, head",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la tête"
    },
    {
      "language" : "nl-BE",
      "value" : "echografische beeldvorming van hoofd"
    },
    {
      "language" : "de",
      "value" : "US, Schädel"
    }]
  },
  {
    "code" : "114124",
    "display" : "US, intraoperative, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie laparoscopique"
    },
    {
      "language" : "nl-BE",
      "value" : "laparoscopische echografische beeldvorming van abdomen"
    },
    {
      "language" : "de",
      "value" : "US, intraoperativ, Abdomen"
    }]
  },
  {
    "code" : "3082564",
    "display" : "US, intravascular, abdomen-pelvis, aorta-iliofemoral system",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie intravasculaire d'artère"
    },
    {
      "language" : "nl-BE",
      "value" : "intravasculaire echografie van arterie"
    },
    {
      "language" : "de",
      "value" : "US, intravaskulär, Abdomen-Becken, Aorta-iliofemorales System"
    }]
  },
  {
    "code" : "114172",
    "display" : "US, intravascular, area of interest, aorta",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie intravasculaire d'artère"
    },
    {
      "language" : "nl-BE",
      "value" : "intravasculaire echografie van arterie"
    },
    {
      "language" : "de",
      "value" : "US, intravaskulär, Zielregion, Aorta"
    }]
  },
  {
    "code" : "114130",
    "display" : "US, lower extremity, ankle",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van enkelregio"
    },
    {
      "language" : "de",
      "value" : "US, untere Extremität, Sprunggelenk"
    }]
  },
  {
    "code" : "130522",
    "display" : "US, lower extremity, ankle, incl hindfoot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van enkelregio"
    },
    {
      "language" : "de",
      "value" : "US, untere Extremität, Sprunggelenk inkl. Hinterfuß"
    }]
  },
  {
    "code" : "114144",
    "display" : "US, lower extremity, foot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du pied"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van voet"
    },
    {
      "language" : "de",
      "value" : "US, untere Extremität, Fuß"
    }]
  },
  {
    "code" : "5000100",
    "display" : "US, lower extremity, heel",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, membre inférieur, talon"
    },
    {
      "language" : "nl-BE",
      "value" : "US, onderste extremiteit, hiel"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, untere Extremität, Ferse"
    }]
  },
  {
    "code" : "114147",
    "display" : "US, lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "echografische beeldvorming van heup"
    },
    {
      "language" : "de",
      "value" : "US, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "114131",
    "display" : "US, lower extremity, hips",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie bilatérale de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "ultrageluidsonderzoek van beide heupen"
    },
    {
      "language" : "de",
      "value" : "US, untere Extremität, Hüften"
    }]
  },
  {
    "code" : "114149",
    "display" : "US, lower extremity, knee",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du genou"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van knieregio"
    },
    {
      "language" : "de",
      "value" : "US, untere Extremität, Knie"
    }]
  },
  {
    "code" : "130814",
    "display" : "US, lower extremity, leg",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, membre inférieur, jambe"
    },
    {
      "language" : "nl-BE",
      "value" : "US, onderste extremiteit, been"
    },
    {
      "language" : "de",
      "value" : "US, untere Extremität, Bein"
    }]
  },
  {
    "code" : "130728",
    "display" : "US, lower extremity, thigh",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la cuisse"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van bovenbeen"
    },
    {
      "language" : "de",
      "value" : "US, untere Extremität, Oberschenkel"
    }]
  },
  {
    "code" : "3100261",
    "display" : "US, lower extremity, thigh, bilateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie des deux cuisses"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van beide bovenbenen"
    },
    {
      "language" : "de",
      "value" : "US, untere Extremität, Oberschenkel, bilateral"
    }]
  },
  {
    "code" : "130742",
    "display" : "US, maxface",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la face"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van aangezicht"
    },
    {
      "language" : "de",
      "value" : "US, Gesichtsschädel"
    }]
  },
  {
    "code" : "115343",
    "display" : "US, neck",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van hals"
    },
    {
      "language" : "de",
      "value" : "US, Hals"
    }]
  },
  {
    "code" : "5000057",
    "display" : "US, neck, thyroid",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la thyroide"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van schildklier"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Hals, Schilddrüse"
    }]
  },
  {
    "code" : "114154",
    "display" : "US, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "echo van pelvis"
    },
    {
      "language" : "de",
      "value" : "US, Becken"
    }]
  },
  {
    "code" : "115481",
    "display" : "US, pelvis, bladder",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la vessie"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van blaas"
    },
    {
      "language" : "de",
      "value" : "Sonografie der Harnblase"
    }]
  },
  {
    "code" : "115204",
    "display" : "US, pelvis, bladder-prostate",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, bassinne, vessie-prostate"
    },
    {
      "language" : "nl-BE",
      "value" : "US, bekken, blaas-prostaat"
    },
    {
      "language" : "de",
      "value" : "US, Becken, Blase-Prostata"
    }]
  },
  {
    "code" : "3093395",
    "display" : "US, pelvis, cervical stress test",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, bassin, stress-test cervical"
    },
    {
      "language" : "nl-BE",
      "value" : "US, bekken, cervix stress test"
    },
    {
      "language" : "de",
      "value" : "US, Becken, zervikaler Stresstest"
    }]
  },
  {
    "code" : "115344",
    "display" : "US, pelvis, pregnant uterus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'utérus gravide"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van uterus gravidus"
    },
    {
      "language" : "de",
      "value" : "US, Becken, schwangerer Uterus"
    }]
  },
  {
    "code" : "3098216",
    "display" : "US, pelvis, sacroiliac joints",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'articulation sacro-iliaque"
    },
    {
      "language" : "nl-BE",
      "value" : "echo van articulatio sacroiliaca"
    },
    {
      "language" : "de",
      "value" : "US, Becken, Iliosacralgelenke"
    }]
  },
  {
    "code" : "114164",
    "display" : "US, pelvis, scrotum",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du scrotum"
    },
    {
      "language" : "nl-BE",
      "value" : "echo van balzak"
    },
    {
      "language" : "de",
      "value" : "US, Becken, Skrotum"
    }]
  },
  {
    "code" : "114117",
    "display" : "US, quantitative, lower extremity, heel",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie quantitative du talon"
    },
    {
      "language" : "nl-BE",
      "value" : "kwantitatieve ultrasonografie van hiel"
    },
    {
      "language" : "de",
      "value" : "US, quantitativ, untere Extremität, Ferse"
    }]
  },
  {
    "code" : "114148",
    "display" : "US, saline infusion sonohysterography, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'utérus avec injection de sérum physiologique"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van uterus met infusie van fysiologische zoutoplossing"
    },
    {
      "language" : "de",
      "value" : "US, saline Hysterosonographie, Becken"
    }]
  },
  {
    "code" : "114166",
    "display" : "US, spine",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la colonne vertébrale"
    },
    {
      "language" : "nl-BE",
      "value" : "echografische beeldvorming van wervelkolom"
    },
    {
      "language" : "de",
      "value" : "US, Wirbelsäule"
    }]
  },
  {
    "code" : "3109459",
    "display" : "US, spine, cervical",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la colonne cervicale"
    },
    {
      "language" : "nl-BE",
      "value" : "echo van CWK"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Wirbelsäule, zervikal"
    }]
  },
  {
    "code" : "3109457",
    "display" : "US, spine, lumbar",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la colonne lombaire"
    },
    {
      "language" : "nl-BE",
      "value" : "echo van LWK"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Wirbelsäule, lumbal"
    }]
  },
  {
    "code" : "3109467",
    "display" : "US, spine, lumbar-sacrum",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, colonne, lombaire sacrum"
    },
    {
      "language" : "nl-BE",
      "value" : "US, wervelkolom, lumbaal-sacrum"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Wirbelsäule, lumbosakral"
    }]
  },
  {
    "code" : "3111048",
    "display" : "US, spine, sacrum",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du sacrum"
    },
    {
      "language" : "nl-BE",
      "value" : "echografische beeldvorming van sacrale wervelkolom"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Wirbelsäule, sakral"
    }]
  },
  {
    "code" : "3109460",
    "display" : "US, spine, thoracic",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la colonne dorsale"
    },
    {
      "language" : "nl-BE",
      "value" : "echo van columna vertebralis thoracalis"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Wirbelsäule, thorakal"
    }]
  },
  {
    "code" : "3122254",
    "display" : "US, transabdominal, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van abdomen"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, transabdominell, Abdomen"
    }]
  },
  {
    "code" : "115338",
    "display" : "US, transabdominal, abdomen-pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'abdomen et du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "ultrageluidsonderzoek van buik en bekken"
    },
    {
      "language" : "de",
      "value" : "US, Abdomen-Becken"
    }]
  },
  {
    "code" : "114155",
    "display" : "US, transabdominal, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, transabdominale, bassin"
    },
    {
      "language" : "nl-BE",
      "value" : "transabdominaal ultrageluidsonderzoek van bekken"
    },
    {
      "language" : "de",
      "value" : "US, transabdominal, Becken"
    }]
  },
  {
    "code" : "114159",
    "display" : "US, transabdominal, pelvis, pregnant uterus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie obstétricale"
    },
    {
      "language" : "nl-BE",
      "value" : "obstetrische echografie à vue"
    },
    {
      "language" : "de",
      "value" : "Ultraschalluntersuchung - Geburtshilfe"
    }]
  },
  {
    "code" : "114162",
    "display" : "US, transabdominal, pelvis, prostate",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, transabdominale, bassin, prostate"
    },
    {
      "language" : "nl-BE",
      "value" : "SPUS van prostaat"
    },
    {
      "language" : "de",
      "value" : "US, transabdominal, Becken, Prostata"
    }]
  },
  {
    "code" : "3098610",
    "display" : "US, transcranial bubble, head",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie Doppler transcrânienne d'une artère intracrânienne avec produit de contraste à microbulles pour détection d'emboles"
    },
    {
      "language" : "nl-BE",
      "value" : "transcranieel duplexonderzoek van intracraniële arterie met microbellen als contrastmiddel voor emboliedetectie"
    },
    {
      "language" : "de",
      "value" : "US, transkranielle Blase, Schädel"
    }]
  },
  {
    "code" : "114168",
    "display" : "US, transcranial doppler, head, cerebral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "écho-doppler transcranien"
    },
    {
      "language" : "nl-BE",
      "value" : "transcranieel echo-Doppler-onderzoek"
    },
    {
      "language" : "de",
      "value" : "US, transkranieller Doppler, Schädel, zerebral"
    }]
  },
  {
    "code" : "3082954",
    "display" : "US, transperineal, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "echo van pelvis"
    },
    {
      "language" : "de",
      "value" : "US, transperineal, Becken"
    }]
  },
  {
    "code" : "3093391",
    "display" : "US, transperineal, pelvis, cervix",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du col de l'utérus"
    },
    {
      "language" : "nl-BE",
      "value" : "echo van baarmoederhals"
    },
    {
      "language" : "de",
      "value" : "US, transperineal, Becken, Zervix"
    }]
  },
  {
    "code" : "114160",
    "display" : "US, transperineal, pelvis, pregnant uterus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, transpérinéale, bassin, grossesse"
    },
    {
      "language" : "nl-BE",
      "value" : "US, transperiniaal, bekken, zwangerschap"
    },
    {
      "language" : "de",
      "value" : "US, transperineal, Becken, schwangerer Uterus"
    }]
  },
  {
    "code" : "114127",
    "display" : "US, transrectal or transvaginal, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie transvaginale"
    },
    {
      "language" : "nl-BE",
      "value" : "TVE"
    },
    {
      "language" : "de",
      "value" : "US, transrectal oder transvaginal, Becken"
    }]
  },
  {
    "code" : "114143",
    "display" : "US, transrectal, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie endorectale"
    },
    {
      "language" : "nl-BE",
      "value" : "TRUS"
    },
    {
      "language" : "de",
      "value" : "US, endorektal, Becken"
    }]
  },
  {
    "code" : "3082960",
    "display" : "US, transrectal, pelvis, anal sphincter",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, transrectale, bassin, sphincter anal"
    },
    {
      "language" : "nl-BE",
      "value" : "US, transrectaal, bekken, anale sphincter"
    },
    {
      "language" : "de",
      "value" : "US, endorektal, Becken, Analsphinkter"
    }]
  },
  {
    "code" : "114163",
    "display" : "US, transrectal, pelvis, prostate",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie transrectale de prostate"
    },
    {
      "language" : "nl-BE",
      "value" : "transrectale echografie van prostaat"
    },
    {
      "language" : "de",
      "value" : "US, transrektal, Becken, Prostata"
    }]
  },
  {
    "code" : "115347",
    "display" : "US, transvaginal duplex doppler, pelvis, pregnant uterus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "écho-doppler transvaginal"
    },
    {
      "language" : "nl-BE",
      "value" : "transvaginaal obstetrisch echo-Doppler-onderzoek"
    },
    {
      "language" : "de",
      "value" : "US, transvaginaler Duplex Doppler, Becken, schwangerer Uterus"
    }]
  },
  {
    "code" : "114156",
    "display" : "US, transvaginal, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie transvaginale du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "transvaginale ultrasonografie van bekken"
    },
    {
      "language" : "de",
      "value" : "US, transvaginal, Becken"
    }]
  },
  {
    "code" : "3093390",
    "display" : "US, transvaginal, pelvis, cervix",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du col de l'utérus"
    },
    {
      "language" : "nl-BE",
      "value" : "echo van baarmoederhals"
    },
    {
      "language" : "de",
      "value" : "US, transvaginal, Becken, Zervix"
    }]
  },
  {
    "code" : "114161",
    "display" : "US, transvaginal, pelvis, pregnant uterus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie obstétricale transvaginale"
    },
    {
      "language" : "nl-BE",
      "value" : "transvaginale obstetrische echografie"
    },
    {
      "language" : "de",
      "value" : "US, transvaginal, Becken, schwangerer Uterus"
    }]
  },
  {
    "code" : "3117258",
    "display" : "US, TTTS, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, TTTS, bassin"
    },
    {
      "language" : "nl-BE",
      "value" : "US, TTTS, bekken"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, TTTS, Becken"
    }]
  },
  {
    "code" : "5000048",
    "display" : "US, upper extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van bovenste extremiteit"
    },
    {
      "language" : "de",
      "value" : "US, obere Extremität"
    }]
  },
  {
    "code" : "130711",
    "display" : "US, upper extremity, arm",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la partie supérieure du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "echografische beeldvorming van bovenarm"
    },
    {
      "language" : "de",
      "value" : "US, obere Extremität, Arm"
    }]
  },
  {
    "code" : "114142",
    "display" : "US, upper extremity, elbow",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du coude"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van elleboog"
    },
    {
      "language" : "de",
      "value" : "US, obere Extremität, Ellbogen"
    }]
  },
  {
    "code" : "3082560",
    "display" : "US, upper extremity, finger",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie des doigts"
    },
    {
      "language" : "nl-BE",
      "value" : "ultrasonografie van vinger"
    },
    {
      "language" : "de",
      "value" : "US, obere Extremität, Finger"
    }]
  },
  {
    "code" : "130765",
    "display" : "US, upper extremity, forearm",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de l'avant-bras"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van onderarm"
    },
    {
      "language" : "de",
      "value" : "US, obere Extremität, Unterarm"
    }]
  },
  {
    "code" : "115024",
    "display" : "US, upper extremity, hand",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la main"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van hand"
    },
    {
      "language" : "de",
      "value" : "US, obere Extremität, Hand"
    }]
  },
  {
    "code" : "114165",
    "display" : "US, upper extremity, shoulder",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie de la région de l'épaule"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van schoudergebied"
    },
    {
      "language" : "de",
      "value" : "US, obere Extremität, Schulter"
    }]
  },
  {
    "code" : "114167",
    "display" : "US, upper extremity, thumb",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du pouce"
    },
    {
      "language" : "nl-BE",
      "value" : "echo van pollex"
    },
    {
      "language" : "de",
      "value" : "US, obere Extremität, Daumen"
    }]
  },
  {
    "code" : "114171",
    "display" : "US, upper extremity, wrist",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "échographie du poignet"
    },
    {
      "language" : "nl-BE",
      "value" : "echografie van pols"
    },
    {
      "language" : "de",
      "value" : "US, obere Extremität, Handgelenk"
    }]
  },
  {
    "code" : "3111287",
    "display" : "US, voiding, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "ECHO, mictionnelle, bassin"
    },
    {
      "language" : "nl-BE",
      "value" : "US, urinelozing, bekken"
    },
    {
      "language" : "de",
      "value" : "Ultraschall, Entleerung, Becken"
    }]
  },
  {
    "code" : "114538",
    "display" : "XRAY, abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX (radiographie) simple de l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van abdomen"
    },
    {
      "language" : "de",
      "value" : "RÖ, Abdomen"
    }]
  },
  {
    "code" : "114294",
    "display" : "XRAY, abdomen-pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX (radiographie) simple de l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van abdomen"
    },
    {
      "language" : "de",
      "value" : "RÖ, Abdomen, Becken"
    }]
  },
  {
    "code" : "115485",
    "display" : "XRAY, abdomen-pelvis, incl KUB",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, abdomen-bassin, y compris les reins, les uretères et  région vésicale"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, abdomen-bekken, incl. nier-ureter-blaas streek"
    },
    {
      "language" : "de",
      "value" : "RÖ, Abdomen-Becken, inkl. Nierenleeraufnahme"
    }]
  },
  {
    "code" : "3100257",
    "display" : "XRAY, appendicular skeleton",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membres inférieurs"
    },
    {
      "language" : "nl-BE",
      "value" : "serie röntgenfoto's van volledig skelet"
    },
    {
      "language" : "de",
      "value" : "RÖ, peripheres Skelett"
    }]
  },
  {
    "code" : "114537",
    "display" : "XRAY, area of interest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie"
    },
    {
      "language" : "nl-BE",
      "value" : "X-foto"
    },
    {
      "language" : "de",
      "value" : "RÖ, Zielregion"
    }]
  },
  {
    "code" : "3100256",
    "display" : "XRAY, axial skeleton",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, squelette axial"
    },
    {
      "language" : "nl-BE",
      "value" : "serie röntgenfoto's van volledig skelet"
    },
    {
      "language" : "de",
      "value" : "RÖ, Achsenskelett"
    }]
  },
  {
    "code" : "114005",
    "display" : "XRAY, chest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie pulmonaire simple"
    },
    {
      "language" : "nl-BE",
      "value" : "X-thorax"
    },
    {
      "language" : "de",
      "value" : "Röntgenbild des Brustkorbs"
    }]
  },
  {
    "code" : "5000101",
    "display" : "XRAY, chest, acromioclavicular joint",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, thorax, articulation acromio-claviculaire"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van articulatio acromioclavicularis"
    },
    {
      "language" : "de",
      "value" : "Röntgen, Thorax, Akromioklavikulargelenk"
    }]
  },
  {
    "code" : "5000102",
    "display" : "XRAY, chest, clavicle",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie de clavicule"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van sleutelbeen"
    },
    {
      "language" : "de",
      "value" : "Röntgen, Thorax, Klavikula"
    }]
  },
  {
    "code" : "5000049",
    "display" : "XRAY, chest, decubitus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie pulmonaire simple"
    },
    {
      "language" : "nl-BE",
      "value" : "X-thorax"
    },
    {
      "language" : "de",
      "value" : "Röntgenbild des Brustkorbs"
    }]
  },
  {
    "code" : "5000117",
    "display" : "XRAY, chest, inspiration/expiration",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie pulmonaire simple"
    },
    {
      "language" : "nl-BE",
      "value" : "X-thorax"
    },
    {
      "language" : "de",
      "value" : "Röntgenbild des Brustkorbs"
    }]
  },
  {
    "code" : "130684",
    "display" : "XRAY, chest, preoperative",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie pulmonaire simple"
    },
    {
      "language" : "nl-BE",
      "value" : "X-thorax"
    },
    {
      "language" : "de",
      "value" : "Röntgenbild des Brustkorbs"
    }]
  },
  {
    "code" : "114019",
    "display" : "XRAY, chest, ribs",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, thorax, côtes"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van botstructuur van rib"
    },
    {
      "language" : "de",
      "value" : "RÖ, Thorax, Rippen"
    }]
  },
  {
    "code" : "130685",
    "display" : "XRAY, chest, routine admission",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie pulmonaire simple"
    },
    {
      "language" : "nl-BE",
      "value" : "X-thorax"
    },
    {
      "language" : "de",
      "value" : "Röntgenbild des Brustkorbs"
    }]
  },
  {
    "code" : "3098254",
    "display" : "XRAY, chest, routine outpatient",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie pulmonaire simple"
    },
    {
      "language" : "nl-BE",
      "value" : "X-thorax"
    },
    {
      "language" : "de",
      "value" : "Röntgenbild des Brustkorbs"
    }]
  },
  {
    "code" : "3098253",
    "display" : "XRAY, chest, routine preoperative",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie pulmonaire simple"
    },
    {
      "language" : "nl-BE",
      "value" : "X-thorax"
    },
    {
      "language" : "de",
      "value" : "Röntgenbild des Brustkorbs"
    }]
  },
  {
    "code" : "5000106",
    "display" : "XRAY, chest, sternoclavicular joint",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, thorax, articulation sterno-claviculaire"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van sternoclaviculair gewricht"
    },
    {
      "language" : "de",
      "value" : "Röntgen, Thorax, Sternoklavikulargelenk"
    }]
  },
  {
    "code" : "114029",
    "display" : "XRAY, chest, sternum",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, thorax, sternum"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van sternum"
    },
    {
      "language" : "de",
      "value" : "RÖ, Thorax, Sternum"
    }]
  },
  {
    "code" : "5000118",
    "display" : "XRAY, chest-abdomen",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie du thorax et de l'abdomen"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van borstkas en buik"
    },
    {
      "language" : "de",
      "value" : "Röntgen, Thorax-Abdomen"
    }]
  },
  {
    "code" : "5000104",
    "display" : "XRAY, head, mastoid",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, tête, mastoïde"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van processus mastoideus"
    },
    {
      "language" : "de",
      "value" : "Röntgen, Schädel, Mastoid"
    }]
  },
  {
    "code" : "114016",
    "display" : "XRAY, head, orbit",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, têtê, orbites"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van orbita"
    },
    {
      "language" : "de",
      "value" : "RÖ, Schädel, Orbita"
    }]
  },
  {
    "code" : "114020",
    "display" : "XRAY, head, sella",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, têtê, selle turcique"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van sella turcica"
    },
    {
      "language" : "de",
      "value" : "RÖ, Schädel, Sella"
    }]
  },
  {
    "code" : "114026",
    "display" : "XRAY, head, skull",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX (radiographie) osseuse crânienne"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van schedel"
    },
    {
      "language" : "de",
      "value" : "RÖ, Schädel"
    }]
  },
  {
    "code" : "5000050",
    "display" : "XRAY, lower extremities, low dose",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membres inférieurs, low dose"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, onderste extremiteiten, low dose"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremitäten (low dose)"
    }]
  },
  {
    "code" : "5000051",
    "display" : "XRAY, lower extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität"
    }]
  },
  {
    "code" : "115348",
    "display" : "XRAY, lower extremity, ankle",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membre inférieur, cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van regio van enkel"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Sprunggelenk"
    }]
  },
  {
    "code" : "3082917",
    "display" : "XRAY, lower extremity, ankle, Broden's view",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membre inférieur, cheville, incidence de Broden"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, onderste extremiteit, enkel, Broden opname"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Spezialaufnahme"
    }]
  },
  {
    "code" : "114008",
    "display" : "XRAY, lower extremity, femur",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie du fémur"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van femur"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Femur"
    }]
  },
  {
    "code" : "115487",
    "display" : "XRAY, lower extremity, foot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membre inférieur, pied"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van voet"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Fuß"
    }]
  },
  {
    "code" : "3091691",
    "display" : "XRAY, lower extremity, foot, forced dorsiflextion lateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membre inférieur, pied, incidence en profil avec dorsiflexion forcée"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, onderste extremiteit, voet, laterale stress opname dorsiflexie"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Fuß, forcierte Dorsalflexion lateral"
    }]
  },
  {
    "code" : "3093335",
    "display" : "XRAY, lower extremity, foot, weight bearing",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membre inférieur, pied, avec poids"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, onderste extremiteit, voet, belast"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Fuß, unter Gewichtsbelastung"
    }]
  },
  {
    "code" : "5000103",
    "display" : "XRAY, lower extremity, heel",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membre inférieur, talon"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, onderste extremiteit, hiel"
    },
    {
      "language" : "de",
      "value" : "Röntgen, untere Extremität, Ferse"
    }]
  },
  {
    "code" : "114009",
    "display" : "XRAY, lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie simple de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van heup"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "115352",
    "display" : "XRAY, lower extremity, hips",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie coxofémorale simple bilatérale"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van beide heupen"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Hüften"
    }]
  },
  {
    "code" : "114010",
    "display" : "XRAY, lower extremity, knee",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membre inférieur, genou"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van knie"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Knie"
    }]
  },
  {
    "code" : "130815",
    "display" : "XRAY, lower extremity, leg",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membre inférieur, jambe"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van onderbeen"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Bein"
    }]
  },
  {
    "code" : "3082918",
    "display" : "XRAY, lower extremity, tib fib",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie tibiopéronière simple"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van scheenbeen en kuitbeen"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Unterschenkel"
    }]
  },
  {
    "code" : "5000107",
    "display" : "XRAY, lower extremity, toe",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie standard d'un orteil"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van teen"
    },
    {
      "language" : "de",
      "value" : "Röntgen, untere Extremität, Zeh"
    }]
  },
  {
    "code" : "11085",
    "display" : "XRAY, maxface",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, maxillo-facial"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, maxillofaciaal"
    },
    {
      "language" : "de",
      "value" : "RÖ, Gesichtsschädel"
    }]
  },
  {
    "code" : "115353",
    "display" : "XRAY, maxface, paranasal sinuses",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, maxillo-facial, sinus paranasaux"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van neusbijholte"
    },
    {
      "language" : "de",
      "value" : "RÖ, Gesichtsschädel, Nasennebenhöhlen"
    }]
  },
  {
    "code" : "11097",
    "display" : "XRAY, neck",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie du cou"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van hals en/of nek"
    },
    {
      "language" : "de",
      "value" : "RÖ, Hals"
    }]
  },
  {
    "code" : "115014",
    "display" : "XRAY, pelvis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie simple du pelvis"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van bekken"
    },
    {
      "language" : "de",
      "value" : "RÖ, Becken"
    }]
  },
  {
    "code" : "3098217",
    "display" : "XRAY, pelvis, sacroiliac joints",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie conventionnelle de l'articulation sacro-iliaque"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van sacro-iliacaal gewricht"
    },
    {
      "language" : "de",
      "value" : "RÖ, Becken, Sacroiliacalgelenke"
    }]
  },
  {
    "code" : "3097295",
    "display" : "XRAY, pelvis-lower extremity, hips",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, bassin- membre inférieur, hanches"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van bot van bekken en bot van heup"
    },
    {
      "language" : "de",
      "value" : "RÖ, Becken, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "114308",
    "display" : "XRAY, pelvis-lower extremity, leg and foot",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie simple du bassin et du membre inférieur"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van bekken en onderste extremiteit"
    },
    {
      "language" : "de",
      "value" : "RÖ, Becken, untere Extremität, Bein und Fuß"
    }]
  },
  {
    "code" : "3093366",
    "display" : "XRAY, portable, chest",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie de thorax avec un imageur mobile"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van thorax met mobiele beeldversterker"
    },
    {
      "language" : "de",
      "value" : "RÖ, Thorax, Bettaufnahme"
    }]
  },
  {
    "code" : "114034",
    "display" : "XRAY, repeat in cast, upper extremity, wrist",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie conventionnelle du poignet"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van pols"
    },
    {
      "language" : "de",
      "value" : "RÖ, Kontrollaufnahme im Gipsverband, obere Extremität, Handgelenk"
    }]
  },
  {
    "code" : "114270",
    "display" : "XRAY, skel survey, whole body",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, vue d'ensemble du squelette, corps entier"
    },
    {
      "language" : "nl-BE",
      "value" : "serie röntgenfoto's van volledig skelet"
    },
    {
      "language" : "de",
      "value" : "RÖ, Skelettstatus, Ganzkörper"
    }]
  },
  {
    "code" : "114027",
    "display" : "XRAY, spine",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, colonne"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van regio van wervelkolom"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule"
    }]
  },
  {
    "code" : "114004",
    "display" : "XRAY, spine, cervical",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie de la colonne cervicale"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van columna vertebralis cervicalis"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, HWS"
    }]
  },
  {
    "code" : "3082566",
    "display" : "XRAY, spine, cervical, flexion-extension lateral",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, colonne, cervicale, profil manoeuvres flexion-extension"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, wervelkolom, cervicaal, laterale flexie-extensie"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, HWS, Funktionsaufnahme"
    }]
  },
  {
    "code" : "3102059",
    "display" : "XRAY, spine, cervical-thoracic-lumbar",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, colonne, cervico-dorso-lombaire"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, wervelkolom, cervico-thoraco-lumbaal"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, HWS, BWS, LWS"
    }]
  },
  {
    "code" : "5000052",
    "display" : "XRAY, spine, low dose",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, colonne, basse dose ( low dose )"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van regio van wervelkolom"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, niedrige Dosis"
    }]
  },
  {
    "code" : "114014",
    "display" : "XRAY, spine, lumbar",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie standard de la colonne lombaire"
    },
    {
      "language" : "nl-BE",
      "value" : "X-foto van columna vertebralis lumbalis"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, LWS"
    }]
  },
  {
    "code" : "114015",
    "display" : "XRAY, spine, lumbar-sacrum",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie de la colonne lombo-sacrée"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenonderzoek van lumbosacrale wervelkolom"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, LWS, Sacrum"
    }]
  },
  {
    "code" : "3110205",
    "display" : "XRAY, spine, sacrum",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, colonne, sacrum"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van regio van sacrale wervelkolom"
    },
    {
      "language" : "de",
      "value" : "Röntgen, Wirbelsäule, Sakrum"
    }]
  },
  {
    "code" : "5000053",
    "display" : "XRAY, spine, scoliosis",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, colonne, scoliose"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van volledige wervelkolom"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, Scoliose"
    }]
  },
  {
    "code" : "114031",
    "display" : "XRAY, spine, thoracic",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, colonne, dorsale"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van regio van thoracale wervelkolom"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, BWS"
    }]
  },
  {
    "code" : "114309",
    "display" : "XRAY, spine, thoracic or lumbar",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, colonne, dorsale ou lombaire"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, wervelkolom, thoracaal of lumbaal"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, BWS oder LWS"
    }]
  },
  {
    "code" : "114628",
    "display" : "XRAY, spine, thoracic-lumbar",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie de la colonne dorso-lombaire"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van TWK en LWK"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, BWS, LWS"
    }]
  },
  {
    "code" : "115355",
    "display" : "XRAY, spine-lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, colonne- membre inférieur, hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, wervelkolom-onderste extremiteit,heup"
    },
    {
      "language" : "de",
      "value" : "RÖ, Wirbelsäule, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "114018",
    "display" : "XRAY, stereogrammetry, lower extremity, hip",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie simple de la hanche"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van heup"
    },
    {
      "language" : "de",
      "value" : "RÖ, Stereogrammetrie, untere Extremität, Hüfte"
    }]
  },
  {
    "code" : "115349",
    "display" : "XRAY, stress, lower extremity, ankle",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, stress, membre inférieur, cheville"
    },
    {
      "language" : "nl-BE",
      "value" : "stress-röntgenfoto van articulatio talocruralis"
    },
    {
      "language" : "de",
      "value" : "RÖ, untere Extremität, Sprunggelenk, gehaltene Aufnahme"
    }]
  },
  {
    "code" : "3098228",
    "display" : "XRAY, stress, upper extremity, elbow",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie du coude"
    },
    {
      "language" : "nl-BE",
      "value" : "X-elleboog"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Ellbogen, gehaltene Aufnahme"
    }]
  },
  {
    "code" : "115028",
    "display" : "XRAY, stress, upper extremity, thumb",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, stress, membre supérieur, pouce"
    },
    {
      "language" : "nl-BE",
      "value" : "stress-röntgenfoto van duim"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Daumen, gehaltene Aufnahme"
    }]
  },
  {
    "code" : "114032",
    "display" : "XRAY, tomography, head",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, tomographie, têtê"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, tomografie, hoofd"
    },
    {
      "language" : "de",
      "value" : "RÖ, Tomographie, Schädel"
    }]
  },
  {
    "code" : "5000054",
    "display" : "XRAY, upper extremity",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie simple du membre supérieur"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van bovenste ledemaat"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität"
    }]
  },
  {
    "code" : "114007",
    "display" : "XRAY, upper extremity, elbow",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie du coude"
    },
    {
      "language" : "nl-BE",
      "value" : "X-elleboog"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Ellbogen"
    }]
  },
  {
    "code" : "3082567",
    "display" : "XRAY, upper extremity, finger",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie conventionnelle d'un doigt, sauf le pouce"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van digitus manus, exclusief pollex"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Finger"
    }]
  },
  {
    "code" : "130766",
    "display" : "XRAY, upper extremity, forearm",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie conventionnelle de l'avant-bras"
    },
    {
      "language" : "nl-BE",
      "value" : "X-foto van onderarm"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Unterarm"
    }]
  },
  {
    "code" : "115488",
    "display" : "XRAY, upper extremity, hand",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie de la main"
    },
    {
      "language" : "nl-BE",
      "value" : "X-hand"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Hand"
    }]
  },
  {
    "code" : "130712",
    "display" : "XRAY, upper extremity, humerus",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie de l'humérus"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van humerus"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Arm"
    }]
  },
  {
    "code" : "5000105",
    "display" : "XRAY, upper extremity, scapula",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie de l'omoplate"
    },
    {
      "language" : "nl-BE",
      "value" : "X-scapula"
    },
    {
      "language" : "de",
      "value" : "Röntgen, obere Extremität, Skapula"
    }]
  },
  {
    "code" : "115537",
    "display" : "XRAY, upper extremity, shoulder",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie standard de l'épaule"
    },
    {
      "language" : "nl-BE",
      "value" : "X-schouder"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Schulter"
    }]
  },
  {
    "code" : "3122256",
    "display" : "XRAY, upper extremity, shoulder, additional views",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "RX, membre supérieur, épaule, vues supplémentaires"
    },
    {
      "language" : "nl-BE",
      "value" : "CR, bovenste extremiteit, schouder, bijkomende opnames"
    },
    {
      "language" : "de",
      "value" : "Röntgen, obere Extremität, Schulter, zusätzliche Ansichten"
    }]
  },
  {
    "code" : "115016",
    "display" : "XRAY, upper extremity, thumb",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie simple du doigt I de la main"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van pollex"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Daumen"
    }]
  },
  {
    "code" : "114033",
    "display" : "XRAY, upper extremity, wrist",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie conventionnelle du poignet"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van pols"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Handgelenk"
    }]
  },
  {
    "code" : "3082758",
    "display" : "XRAY, upper extremity, wrist, additional views",
    "designation" : [{
      "language" : "fr-BE",
      "value" : "radiographie conventionnelle du poignet"
    },
    {
      "language" : "nl-BE",
      "value" : "röntgenfoto van pols"
    },
    {
      "language" : "de",
      "value" : "RÖ, obere Extremität, Handgelenk, Zusatzaufnahmen"
    }]
  }]
}

```
