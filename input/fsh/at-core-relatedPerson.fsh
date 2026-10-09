/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for RelatedPerson.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCoreRelatedPerson
Parent:         RelatedPerson
Id:             at-core-related-person
Title:          "HL7® AT Core RelatedPerson Profile"
Description:    "HL7® Austria FHIR® Core Profile for a related person in Austria.
The HL7® AT Core RelatedPerson is based upon the core FHIR® RelatedPeson Resource and designed to meet the applicable demographic data elements in Austria. Note, this extension represents the common structure of a person information within Austrian information systems."
* gender.extension contains AdministrativeGenderAddition named AdministrativeGenderAddition 0..1
// Address is based on the profile for the Austrian Representation of an Address
// this applies to the address of the patient as well as the address of contacts
* address only HL7ATCoreAddress
* patient only Reference(HL7ATCorePatient)

// Changing the ValueSet binding for the type of identifiers
* identifier.type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (extensible)
//Slice for Identifier, order matters
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains socialSecurityNumber 0..1 and bPK 0..*
* identifier[socialSecurityNumber].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[socialSecurityNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[socialSecurityNumber].type.coding.code = HL7V2#SS (exactly)
* identifier[socialSecurityNumber].system 1..1
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1" (exactly)
* identifier[socialSecurityNumber].system ^short = "OID for the Social Security Number in Austria"
* identifier[socialSecurityNumber].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger" (exactly)
* identifier[bPK].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[bPK].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[bPK].type.coding.code = HL7V2#NI (exactly)
* identifier[bPK].system 1..1
* identifier[bPK].system = "urn:oid:1.2.40.0.10.2.1.1.149" (exactly)
* identifier[bPK].system ^short = "OID for the bPK in Austria"
* identifier[bPK].assigner.display = "Bundesministerium für Inneres" (exactly)