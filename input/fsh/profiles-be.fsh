Profile:     BEIdentifiableProduct
Id:          BEIdentifiableProduct
Parent:      MedicationKnowledge
Title:       "BE Identifiable Product Profile"
Description: "BE Identifiable Product Profile"

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    ID 1..1 MS and
    MPID 0..1 MS and
    PhPID 0..1 MS and
    Other 0..1 MS 
* code.coding[ID].system = "http://www.medigree.net/identifiable-product-identifier-type"
* code.coding[MPID].system = "http://www.medigree.net/medicinal-product-identifier-type"
* code.coding[PhPID].system = "http://www.medigree.net/pharmaceutical-product-identifier-type"

* synonym 1..1 MS //{{name}}
* code.coding[ID].display 1..1 MS //{{identifier}}

* medicineClassification ^slicing.discriminator.type = #pattern
* medicineClassification ^slicing.discriminator.path = "type.coding.system"
* medicineClassification ^slicing.rules = #open
* medicineClassification contains
    atc 1..1 MS //{{atc}}
* medicineClassification[atc].type = #atc
* medicineClassification[atc].classification.coding 1..1
* medicineClassification[atc].classification.coding.system = "http://www.who.no/atc"

* manufacturer MS //{{mkt_auth_holder}}


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
* ingredient.itemCodeableConcept.coding 1..1 MS //{{substance_code}}



* drugCharacteristic ^slicing.discriminator.type = #pattern
* drugCharacteristic ^slicing.discriminator.path = "type"
* drugCharacteristic ^slicing.rules = #open
* drugCharacteristic contains presentationUnit 0..1 MS
* drugCharacteristic[presentationUnit].value[x] only CodeableConcept
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






Instance: amlodipine-5mg-caps2
InstanceOf: BEIdentifiableProduct

* code.coding[ID].code = #id
* code.coding[MPID].code = #mpid
* code.coding[PhPID].code = #phpid

* synonym = "name"
* code.coding[ID].display = "name"

* medicineClassification[atc].classification.coding.code = #A01B01

* manufacturer.identifier.value = "UJ"
//* manufacturer.identifier.display = "manufacturer"

* doseForm.coding[EDQM].code = #edqm_df
* doseForm.coding[Other].code = #other_df


* ingredient[+].strength.numerator = 5.0 http://unitsofmeasure.org#mg "miligrams"
* ingredient[=].strength.denominator = 1 http://unitsofmeasure.org#U

* ingredient.itemCodeableConcept.text = "amlodipine"
* ingredient.itemCodeableConcept.coding.code = #amlodipine




* drugCharacteristic[presentationUnit].valueCodeableConcept
  * coding[EDQM].code = #123
  * coding[other].code = #234


* packaging
  * type = #box
  * quantity.value = 20 


* intendedRoute[EDQM].coding.code = #123
* intendedRoute[Other].coding.code = #234

/*






*/