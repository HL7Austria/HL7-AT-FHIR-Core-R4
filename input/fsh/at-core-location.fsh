/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for Location.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCoreLocation
Parent:         Location
Id:             at-core-location
Title:          "HL7® AT Core Location Profile"
Description:    "HL7® Austria FHIR® Core Profile for location data in Austria."
// Address is based on the profile for the Austrian Representation of an Address
* address only HL7ATCoreAddress
* managingOrganization only Reference(HL7ATCoreOrganization)
* partOf only Reference(HL7ATCoreLocation)

//TODO: Should we assign the physicalType of the Location using our own value set binding, for example 'site' (see example binding: https://hl7.org/fhir/R4/valueset-location-physical-type.html)?

//Slice for Identifier:
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains KANR 0..1
* identifier[KANR].value 1..1
* identifier[KANR].value ^short = "Krankenanstaltennummer (hospital identification number) in the more fine-grained 6-character format, used to represent a hospital site. The 4-character hospital identification number remains an identifier on the Organization resource only. The first 4 characters of the Location KANR SHALL match the Organization KANR.“"
* identifier[KANR].system 1..1
* identifier[KANR].system = "urn:oid:1.2.40.0.34.4.10" (exactly)
* identifier[KANR].system ^short = "OID for the Krankenanstaltennummer (KA-Nr) in Austria"
* identifier[KANR].assigner.display = "Österreichisches Bundesministerium für Gesundheit" (exactly)
* identifier[KANR] obeys inv-kanr-6char

//Whenever a KA-NR is present, it shall be represented in the more fine-grained 6-character format.
Invariant: inv-kanr-6char
Description: "KA-Nr (KANR) must follow the 6-character pattern: 'K' + 3 digits + '.' + 1 digit (e.g., K460.1)."
Severity: #error
Expression: "value.matches('^K[0-9]{3}[.][0-9]$')"