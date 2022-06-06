Profile:     BEIdentifiableProduct
Id:          BEIdentifiableProduct
Parent:      MedicationKnowledge
Title:       "BE Identifiable Product Profile"
Description: "BE Identifiable Product Profile"

* code.coding.system 1..1

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Types of identifiers"
* code.coding contains
    ID 1..1 MS and
    MPID 0..1 MS and
    PhPID 0..1 MS 
* code.coding[ID]
  * ^short = "Product identifier"
  * ^definition = "Product identifier"
  * system = "http://www.medigree.net/identifiable-product-identifier-type"
* code.coding[MPID] 
  * ^short = "IDMP Medicinal Product identifier"
  * ^definition = "IDMP Medicinal Product identifier"
  * system = "http://www.medigree.net/medicinal-product-identifier-type"
* code.coding[PhPID]
  * ^short = "IDMP Pharmaceutical Product identifier"
  * ^definition = "IDMP Pharmaceutical Product identifier"
  * system = "http://www.medigree.net/pharmaceutical-product-identifier-type"

* synonym 1..1 MS //{{name}}
* code.coding[ID].display 1..1 MS //{{identifier}}

///////////////////////////////////////////////////
* medicineClassification.type 1..1
* medicineClassification.type.coding.system 1..1
* medicineClassification.classification.coding.system 1..1
* medicineClassification ^slicing.discriminator.type = #pattern
* medicineClassification ^slicing.discriminator.path = "type"
* medicineClassification ^slicing.rules = #open
* medicineClassification ^slicing.description = "Types of classification"
* medicineClassification contains
    atc 1..1 MS //{{atc}}
* medicineClassification[atc].type = http://www.medigree.net/classifications#atc
* medicineClassification[atc] ^short = "ATC Classification"
* medicineClassification[atc] ^definition = "ATC Classification"
* medicineClassification[atc].classification.coding 1..1
* medicineClassification[atc].classification.coding.system = "http://www.who.no/atc"
//////////////////////////////////////////////////////

* manufacturer MS //{{mkt_auth_holder}}


* doseForm.coding.system 1..1
* doseForm.coding ^slicing.discriminator.type = #pattern
* doseForm.coding ^slicing.discriminator.path = "system"
* doseForm.coding ^slicing.rules = #open
* doseForm.coding contains
    EDQM 0..1 MS and
    Other 0..1 MS 
* doseForm.coding[EDQM].system = "http://www.edqm.eu/dose-forms"
* doseForm.coding[Other].system = "http://www.belgium.be/dose-forms"

* ingredient 1..* MS
* ingredient.isActive = true
* ingredient.strength MS 
* ingredient.item[x] only CodeableConcept 
* ingredient.itemCodeableConcept.text MS //{{substance_name}}
//* ingredient.itemCodeableConcept.coding 1..1 MS //{{substance_code}}



* drugCharacteristic.type 1..1
* drugCharacteristic ^slicing.discriminator.type = #pattern
* drugCharacteristic ^slicing.discriminator.path = "type"
* drugCharacteristic ^slicing.rules = #open
* drugCharacteristic contains presentationUnit 0..1 MS
* drugCharacteristic[presentationUnit].value[x] only CodeableConcept
* drugCharacteristic[presentationUnit].type = http://www.medigree.net/drugcharacteristics#presentation-unit
* drugCharacteristic[presentationUnit].valueCodeableConcept
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "system"
  * coding ^slicing.rules = #open
  * coding contains
      EDQM 0..1 MS and
      other 0..1 MS 
  * coding[EDQM].system = "http://www.edqm.eu/presentationunits"
  * coding[other].system = "http://www.belgium.be/presentationunits"



* packaging
  * type MS
  * quantity MS


* intendedRoute MS //{{actual_routes}}
* intendedRoute ^slicing.discriminator.type = #pattern
* intendedRoute ^slicing.discriminator.path = "coding.system"
* intendedRoute ^slicing.rules = #open
* intendedRoute contains
    EDQM 0..1 MS and
    Other 0..1 MS 
* intendedRoute[EDQM].coding.system = "http://www.edqm.eu/routes"
* intendedRoute[Other].coding.system = "http://www.belgium.be/routes"





Instance: be-ampp-148303-02 // {{cti_ext}}
InstanceOf: BEIdentifiableProduct

* code.coding[ID] = #148303-02 "Amlor harde caps. 100 x 10 mg"  // #{{cti_ext}} "{{amppname}}"
//* code.coding[+] = http://medigree.net/be/NamingSystems/samv2-amp_id#1372 // {{samv2_amp_id}} // To do: How to add a slice that is not named
* synonym = "Amlor harde caps. 100 x 10 mg" // "{{amppname}}"
* medicineClassification[atc].classification = #C08CA01 //{{atc}}

//* manufacturer.identifier.value = "Upjohn" // {{marketingauthorisationholder}}
// TO DO: Country code

* manufacturer.display = "Upjohn" // {{marketingauthorisationholder}}
//* manufacturer.identifier = "" // {{marketingauthorisationholder - code}} // TO DO: Belgian ID, but should come from SPOR
* doseForm.coding[EDQM] = #10210000 "Capsule, hard" // #{{edqmid}} "{{edqmform}}" // extension: manufactured or administrable? in the target, should be administrable.
// abbreviated form will be usef e.g. for labels
* doseForm.coding[Other].display = "# harde caps." // {{abbrform_nl}} // WILL CHANGE when there is a BE code
* ingredient[+].strength.numerator = 10 http://unitsofmeasure.org#mg // {{strenght_nominator_value_low_limit}} http://unitsofmeasure.org#{{strengthunitucum}}
* ingredient[=].strength.denominator = 1 http://unitsofmeasure.org#U // {{strenght_denominator_value_low_limit}} http://unitsofmeasure.org#{{strengthdenomunitucum}}
// if not exists, = 1 http://unitsofmeasure.org#U

* ingredient[=].itemCodeableConcept.text = "amlodipine besilaat" // {{basis_substance}} //To confirm // to add code
//* ingredient.itemCodeableConcept.coding.display = #??? //To do
//* drugCharacteristic[presentationUnit].valueCodeableConcept
//  * coding[EDQM] = http://www.edqm.eu/presentationunits#123 // To Do
//  * coding[other].code = #234  // To Do
* packaging
//  * type = #box // To do
  * quantity.value = 20 // {{packdisplayvalue}}

* intendedRoute[EDQM].coding.code = #20053000 // {{edqm_roa_id}}
//* intendedRoute[Other].coding.code = #234 // To do




