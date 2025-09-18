/*##############################################################################
# Example Organization + Locations with KA-Nr and Geolocation
##############################################################################*/

Instance:    HL7ATCoreOrganizationAmadeus
InstanceOf:  HL7ATCoreOrganization
Usage:       #example
Description: "Organization with 4-character KA-Nr"

* name = "Amadeus Spital"
* identifier[KANR].value = "K101"
* identifier[KANR].system = "urn:oid:1.2.40.0.34.4.10"
* identifier[KANR].assigner.display = "Österreichisches Bundesministerium für Gesundheit"

// ---------------- Location Graz ----------------
Instance:    HL7ATCoreLocationGraz
InstanceOf:  HL7ATCoreLocation
Usage:       #example
Description: "The Graz location of the Amadeus Spital with 6-character KA-Nr and geolocation"

* name = "Campus Graz"
* identifier[KANR].value = "K101.1"
* identifier[KANR].system = "urn:oid:1.2.40.0.34.4.10"
* identifier[KANR].assigner.display = "Österreichisches Bundesministerium für Gesundheit"
* managingOrganization = Reference(HL7ATCoreOrganizationAmadeus)
* address.city = "Graz"
* address.postalCode = "8010"
* address.country = "AUT"
* position.latitude = 47.0707
* position.longitude = 15.4395


// ---------------- Location Linz ----------------
Instance:    HL7ATCoreLocationLinz
InstanceOf:  HL7ATCoreLocation
Usage:       #example
Description: "The Linz location of the Amadeus Spital with 6-character KA-Nr and geolocation"

* name = "Campus Linz"
* identifier[KANR].value = "K101.2"
* identifier[KANR].system = "urn:oid:1.2.40.0.34.4.10"
* managingOrganization = Reference(HL7ATCoreOrganizationAmadeus)
* address.city = "Linz"
* address.postalCode = "4020"
* address.country = "AUT"
* position.latitude = 48.3064
* position.longitude = 14.2861
