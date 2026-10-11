
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of the fictional Austrian IT service provider
#             AlpenData Solutions GmbH, providing healthcare IT services.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    OrganizationAlpenDataSolutionsGmbH
InstanceOf:  HL7ATCoreOrganization
Description: "Example of the fictional Austrian healthcare IT service provider AlpenData Solutions GmbH."
Usage:       #example

* active = true

// Identifiers

// Austrian VAT identification number (UID)
//TODO: system validieren und ggf. als Slice aufnehmen
* identifier[+].type = http://terminology.hl7.org/CodeSystem/v2-0203#TAX "Tax ID number"
* identifier[=].system = "urn:oid:1.2.40.0.10.2.0.3.1"
* identifier[=].value = "ATU12345678"

// Austrian company register number (Firmenbuchnummer)
//TODO: system validieren und ggf. als Slice aufnehmen
* identifier[+].system = "urn:publicid:gv.at:baseid+XFN"
* identifier[=].value = "FN 123456a"

// Organization type
* type[+] = http://terminology.hl7.org/CodeSystem/organization-type#bus "Non-Healthcare Business or Corporation"

// Name and alias
* name = "AlpenData Solutions GmbH"
* alias = "AlpenData"

// General contact information
* telecom[+].system = #email
* telecom[=].value = "verwaltung@alpendata.example"
* telecom[=].use = #work

// Business address
* address[+].use = #work
* address[=].type = #both
* address[=].line = "Technologiepark 12, 2. Stock, Büro 204"
* address[=].line.extension[street].valueString = "Technologiepark"
* address[=].line.extension[streetNumber].valueString = "12"
* address[=].line.extension[floorDoorNumber].valueString = "2. Stock, Büro 204"
* address[=].line.extension[additionalInformation].valueString = "Verwaltung"
* address[=].city = "Graz"
* address[=].state = "Steiermark"
* address[=].postalCode = "8010"
* address[=].country = "AUT"


// Technical support contact
* contact[+].purpose = http://terminology.hl7.org/CodeSystem/contactentity-type#TECH "Technical Support"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "support@alpendata.example"
* contact[=].telecom[=].use = #work

* contact[=].telecom[+].system = #phone
* contact[=].telecom[=].value = "+43 316 555 201"
* contact[=].telecom[=].use = #work


