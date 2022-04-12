### Introduction

> This is the implementation guide for the **Core Profiles (v1.0.0: [STU](https://www.hl7.org/fhir/versions.html) 1)** based on HL7® FHIR® R4. It is a **ballot** implementation guide that is hosted on the [HL7® Austria github project](https://github.com/HL7Austria). The most recent version of this implementation guide can be found at the [HL7® Austria FHIR® Website](http://fhir.at).

This implementation guide is provided to support the use of FHIR® in Austria.

This guide is a working specification. We anticipate that it will be implemented and tested by FHIR® system producers whose feedback will help improve its content. With this standard for trial use, we are looking for feedback on whether the following goals have been met:
- The guide provides guidance on the [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.html).
  - Along with the Patient profile the representation of the common structure of address information within Austrian information systems ([HL7® AT Core Address Profile](StructureDefinition-at-core-address.html)) and the extension to encode the religious confession of a patient (only confessions registered in Austria) ([Patient Religion](StructureDefinition-at-core-ext-patient-religion.html)) has been specified.
- This guide provides a set of sample Code Systems and ValueSets based on FSH files. Note, that Code Systems and ValueSets will generally be made available in a separate IG based on [TerminoloGit](https://gitlab.com/elga-gmbh/termgit).

This implementation guide contains only those profiles and extension where adaptions for Austria were necessary.

### Relation to Austrian EHR (ELGA)

Currently, the Austrian EHR (ELGA) is mainly based on HL7® CDA®. In order to enable the creation of FHIR® resources that have a similar data structure this Implementation Guide provides mappings to the CDA® based implementation guides (e.g. [Mappings for Allgemeiner Implementierungsleitfaden v3](StructureDefinition-at-core-patient-mappings.html#mappings-for-allgemeiner-implementierungsleitfaden-v3-https-wiki)).

### Governance

HL7® Austria is an official Affiliate of HL7® International. Within HL7® Austria the technical committee for FHIR® (TC FHIR®) is responsible to promote and disseminate the new upcoming standard HL7® FHIR®.
The TC FHIR® deals with the standard-compliant and coordinated usage of HL7® FHIR® based communication solutions.
It coordinates and describes necessary localizations and offers concrete help for FHIR®-compliant interfaces.

### License and Legal Terms
HL7®, HEALTH LEVEL SEVEN® and FHIR® are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This Implementation Guide contains and references intellectual property owned by third parties (“Third Party IP”). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.