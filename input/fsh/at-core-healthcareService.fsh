/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for HealthcareService.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCoreHealthcareService
Parent:         HealthcareService
Id:             at-core-HealthcareService
Title:          "HL7® AT Core HealthcareService Profile"
Description:    "HL7® Austria FHIR® Core Profile for healthcare service data in Austria."

* providedBy only Reference(HL7ATCoreOrganization)
* location only Reference(HL7ATCoreLocation)
* coverageArea only Reference(HL7ATCoreLocation)
* specialty from ATFunktionscodeVS (extensible)

CodeSystem: ATFunktionscode
Id: at-funktionscode
Title: "CodeSystem for Austrian Funktionscodes Excerpt"
Description:    "CodeSystem for Austrian Funktionscodes Excerpt"

* ^status = #draft
* ^experimental = true
* ^caseSensitive = true

* #"10119" "Angiographie (IM und Angiologie)"
* #"10914" "Atemphysiologie (IM und Pneumologie)"
* #"11091" "Ergotherapie (IM und Rheumatologie)"
* #"11114" "Rheumatologie"
* #"12217" "Gipszimmer (Unfallchirurgie)"
* #"12391" "Ergotherapie (Orthopädie)"
* #"13113" "Kreißzimmer (Frauenheilkunde und Geburtshilfe)"

ValueSet: ATFunktionscodeVS
Id: at-funktionscode-vs
Title: "ValueSet for Austrian Funktionscodes Excerpt"
Description: "ValueSet for Austrian Funktionscodes Excerpt"

* ^status = #draft
* ^experimental = true

* include codes from system ATFunktionscode

Instance: ExampleHealthcareService
InstanceOf: HL7ATCoreHealthcareService
Usage: #example
Title: "Example HealthcareService with Specialty"
Description: "Example of a healthcare service with an Austrian Funktionscode as specialty."

* active = true
* name = "Rheumatology Service"

* providedBy = Reference(HL7ATCoreOrganizationExample01)
* location = Reference(HL7ATCoreLocationLinz)

* specialty = ATFunktionscode#"11114" "Rheumatologie"