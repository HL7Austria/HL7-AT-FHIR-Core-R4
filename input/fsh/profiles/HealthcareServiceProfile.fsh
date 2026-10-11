/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for HealthcareService.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCoreHealthcareService
Parent:         HealthcareService
Id:             at-core-HealthcareService
Title:          "HL7® AT Core HealthcareService Profile"
Description:    "HL7® Austria FHIR® Core Profile for healthcare service data in Austria."

* providedBy only Reference(HL7ATCoreOrganization)
* location only Reference(HL7ATCoreLocation)
* coverageArea only Reference(HL7ATCoreLocation)
* specialty from HealthcareServiceSpecialtyVS (extensible)