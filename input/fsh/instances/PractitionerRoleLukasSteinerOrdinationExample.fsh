
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of Dr. Lukas Steiner practicing as a specialist in
#             internal medicine at his individual medical office.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    PractitionerRoleLukasSteinerOrdination
InstanceOf:  HL7ATCorePractitionerRole
Description: "Example of Dr. Lukas Steiner practicing as a specialist in internal medicine at his individual medical office."
Usage:       #example

* active = true

// Practitioner and organization
* practitioner = Reference(PractitionerLukasSteiner)
* organization = Reference(OrganizationOrdinationLukasSteiner)
* location = Reference(LocationOrdinationLukasSteiner)

//TODO: in Austria the code and specialty already are merged in the code system - should then both be filled?
// Professional role
* code[+] = https://termgit.elga.gv.at/CodeSystem/elga-fachaerzte#116 "Fachärztin/Facharzt für Innere Medizin und Rheumatologie"

// Medical specialty
* specialty[+] = http://snomed.info/sct#394810000 "Rheumatology"