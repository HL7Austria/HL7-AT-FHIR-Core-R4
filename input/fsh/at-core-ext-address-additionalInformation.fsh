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
* . ^short = "Additional address information (Adresszusatz)"
* . ^definition = "Additional information about the street address (Adresszusatz) that does not fit into the structured address elements, e.g. street direction, P.O. Box number or delivery hints."

* value[x] only string
* value[x] 1..1
* extension 0..0
