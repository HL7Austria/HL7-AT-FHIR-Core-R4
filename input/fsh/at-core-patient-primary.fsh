/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for Patient.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCorePatientPrimary
Parent:         HL7ATCorePatientBase
Id:             at-core-patient-primary
Title:          "HL7® AT Core Patient Profile for Primary Use"
Description:    "HL7® Austria FHIR® Core Profile for patient data for primary use in Austria."
// Define Mandatory Fields
* name 1..*
* gender 1..1

