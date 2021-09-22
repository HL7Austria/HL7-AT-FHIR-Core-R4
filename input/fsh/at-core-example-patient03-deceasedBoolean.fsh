Instance: HL7ATCorePatientExample03-deceasedBoolean
InstanceOf: HL7ATCorePatient
Description: "Example with deceasedBoolean for the usage of the HL7 AT Core Patient Profile"
Usage: #example
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security number"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "1111241261"
* identifier.assigner.display = "Dachverband der �sterreichischen Sozialversicherungstr�ger"
* name.family = "Bauer"
* name.given[0] = "Muster"
* name.given[+] = "Andreas"
* name.prefix[0] = "Dipl.Ing."
* name.prefix[+] = "Dr."
* telecom.system = #phone
* telecom.value = "+43.2682.40400"
* telecom.use = #home
* gender = #male
* birthDate = "1990-12-24"
* deceasedBoolean = true
* address.use = #home
* address.line = "Berggasse 13a"
* address.city = "Eisenstadt"
* address.state = "Burgenland"
* address.postalCode = "7000"
* address.country = "AUT"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
* communication.language = urn:ietf:bcp:47#de
* communication.preferred = true