/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example for the HL7 Austria FHIR® Core Profile for Organization.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Instance:    HL7ATCoreOrganizationExample01
InstanceOf:  HL7ATCoreOrganization
Description: "Example for the usage of the HL7 AT Core Organization Profile"
Usage:       #example

* name = "Amadeus Spital"
* type = https://termgit.elga.gv.at/ValueSet/hl7-at-organizationtype#300 "Allgemeine Krankenanstalt"

* identifier[GDA-OID].value = "urn:oid:1.2.40.0.34.99.4613.3"
* identifier[GDA-OID].system = "urn:ietf:rfc:3986"
* identifier[GDA-OID].assigner.display = "Bundesministerium für XY"
* identifier[VPNR].value = "123456789"
* identifier[VPNR].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[VPNR].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"

* contact.telecom[0].use = 	http://hl7.org/fhir/contact-point-use#work
* contact.telecom[0].system = http://hl7.org/fhir/contact-point-system#email
* contact.telecom[0].value = "info@amadeusspital.at"
* contact.telecom[1].use = 	http://hl7.org/fhir/contact-point-use#home
* contact.telecom[1].system = http://hl7.org/fhir/contact-point-system#phone
* contact.telecom[1].value = "+43.6138.3453446.0"

* address = HL7ATCoreAddressExample10

Instance:    HL7ATCoreAddressExample10
InstanceOf:  HL7ATCoreAddress
Description: "Example for the usage of the HL7 AT Core Address Profile"
Usage:       #inline
* use = http://hl7.org/fhir/address-use#work
* type = http://hl7.org/fhir/address-type#both
* line = "Mozartgasse 1-7 Haupteingang" 
* line.extension[street].valueString = "Mozartgasse"
* line.extension[streetNumber].valueString = "1-7"
* line.extension[floorDoorNumber].valueString = "Haupteingang"
* line.extension[additionalInformation].valueString = "Barrierefreier Zugang"
* city = "St. Wolfgang"
* state = "Salzburg"
* postalCode = "5350"
* country = "AUT"