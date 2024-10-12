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
Description:  "HL7® Austria FHIR® Core Extension for the religion (registered in Austria) of a patient.
The extension is used to encode the religious confession of a patient (only confessions registered in Austria). Furthermore, it uses the official [HL7 AT CodeSystem](https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=HL7 AT ReligionAustria) for religion and is therefore aligned with the ELGA ValueSet, respectively."
Context:      Patient, HL7ATCorePatient

* value[x] 0..0
* extension contains 
    code 0..1 and
    period 0..1
* extension[code].value[x] only CodeableConcept
* extension[code] ^short = "Religion code of the Patient"
* extension[code].value[x] from ELGAAustriaReligionVS (extensible)
* extension[code].extension 0..0
* extension[period] ^short = "Time period of the Religion"
* extension[period].value[x] only Period
* extension[period].value[x] 1..1
* extension[period].extension 0..0
