
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of a fictional Austrian specialist in gynecology
#             and obstetrics working in a private medical group practice.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    PractitionerAnjaLeitner
InstanceOf:  HL7ATCorePractitioner
Description: "Example of Dr. Anja Leitner, a fictional Austrian specialist in gynecology and obstetrics and partner of the Frauenmedizin Sonnenfeld private medical group practice."
Usage:       #example

* active = true

// Fictional GDA-OID
* identifier[GDA-OID].system = "urn:ietf:rfc:3986"
* identifier[GDA-OID].value = "urn:oid:1.2.40.0.34.99.4613.8"

// Encrypted sector-specific personal identifier (vbPK-GH)
* identifier[vbPK].system = "urn:oid:1.2.40.0.34.4.22.1"
* identifier[vbPK].value = "VBPK-GH-EXAMPLE-Anja-Leitner-001"
* identifier[vbPK].assigner.display = "Bundesministerium für Inneres"

// Name
* name[+].use = #official
* name[=].family = "Leitner"
* name[=].given = "Anja"
* name[=].prefix = "Dr."

* gender = #female

// Professional qualifications

 // Academic qualification
* qualification[+].code.coding = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"
* qualification[=].code.text = "Doctor of Medicine (MD)"
* qualification[=].period.start = "2005-06-30"
* qualification[=].issuer.display = "Medizinische Universität Sonnenfeld"

// Specialist medical qualification
* qualification[+].code.text = "Fachärztin/Facharzt für Frauenheilkunde und Geburtshilfe"
* qualification[=].period.start = "2012-11-15"
* qualification[=].issuer.display = "Österreichische Ärztekammer"

// Further qualification
* qualification[+].code.text = "Fortbildungszertifikat Gynäkologische Ultraschalldiagnostik"
* qualification[=].period.start = "2020-09-20"
* qualification[=].issuer.display = "Fiktive Akademie für Medizinische Ultraschalldiagnostik"