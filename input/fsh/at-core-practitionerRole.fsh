/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for PractitionerRole.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCorePractitionerRole
Parent:         PractitionerRole
Id:             at-core-practitionerRole
Title:          "HL7® AT Core PractitionerRole Profile"
Description:    "HL7® Austria FHIR® Core Profile for practitioner role data in Austria."

* practitioner only Reference(at-core-practitioner)
* organization only Reference(at-core-organization)
* code from https://termgit.elga.gv.at/ValueSet/hl7-at-practitionerrole (extensible)