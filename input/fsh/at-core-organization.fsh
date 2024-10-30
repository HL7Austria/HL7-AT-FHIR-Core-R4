/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for Organization.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCoreOrganization
Parent:         Organization
Id:             at-core-organization
Title:          "HL7® AT Core Organization Profile"
Description:    "HL7® Austria FHIR® Core Profile for organization data in Austria."
// Address is based on the profile for the Austrian Representation of an Address
// this applies to the address of the organization as well as the address of contacts
* address only HL7ATCoreAddress
* contact.address only HL7ATCoreAddress

// Changing the ValueSet binding for the type of identifiers in case identifier types will be used in the future
* identifier.type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (extensible)
//Slice for Identifier:
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains GDA-OID 0..1 and VPNR 0..* and VKZ 0..1 and KANR 0..1
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
* identifier[VKZ].value 1..1
* identifier[VKZ].system 1..1
* identifier[VKZ].system = "urn:oid:1.2.40.0.10.2.1.1.71" (exactly)
* identifier[VKZ].system ^short = "OID for the Verwaltungskennzeichen (VKZ) in Austria"
* identifier[VKZ].assigner.display = "Bundesministerium für Finanzen" (exactly)
* identifier[KANR].value 1..1
* identifier[KANR].value ^short = "Krankenanstaltennummer according to Krankenanstaltenkataster. Virtual KANRs are suffixed with '+' (e.g. 'K101+')"
* identifier[KANR].system 1..1
* identifier[KANR].system = "urn:oid:1.2.40.0.34.3.1.1" (exactly)
* identifier[KANR].system ^short = "OID for the Austrian Federal Ministry of Health"
* identifier[KANR].assigner.display = "Österreichisches Bundesministerium für Gesundheit" (exactly)
* type from https://termgit.elga.gv.at/ValueSet/hl7-at-organizationtype (extensible)