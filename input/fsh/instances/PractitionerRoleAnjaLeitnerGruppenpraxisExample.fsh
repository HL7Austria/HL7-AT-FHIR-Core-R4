
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of Dr. Anja Leitner as a gynecologist at the
#             fictional Frauenmedizin Sonnenfeld group practice.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    PractitionerRoleAnjaLeitnerSonnenfeld
InstanceOf:  HL7ATCorePractitionerRole
Description: "Example of Dr. Anja Leitner practicing gynecology and obstetrics at the fictional Frauenmedizin Sonnenfeld private medical group practice."
Usage:       #example

* active = true

* practitioner = Reference(PractitionerAnjaLeitner)
* organization = Reference(OrganizationGruppenpraxisFrauenmedizinSonnenfeld)

// Professional role
* code[+] = https://termgit.elga.gv.at/CodeSystem/elga-fachaerzte#108 "Fachärztin/Facharzt für Frauenheilkunde und Geburtshilfe"

// Medical specialty
* specialty[+] = http://snomed.info/sct#394585009 "Obstetrics and gynecology"
