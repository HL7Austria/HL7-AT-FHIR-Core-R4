
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of a fictional Austrian specialist in gynecology
#             and obstetrics working in a private medical group practice.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    PractitionerThomasHofer
InstanceOf:  HL7ATCorePractitioner
Description: "Example of Dr. Thomas Hofer, a fictional Austrian specialist in gynecology and obstetrics and partner of the Frauenmedizin Sonnenfeld private medical group practice."
Usage:       #example

* active = true

// Fictional GDA-OID
* identifier[GDA-OID].system = "urn:ietf:rfc:3986"
* identifier[GDA-OID].value = "urn:oid:1.2.40.0.34.99.4613.9"

// Name
* name[+].use = #official
* name[=].family = "Hofer"
* name[=].given = "Thomas"
* name[=].prefix = "Dr."

* gender = #male

// Professional qualification
* qualification[+].code.coding[+].system = "http://terminology.hl7.org/CodeSystem/v2-0360"
* qualification[=].code.coding[=].code = #MD
* qualification[=].code.coding[=].display = "Doctor of Medicine"
* qualification[=].code.text = "Doctor of Medicine (MD)"
* qualification[=].period.start = "1989-08-30"
* qualification[=].issuer.display = "Medizinische Universität Sonnenfeld"

// Specialist medical qualification
* qualification[+].code.text = "Fachärztin/Facharzt für Frauenheilkunde und Geburtshilfe"
* qualification[=].period.start = "1995-10-08"
* qualification[=].issuer.display = "Österreichische Ärztekammer"

// Further qualification
* qualification[+].code.text = "Fortbildungszertifikat Wechseljahresmedizin und hormonelle Gesundheit"
* qualification[=].period.start = "2025-03-21"
* qualification[=].issuer.display = "Fiktive Akademie für Frauengesundheit"
