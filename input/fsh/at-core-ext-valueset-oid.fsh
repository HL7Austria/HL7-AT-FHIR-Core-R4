/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for ValueSet to contain the OID of the code systems.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    ValueSetOID
Id:           at-core-ext-valueset-oid
Title:        "ValueSet OID" 
Description:  "HL7® Austria FHIR® Core Extension for the capturing of OID in ValueSets to reference the CodeSystem they come from.
The extension is used to document the OID of a ValueSet referencing the CodeSystem used, to align FHIR with the HL7 Austria CDA documents.

# Open: Extension must be restricted to the following locations
# ^compose.include.systemOID
# ^expansion.contains.systemOID

* value[x] 0..0
* extension contains 
    oid 1..1 named systemOID