/*##############################################################################
# Type:       FSH-File for FHIR® Examples
# About:      HL7® AT Core RelatedPerson + Patient
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

/* ======================= Patient ======================= */
Instance:    HL7ATCorePatientExampleBart
InstanceOf:  HL7ATCorePatient
Usage:       #example
Description: "Patient example: Bart Simpson"

* name[0].family = "Simpson"
* name[0].given[0] = "Bart"
* gender = #male
* birthDate = "2010-04-01"

* address = HL7ATCoreAddressPatientBart

Instance:    HL7ATCoreAddressPatientBart
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* use = http://hl7.org/fhir/address-use#home
* type = http://hl7.org/fhir/address-type#both
* line = "Krapfengasse 12 Stiege 2"
* line.extension[street].valueString = "Krapfengasse"
* line.extension[streetNumber].valueString = "12"
* line.extension[floorDoorNumber].valueString = "Stiege 2"
* city = "Wien"
* state = "Wien"
* postalCode = "1150"
* country = "AUT"


/* ======================= RelatedPerson ======================= */
Instance:    HL7ATCoreRelatedPersonExampleHomer
InstanceOf:  HL7ATCoreRelatedPerson
Usage:       #example
Description: "RelatedPerson example: Homer Simpson (father of Bart)"

// Link to the patient
* patient = Reference(HL7ATCorePatientExampleBart)

// Role / relationship
* relationship[0] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH "father"

* name[0].family = "Simpson"
* name[0].given[0] = "Homer"
* gender = #male

* telecom[0].system = http://hl7.org/fhir/contact-point-system#phone
* telecom[0].use = http://hl7.org/fhir/contact-point-use#home
* telecom[0].value = "+43 660 1234567"

* address = HL7ATCoreAddressHomer

* identifier[socialSecurityNumber].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security number"
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier[socialSecurityNumber].value = "1234010190"
* identifier[socialSecurityNumber].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"

* identifier[bPK].type = http://terminology.hl7.org/CodeSystem/v2-0203#NI "National unique individual identifier"
* identifier[bPK].system = "urn:oid:1.2.40.0.10.2.1.1.149"
* identifier[bPK].value = "BPK-TEST-XY123456"
* identifier[bPK].assigner.display = "Bundesministerium für Inneres"

Instance:    HL7ATCoreAddressHomer
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* use = http://hl7.org/fhir/address-use#home
* type = http://hl7.org/fhir/address-type#both
* line = "Donutgasse 7 Tür 3"
* line.extension[street].valueString = "Donutgasse"
* line.extension[streetNumber].valueString = "7"
* line.extension[floorDoorNumber].valueString = "Tür 3"
* city = "Wien"
* state = "Wien"
* postalCode = "1150"
* country = "AUT"