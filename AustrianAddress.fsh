Profile:        AustrianAddress
Parent:         Address
Id:             AustrianRepresentationOfAddress
Title:          "Austrian Representation of an Address"
Description:    "FHIR Base Profile for Address Data in Austria."
* period 0..0
* district 0..0

//The AustrianAddress Profile has these additional contraints (invariants) applied 
* obeys at-addr-1
* obeys at-addr-2
* obeys at-addr-3

//Description on how to use the line element in a structured and unstructured way (enforced by invariants)
* line ^definition = "This component contains the street name, street number, floor and/or door number or additonal information (e.g. street direction, P.O. Box number, delivery hints, and similar address information). This information can be split into structured values in the line-components each defined by international ISO extensions. If these extensions are used then the information they contain has to be written in a concatenated way in the line element itself as well. This makes the usage easier for systems which don't use address data in a structured way."

//Slice for line extension, order matters, no further definition of the slice necessary since the default value are applied (discriminator=url, slice open, orderd=false)
* line.extension contains ISOStreetName named street 0..1 and ISOStreetNumber named streetNumber 0..1 and ISOAdditionalLocator named floorDoorNumber 0..1
* line.extension[street] ^short = "Name of the street"
* line.extension[street] ^definition = "Name of the street without the street number"
* line.extension[streetNumber] ^short = "Number of the street"
* line.extension[streetNumber] ^definition = "Number of the street without the street name"
* line.extension[floorDoorNumber] ^short = "Floor and/or door number"
* line.extension[floorDoorNumber] ^definition = "Floor and/or door number"
//ToDo find a replacment for ISOAdditionalLocator, in this case using the same extension twice doesn't work
//* line.extension[additionalInformation] only ISOAdditionalLocator
//* line.extension[additionalInformation] ^short = "Additional Information"
//* line.extension[additionalInformation] ^definition = "Additiona information about the street address"

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
Description:  "If the extensions for floor/door number or additional information are used then the value for line must not be empty"
Expression:   "line.all($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator').empty() or $this.hasValue())"
Severity:     #error
