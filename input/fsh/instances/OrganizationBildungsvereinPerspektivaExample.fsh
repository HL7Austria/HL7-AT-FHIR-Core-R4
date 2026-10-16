
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of the fictional Austrian non-profit educational
#             association Bildungsverein Perspektiva.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    HL7ATCoreOrganizationBildungsvereinPerspektiva
InstanceOf:  HL7ATCoreOrganization
Description: "Example of the fictional Austrian non-profit educational association Bildungsverein Perspektiva."
Usage:       #example

* active = true

// Identifiers

// Austrian Central Register of Associations number (ZVR-Zahl)
//TODO: system validieren und ggf. als Slice aufnehmen
* identifier[+].system = "urn:publicid:gv.at:baseid+XZVR"
* identifier[=].value = "123456789"

// Organization type
* type[+] = http://terminology.hl7.org/CodeSystem/organization-type#edu "Educational Institute"
* type[=].text = "Gemeinnütziger Bildungsverein"

// Name and alias
* name = "Bildungsverein Perspektiva"
* alias = "Perspektiva"

// General contact information
* telecom[+].system = #email
* telecom[=].value = "office@perspektiva.example"
* telecom[=].use = #work

* telecom[+].system = #phone
* telecom[=].value = "+43 732 555 310"
* telecom[=].use = #work

// Registered association address
* address[+].use = #work
* address[=].type = #both
* address[=].line = "Bildungsgasse 8, 1. Stock"
* address[=].line.extension[street].valueString = "Bildungsgasse"
* address[=].line.extension[streetNumber].valueString = "8"
* address[=].line.extension[floorDoorNumber].valueString = "1. Stock"
* address[=].line.extension[additionalInformation].valueString = "Vereinsbüro"
* address[=].city = "Linz"
* address[=].state = "Oberösterreich"
* address[=].postalCode = "4020"
* address[=].country = "AUT"

// Course registration contact
* contact[+].purpose.text = "Kursanmeldung"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "kurse@perspektiva.example"
* contact[=].telecom[=].use = #work

* contact[=].telecom[+].system = #url
* contact[=].telecom[=].value = "https://perspektiva.example/kurse"
* contact[=].telecom[=].use = #work