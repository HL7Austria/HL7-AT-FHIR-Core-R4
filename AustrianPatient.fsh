Profile:        AustrianPatient
Parent:         Patient
Id:             austrian-patient
Title:          "Austrian Patient"
Description:    "FHIR Base Profile for Patient Data in Austria."
// Define Mandatory Fields
* name 1..*
* gender 1..1
// Address is based on the profile for the Austrian Representation of an Address
* address only AustrianRepresentationOfAddress

//Slice for Identifier, order matters
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains socialSecurityNumber 0..1 and bPK 0..* and localPatientId 0..1
* identifier[socialSecurityNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[socialSecurityNumber].type.coding.code = HL7V2#SS (exactly)
* identifier[socialSecurityNumber].type.coding.display = "Social Security Number" (exactly)
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1" (exactly)
* identifier[socialSecurityNumber].system ^short = "OID for the Social Security Number in Austria"
//* identifier[socialSecurityNumber].assigner.reference = "https://www.gesundheit.gv.at/OID_Frontend/oiddetail.htm?smallView=true&actualOid=1.2.40.0.10.1.4.3.1" (exactly)
* identifier[socialSecurityNumber].assigner.display = "Hauptverband der österreichischen Sozialversicherungsträger" (exactly)
* identifier[bPK].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[bPK].type.coding.code = HL7V2#NI (exactly)
* identifier[bPK].type.coding.display = "National unique individual identifier" (exactly)
* identifier[bPK].system = "urn:oid:1.2.40.0.10.2.1.1.149" (exactly)
* identifier[bPK].system ^short = "OID for the bPK in Austria"
//* identifier[bPK].assigner.reference = "https://www.gesundheit.gv.at/OID_Frontend/oiddetail.htm?smallView=true&actualOid=1.2.40.0.10.2.1.1.149" (exactly)
* identifier[bPK].assigner.display = "Bundesministerium für Inneres" (exactly)
* identifier[localPatientId].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[localPatientId].type.coding.code = HL7V2#PI (exactly)
* identifier[localPatientId].type.coding.display = "Patient internal identifier" (exactly)
                                                
//Extension for Citizenship -> official HL7 Int Extension with ValueSet Bindung of HL7 Austria
* extension contains CitizenshipExtension named citizenship 0..1
* extension[citizenship].extension[code].valueCodeableConcept from ELGALaendercodesVS (extensible)
* extension[citizenship].extension[code].valueCodeableConcept 1..1  //Workaround for sushi issue 596, can be removed when fixed
* extension[citizenship].extension[code].valueCodeableConcept.coding.system ^fixedUri = "urn:oid:1.0.3166.1.2.3"
* extension[citizenship].extension[code].valueCodeableConcept.coding.system ^short = "OID for ISO 3166-1 alpha 3 2016"

//Extension for Religion -> HL7 Austria's AustrianReligion Extension
* extension contains PatientReligion named PatientReligion 0..1
