Instance: Organization-example-f001-burgers
InstanceOf: HL7ATCorePatient
Description: "Real-world organization example (Burgers MC)"
Usage: #example
* identifier[0].use = #official
* identifier[=].system = "urn:oid:2.16.528.1"
* identifier[=].value = "91654"
* identifier[+].use = #usual
* identifier[=].system = "urn:oid:2.16.840.1.113883.2.4.6.1"
* identifier[=].value = "17-0112278"
* type[0].system = "urn:oid:2.16.840.1.113883.2.4.15.1060"
* type[=].code = "V6"
* type[=].display = "University Medical Hospital"
* type[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[=].code = "prov"
* type[=].display = "Healthcare Provider"
* name = "Burgers University Medical Center"
* telecom[0].system = #phone
* telecom[=].value = "022-655 2300"
* telecom[=].use = #work
* address[0].use = #work
* address[=].line = "Galapagosweg 91"
* address[=].city = "Den Burg"
* address[=].postalCode = "9105 PZ"
* address[=].country = "NLD"
* address[+].use = #work
* address[=].line = "PO Box 2311"
* address[=].city = "Den Burg"
* address[=].postalCode = "9100 AA"
* address[=].country = "NLD"
* contact[0].purpose.system = "http://terminology.hl7.org/CodeSystem/contactentity-type"
* contact[=].purpose.code = "PRESS"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "022-655 2334"
* contact[+].purpose.system = "http://terminology.hl7.org/CodeSystem/contactentity-type"
* contact[=].purpose.code = "PATINF"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "022-655 2335"