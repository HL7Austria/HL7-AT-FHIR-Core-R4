Extension:    PatientReligion
Id:           patientReligion
Title:        "Patient Religion" 
Description:  "The Religion (registered in Austria) of a Patient"
* value[x] 0..0
* extension contains 
    code 0..1 and
    period 0..1
* extension[code].value[x] only CodeableConcept
* extension[code] ^short = "Religion code of the Patient"
* extension[code].value[x] from HL7AustriaReligionVS (extensible)
//* extension[code].value[x] ^binding.valueSetUri = "urn:oid:2.16.840.1.113883.2.16.1.4.1"
* extension[code].value[x].coding.system ^fixedUri = "urn:oid:2.16.840.1.113883.2.16.1.4.1"
* extension[code].value[x].coding.system ^short = "OID for the HL7 AT ReligionAustria ValueSet"
* extension[code].extension 0..0
* extension[period] ^short = "Time period of the Religion"
* extension[period].value[x] only Period
* extension[period].value[x] 1..1
* extension[period].extension 0..0