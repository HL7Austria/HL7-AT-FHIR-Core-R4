/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for ValueSet.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCoreValueSet
Parent:         ValueSet
Id:             at-core-valueset
Title:          "HL7® AT Core ValueSet Profile"
Description:    "HL7® Austria FHIR® Core Profile for valuesets in Austria.
The HL7® AT Core ValueSet is based upon the core FHIR® ValueSet Resource and defines the use of the OID extension."


//Extension for OID -> HL7 Austria's

// extension contains CodeSystemOID named CodeSystemOID 0..1
* compose.include.extension contains CodeSystemOID named CodeSystemOID 0..1
* compose.include.extension[CodeSystemOID] ^short = "OID of the CodeSystem"
* expansion.contains.extension contains CodeSystemOID named CodeSystemOID 0..1
* expansion.contains.extension[CodeSystemOID] ^short = "OID of the CodeSystem" 