Instance: HL7ATCorePatientExample05-FullElga
InstanceOf: HL7ATCorePatient
Description: "Example with all ELGA header elements in the HL7 AT Core Patient Profile"
Usage: #example
* identifier.use = #official
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security number"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "1111241261"
* identifier.assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"
* name.family = "Wolfesberger"
* name.given[0] = "Alexander"
* name.given[+] = "Robert"
* name.prefix[0] = "Dipl.Ing."
* name.prefix[+] = "Dr."
* telecom[0].system = #phone
* telecom[=].value = "+43.2682.40400"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "+43.664.1234567"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "herberthannes.mustermann@provider.at"
* gender = #male
* birthDate = "1961-12-24"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
* contact.relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DAU "natural daughter"
* contact.name.family = "Tochter"
* contact.name.given = "Julia"
* contact.telecom.system = #phone
* contact.telecom.value = "+43.664.12345678"
* contact.telecom.use = #mobile
* contact.address.line = "Heimstrasse 1"
* contact.address.city = "Wien"
* contact.address.postalCode = "1220"
* contact.address.country = "AUT"
* communication.language = urn:ietf:bcp:47#de
* communication.preferred = true
* extension[PatientReligion].extension[code].valueCodeableConcept = http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/CodeSystem/at-core-cs-religion#101 "Römisch-Katholisch"

* address = HL7ATCoreAddressExample03

Instance:    HL7ATCoreAddressExample03
InstanceOf:  HL7ATCoreAddress
Description: "Example for the usage of the HL7 AT Core Address Profile"
Usage:       #inline
* use = http://hl7.org/fhir/address-use#home
* type = http://hl7.org/fhir/address-type#both
* line = "Beheimgasse 7 Stock 2 Tür 1" 
* line.extension[street].valueString = "Beheimgasse"
* line.extension[streetNumber].valueString = "7"
* line.extension[floorDoorNumber].valueString = "Stock 2 Tür 1"
* line.extension[additionalInformation].valueString = "Lift vorhanden"
* city = "Wien"
* state = "Wien"
* postalCode = "1170"
* country = "AUT"

