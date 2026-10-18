
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of Sarah Berger, a freelance midwife cooperating
#             with the fictional Frauenmedizin Sonnenfeld group practice.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    PractitionerRoleSarahBergerSonnenfeld
InstanceOf:  HL7ATCorePractitionerRole
Description: "Example of freelance midwife Sarah Berger providing midwifery consultations in cooperation with the fictional Frauenmedizin Sonnenfeld private medical group practice."
Usage:       #example

* active = true

* practitioner = Reference(PractitionerSarahBerger)
* organization = Reference(OrganizationGruppenpraxisFrauenmedizinSonnenfeld)

// Professional role
* code[+] = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#204 "Hebamme"

// Practice setting
* specialty[+] = http://snomed.info/sct#408470005 "Obstetrics"
