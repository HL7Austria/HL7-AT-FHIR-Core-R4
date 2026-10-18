
/*##############################################################################
# Type:       FSH-File for an FHIR® Example
# About:      Gynecological ultrasound service at the fictional
#             Frauenmedizin Sonnenfeld group practice.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Instance:    HealthcareServiceUltraschall
InstanceOf:  HL7ATCoreHealthcareService
Description: "Example of a gynecological ultrasound service offered by the fictional Frauenmedizin Sonnenfeld private medical group practice."
Usage:       #example

* active = true
* name = "Gynäkologische Ultraschalldiagnostik"

* providedBy = Reference(OrganizationGruppenpraxisFrauenmedizinSonnenfeld)

// Service classification
* category[+].coding[+] = http://terminology.hl7.org/CodeSystem/service-category#28 "Specialist Obstetrics & Gynecology"

* type[+].coding[+] = http://terminology.hl7.org/CodeSystem/service-type#213 "Obstetric/Gynaecological Ultrasound"
* type[=].text = "Gynäkologische Ultraschalldiagnostik"

* specialty[+] = http://snomed.info/sct#394585009 "Obstetrics and gynecology"


// Regular availability – Monday and Wednesday
* availableTime[+].daysOfWeek[+] = #mon
* availableTime[=].daysOfWeek[+] = #wed
* availableTime[=].availableStartTime = "08:00:00"
* availableTime[=].availableEndTime = "12:00:00"

// Additional appointment times – Thursday
* availableTime[+].daysOfWeek[+] = #thu
* availableTime[=].availableStartTime = "14:00:00"
* availableTime[=].availableEndTime = "17:00:00"
