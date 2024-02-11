Alias: $testscript-profile-origin-types = http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types
Alias: $testscript-profile-destination-types = http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types
Alias: $testscript-operation-codes = http://terminology.hl7.org/CodeSystem/testscript-operation-codes

Instance: testscript-patient-update-at-core
InstanceOf: TestScript
Title: "HL7® AT Core TestScript - Patient Update"
Description: "TestScript updating an existing patient resource conformant to the AT Core Patient profile on a FHIR Server using the JSON format. FHIR Client may use any input patient resource, but the script can provide an example patient: Andreas Bucher - HL7ATCorePatientExample04 with an updated PI value of “11-22-33-44”. Expected Result:  Server accepts update of Patient resource that is conformant to the AT Core Patient profile. The testscript uses a variable for the resource ID value which should match the Id of the resource being updated."
Usage: #definition
* name =  "HL7® AT Core TestScript - Patient Update"
* status = #active
* date = "2023-02-21"
* publisher = "HL7® Austria"
* contact.name = "HL7® Austria Technical Committee FHIR"
* contact.telecom.system = #email
* contact.telecom.value = "tc-fhir@hl7.at"
* description = "TestScript updating an existing patient resource conformant to the AT Core Patient profile on a FHIR Server using the JSON format. FHIR Client may use any input patient resource, but the script can provide an example patient: Andreas Bucher - HL7ATCorePatientExample04 with an updated PI value of “11-22-33-44”. Expected Result:  Server accepts update of Patient resource that is conformant to the AT Core Patient profile. The testscript uses a variable for the resource ID value which should match the Id of the resource being updated."
* copyright = "This FHIR Test Script is licensed under Creative Commons (CC0) 'No Rights Reserved'. Learn more at https://creativecommons.org/licenses"
* origin.index = 1
* origin.profile = $testscript-profile-origin-types#FHIR-Client
* destination.index = 1
* destination.profile = $testscript-profile-destination-types#FHIR-Server
* fixture.id = "patient-update"
* fixture.autocreate = false
* fixture.autodelete = false
* fixture.resource = Reference(Patient-HL7ATCorePatientUpdateTestExample.html)
* profile.id = "at-core-patient-profile"
* profile = Reference(http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient)
* variable.name = "patientResourceId"
* variable.description = "Enter the patient FHIR resource id the FHIR Client will send to the FHIR Server."
* variable.hint = "[Resource Id]"
* test.id = "Step1-UpdatePatient"
* test.name = "UpdatePatient"
* test.description = "Update a patient resource conformant to the AT Core Patient profile."
* test.action[0].operation.type = $testscript-operation-codes#update
* test.action[=].operation.resource = #Patient
* test.action[=].operation.description = "Update patient resource."
* test.action[=].operation.accept = #json
* test.action[=].operation.contentType = #json
* test.action[=].operation.destination = 1
* test.action[=].operation.encodeRequestUrl = true
* test.action[=].operation.origin = 1
* test.action[=].operation.params = "/${patientResourceId}"
* test.action[=].operation.responseId = "create-response"
* test.action[=].operation.sourceId = "patient-update"
* test.action[+].assert.description = "Validate that the returned resource conforms to the base FHIR Patient profile."
* test.action[=].assert.direction = #request
* test.action[=].assert.validateProfileId = "at-core-patient-profile"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test.action[=].assert.direction = #response
* test.action[=].assert.operator = #equals
* test.action[=].assert.responseCode = "200"
* test.action[=].assert.warningOnly = false