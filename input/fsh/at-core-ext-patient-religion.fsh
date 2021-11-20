/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for the religion of a patient or person based on the 
#             ValueSet from HL7® Austria for officially registered religions in 
#             Austria.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    PatientReligion
Id:           at-core-ext-patient-religion
Title:        "Patient Religion" 
Description:  "HL7® Austria FHIR® Core Extension for the religion (registered in Austria) of a patient."
* value[x] 0..0
* extension contains 
    code 0..1 and
    period 0..1
* extension[code].value[x] only CodeableConcept
* extension[code] ^short = "Religion code of the Patient"
* extension[code].value[x] from HL7AustriaReligionVS (extensible)
//* extension[code].value[x] ^binding.valueSetUri = "urn:oid:2.16.840.1.113883.2.16.1.4.1"
* extension[code].value[x].coding.system ^fixedUri = "urn:oid:2.16.840.1.113883.2.16.1.4.1"
* extension[code].value[x].coding.system ^short = "OID for the HL7 AT CodeSystem used by the ELGA ValueSet for religion"
* extension[code].extension 0..0
* extension[period] ^short = "Time period of the Religion"
* extension[period].value[x] only Period
* extension[period].value[x] 1..1
* extension[period].extension 0..0
