/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for documenting the date of last synchronization of the
#             locally stored value sets for usage by the content creating system 
#             with the terminology server.
# Created by: HL7® Austria, TC FHIR® 
##############################################################################*/

Extension:    CompositionTerminologyDate
Id:           at-core-ext-composition-terminologyDate
Title:        "Composition Terminology Date" 
Description:  """HL7® Austria FHIR® Core Extension for documenting the date of last synchronization of the locally stored value sets for usage by the content creating system with the terminology server.

Only intended for representing `hl7at:terminologyDate` when transforming CDA documents to FHIR; must not be used in FHIR-native applications.
"""
Context:      Composition
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #deprecated
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status-reason"
* ^extension[=].valueCode.extension.valueMarkdown = "This extension must not be used within FHIR native applications. Its only valid usage is when transforming a CDA document to FHIR in order to capture the `hl7at:terminologyDate`."

* . ^short = "Date of last value set synchronization with the terminology server"

* extension 0..0
* value[x] only date
* value[x] 1..1
