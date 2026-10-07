The goal of this profile is to represent the demographic data of patients in the Austrian healthcare domain.
Organizations and persons providing healthcare services in Austria are commonly called “Gesundheitsdienstleistungsanbieter (GDA)” (in English: Healthcare Service Provider). This German abbreviation is therefore used throughout this profile where it is relevant.
Austrian patients are usually identified with one or more of the following identifiers:
- The “Sozialversicherungsnummer (SVNR)” which is the Austrian social security number provided by the Federation of Austrian Social Insurances (Dachverband der österreichischen Sozialversicherungsträger).
- A “Bereichsspezifisches Personenkennzeichen (bPK)” which is a sector-specific personal identifier used in Austrian e-Government processes and provided by the Federal Ministry of the Interior (Bundesministerium für Inneres).
- A local patient identifier which is assigned by a GDA (e.g. the patient ID of a hospital information system) and is only unique within the namespace of that GDA.

The identifiers are distinguished by the identifier type code of the HL7 v2 table 0203: “SS” (Social Security number) for the SVNR, “NI” (National unique individual identifier) for the bPK and “PI” (Patient internal identifier) for the local patient identifier. Further identifier types can be found in the [HL7 AT Patient Identifier](https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier) value set.
