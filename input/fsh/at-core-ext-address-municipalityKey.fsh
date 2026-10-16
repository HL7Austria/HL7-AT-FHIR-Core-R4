/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for the municipality key of an address used in Austria.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    AddressMunicipalityKey
Id:           at-core-ext-address-municipalityKey
Title:        "Address GKZ (Gemeindekennziffer)" 
Description:  "HL7® Austria FHIR® Core Extension for the municipality key (Gemeindekennziffer) part of the Austrian address. The municipality key is related to the [municipality code (Gemeindecode)](StructureDefinition-at-core-ext-address-municipalityCode.html). While these two are generally identical, there is one notable exception: in Vienna, the municipality key (Gemeindekennziffer) is consistently 90001, whereas the municipality code (Gemeindecode) varies by district. The current list of values is provided by [Statistik Austria](https://www.statistik.at/verzeichnis/reglisten/gemliste_knz.pdf)."
Context:      Address, HL7ATCoreAddress
* . ^short = "Gemeindekennziffer (GKZ)"
* . ^definition = "The Gemeindekennziffer (GKZ) of the Austrian municipality the address belongs to, as published by Statistics Austria (Statistik Austria). It is generally identical to the municipality code (Gemeindecode), except in Vienna, where the Gemeindekennziffer is 90001 for the whole city while the Gemeindecode varies by district."

* value[x] only string
* value[x] 1..1
* extension 0..0
