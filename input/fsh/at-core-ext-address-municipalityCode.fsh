/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for the municipality code of an address used in Austria.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    AddressMunicipalityCode
Id:           at-core-ext-address-municipalityCode
Title:        "Address Municipality Code (Gemeindecode)" 
Description:  "HL7® Austria FHIR® Core Extension for the municipality code (Gemeindecode) part of the Austrian address. The municipality key is related to the [municipality key (Gemeindekennziffer)](StructureDefinition-at-core-ext-address-municipalityKey.html). While these two are generally identical, there is one notable exception: in Vienna, the municipality key (Gemeindekennziffer) is consistently 90001, whereas the municipality code (Gemeindecode) varies by district. The current list of values is provided by [Statistik Austria](https://www.statistik.at/verzeichnis/reglisten/gemliste_knz.pdf)."
Context:      Address, HL7ATCoreAddress

* value[x] only string
* value[x] 1..1
* extension 0..0
