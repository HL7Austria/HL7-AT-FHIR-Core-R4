### Introduction

> This is the implementation guide for the **Core Profiles (v1.1.0: [STU](https://www.hl7.org/fhir/versions.html) 2)** based on HL7® FHIR® R4. It is a **ballot** implementation guide that is hosted on the [HL7® Austria github project](https://github.com/HL7Austria). The most recent version of this implementation guide can be found at the [HL7® Austria FHIR® Website](http://fhir.at).

This implementation guide is provided to support the use of FHIR® in Austria.

This guide is a working specification. We anticipate that it will be implemented and tested by FHIR® system producers whose feedback will help improve its content. With this standard for trial use, we are looking for feedback on whether the following goals have been met:
- The HL7® Austria FHIR® Core Implementation Guide (IG) covers administrative resources, like Patient, Organization, Practitioner, etc. that can be used on their own with no specific functional requirements for usage or they can be used for other more functional FHIR® IGs in Austria via dependencies. It contains only those Profiles and Extension where adaptions for Austria are necessary.

- This guide defines the minimum constraints on the FHIR resources to create the Austrian Core Profiles. 
- It contains guidance on the [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.html).
  - Along with the Patient profile the representation of the common structure of address information within Austrian information systems ([HL7® AT Core Address Profile](StructureDefinition-at-core-address.html)) and the extension to encode the religious confession of a patient (only confessions registered in Austria) ([Patient Religion](StructureDefinition-at-core-ext-patient-religion.html)) has been specified.
- Furthermore the codes for gender were extended to allow the usage of all official genders in Austria.
- It defines the requirements for Organization, Practitioner or PractitionerRole to carry information specific to Austria (e.g. identifiers).
- This guide contains no Code Systems or Value Sets on its own. Note, that Code Systems and Value Sets that are used in the various Profiles or Extensions of this guide will generally be made available via a separate IG on the [Austrian Terminology Server](https://termgit.elga.gv.at/) based on [TerminoloGit](https://gitlab.com/elga-gmbh/termgit).
  - It does contain an Extension and a Profile for the Value Set Resource, that allows to add the OID of Code System that is used within the Value Set, not just the URL reference.
  - This profile is already used by the Austrian Terminology Server.

**Download**: You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### Relation to Austrian EHR System (ELGA)

Currently, the Austrian EHR system (ELGA) is mainly based on HL7® CDA®. In order to enable the creation of FHIR® resources that have a similar data structure this Implementation Guide provides mappings to the CDA® based implementation guides (e.g. [Mappings for Allgemeiner Implementierungsleitfaden v3](StructureDefinition-at-core-patient-mappings.html#mappings-for-allgemeiner-implementierungsleitfaden-v3-https-wiki)).
Furthermore ELGA is using the HL7 Austria FHIR Core IG as a basis for their FHIR® Implementation guides.

### Dependencies
This guide is based on the <a href="{{site.data.fhir.path}}">FHIR R4</a> specification.  In addition, this guide also relies on a number of parent implementation guides:

{% include dependency-table-short.xhtml %}

### Governance

HL7® Austria is an official Affiliate of HL7® International. Within HL7® Austria the technical committee for FHIR® (TC FHIR®) is responsible to promote and disseminate the new upcoming standard HL7® FHIR®.
The TC FHIR® deals with the standard-compliant and coordinated usage of HL7® FHIR® based communication solutions.
It coordinates and describes necessary localizations and offers concrete help for FHIR®-compliant interfaces.

### License and Legal Terms
HL7®, HEALTH LEVEL SEVEN® and FHIR® are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This Implementation Guide contains and references intellectual property owned by third parties (“Third Party IP”). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.
