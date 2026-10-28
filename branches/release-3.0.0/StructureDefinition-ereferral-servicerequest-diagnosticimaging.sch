<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile BeServiceRequestDiagnosticImaging
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ServiceRequest</sch:title>
    <sch:rule context="f:ServiceRequest">
      <sch:assert test="count(f:implicitRules) &lt;= 0">implicitRules: maximum cardinality of 'implicitRules' is 0</sch:assert>
      <sch:assert test="count(f:language) &lt;= 0">language: maximum cardinality of 'language' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber']) &lt;= 0">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-feedback-to-prescriber': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-validity-period': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-latest-end-date']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-latest-end-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-performer-type']) &lt;= 0">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-performer-type': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/request-statusReason']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/request-statusReason': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeable-reference']) &lt;= 0">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeable-reference': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-urgency-justification']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-urgency-justification': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-pss-info']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-pss-info': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:instantiatesCanonical) &lt;= 0">instantiatesCanonical: maximum cardinality of 'instantiatesCanonical' is 0</sch:assert>
      <sch:assert test="count(f:instantiatesUri) &lt;= 0">instantiatesUri: maximum cardinality of 'instantiatesUri' is 0</sch:assert>
      <sch:assert test="count(f:requisition) &lt;= 0">requisition: maximum cardinality of 'requisition' is 0</sch:assert>
      <sch:assert test="count(f:doNotPerform) &lt;= 0">doNotPerform: maximum cardinality of 'doNotPerform' is 0</sch:assert>
      <sch:assert test="count(f:orderDetail) &lt;= 0">orderDetail: maximum cardinality of 'orderDetail' is 0</sch:assert>
      <sch:assert test="count(f:quantity[x]) &lt;= 0">quantity[x]: maximum cardinality of 'quantity[x]' is 0</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 0">encounter: maximum cardinality of 'encounter' is 0</sch:assert>
      <sch:assert test="count(f:occurrence[x]) &lt;= 0">occurrence[x]: maximum cardinality of 'occurrence[x]' is 0</sch:assert>
      <sch:assert test="count(f:asNeeded[x]) &lt;= 0">asNeeded[x]: maximum cardinality of 'asNeeded[x]' is 0</sch:assert>
      <sch:assert test="count(f:locationCode) &lt;= 0">locationCode: maximum cardinality of 'locationCode' is 0</sch:assert>
      <sch:assert test="count(f:locationReference) &lt;= 0">locationReference: maximum cardinality of 'locationReference' is 0</sch:assert>
      <sch:assert test="count(f:reasonCode) &gt;= 1">reasonCode: minimum cardinality of 'reasonCode' is 1</sch:assert>
      <sch:assert test="count(f:insurance) &lt;= 0">insurance: maximum cardinality of 'insurance' is 0</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 0">specimen: maximum cardinality of 'specimen' is 0</sch:assert>
      <sch:assert test="count(f:patientInstruction) &lt;= 0">patientInstruction: maximum cardinality of 'patientInstruction' is 0</sch:assert>
      <sch:assert test="count(f:relevantHistory) &lt;= 0">relevantHistory: maximum cardinality of 'relevantHistory' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:meta</sch:title>
    <sch:rule context="f:ServiceRequest/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 0">versionId: maximum cardinality of 'versionId' is 0</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 0">lastUpdated: maximum cardinality of 'lastUpdated' is 0</sch:assert>
      <sch:assert test="count(f:source) &lt;= 0">source: maximum cardinality of 'source' is 0</sch:assert>
      <sch:assert test="count(f:security) &lt;= 0">security: maximum cardinality of 'security' is 0</sch:assert>
      <sch:assert test="count(f:tag) &lt;= 0">tag: maximum cardinality of 'tag' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:extension</sch:title>
    <sch:rule context="f:ServiceRequest/f:extension">
      <sch:assert test="count(f:extension[@url = 'reference']) &lt;= 1">extension with URL = 'reference': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'concept']) &lt;= 1">extension with URL = 'concept': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:category</sch:title>
    <sch:rule context="f:ServiceRequest/f:category">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:category/f:coding</sch:title>
    <sch:rule context="f:ServiceRequest/f:category/f:coding">
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:orderDetail</sch:title>
    <sch:rule context="f:ServiceRequest/f:orderDetail">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:orderDetail/f:coding</sch:title>
    <sch:rule context="f:ServiceRequest/f:orderDetail/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:supportingInfo</sch:title>
    <sch:rule context="f:ServiceRequest/f:supportingInfo">
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept|3.0.0']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept|3.0.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-codeable-concept': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/referral/StructureDefinition/be-ext-radiology-supporting-info-role': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:bodySite</sch:title>
    <sch:rule context="f:ServiceRequest/f:bodySite">
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:note</sch:title>
    <sch:rule context="f:ServiceRequest/f:note">
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
