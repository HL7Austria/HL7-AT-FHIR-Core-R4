
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Midwifery consultation service offered in cooperation
#             with the fictional Frauenmedizin Sonnenfeld group practice.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    HealthcareServiceHebammenberatung
InstanceOf:  HL7ATCoreHealthcareService
Description: "Example of a midwifery consultation service provided by a freelance midwife in cooperation with the fictional Frauenmedizin Sonnenfeld group practice."
Usage:       #example

* active = true
* name = "Hebammensprechstunde – Schwangerschaft und Wochenbett"

* providedBy = Reference(OrganizationGruppenpraxisFrauenmedizinSonnenfeld)

// Service classification
* category[+] = http://terminology.hl7.org/CodeSystem/service-category#8 "Counselling"
* type[+].coding[+] = http://terminology.hl7.org/CodeSystem/service-type#482 "Obstetrics"
* specialty[+] = http://snomed.info/sct#408470005 "Obstetrics"


// Regular availability – Wednesday afternoon
* availableTime[+].daysOfWeek = #wed
* availableTime[=].availableStartTime = "13:00:00"
* availableTime[=].availableEndTime = "17:00:00"

// Additional consultation – Friday
* availableTime[+].daysOfWeek = #fri
* availableTime[=].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "12:00:00"
