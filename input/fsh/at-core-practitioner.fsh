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
* gender.extension[AdministrativeGenderAddition] ^short = "Additional administrative gender (Geschlecht)"
* gender.extension[AdministrativeGenderAddition] ^definition = "Additional administrative gender code (Geschlecht) required in Austria that is not covered by the FHIR administrative gender codes. The extension is only applied in case the administrative gender itself is set to 'other' (Ergänzung zu 'other')."

// Changing the ValueSet binding for the type of identifiers
* identifier.type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (extensible)
//Slice for Identifier:
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains GDA-OID 0..1 and VPNR 0..* and vbPK 0..*
* identifier[GDA-OID] ^short = "Gesundheitsdiensteanbieter-OID (GDA-OID)"
* identifier[GDA-OID] ^definition = "The OID of the healthcare service provider (Gesundheitsdiensteanbieter, GDA) as registered in the Austrian GDA-Index. The OID is assigned by the Federal Ministry of Health (Bundesministerium für Gesundheit)."
* identifier[GDA-OID].value 1..1
* identifier[GDA-OID].value ^short = "OID for the Gesundheitsdiensteanbieter (GDA) in Austria"
* identifier[GDA-OID].system 1..1
* identifier[GDA-OID].system = "urn:ietf:rfc:3986" (exactly)
* identifier[GDA-OID].system ^short = "A Gesundheitsdiensteanbieter (GDA) in Austria is represented via a URI (OID)"
* identifier[GDA-OID].assigner.display = "Bundesministerium für Gesundheit" (exactly)
* identifier[VPNR] ^short = "Vertragspartnernummer (VPNR)"
* identifier[VPNR] ^definition = "The contract partner number (Vertragspartnernummer, VPNR) of the practitioner, assigned by the Federation of Austrian Social Insurances (Dachverband der österreichischen Sozialversicherungsträger)."
* identifier[VPNR].value 1..1
* identifier[VPNR].system 1..1
* identifier[VPNR].system = "urn:oid:1.2.40.0.10.1.4.3.2" (exactly)
* identifier[VPNR].system ^short = "OID for the Vertragspartnernummer (VPNR) in Austria"
* identifier[VPNR].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger" (exactly)
* identifier[vbPK] ^short = "Verschlüsseltes bereichsspezifisches Personenkennzeichen (vbPK)"
* identifier[vbPK] ^definition = "The encrypted sector-specific personal identifier (Verschlüsseltes bereichsspezifisches Personenkennzeichen, vbPK) of the practitioner, used in Austrian e-Government processes. The OID of the system identifies the sector (e.g. GH for Gesundheit, SV for Sozialversicherung, AS for Amtliche Statistik) according to the E-Government-Bereichsabgrenzungsverordnung (E-Gov-BerAbgrV)."
* identifier[vbPK].value 1..1
* identifier[vbPK].system 1..1
* identifier[vbPK].system from HL7ATCoreVBPK (required)
* identifier[vbPK].system ^short = "OID for the specific verschlüsseltes bereichsspezifisches Personenkennzeichen (vbPK) in Austria"
