
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of the fictional Austrian medical office location
#             of Dr. Lukas Steiner in Salzburg.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    LocationOrdinationLukasSteiner
InstanceOf:  HL7ATCoreLocation
Description: "Example of the physical location of Dr. Lukas Steiner's individual medical practice in Salzburg."
Usage:       #example

* status = #active
* name = "Ordination Dr. Lukas Steiner – Salzburg"
* mode = #instance

// Physical practice address
* address.use = #work
* address.type = #both
* address.line = "Ärztehausgasse 6, 2. Stock, Top 5"
* address.line.extension[street].valueString = "Ärztehausgasse"
* address.line.extension[streetNumber].valueString = "6"
* address.line.extension[floorDoorNumber].valueString = "2. Stock, Top 5"
* address.line.extension[additionalInformation].valueString = "Ordination Dr. Lukas Steiner"
* address.city = "Salzburg"
* address.state = "Salzburg"
* address.postalCode = "5020"
* address.country = "AUT"

// Managing organization
* managingOrganization = Reference(OrganizationOrdinationLukasSteiner)

// Approximate geographic coordinates in Salzburg
// Illustrative location, not geocoded to the fictional street address
* position.longitude = 13.0550
* position.latitude = 47.8095