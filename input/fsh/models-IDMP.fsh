Logical: IDMPPhPModel
Title: "IDMP Pharmaceutical Product logical model"
Description: "IDMP Pharmaceutical Product logical model"
Parent: Element

* identifier 0..* BackboneElement "Identifiers" "Identifiers"
  * l1_identifier 0..1 Identifier "IDMP PhPID Level 1" "IDMP PhPID Level 1"
  * l2_identifier 0..1 Identifier "IDMP PhPID Level 2" "IDMP PhPID Level 2"
  * l3_identifier 0..1 Identifier "IDMP PhPID Level 3" "IDMP PhPID Level 3"
  * l4_identifier 0..1 Identifier "IDMP PhPID Level 4" "IDMP PhPID Level 4"
    * ^example.label = "(illustrative)"
    * ^example.valueString = "0x073AF2E5B92AE19E8B67635AFFB3D6CA"
* ingredient 1..* BackboneElement "Ingredient(s) that are part of the product, with therapeutical usage or not" "Ingredient(s) that are part of the product, with therapeutical usage or not"
  * substance 1..1 CodeableConcept "Codification of the substance" "Codification of the substance"
    * ^example.label = "(illustrative)"
    * ^example.valueString = "Amlodipine Besilate"
  * strength 1..1 BackboneElement "Authorized strength of the substance" "Authorized strength of the substance"
    * strengthValue 1..1 BackboneElement "Strength of the substance in this product" "Strength of the substance in this product"
      * numerator 1..1 SimpleQuantity "Strength numerator" "Strength numerator"
        * ^example.label = "(illustrative)"
        * ^example.valueString = "5 mg"
      * denominator 1..1 SimpleQuantity "Strength denominator" "Strength denominator"
    * boss 1..1 code "base | base-modifier | ref-substance" "basis of substance strength" 
      * ^comment = "not needed from countries, will be looked up by substance"
      * ^binding.valueSet = Canonical(BoSSVS)
      * ^binding.strength = #required
    * pattern 1..1 code "oral-solid | injectable" "oral-solid | injectable"
      * ^comment = "not needed from countries, will be looked up by dose form"
      * ^binding.valueSet = Canonical(PatternVS)
      * ^binding.strength = #required
    * concentration_presentation 1..1 code "concentration | presentation" "concentration | presentation"
      * ^comment = "not needed from countries, will be looked up by dose form"
      * ^binding.valueSet = Canonical(ConcPresVS)
      * ^binding.strength = #required
    * unit_of_presentation 0..1 CodeableConcept "unit of presentation if strength is by presentation" "unit of presentation is strength is by presentation"
      * ^comment = "not needed from countries, will be looked up by dose form"
      * ^example.label = "(edqm)"
      * ^example.valueString = "10210000 capsule, hard"
  * doseForm 1..1 CodeableConcept "Authorized Dose Form" "Authorized Dose Form"
    * ^example.label = "(edqm)"
    * ^example.valueString = "10210000 capsule, hard"


//  * role 1..1 CodeableConcept "Role the substance has in this product (active principle, excipient, ...)" "Role the substance has in this product (active principle, excipient, ...)"
//* routeOfAdministration 1..* CodeableConcept "The approved route of administration" "The approved route of administration"

CodeSystem: BoSSCS
Id:         BoSS-cs
Title:     "BoSS - Basis of Substance Strength options Code System"
* #base "Base" "The strength corresponds to the strength of the base substance"
* #base-modifier "Base and modifier" "The strength corresponds to the strength of the modifier"
* #ref-substance "Reference Substance" "The strength corresponds to the associated reference substance"

ValueSet: BoSSVS
Id: BoSS-vs
Title: "BoSS - Basis of Substance Strength options"
* include codes from system BoSSCS


CodeSystem: PatternCS
Id:         Pattern-cs
Title:     "Presentation pattern Code System"
* #oral-solid "Oral Solid" "Oral Solid"
* #injectable "Injectable" "Injectable"

ValueSet: PatternVS
Id: Pattern-vs
Title: "Presentation pattern Value Set"
* include codes from system PatternCS



CodeSystem: ConcPresCS
Id:         ConcPres-cs
Title:     "Concentration or Presentation Code System"
* #concentration "Concentration" "Concentration"
* #presentation "Presentation" "Presentation"

ValueSet: ConcPresVS
Id: ConcPres-vs
Title: "Concentration or Presentation Value Set"
* include codes from system ConcPresCS
