/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for Patient for Secondary Use.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCorePatientSecondaryUse
Parent:         Patient
Id:             at-core-patient-secondary
Title:          "HL7® AT Core Patient Profile for Secondary Use"
Description:    "HL7® Austria FHIR® Core Profile for FHIR Patients without patient-identifying data in Austria."
// Define Mandatory Fields
* name 0..0
* gender 0..1
* gender.extension contains AdministrativeGenderAddition named AdministrativeGenderAddition 0..1
* birthDate.extension contains PatientBirthTimeExtension named birthTime 0..1
// Address is based on the profile for the Austrian Representation of an Address
// this applies to the address of the patient as well as the address of contacts
* address only HL7ATCoreAddress
* contact.address only HL7ATCoreAddress

// Changing the ValueSet binding for the type of identifiers
* identifier.type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (extensible)
//Slice for Identifier, order matters
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains vbPK 0..*

* identifier[vbPK].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[vbPK].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[vbPK].type.coding.code = #ANON (exactly)
* identifier[vbPK].system 1..1
* identifier[vbPK].system from HL7ATCoreVBPK (required)
* identifier[vbPK].system ^short = "OID for the specific vbPK in Austria"


//Extension for Citizenship -> official HL7 Int Extension with ValueSet Bindung of HL7 Austria
* extension contains CitizenshipExtension named citizenship 0..1
* extension[citizenship].extension[code].valueCodeableConcept from ELGALaendercodesVS (extensible)
* extension[citizenship].extension[code].valueCodeableConcept 1..1  //Workaround for sushi issue 596, can be removed when fixed

//Extension for Religion
* extension contains http://hl7.org/fhir/StructureDefinition/patient-religion named PatientReligion 0..1
* extension[PatientReligion].value[x] from ELGAAustriaReligionVS (extensible)

//Extension for birth place -> official HL7 Int Extension
* extension contains PatientBirthPlaceExtension named birthPlace 0..1
* extension[birthPlace].value[x] only HL7ATCoreAddress

* contact.gender.extension contains AdministrativeGenderAddition named AdministrativeGenderAddition 0..1


ValueSet: HL7ATCoreVBPK
Id: at-core-vbpk
Title: "HL7AT Core vbPK"
Description: "This value set contains the OIDs for the vbPK (Verschlüsseltes bereichsspezifisches Personenkennzeichen) in Austria according to [E-Government-Bereichsabgrenzungsverordnung – E-Gov-BerAbgrV](https://www.ris.bka.gv.at/GeltendeFassung.wxe?Abfrage=Bundesnormen&Gesetzesnummer=20003476)."
* ^experimental = false
* urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.1 "vbPK GH"
* urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.2 "vbPK SV"
* urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.3 "vbPK AS"