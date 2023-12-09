
Usage of the European Health Insurance Card (EHIC):
- In most information systems in Austria, the EHIC information is captured and communicated in a structured way and not just as an additional identifier for the patient.
- HL7 Europe has already started to create a FHIR IG for the EHIC as a combination of the Coverage Resource with existing identifiers of a Patient (the identifier part of the EHIC information is different for each European country, hence it has to be addressed this way)
- The current draft of this FHIR IG can be found [here](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-Coverage-eu-ehic.html)  
- As soon as it is balloted and finished, HL7 Austria will incorperate it accordingly in to its HL7 AT FHIR Core IG.