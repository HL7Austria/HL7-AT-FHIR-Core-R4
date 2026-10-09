Alias: $testscript-profile-origin-types = http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types
Alias: $testscript-profile-destination-types = http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types
Alias: $testscript-operation-codes = http://terminology.hl7.org/CodeSystem/testscript-operation-codes

Instance: testscript-patient-update-at-core
InstanceOf: TestScript
Title: "HL7® AT Core TestScript - Patient Update"
Description: "TestScript updating an existing patient resource conformant to the AT Core Patient profile on a FHIR Server using the JSON format. The FHIR Client may use any input patient resource, but the script provides an example patient: Andreas Bucher - HL7ATCorePatientUpdateTestExample with an updated PI value of “11-22-33-44”. Expected Result: the server accepts the update of a Patient resource that is conformant to the AT Core Patient profile. Precondition: the target resource already exists on the server; the setup phase establishes this itself by PUTting the fixture to the same id first, so the test can assert a strict 200 regardless of what ran before it. The patientResourceId variable MUST carry the same value as Patient.id inside the fixture body."
Usage: #definition
// TestScript.name must satisfy invariant tst-0 (name.matches('[A-Z]([A-Za-z0-9_]){0,254}')).
* name = "TestScriptATCorePatientUpdate"
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
* fixture.id = "patient-update"
* fixture.autocreate = false
* fixture.autodelete = false
* fixture.resource = Reference(HL7ATCorePatientUpdateTestExample)
* profile.id = "at-core-patient-profile"
* profile = Reference(http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient)
// FHIR R4 update: the body's Patient.id SHALL equal the [id] in the URL, otherwise the
// server returns HTTP 400. The default therefore matches Patient.id of the fixture.
* variable.name = "patientResourceId"
* variable.defaultValue = "HL7ATCorePatientUpdateTestExample"
* variable.description = "Enter the patient FHIR resource id the FHIR Client will send to the FHIR Server. It MUST be identical to Patient.id inside the fixture body, otherwise the server returns HTTP 400 Bad Request (FHIR R4 RESTful 'update' interaction)."
* variable.hint = "[Resource Id]"
// The test below asserts a strict 200, which only holds if the target already exists:
// FHIR 'update as create' answers 201 when it does not. This setup action PUTs the
// fixture to the same id first, so the script no longer depends on whatever ran before
// it (a fresh or reset server previously made the test fail with 201).
* setup.action[0].operation.type = $testscript-operation-codes#update
* setup.action[=].operation.resource = #Patient
* setup.action[=].operation.description = "PUT the Patient fixture to [base]/Patient/${patientResourceId} so the resource exists before the update test runs. This relies on the FHIR 'update as create' interaction and therefore succeeds whether or not the resource was already present on the server. Without it the test operation would create the resource itself and the server would answer 201 instead of 200."
* setup.action[=].operation.accept = #"application/fhir+json"
* setup.action[=].operation.contentType = #"application/fhir+json"
* setup.action[=].operation.destination = 1
* setup.action[=].operation.encodeRequestUrl = true
* setup.action[=].operation.origin = 1
* setup.action[=].operation.params = "/${patientResourceId}"
// Must stay unique across fixture ids, responseIds and requestIds of the whole script.
* setup.action[=].operation.responseId = "setup-response"
* setup.action[=].operation.sourceId = "patient-update"
* setup.action[+].assert.description = "Confirm the server accepted the setup resource: 200(OK) if it already existed, 201(Created) if it was created by this setup action."
* setup.action[=].assert.direction = #response
// Setup accepts either outcome; only the test proper asserts a strict 200.
* setup.action[=].assert.operator = #in
* setup.action[=].assert.responseCode = "200,201"
* setup.action[=].assert.warningOnly = false
* test.id = "Step1-UpdatePatient"
* test.name = "UpdatePatient"
* test.description = "Update a patient resource conformant to the AT Core Patient profile."
* test.action[0].operation.type = $testscript-operation-codes#update
* test.action[=].operation.resource = #Patient
* test.action[=].operation.description = "PUT the Patient fixture to [base]/Patient/${patientResourceId}."
* test.action[=].operation.accept = #"application/fhir+json"
* test.action[=].operation.contentType = #"application/fhir+json"
* test.action[=].operation.destination = 1
* test.action[=].operation.encodeRequestUrl = true
* test.action[=].operation.origin = 1
* test.action[=].operation.params = "/${patientResourceId}"
// Guarantees the server returns the resource, so the profile assert below has a body to validate.
* test.action[=].operation.requestHeader.field = "Prefer"
* test.action[=].operation.requestHeader.value = "return=representation"
* test.action[=].operation.responseId = "update-response"
* test.action[=].operation.sourceId = "patient-update"
* test.action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test.action[=].assert.direction = #response
* test.action[=].assert.operator = #equals
* test.action[=].assert.responseCode = "200"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.description = "Validate that the returned resource conforms to the HL7 AT Core Patient profile."
* test.action[=].assert.direction = #response
* test.action[=].assert.validateProfileId = "at-core-patient-profile"
* test.action[=].assert.warningOnly = false
