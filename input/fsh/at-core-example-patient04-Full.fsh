Instance: HL7ATCorePatientExample04-Full
InstanceOf: HL7ATCorePatient
Description: "Example with all elements for the usage of the HL7 AT Core Patient Profile"
Usage: #example
* identifier[0].use = #official
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security Number"
* identifier[=].system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier[=].value = "1111241261"
* identifier[=].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"
* identifier[+].use = #official
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#NI "National unique individual identifier"
* identifier[=].system = "urn:oid:1.2.40.0.10.2.1.1.149"
* identifier[=].value = "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0"
* identifier[=].assigner.display = "Bundesministerium für Inneres"
* identifier[+].use = #official
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI "Patient internal identifier"
* identifier[=].system = "urn:oid:1.2.3.4.5"
* identifier[=].value = "0815"
* identifier[=].assigner.display = "Ein GDA in Österreich"
* active = true
* name.family = "Bucher"
* name.given = "Andreas"
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
* deceasedBoolean = false
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
* multipleBirthBoolean = false
* photo.url = "https://image.k.at/images/facebook/3923126/78350011451694692_BLD_Online.jpg"
* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#C "Emergency Contact"
* contact.name.family = "Tochter"
* contact.name.given = "Julia"
* contact.telecom.system = #phone
* contact.telecom.value = "+43.664.12345678"
* contact.telecom.use = #mobile
* contact.address.line = "Heimstrasse 1"
* contact.address.city = "Wien"
* contact.address.postalCode = "1220"
* contact.address.country = "AUT"
* contact.gender = #female
* contact.organization = Reference(Organization/Organization-example-f001-burgers)
* contact.period.start = "2016-07-30T08:30:00+01:00"
* contact.period.end = "2019-07-30T08:35:00+01:00"
* communication.language = urn:ietf:bcp:47#de
* communication.preferred = true
* generalPractitioner = Reference(Organization/Organization-example-f001-burgers)
* managingOrganization = Reference(Organization/Organization-example-f001-burgers)
* link.type = #seealso
* link.other = Reference(Patient/HL7ATCorePatientExample03-deceasedBoolean) 

* extension[PatientReligion].extension[code].valueCodeableConcept = https://termgit.elga.gv.at/CodeSystem-hl7-at-religionaustria#101 "Römisch-Katholisch"
* extension[CitizenshipExtension].extension[code].valueCodeableConcept = https://termgit.elga.gv.at/CodeSystem-iso-3166-1-alpha-3#AUT "Österreich"
* extension[CitizenshipExtension].extension[period].valuePeriod.start = "2016-07-30T08:30:00+01:00"
* extension[CitizenshipExtension].extension[period].valuePeriod.end = "2022-07-30T08:35:00+01:00"

* address = HL7ATCoreAddressExample02

Instance:    HL7ATCoreAddressExample02
InstanceOf:  HL7ATCoreAddress
Description: "Example for the usage of the HL7 AT Core Address Profile"
Usage:       #inline
* use = http://hl7.org/fhir/address-use#home
* type = http://hl7.org/fhir/address-type#both
* line = "Landstrasse 5 Stock 3 Tür 5" 
* line.extension[street].valueString = "Landstrasse"
* line.extension[streetNumber].valueString = "5"
* line.extension[floorDoorNumber].valueString = "Stock 3 Tür 5"
* line.extension[additionalInformation].valueString = "Lift vorhanden"
* city = "Wien"
* state = "Wien"
* postalCode = "1030"
* country = "AUT"

