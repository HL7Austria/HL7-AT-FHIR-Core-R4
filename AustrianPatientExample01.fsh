Instance:    AustrianPatientExample01
InstanceOf:  AustrianPatient
Description: "Example for the usage of the AustrianPatient Profile"
Usage:       #example
* name.family = "Mustermann"
* name.given = "Max"
* name.prefix = "DI"
* birthDate = 1900-01-01
* gender = http://hl7.org/fhir/ValueSet/administrative-gender#male 

* identifier[socialSecurityNumber].value = "1234010100"
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier[socialSecurityNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[socialSecurityNumber].type.coding.code = HL7V2#SS
* identifier[socialSecurityNumber].type.coding.display = "Social Security Number"
//* identifier[socialSecurityNumber].assigner.reference = "https://www.gesundheit.gv.at/OID_Frontend/oiddetail.htm?smallView=true&actualOid=1.2.40.0.10.1.4.3.1"
* identifier[socialSecurityNumber].assigner.display = "Hauptverband der österreichischen Sozialversicherungsträger"

* telecom[0].use = http://hl7.org/fhir/ValueSet/contact-point-use#work
* telecom[0].system = http://hl7.org/fhir/ValueSet/contact-point-system#email
* telecom[0].value = "office@hl7.at"
* telecom[1].use = http://hl7.org/fhir/ValueSet/contact-point-use#home
* telecom[1].system = http://hl7.org/fhir/ValueSet/contact-point-system#phone
* telecom[1].value = "+436501234567890"
 
* extension[PatientReligion].extension[code].valueCodeableConcept = urn:oid:2.16.840.1.113883.2.16.1.4.1#162 "Pastafarianismus"
* extension[CitizenshipExtension].extension[code].valueCodeableConcept = urn:oid:1.0.3166.1.2.3#AUT "Österreich"

* address = AustrianAddressExample01

Instance:    AustrianAddressExample01
InstanceOf:  AustrianAddress
Description: "Example for the usage of the AustrianAddress Profile"
Usage:       #inline
* use = http://hl7.org/fhir/ValueSet/address-use#home
* type = http://hl7.org/fhir/ValueSet/address-type#both
* line = "Landstrasse 1 Stock 9 Tür 42" 
* line.extension[street].valueString = "Landstrasse"
* line.extension[streetNumber].valueString = "1"
* line.extension[floorDoorNumber].valueString = "Stock 9 Tür 42"
* city = "Linz"
* state = "Oberösterreich"
* postalCode = "4020"
* country = "AUT"