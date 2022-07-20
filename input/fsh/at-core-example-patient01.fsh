/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example for the HL7 Austria FHIR® Core Profile for Patient.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Instance:    HL7ATCorePatientExample01
InstanceOf:  HL7ATCorePatient
Description: "Example for the usage of the HL7 AT Core Patient Profile"
Usage:       #example
* name.family = "Mustermann"
* name.given = "Max"
* name.prefix = "DI"
* birthDate = 1900-01-01
* gender = http://hl7.org/fhir/administrative-gender#male 

* identifier[socialSecurityNumber].value = "1234010100"
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier[socialSecurityNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[socialSecurityNumber].type.coding.code = HL7V2#SS
* identifier[socialSecurityNumber].type.coding.display = "Social Security Number"
* identifier[socialSecurityNumber].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"
* identifier[bPK].value = "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
* identifier[bPK].system = "urn:oid:1.2.40.0.10.2.1.1.149"
* identifier[bPK].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[bPK].type.coding.code = HL7V2#NI
* identifier[bPK].type.coding.display = "National unique individual identifier"
* identifier[bPK].assigner.display = "Bundesministerium für Inneres"
* identifier[localPatientId].value = "0815"
* identifier[localPatientId].system = "urn:oid:1.2.3.4.5"
* identifier[localPatientId].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[localPatientId].type.coding.code = HL7V2#PI
* identifier[localPatientId].type.coding.display = "Patient internal identifier"
* identifier[localPatientId].assigner.display = "Ein GDA in Österreich"

* telecom[0].use = 	http://hl7.org/fhir/contact-point-use#work
* telecom[0].system = http://hl7.org/fhir/contact-point-system#email
* telecom[0].value = "office@hl7.at"
* telecom[1].use = 	http://hl7.org/fhir/contact-point-use#home
* telecom[1].system = http://hl7.org/fhir/contact-point-system#phone
* telecom[1].value = "+436501234567890"
 
* extension[PatientReligion].extension[code].valueCodeableConcept = https://termgit.elga.gv.at/CodeSystem-hl7-at-religionaustria#162 "Pastafarianismus"
* extension[CitizenshipExtension].extension[code].valueCodeableConcept = https://termgit.elga.gv.at/CodeSystem-iso-3166-1-alpha-3#AUT "Österreich"

* address = HL7ATCoreAddressExample01

Instance:    HL7ATCoreAddressExample01
InstanceOf:  HL7ATCoreAddress
Description: "Example for the usage of the HL7 AT Core Address Profile"
Usage:       #inline
* use = http://hl7.org/fhir/address-use#home
* type = http://hl7.org/fhir/address-type#both
* line = "Landstrasse 1 Stock 9 Tür 42" 
* line.extension[street].valueString = "Landstrasse"
* line.extension[streetNumber].valueString = "1"
* line.extension[floorDoorNumber].valueString = "Stock 9 Tür 42"
* line.extension[additionalInformation].valueString = "Lift vorhanden"
* city = "Linz"
* state = "Oberösterreich"
* postalCode = "4020"
* country = "AUT"
