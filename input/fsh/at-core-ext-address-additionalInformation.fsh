/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for additional information of an address used in Austria.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    AddressAdditionalInformation
Id:           at-core-ext-address-additionalInformation
Title:        "Address Additional Information" 
Description:  "HL7® Austria FHIR® Core Extension for the additional information part of the Austrian address."
Context:      Address.line, HL7ATCoreAddress.line

* value[x] only string
* value[x] 1..1
* extension 0..0
