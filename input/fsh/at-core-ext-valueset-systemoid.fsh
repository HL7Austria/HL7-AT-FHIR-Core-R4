/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for ValueSet to contain the OID of the system of a code.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    SystemOID
Id:           at-core-ext-valueset-systemoid
Title:        "System OID" 
Description:  "HL7® Austria FHIR® Core Extension for the capturing of OID in ValueSets to reference the CodeSystem they come from.
The extension is used to document the OID of the system of a code referenced in a ValueSet, to align FHIR with the HL7 Austria CDA document guidelines."

// Open: Extension must be restricted to the following locations, see also the profile for valueSet
// ^compose.include.codeSystemOID
// ^expansion.contains.codeSystemOID

* value[x] only oid
* value[x] 1..1
* extension 0..0