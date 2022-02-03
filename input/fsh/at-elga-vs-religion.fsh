/*##############################################################################
# Type:       FSH-File for an FHIR® ValueSet
# About:      ValueSet for the religion of a patient or person based on the 
#             ValueSet from HL7® Austria for officially registered religions in 
#             Austria.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Instance: at-elga-vs-religion
InstanceOf: ValueSet
Usage: #definition
* title = "ELGA Religion Value Set"
* name = "ELGAVSReligion"
* description = "Set of religious affiliations to be used in ELGA. It is preferred to use entries of the first level hierachy (1-L). Also accessible on [Termpub - ValueSet - ELGA ReligiousAffiliation](https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_ReligiousAffiliation)."
* identifier.use = #official
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:1.2.40.0.34.10.18"
* version = "2.6.0+20131019"
* url = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/ValueSet/at-elga-vs-religion"
* status = #active

* compose.include.system = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/CodeSystem/at-core-cs-religion"

* compose.include.concept[0].code = #159
* compose.include.concept[0].display = "Konfessionslos, ohne Angabe"
* compose.include.concept[0].designation[0].use.system = "http://snomed.info/sct"
* compose.include.concept[0].designation[0].use.code = #900000000000003001
* compose.include.concept[0].designation[0].value = "mg"

* compose.include.concept[1].code = #160
* compose.include.concept[1].display = "Konfessionslos"
* compose.include.concept[1].designation[0].use.system = "http://snomed.info/sct"
* compose.include.concept[1].designation[0].use.code = #900000000000003001
* compose.include.concept[1].designation[0].value = "mgl"
* compose.include.concept[2].code = #161
* compose.include.concept[2].display = "Ohne Angabe"
* compose.include.concept[2].designation[0].use.system = "http://snomed.info/sct"
* compose.include.concept[2].designation[0].use.code = #900000000000003001
* compose.include.concept[2].designation[0].value = "mgmol"


* compose.include.extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-expand-rules"
* compose.include.extension[0].valueCode = #all-codes

* compose.include.extension[1].url = "http://hl7.org/fhir/StructureDefinition/valueset-expand-group"
* compose.include.extension[1].extension[0].url = "code"
* compose.include.extension[1].extension[0].valueCode = #159
* compose.include.extension[1].extension[1].url = "member"
* compose.include.extension[1].extension[1].valueCode = #160
* compose.include.extension[1].extension[2].url = "member"
* compose.include.extension[1].extension[2].valueCode = #161

* expansion.parameter.name = "excludeNotForUI"
* expansion.parameter.valueUri = "false"
* expansion.timestamp = "2021-01-28T10:00:00.0000Z"

* expansion.contains[0].system = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/CodeSystem/at-core-cs-religion"
* expansion.contains[0].code = #159
* expansion.contains[0].display = "Konfessionslos, ohne Angabe"
* expansion.contains[0].designation[0].use.system = "http://snomed.info/sct"
* expansion.contains[0].designation[0].use.code = #900000000000003001
* expansion.contains[0].designation[0].value = "mg"
* expansion.contains[0].contains[0].system = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/CodeSystem/at-core-cs-religion"
* expansion.contains[0].contains[0].code = #160
* expansion.contains[0].contains[0].display = "Konfessionslos"
* expansion.contains[0].contains[0].designation[0].use.system = "http://snomed.info/sct"
* expansion.contains[0].contains[0].designation[0].use.code = #900000000000003001
* expansion.contains[0].contains[0].designation[0].value = "mgl"
* expansion.contains[0].contains[1].system = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/CodeSystem/at-core-cs-religion"
* expansion.contains[0].contains[1].code = #161
* expansion.contains[0].contains[1].display = "Ohne Angabe"
* expansion.contains[0].contains[1].designation[0].use.system = "http://snomed.info/sct"
* expansion.contains[0].contains[1].designation[0].use.code = #900000000000003001
* expansion.contains[0].contains[1].designation[0].value = "mgmol"
