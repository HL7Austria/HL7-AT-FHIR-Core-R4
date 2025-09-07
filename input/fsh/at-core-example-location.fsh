/*##############################################################################
# Example Organization + Locations with KA-Nr and Geolocation
##############################################################################*/

Instance:    HL7ATCoreOrganizationWunderwuzzi
InstanceOf:  HL7ATCoreOrganization
Usage:       #example
Description: "Organization with 4-character KA-Nr"

* name = "Wunderwuzzi Klinikverbund"
* identifier[KANR].value = "K777"
* identifier[KANR].system = "urn:oid:1.2.40.0.34.4.10"
* identifier[KANR].assigner.display = "Österreichisches Bundesministerium für Gesundheit"

// ---------------- Location Graz ----------------
Instance:    HL7ATCoreLocationGraz
InstanceOf:  HL7ATCoreLocation
Usage:       #example
Description: "Campus Kernöl in Graz with 6-character KA-Nr and geolocation"

* name = "Campus Kernöl"
* description = "Location with cafeteria that serves everything with pumpkin seed oil – even the cappuccino foam."
* identifier[KANR].value = "K777.1"
* identifier[KANR].system = "urn:oid:1.2.40.0.34.4.10"
* identifier[KANR].assigner.display = "Österreichisches Bundesministerium für Gesundheit"
* managingOrganization = Reference(HL7ATCoreOrganizationWunderwuzzi)
* address.city = "Graz"
* address.postalCode = "8010"
* address.country = "AUT"
* position.latitude = 47.0707
* position.longitude = 15.4395


// ---------------- Location Linz ----------------
Instance:    HL7ATCoreLocationLinz
InstanceOf:  HL7ATCoreLocation
Usage:       #example
Description: "Campus Bello in Linz with 6-character KA-Nr and geolocation"

* name = "Campus Bello"
* description = "Location with therapy dogs on permanent duty."
* identifier[KANR].value = "K777.2"
* identifier[KANR].system = "urn:oid:1.2.40.0.34.4.10"
* managingOrganization = Reference(HL7ATCoreOrganizationWunderwuzzi)
* address.city = "Linz"
* address.postalCode = "4020"
* address.country = "AUT"
* position.latitude = 48.3064
* position.longitude = 14.2861
