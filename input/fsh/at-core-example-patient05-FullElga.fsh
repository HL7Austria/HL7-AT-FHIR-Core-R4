Instance: HL7ATCorePatientExample05-FullElga
InstanceOf: HL7ATCorePatient
Usage: #example
* extension.url = "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/patientReligion"
* extension.valueCodeableConcept = urn:oid:2.16.840.1.113883.2.16.1.4.1#101 "Römisch-Katholisch"
* identifier.use = #official
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security number"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "1111241261"
* identifier.assigner.display = "Dachverband der �sterreichischen Sozialversicherungstr�ger"
* name.family = "Mustadimi"
* name.given[0] = "Alejandro"
* name.given[+] = "Vasi"
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
* address.use = #home
* address.line = "Musterstraße 13a"
* address.city = "Eisenstadt"
* address.state = "Burgenland"
* address.postalCode = "7000"
* address.country = "AUT"
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