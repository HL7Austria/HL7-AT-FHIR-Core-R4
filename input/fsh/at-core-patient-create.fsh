Alias: $testscript-profile-origin-types = http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types
Alias: $testscript-profile-destination-types = http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types
Alias: $testscript-operation-codes = http://terminology.hl7.org/CodeSystem/testscript-operation-codes

Instance:    testscript-patient-create-at-core
InstanceOf:  TestScript
Title:       "HL7® AT Core TestScript - Patient Create"
Description: "TestScript creating a patient resource conformant to the AT Core Patient profile on a FHIR Server. The FHIR Client may use any input patient resource, but the script provides an example patient: Andreas Bucher - HL7ATCorePatientCreateTestExample. Expected Result: the server accepts creation of a Patient resource that is conformant to the AT Core Patient profile. The server-assigned logical id is captured in the patientResourceId variable so it can be fed into the AT Core Patient Update test script."
Usage: #definition
// TestScript.name must satisfy invariant tst-0 (name.matches('[A-Z]([A-Za-z0-9_]){0,254}')).
* name = "TestScriptATCorePatientCreate"
* status = #active
* experimental = false
* date = "2026-09-15"
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
* fixture.resource = Reference(HL7ATCorePatientCreateTestExample)
* profile.id = "at-core-patient-profile"
* profile = Reference(http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient)
* variable.name = "patientResourceId"
* variable.description = "The server-assigned logical id of the Patient created by this test script. It is read from the create response body, which is why the operation asks for 'Prefer: return=representation'."
* variable.expression = "Patient.id"
* variable.sourceId = "create-response"
* test.id = "Step1-RegisterNewPatient"
* test.name = "RegisterNewPatient"
* test.description = "Create a new patient conformant to the AT Core Patient profile. The server assigns the resource id."
* test.action[0].operation.type = $testscript-operation-codes#create
* test.action[=].operation.resource = #Patient
* test.action[=].operation.description = "POST the Patient fixture to [base]/Patient. The server assigns the resource id."
* test.action[=].operation.accept = #"application/fhir+json"
* test.action[=].operation.contentType = #"application/fhir+json"
* test.action[=].operation.destination = 1
* test.action[=].operation.encodeRequestUrl = true
* test.action[=].operation.origin = 1
// Guarantees the server returns the resource, so the profile assert below has a body to validate.
* test.action[=].operation.requestHeader.field = "Prefer"
* test.action[=].operation.requestHeader.value = "return=representation"
* test.action[=].operation.responseId = "create-response"
* test.action[=].operation.sourceId = "patient-create"
* test.action[+].assert.description = "Confirm that the returned HTTP status is 200(OK) or 201(Created)."
* test.action[=].assert.direction = #response
* test.action[=].assert.operator = #in
* test.action[=].assert.responseCode = "200,201"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.description = "Validate that the returned resource conforms to the HL7 AT Core Patient profile."
* test.action[=].assert.direction = #response
* test.action[=].assert.validateProfileId = "at-core-patient-profile"
* test.action[=].assert.warningOnly = false
