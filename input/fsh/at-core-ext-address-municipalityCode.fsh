/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for the municipality code of an address used in Austria.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    AddressMunicipalityCode
Id:           at-core-ext-address-municipalityCode
Title:        "Address Municipality Code" 
Description:  "HL7® Austria FHIR® Core Extension for the municipality code part of the Austrian address"
Context:      Address, HL7ATCoreAddress

* value[x] only string
* value[x] 1..1
* extension 0..0
