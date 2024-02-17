/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for the administrative gender of a person (Patient, Practitioner, ...)
#             to add the missing codes that are required in Austria.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    AdministrativeGenderAddition
Id:           at-core-ext-gender-administrativeGenderAddition
Title:        "Administrative Gender Addition" 
Description:  "HL7® Austria FHIR® Core Extension for the administrative gender of a person (Patient, Practitioner, ...). 
The extension is used to add the missing codes and is applied in case the code for administrative gender itself is set to 'other'."
Context: 	  Patient.gender, Patient.contact.gender, Practitioner.gender, RelatedPerson.gender, Person.gender, HL7ATCorePatient.gender, HL7ATCorePatient.contact.gender, HL7ATCorePractitioner.gender 

* value[x] only Coding
* value[x] 1..1
* value[x] from https://termgit.elga.gv.at/ValueSet/hl7-at-administrativegender-fhir-extension (required)
* value[x] obeys at-ext-gender-1
* extension 0..0

Invariant:    at-ext-gender-1
Description:  "The extension for the additional administrative gender codes is only applied if the administrative gender itself is set to 'other'"
Expression:   "%resource.where(gender='other').exists() or %resource.contact.where(gender='other').exists()"
Severity:     #error