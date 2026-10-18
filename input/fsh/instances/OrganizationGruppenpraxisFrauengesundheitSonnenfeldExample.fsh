
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of a fictional Austrian private medical group practice
#             specializing in gynecology and obstetrics.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    OrganizationGruppenpraxisFrauenmedizinSonnenfeld
InstanceOf:  HL7ATCoreOrganization
Description: "Example of a fictional Austrian private medical group practice for gynecology and obstetrics in Linz, operated as an Offene Gesellschaft (OG)."
Usage:       #example

* active = true

// Identifiers
// Fictional GDA-OID for illustration only
* identifier[GDA-OID].system = "urn:ietf:rfc:3986"
* identifier[GDA-OID].value = "urn:oid:1.2.40.0.34.99.4613.7"

// Fictional Firmenbuchnummer; not an assigned register entry
* identifier[+].system = "urn:publicid:gv.at:baseid+XFN"
* identifier[=].value = "999998x"

// Organization type
* type[+] = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* type[=].text = "Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)"

// Name
* name = "Gruppenpraxis Frauenmedizin Sonnenfeld OG"
* alias = "Frauenmedizin Sonnenfeld"

// General contact details
* telecom[+].system = #phone
* telecom[=].value = "+43 732 555 410"
* telecom[=].use = #work

* telecom[+].system = #email
* telecom[=].value = "ordination@frauenmedizin-sonnenfeld.example"
* telecom[=].use = #work

// Practice address
* address[+].use = #work
* address[=].type = #physical
* address[=].line = "Sonnenfeldgasse 12, 1. Stock"
* address[=].line.extension[street].valueString = "Sonnenfeldgasse"
* address[=].line.extension[streetNumber].valueString = "12"
* address[=].line.extension[floorDoorNumber].valueString = "1. Stock"
* address[=].city = "Sonnenfeld"
* address[=].state = "Steiermark"
* address[=].postalCode = "8000"
* address[=].country = "AUT"

// Narrative: private medical group practice without a statutory
// health insurance contract
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Die Gruppenpraxis Frauenmedizin Sonnenfeld OG ist eine fiktive ärztliche Wahlarzt-Gruppenpraxis für Frauenheilkunde und Geburtshilfe in der Steiermark. Sie wird von Dr. Anna Leitner und Dr. Thomas Hofer gemeinschaftlich geführt. Es besteht kein Kassenvertrag mit einem österreichischen gesetzlichen Krankenversicherungsträger. Ärztliche Leistungen werden privat verrechnet; eine allfällige Kostenerstattung kann nach den geltenden Bestimmungen beim zuständigen Krankenversicherungsträger beantragt werden. Die freiberufliche Hebamme Sarah Berger, BSc, bietet im Rahmen einer Kooperation Hebammenberatung in den Räumlichkeiten der Gruppenpraxis an und ist keine Gesellschafterin der OG.</p></div>"
