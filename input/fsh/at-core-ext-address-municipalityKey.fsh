/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for the municipality key of an address used in Austria.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    AddressMunicipalityKey
Id:           at-core-ext-address-municipalityKey
Title:        "Address Municipality Key" 
Description:  "HL7® Austria FHIR® Core Extension for the municipality key part of the Austrian address"
Context:      Address, HL7ATCoreAddress

* value[x] only string
* value[x] 1..1
* extension 0..0
