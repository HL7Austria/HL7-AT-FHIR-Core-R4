Alias: $at-core-cs-religion = http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/CodeSystem/at-core-cs-religion
Alias: $at-core-cs-iso-3166-1-alpha-3 = http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/CodeSystem/at-core-cs-iso-3166-1-alpha-3
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131

Instance: HL7ATCorePatientUpdateTestExample
InstanceOf: HL7ATCorePatient
Usage: #example
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"
* extension[0].extension.url = "code"
* extension[=].extension.valueCodeableConcept = $at-core-cs-religion#101 "Römisch-Katholisch"
* extension[=].url = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-patient-religion"
* extension[+].extension[0].url = "code"
* extension[=].extension[=].valueCodeableConcept = $at-core-cs-iso-3166-1-alpha-3#AUT "Österreich"
* extension[=].extension[+].url = "period"
* extension[=].extension[=].valuePeriod.start = "2016-07-30T08:30:00+01:00"
* extension[=].extension[=].valuePeriod.end = "2022-07-30T08:35:00+01:00"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* identifier[0].use = #official
* identifier[=].type = $v2-0203#SS "Social Security Number"
* identifier[=].system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier[=].value = "1111241261"
* identifier[=].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#NI "National unique individual identifier"
* identifier[=].system = "urn:oid:1.2.40.0.10.2.1.1.149"
* identifier[=].value = "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0"
* identifier[=].assigner.display = "Bundesministerium für Inneres"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#PI "Patient internal identifier"
* identifier[=].system = "urn:oid:1.2.3.4.5"
* identifier[=].value = "11-22-33-44"
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
* telecom[=].value = "ABuches1961@emailexample.at"
* gender = #male
* birthDate = "1961-12-24"
* deceasedBoolean = false
* address.use = #home
* address.type = #both
* address.line = "Landstrasse 5 Stock 3 Tür 5"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Landstrasse"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "5"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
* address.line.extension[=].valueString = "Stock 3 Tür 5"
* address.line.extension[+].url = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-additionalInformation"
* address.line.extension[=].valueString = "Lift vorhanden"
* address.city = "Wien"
* address.state = "Wien"
* address.postalCode = "1030"
* address.country = "AUT"
* maritalStatus = $v3-MaritalStatus#M "Married"
* multipleBirthBoolean = false
* photo.url = "https://image.k.at/images/facebook/3923126/78350011451694692_BLD_Online.jpg"
* contact.relationship = $v2-0131#C "Emergency Contact"
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
* link.other = Reference(Patient/HL7ATCorePatientExample03-deceasedBoolean)
* link.type = #seealso