
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Example of a father and contact person of a minor patient.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    RelatedPersonMartinGruber
InstanceOf:  HL7ATCoreRelatedPerson
Description: "Example of Martin Gruber, the fictional father and next of kin of the minor patient Felix Gruber."
Usage:       #example

* active = true

// Related patient
* patient = Reference(PatientFelixGruber)

// Relationship to the patient
* relationship[+] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH "father"

// Name
* name[+].use = #official
* name[=].family = "Gruber"
* name[=].given = "Martin"

* gender = #male
* birthDate = "1983-09-12"

// Contact details
* telecom[+].system = #phone
* telecom[=].value = "+43 660 284 73 19"
* telecom[=].use = #mobile

* address[+] = AddressMartinGruber

// Fictional Austrian social security number
* identifier[socialSecurityNumber].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security number"
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier[socialSecurityNumber].value = "1234120983"
* identifier[socialSecurityNumber].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"

* identifier[bPK].type = http://terminology.hl7.org/CodeSystem/v2-0203#NI "National unique individual identifier"
* identifier[bPK].system = "urn:oid:1.2.40.0.10.2.1.1.149"
* identifier[bPK].value = "BPK-TEST-XY67889"
* identifier[bPK].assigner.display = "Bundesministerium für Inneres"


/*##############################################################################
# Type:       FSH-File for an FHIR® Inline Instance
# About:      Home address of the fictional related person Martin Gruber.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    AddressMartinGruber
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
