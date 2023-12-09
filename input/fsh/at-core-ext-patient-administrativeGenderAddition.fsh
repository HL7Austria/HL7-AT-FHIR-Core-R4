/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for the administrative gender of a patient to add the 
#             missing codes that are required in Austra.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    PatientAdministrativeGenderAddition
Id:           at-core-ext-patient-administrativeGenderAddition
Title:        "Patient Administrative Gender Addition" 
Description:  "HL7® Austria FHIR® Core Extension for the administrative gender of a patient. 
The extension is used to add the missing codes and is applied in case the code for administrative gender itself is set to 'other'."
Context: 	  HL7ATCorePatient.gender

* value[x] only Coding
* value[x] 1..1
* value[x] from https://termgit.elga.gv.at/ValueSet/hl7-at-administrativegender-fhir-extension (required)
* value[x] obeys at-ext-gender-1
* extension 0..0

Invariant:    at-ext-gender-1
Description:  "The extension for the additional administrative gender codes is only applied if the administrative gender itself is set to 'other'"
Expression:   "%resource.where(gender='other').exists()"
Severity:     #error
