
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of the fictional Austrian social insurance institution
#             Alpenländische Gesundheitskasse.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    OrganizationAlpenlaendischeGesundheitskasse
InstanceOf:  HL7ATCoreOrganization
Description: "Example of the fictional Austrian social health insurance institution Alpenländische Gesundheitskasse."
Usage:       #example

* active = true

// Identifiers

// Fictional identifier for the social insurance institution
//TODO: offizielles System für Sozialversicherungsträger bekannt?
* identifier[+].system = "https://example.org/fhir/NamingSystem/social-insurance-organization-id"
* identifier[=].value = "AGK-001"

// Organization type
//TODO: Abgrenzung zu 408 Gesundheitsversicherung
* type = https://termgit.elga.gv.at/ValueSet/hl7-at-organizationtype#406 "Sozialversicherung"
* type[=].text = "Gesetzlicher Krankenversicherungsträger"

// Name and alias
* name = "Alpenländische Gesundheitskasse"
* alias = "AGK"

// General organization contact information
* telecom[+].system = #email
* telecom[=].value = "service@agk.example"
* telecom[=].use = #work

* telecom[+].system = #phone
* telecom[=].value = "+43 1 555 0500"
* telecom[=].use = #work

// Organization address
* address[+].use = #work
* address[=].type = #both
* address[=].line = "Versicherungsplatz 4, Erdgeschoss"
* address[=].line.extension[street].valueString = "Versicherungsplatz"
* address[=].line.extension[streetNumber].valueString = "4"
* address[=].line.extension[floorDoorNumber].valueString = "Erdgeschoss"
* address[=].line.extension[additionalInformation].valueString = "Kundenservice"
* address[=].city = "Wien"
* address[=].state = "Wien"
* address[=].postalCode = "1030"
* address[=].country = "AUT"

// Specific billing contact
* contact[+].purpose = http://terminology.hl7.org/CodeSystem/contactentity-type#BILL "Billing"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "abrechnung@agk.example"
* contact[=].telecom[=].use = #work

* contact[=].telecom[+].system = #phone
* contact[=].telecom[=].value = "+43 1 555 0501"
* contact[=].telecom[=].use = #work