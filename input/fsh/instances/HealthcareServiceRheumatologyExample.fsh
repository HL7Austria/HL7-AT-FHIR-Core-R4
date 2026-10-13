/*##############################################################################
# Type:       FSH-File for a FHIR® Example Instance
# About:      HL7® Austria FHIR® Core Example Instance for HealthcareService.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance: HealthcareServiceRheumatologyExample
InstanceOf: HL7ATCoreHealthcareService
Usage: #example
Title: "Example HealthcareService with Specialty"
Description: "Example of a healthcare service with an Austrian Funktionscode as specialty."

* active = true
* name = "Rheumatology Service"

* providedBy = Reference(HL7ATCoreOrganizationExample01)
* location = Reference(HL7ATCoreLocationLinz)

* specialty = HealthcareServiceSpecialtyCS#"11114" "Rheumatologie"