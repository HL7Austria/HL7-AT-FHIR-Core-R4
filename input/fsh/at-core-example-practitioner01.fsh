/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example for the HL7 Austria FHIR® Core Profile for Practitioner.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Instance:    HL7ATCorePractitionerExample01
InstanceOf:  HL7ATCorePractitioner
Description: "Example for the usage of the HL7 AT Core Practitioner Profile"
Usage:       #example

* identifier[GDA-OID].value = "urn:oid:1.2.40.0.34.99.4613.4"
* identifier[GDA-OID].system = "urn:ietf:rfc:3986"
* identifier[GDA-OID].assigner.display = "Bundesministerium für XY"
* identifier[VPNR].value = "987654321"
* identifier[VPNR].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[VPNR].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"

* name.family = "Musterärztin"
* name.given = "Melanie"
* name.prefix = "Prof. Dr."
* gender = http://hl7.org/fhir/administrative-gender#female
* active = true

* telecom[0].use = 	http://hl7.org/fhir/contact-point-use#work
* telecom[0].system = http://hl7.org/fhir/contact-point-system#email
* telecom[0].value = "office@musterpraxis.at"
* telecom[1].use = 	http://hl7.org/fhir/contact-point-use#work
* telecom[1].system = http://hl7.org/fhir/contact-point-system#phone
* telecom[1].value = "+436500987654321"

* address = HL7ATCoreAddressExample11

Instance:    HL7ATCoreAddressExample11
InstanceOf:  HL7ATCoreAddress
Description: "Example for the usage of the HL7 AT Core Address Profile"
Usage:       #inline
* use = http://hl7.org/fhir/address-use#work
* type = http://hl7.org/fhir/address-type#both
* line = "Mozartgasse 8 Stiege 2" 
* line.extension[street].valueString = "Mozartgasse"
* line.extension[streetNumber].valueString = "8"
* line.extension[floorDoorNumber].valueString = "Stiege 2"
* line.extension[additionalInformation].valueString = "Barrierefreier Zugang"
* city = "St. Wolfgang"
* state = "Salzburg"
* postalCode = "5350"
* country = "AUT"