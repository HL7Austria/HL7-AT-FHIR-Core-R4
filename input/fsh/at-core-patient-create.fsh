Alias: $testscript-profile-origin-types = http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types
Alias: $testscript-profile-destination-types = http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types
Alias: $testscript-operation-codes = http://terminology.hl7.org/CodeSystem/testscript-operation-codes

Instance:    testscript-patient-create-at-core
InstanceOf:  TestScript
Title:       "HL7® AT Core TestScript - Patient Create"
Description: "TestScript creating a patient resource conformant to the AT Core Patient profile on a FHIR Server. FHIR Client may use any input patient resource, but the script can provide an example patient: Andreas Bucher - HL7ATCorePatientExample04. Expected Result:  Server accepts creation of Patient resource that is conformant to the AT Core Patient profile."
Usage: #definition
* name = "HL7® AT Core TestScript - Patient Create"
* status = #active
* date = "2023-02-21"
* publisher = "HL7® Austria"
* contact.name = "HL7® Austria Technical Committee FHIR"
* contact.telecom.system = #email
* contact.telecom.value = "tc-fhir@hl7.at"
* copyright = "This FHIR Test Script is licensed under Creative Commons (CC0) 'No Rights Reserved'. Learn more at https://creativecommons.org/licenses"
* origin.index = 1
* origin.profile = $testscript-profile-origin-types#FHIR-Client
* destination.index = 1
* destination.profile = $testscript-profile-destination-types#FHIR-Server
* fixture.id = "patient-create"
* fixture.autocreate = false
* fixture.autodelete = false
* fixture.resource = Reference(Patient-HL7ATCorePatientCreateTestExample.html)
* profile.id = "at-core-patient-profile"
* profile = Reference(http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient)
* variable.name = "patientResourceId"
* variable.path = "Patient/id"
* variable.sourceId = "patient-create"
* test.id = "Step1-RegisterNewPatient"
* test.name = "RegisterNewPatient"
* test.description = "Create a new patient conformant to the AT Core Patient profile, the server assigns the resource id using JSON."
* test.action[0].operation.type = $testscript-operation-codes#create
* test.action[=].operation.resource = #Patient
* test.action[=].operation.description = "Create patient with client assigned resource id."
* test.action[=].operation.accept = #json
* test.action[=].operation.contentType = #json
* test.action[=].operation.destination = 1
* test.action[=].operation.encodeRequestUrl = true
* test.action[=].operation.origin = 1
* test.action[=].operation.responseId = "create-response"
* test.action[=].operation.sourceId = "patient-create"
* test.action[+].assert.description = "Validate that the returned resource conforms to the base FHIR Patient profile."
* test.action[=].assert.direction = #request
* test.action[=].assert.validateProfileId = "at-core-patient-profile"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.description = "Confirm that the returned HTTP status is 200(OK) or 201(Created)."
* test.action[=].assert.direction = #response
* test.action[=].assert.operator = #in
* test.action[=].assert.responseCode = "200,201"
* test.action[=].assert.warningOnly = false