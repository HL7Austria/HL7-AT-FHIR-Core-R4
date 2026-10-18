/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of the fictional Austrian physician Dr. Lukas Steiner,
#             practicing at both Amadeus Spital and his private medical office.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    PractitionerLukasSteiner
InstanceOf:  HL7ATCorePractitioner
Description: "Example of the fictional Austrian physician Dr. Lukas Steiner, who practices at both Amadeus Spital and his own medical office."
Usage:       #example

* active = true

// Identifiers

// Austrian healthcare provider OID (GDA-OID)
* identifier[GDA-OID].system = "urn:ietf:rfc:3986"
* identifier[GDA-OID].value = "urn:oid:1.2.40.0.34.99.4613.5"
* identifier[GDA-OID].assigner.display = "Bundesministerium für Gesundheit"

//TODO: with the new triple, do we even offer VPNR as part of the Practitioner? shouldn't it always be on Organization?

// Encrypted sector-specific personal identifier (vbPK-GH)
* identifier[vbPK].system = "urn:oid:1.2.40.0.34.4.22"
* identifier[vbPK].value = "VBPK-GH-EXAMPLE-LUKAS-STEINER-001"
* identifier[vbPK].assigner.display = "Bundesministerium für Inneres"


// Name
* name.family = "Steiner"
* name.given = "Lukas"
* name.prefix = "Dr."

// Administrative gender
* gender = #male

// Qualifications
// Austrian Medical Chamber continuing medical education diploma
* qualification[+].code.text = "ÖÄK-Fortbildungsdiplom (DFP-Diplom)"
* qualification[=].period.start = "2024-01-01"
* qualification[=].period.end = "2029-01-01"
* qualification[=].issuer.display = "Österreichische Ärztekammer"