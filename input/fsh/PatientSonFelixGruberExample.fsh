
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of a minor patient in Austria with a related person.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    PatientFelixGruber
InstanceOf:  HL7ATCorePatient
Description: "Example of a fictional minor patient living in Vienna, whose father is represented by a RelatedPerson resource."
Usage:       #example

* active = true

* name[+].use = #official
* name[=].family = "Gruber"
* name[=].given = "Felix"

* gender = #male
* birthDate = "2014-04-17"

* address[+] = AddressFelixGruber

* identifier[socialSecurityNumber].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security number"
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier[socialSecurityNumber].value = "1234170414"
* identifier[socialSecurityNumber].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"

* identifier[bPK].type = http://terminology.hl7.org/CodeSystem/v2-0203#NI "National unique individual identifier"
* identifier[bPK].system = "urn:oid:1.2.40.0.10.2.1.1.149"
* identifier[bPK].value = "BPK-TEST-XY654321"
* identifier[bPK].assigner.display = "Bundesministerium für Inneres"


/*##############################################################################
# Type:       FSH-File for an FHIR® Inline Instance
# About:      Home address of the fictional patient Felix Gruber.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    AddressFelixGruber
InstanceOf:  HL7ATCoreAddress
Usage:       #inline

* use = #home
* type = #both

* line = "Hütteldorfer Straße 86, Stiege 2, Tür 7"
* line.extension[street].valueString = "Hütteldorfer Straße"
* line.extension[streetNumber].valueString = "86"
* line.extension[floorDoorNumber].valueString = "Stiege 2, Tür 7"

* city = "Wien"
* state = "Wien"
* postalCode = "1150"
* country = "AUT"

