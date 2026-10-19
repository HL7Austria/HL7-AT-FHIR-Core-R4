
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of a fictional Austrian midwife providing
#             freelance midwifery services in cooperation with
#             the Frauenmedizin Sonnenfeld group practice.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    PractitionerSarahBerger
InstanceOf:  HL7ATCorePractitioner
Description: "Example of Sarah Berger, BSc, a fictional Austrian midwife providing freelance midwifery services in cooperation with the Frauenmedizin Sonnenfeld group practice in Linz."
Usage:       #example

* active = true

// Fictional GDA-OID
* identifier[GDA-OID].system = "urn:ietf:rfc:3986"
* identifier[GDA-OID].value = "urn:oid:1.2.40.0.34.99.4613.10"

// Fictional Hebammenregister identifier
* identifier[+].value = "HB-EXAMPLE-001"
* identifier[=].system = "https://hebammenregister.example"
* identifier[=].assigner.display = "Österreichisches Hebammengremium"

// Encrypted sector-specific personal identifier (vbPK-GH)
* identifier[vbPK].system = "urn:oid:1.2.40.0.34.4.22.1"
* identifier[vbPK].value = "VBPK-GH-EXAMPLE-Sarah-Berger-001"
* identifier[vbPK].assigner.display = "Bundesministerium für Inneres"

// Name
* name[+].use = #official
* name[=].family = "Berger"
* name[=].given = "Sarah"
* name[=].suffix = "BSc"

* gender = #female

// Professional qualification
* qualification[+].code.text = "Hebamme (Bachelor of Science in Health Studies)"
* qualification[=].period.start = "2020-07-01"
* qualification[=].issuer.display = "Fiktive Fachhochschule für Gesundheitsberufe"