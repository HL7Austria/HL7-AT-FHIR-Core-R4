/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for Practitioner.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCorePractitioner
Parent:         Practitioner
Id:             at-core-practitioner
Title:          "HL7® AT Core Practitioner Profile"
Description:    "HL7® Austria FHIR® Core Profile for practitioner data in Austria."
// Address is based on the profile for the Austrian Representation of an Address
* address only HL7ATCoreAddress
* gender.extension contains AdministrativeGenderAddition named AdministrativeGenderAddition 0..1

// Changing the ValueSet binding for the type of identifiers
* identifier.type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (extensible)
//Slice for Identifier:
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains GDA-OID 0..1 and VPNR 0..* and vbPK 0..1
* identifier[GDA-OID].value 1..1
* identifier[GDA-OID].value ^short = "OID for the GDA in Austria"
* identifier[GDA-OID].system 1..1
* identifier[GDA-OID].system = "urn:ietf:rfc:3986" (exactly)
* identifier[GDA-OID].system ^short = "A GDA in Austria is represented via an URI (OID)"
* identifier[GDA-OID].assigner.display = "Bundesministerium für Gesundheit" (exactly)
* identifier[VPNR].value 1..1
* identifier[VPNR].system 1..1
* identifier[VPNR].system = "urn:oid:1.2.40.0.10.1.4.3.2" (exactly)
* identifier[VPNR].system ^short = "OID for the Vertragspartnernummer (VPNR) in Austria"
* identifier[VPNR].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger" (exactly)
* identifier[vbPK].value 1..1
* identifier[vbPK].system 1..1
* identifier[vbPK].system = "urn:oid:1.2.40.0.34.4.22" (exactly)
* identifier[vbPK].system ^short = "OID for the vbPK in Austria"
* identifier[vbPK].assigner.display = "Bundesministerium für Inneres" (exactly)