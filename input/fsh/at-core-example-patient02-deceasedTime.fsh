Instance: GOFSH-GENERATED-ID-0
InstanceOf: Patient
Usage: #example
* identifier[0].use = #official
* identifier[=].type = $v2-0203#SS "Social Security number"
* identifier[=].system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier[=].value = "1111241261"
* identifier[=].assigner.display = "Dachverband der �sterreichischen Sozialversicherungstr�ger"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#NI "National unique individual identifier"
* identifier[=].system = "urn:oid:1.2.40.0.10.2.1.1.149"
* identifier[=].value = "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0"
* identifier[=].assigner.display = "Bundesministerium für Inneres"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#PI "Patient internal identifier"
* identifier[=].system = "urn:oid:1.2.3.4.5"
* identifier[=].value = "0815"
* identifier[=].assigner.display = "Ein GDA in Österreich"
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
* deceasedDateTime = "2019-01-14T17:22:00+10:00"
* address.use = #home
* address.line = "Berggasse 13a"
* address.city = "Eisenstadt"
* address.state = "Burgenland"
* address.postalCode = "7000"
* address.country = "AUT"
* maritalStatus = $v3-MaritalStatus#M "Married"
* communication.language = urn:ietf:bcp:47#de
* communication.preferred = true