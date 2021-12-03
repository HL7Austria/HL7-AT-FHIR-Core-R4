/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile on the FHIR® datatype Address to 
#             align with the special requirements for addresses in Austria.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Profile:        HL7ATCoreAddress
Parent:         Address
Id:             at-core-address
Title:          "HL7® AT Core Address Profile"
Description:    "HL7® Austria FHIR® Core Profile for address data in Austria. Note, this extension represents the common structure of address information within Austrian information systems. This extension does not restrict the documented information to Austrian adresses. Address information that does not fit into the given structure may be captured by [Address Additional Information](StructureDefinition-at-core-ext-address-additionalInformation.html)."
* period 0..0
* district 0..0

//The AustrianAddress Profile has these additional contraints (invariants) applied 
* obeys at-addr-1
* obeys at-addr-2
* obeys at-addr-3

//Description on how to use the line element in a structured and unstructured way (enforced by invariants)
* line ^definition = "This component contains the street name, street number, floor and/or door number or additonal information (e.g. street direction, P.O. Box number, delivery hints, and similar address information). This information can be split into structured values in the line-components each defined by international ISO extensions. If these extensions are used then the information they contain has to be written in a concatenated way in the line element itself as well. This makes the usage easier for systems which don't use address data in a structured way."

//Slice for line extension, order matters, no further definition of the slice necessary since the default value are applied (discriminator=url, slice open, orderd=false)
* line.extension contains ISOStreetName named street 0..1 and ISOStreetNumber named streetNumber 0..1 and ISOAdditionalLocator named floorDoorNumber 0..1 and AddressAdditionalInformation named additionalInformation 0..1
* line.extension[street] ^short = "Name of the street"
* line.extension[street] ^definition = "Name of the street without the street number"
* line.extension[streetNumber] ^short = "Number of the street"
* line.extension[streetNumber] ^definition = "Number of the street without the street name"
* line.extension[floorDoorNumber] ^short = "Floor and/or door number"
* line.extension[floorDoorNumber] ^definition = "Floor and/or door number"
* line.extension[additionalInformation] only AddressAdditionalInformation
* line.extension[additionalInformation] ^short = "Additional Information"
* line.extension[additionalInformation] ^definition = "Additional information about the street address"

//Definition of invariants for address
Invariant:    at-addr-1
Description:  "If the extension for street name is used then the value for line must not be empty"
Expression:   "line.all($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName').empty() or $this.hasValue())"
Severity:     #error

Invariant:    at-addr-2
Description:  "If the extension for street number is used then the value for line must not be empty"
Expression:   "line.all($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber').empty() or $this.hasValue())"
Severity:     #error

Invariant:    at-addr-3
Description:  "If the extension for floor/door number is used then the value for line must not be empty"
Expression:   "line.all($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator').empty() or $this.hasValue())"
Severity:     #error
