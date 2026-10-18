
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of the fictional Austrian physician Dr. Lukas Steiner
#             serving as head of the Department of Internal Medicine
#             at Amadeus Spital.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    PractitionerRoleLukasSteinerSpital
InstanceOf:  HL7ATCorePractitionerRole
Description: "Example of Dr. Lukas Steiner serving as head of the Department of Internal Medicine at the fictional Austrian hospital Amadeus Spital."
Usage:       #example

* active = true

// Practitioner and organization
* practitioner = Reference(PractitionerLukasSteiner)
* organization = Reference(OrganizationAmadeusSpitalInnereMedizin)

// Professional role
* code[+] = https://termgit.elga.gv.at/CodeSystem/elga-fachaerzte#166 "Fachärztin/Facharzt für Innere Medizin und Rheumatologie"

// Organizational function
* code[+].text = "Primar / Abteilungsvorstand Innere Medizin"

// Medical specialty
* specialty[+] = http://snomed.info/sct#394810000 "Rheumatology"