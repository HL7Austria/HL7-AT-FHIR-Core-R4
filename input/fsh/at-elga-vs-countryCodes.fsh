/*##############################################################################
# Type:       FSH-File for an FHIR® ValueSet
# About:      ValueSet for the country code of a patient or person based on the 
#             ValueSet from HL7® Austria for the ELGA country codes.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Instance: at-elga-vs-countryCodes
InstanceOf: ValueSet
Usage: #definition
* title = "ELGA Country Code Value Set"
* name = "ELGAVSCountryCodes"
* description = "Value Set for ISO 3166-1 alpha 3 used in ELGA. Also accessible on [Termpub - ValueSet - ELGA Ländercodes](https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_Laendercodes)."
* identifier.use = #official
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:1.2.40.0.34.10.172"
* version = "4.0.0+2016124"
* url = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/ValueSet/at-elga-vs-countryCodes"
* status = #active

* compose.include.system = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/CodeSystem/at-core-cs-iso-3166-1-alpha-3"
