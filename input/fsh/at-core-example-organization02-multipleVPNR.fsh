/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example for the HL7 Austria FHIR® Core Profile for Organization.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Instance:    HL7ATCoreOrganizationExample02-MultipleVPNR
InstanceOf:  HL7ATCoreOrganization
Description: "Example for the usage of the HL7 AT Core Organization Profile with multiple VPNR identifiers"
Usage:       #example

* name = "Landeskrankenhaus Hall in Tirol"
* type = https://termgit.elga.gv.at/ValueSet/hl7-at-organizationtype#300 "Allgemeine Krankenanstalt"

* identifier[GDA-OID].value = "urn:oid:1.2.40.0.34.3.1.1061"
* identifier[GDA-OID].system = "urn:ietf:rfc:3986"
* identifier[GDA-OID].assigner.display = "Bundesministerium für Gesundheit"
* identifier[VPNR][0].value = "438968"
* identifier[VPNR][0].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[VPNR][0].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"
* identifier[VPNR][1].value = "833477"
* identifier[VPNR][1].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[VPNR][1].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"

* contact.telecom[0].use = 	http://hl7.org/fhir/contact-point-use#work
* contact.telecom[0].system = http://hl7.org/fhir/contact-point-system#email
* contact.telecom[0].value = "info.pkh@tirol-kliniken.at"

* contact.address = HL7ATCoreAddressExample11-HallInTirol

Instance:    HL7ATCoreAddressExample11-HallInTirol
InstanceOf:  HL7ATCoreAddress
Description: "Example for the usage of the HL7 AT Core Address Profile"
Usage:       #inline
* use = http://hl7.org/fhir/address-use#work
* type = http://hl7.org/fhir/address-type#both
* line = "Milser Straße 10" 
* line.extension[street].valueString = "Milser Straße"
* line.extension[streetNumber].valueString = "10"
* city = "Hall in Tirol"
* state = "Tirol"
* postalCode = "6060"
* country = "AUT"