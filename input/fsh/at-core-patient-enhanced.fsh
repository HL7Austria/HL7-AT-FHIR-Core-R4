/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for Patient.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCorePatientEnhanced
Parent:         HL7ATCorePatient
Id:             at-core-patient-enhanced
Title:          "HL7® AT Core Patient Profile"
Description:    "HL7® Austria FHIR® Core Profile for patient data in Austria.
The HL7® AT Core Patient is based upon the core FHIR® Patient Resource and designed to meet the applicable patient demographic data elements in Austria. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the resource when using this profile. Note, this extension represents the common structure of Patient information within Austrian information systems."

// * identifier

// * identifier[vbPK] contains vbPKGH 1..1 and vbPKSV 1..1
* identifier contains vbPKGH 1..1 and vbPKSV 1..1
// * identifier[vbPK][vbPKGH] 1..1
// * identifier[vbPK][vbPKSV] 1..1
* identifier[vbPK].system from TestValueSet (required)
* identifier[vbPKGH].system =  "urn:oid:1.2.40.0.34.4.22.1" (exactly)
* identifier[vbPKGH].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[vbPKGH].type.coding.code = #ANON (exactly)
* identifier[vbPKSV].system =  "urn:oid:1.2.40.0.34.4.22.2" (exactly)
* identifier[vbPKSV].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[vbPKSV].type.coding.code = #ANON (exactly)

ValueSet: TestValueSet
Title: "vbPK ValueSet"
Description: "ValueSet für die vbPKs"
* ^experimental = true
// * urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.1 "vbPK GH oid"
// * urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.2 "vbPK SV oid"
* urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.3 "vbPK AS oid"

Instance: PatientExample01
InstanceOf: HL7ATCorePatientEnhanced
Description: "An example of a patient 01 with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"
* gender = #male
* birthDate = 1968-07-07
* identifier[vbPKGH].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" 
* identifier[vbPKGH].type.coding.code = #ANON
* identifier[vbPKGH].system = "urn:oid:1.2.40.0.34.4.22.1"
* identifier[vbPKGH].value = "qX4/Mf2bMeop0/8tjHqS+OWox03/TViPmP6DoB+Z/h2gDtMQE99xuBhfzyCy6jXgVEbuFGIqYSU1qxMeReQd4bbJzhekXvcrFAAn6mO1ZClokZnmRekidHI6bHnmR0cQjUywgHjnpbGJIzqBOOXmdFEi2mZ59yKKdMW7yfwQviAsWWx"
* identifier[vbPKSV].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" 
* identifier[vbPKSV].type.coding.code = #ANON
* identifier[vbPKSV].system = "urn:oid:1.2.40.0.34.4.22.2"
* identifier[vbPKSV].value = "12345qX4/Mf2bMeop0/8tjHqS+OWox03/TViPmP6DoB+Z/h2gDtMQE99xuBhfzyCy6jXgVEbuFGIqYSU1qxMeReQd4bbJzhekXvcrFAAn6mO1ZClokZnmRekidHI6bHnmR0cQjUywgHjnpbGJIzqBOOXmdFEi2mZ59yKKdMW7yfwQviAsWWx"

