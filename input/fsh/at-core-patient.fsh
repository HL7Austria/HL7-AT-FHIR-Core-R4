/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for Patient.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCorePatient
Parent:         Patient
Id:             at-core-patient
Title:          "HL7® AT Core Patient Profile"
Description:    "HL7® Austria FHIR® Core Profile for patient data in Austria.
The HL7® AT Core Patient is based upon the core FHIR® Patient Resource and designed to meet the applicable patient demographic data elements in Austria. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the resource when using this profile. Note, this extension represents the common structure of Patient information within Austrian information systems."
// Define Mandatory Fields
* name 1..*
* gender 1..1
* gender.extension contains PatientAdministrativeGenderAddition named AdministrativeGenderAddition 0..1
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
* identifier contains socialSecurityNumber 0..1 and bPK 0..* and localPatientId 0..1
* identifier[socialSecurityNumber].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[socialSecurityNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[socialSecurityNumber].type.coding.code = HL7V2#SS (exactly)
* identifier[socialSecurityNumber].type.coding.display = "Social Security Number" (exactly)
* identifier[socialSecurityNumber].system 1..1
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1" (exactly)
* identifier[socialSecurityNumber].system ^short = "OID for the Social Security Number in Austria"
//* identifier[socialSecurityNumber].assigner.reference = "https://www.gesundheit.gv.at/OID_Frontend/oiddetail.htm?smallView=true&actualOid=1.2.40.0.10.1.4.3.1" (exactly)
* identifier[socialSecurityNumber].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger" (exactly)
* identifier[bPK].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[bPK].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[bPK].type.coding.code = HL7V2#NI (exactly)
* identifier[bPK].type.coding.display = "National unique individual identifier" (exactly)
* identifier[bPK].system 1..1
* identifier[bPK].system = "urn:oid:1.2.40.0.10.2.1.1.149" (exactly)
* identifier[bPK].system ^short = "OID for the bPK in Austria"
//* identifier[bPK].assigner.reference = "https://www.gesundheit.gv.at/OID_Frontend/oiddetail.htm?smallView=true&actualOid=1.2.40.0.10.2.1.1.149" (exactly)
* identifier[bPK].assigner.display = "Bundesministerium für Inneres" (exactly)
* identifier[localPatientId].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[localPatientId].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[localPatientId].type.coding.code = HL7V2#PI (exactly)
* identifier[localPatientId].type.coding.display = "Patient internal identifier" (exactly)
* identifier[localPatientId].system 1..1
* identifier[localPatientId].system ^short = "Namespace that assigned the localPatientId."


//Extension for Citizenship -> official HL7 Int Extension with ValueSet Bindung of HL7 Austria
* extension contains CitizenshipExtension named citizenship 0..1
* extension[citizenship].extension[code].valueCodeableConcept from ELGALaendercodesVS (extensible)
* extension[citizenship].extension[code].valueCodeableConcept 1..1  //Workaround for sushi issue 596, can be removed when fixed
* extension[citizenship].extension[code].valueCodeableConcept.coding.system ^fixedUri = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/CodeSystem/at-core-cs-iso-3166-1-alpha-3"
* extension[citizenship].extension[code].valueCodeableConcept.coding.system ^short = "URL for ISO 3166-1 alpha 3 2016"

//Extension for Religion -> HL7 Austria's AustrianReligion Extension
* extension contains PatientReligion named PatientReligion 0..1


Mapping:  HL7ATCorePatient2CdaATv3
Source:   at-core-patient
Target:   "https://wiki.hl7.at/index.php?title=ILF:Allgemeiner_Implementierungsleitfaden_(Version_3)"
Id:       at-core-mapping-patient2cdaatv3
Title:    "Allgemeiner Implementierungsleitfaden v3"
* -> "ClinicalDocument.recordTarget.patientRole"

* identifier[localPatientId].system -> ".id[0].root"
* identifier[localPatientId].value -> ".id[0].extension"
* identifier[socialSecurityNumber].system -> ".id[1].root"
* identifier[socialSecurityNumber].value -> ".id[1].extension"
* identifier[bPK].system -> ".id.where(root='1.2.40.0.10.2.1.1.149').root"
* identifier[bPK].value -> ".id.where(root='1.2.40.0.10.2.1.1.149').extension"

* active -> "n/a"

* name -> ".patient.name"
* name.family -> ".patient.name.family.dataString"
* name.given -> ".patient.name.given.dataString"
* name.prefix -> ".patient.name.prefix.dataString"
* name.suffix -> ".patient.name.suffix.dataString"

* telecom.system -> ".telecom.value"
* telecom.value -> ".telecom.value"
* telecom.use -> ".telecom.use"

* gender -> ".patient.administrativeGenderCode.displayName"
* birthDate -> ".patient.birthTime.value"

* deceasedBoolean -> ".patient.deceasedInd"
* deceasedDateTime -> ".patient.deceasedTime"

* address.use -> ".addr.use"
* address.text -> ".addr.select(streetAddressLine.dataString + ' ' + postalCode.dataString + ' ' + city.dataString + ' ' + country.dataString)"
* address.line -> ".addr.streetAddressLine"
//* address.line[iso21090-ADXP-streetName] -> ".addr.streetAddressLine"
//* address.line[iso21090-ADXP-houseNumber] -> ".addr.streetAddressLine"
//* address.line[iso21090-ADXP-additionalLocator] -> ".addr.streetAddressLine"
//* address.line[at-core-ext-address-additionalInformation]	 -> ".addr.streetAddressLine"
* address.city -> ".addr.city.dataString"
* address.state -> ".addr.state.dataString"
* address.postalCode -> ".addr.postalCode.dataString"
* address.country -> ".addr.country.dataString"

* maritalStatus.coding.code -> ".patient.maritalStatusCode.code"
* maritalStatus.coding.display -> ".patient.maritalStatusCode.displayName"
* maritalStatus.coding.system -> ".patient.maritalStatusCode.codeSystem"

* multipleBirthBoolean -> "n/a"
* multipleBirthInteger -> "n/a"
// birth-params are not existent in HL7 CDA Austria
//* multipleBirthBoolean -> ".patient.multipleBirthInd.value"
//* multipleBirthInteger -> ".patient.multipleBirthOrderNumber.value"

* photo -> "n/a"

* contact.relationship.coding.code -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.code.code"
* contact.relationship.coding.display -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.code.displayName"
* contact.relationship.coding.system -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.code.codeSystem"
* contact.name.family -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.associatedPerson.name.family"
* contact.name.given -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.associatedPerson.name.given"
* contact.telecom.system -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.telecom.system"
* contact.telecom.value -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.telecom.value"
* contact.telecom.use -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.telecom.use"
* contact.address.use -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.use"
* contact.address.text -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.select(streetAddressLine.dataString + ' ' + postalCode.dataString + ' ' + city.dataString + ' ' + country.dataString)"
* contact.address.line -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.streetAddressLine"
//* contact.address.line[iso21090-ADXP-streetName] -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.streetAddressLine"
//* contact.address.line[iso21090-ADXP-houseNumber] -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.streetAddressLine"
//* contact.address.line[iso21090-ADXP-additionalLocator] -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.streetAddressLine"
//* contact.address.line[at-core-ext-address-additionalInformation] -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.streetAddressLine"
* contact.address.city -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.city.dataString"
* contact.address.state -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.state.dataString"
* contact.address.postalCode -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.postalCode.dataString"
* contact.address.country -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.country.dataString"
* contact.gender -> "n/a"
* contact.organization -> "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.scopingOrganization.id[0]"
* contact.period ->  "n/a"

* communication.language -> ".patient.languageCommunication.languageCode.code"
* communication.preferred -> ".patient.languageCommunication.preferenceInd.value"

* generalPractitioner -> "ClinicalDocument.participant.where(functionCode='PCP').associatedEntity.id"
* managingOrganization -> "ClinicalDocument.custodian.assignedCustodian.representedCustodianOrganization.id"

* link.other -> "n/a"
* link.type -> "n/a"
