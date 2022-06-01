Profile:     PharmaceuticalProduct
Id:          PharmaceuticalProduct
Parent:      MedicationKnowledge
Title:       "Pharmaceutical Product Profile"
Description: "Pharmaceutical Product Profile"

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    PhPID 0..1 MS and
    Other 0..1 MS 
* code.coding[PhPID].system = "http://www.example.org/pharmaceutical-product-identifier-type"

* doseForm.coding ^slicing.discriminator.type = #pattern
* doseForm.coding ^slicing.discriminator.path = "system"
* doseForm.coding ^slicing.rules = #open
* doseForm.coding contains
    EDQM 0..1 MS and
    Other 0..1 MS 
* doseForm.coding[EDQM].system = "http://www.edqm.eu/dose-forms"
* doseForm.coding[Other].system = "http://www.belgium.be/dose-forms"
* synonym 1..1 MS
* ingredient 1..* MS

* intendedRoute ^slicing.discriminator.type = #pattern
* intendedRoute ^slicing.discriminator.path = "coding.system"
* intendedRoute ^slicing.rules = #open
* intendedRoute contains
    EDQM 0..1 MS and
    Other 0..1 MS 
* intendedRoute[EDQM].coding.system = "http://www.edqm.eu/routes"
* intendedRoute[Other].coding.system = "http://www.belgium.be/routes"


Profile:     IDMPPharmaceuticalProduct
Id:          IDMPPharmaceuticalProduct
Parent:      MedicationKnowledge
Title:       "Pharmaceutical Product Profile"
Description: "Pharmaceutical Product Profile"

* code.text 1..1
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    PhPIDL4 1..1 MS 
* code.coding[PhPIDL4].system = "http://www.example.org/pharmaceutical-product-identifier-type"

* doseForm.coding ^slicing.discriminator.type = #pattern
* doseForm.coding ^slicing.discriminator.path = "system"
* doseForm.coding ^slicing.rules = #open
* doseForm.coding contains
    EDQM 1..1 MS  
* doseForm.coding[EDQM].system = "http://www.edqm.eu/dose-forms"

* intendedRoute ^slicing.discriminator.type = #pattern
* intendedRoute ^slicing.discriminator.path = "coding.system"
* intendedRoute ^slicing.rules = #open
* intendedRoute contains
    EDQM 1..1 MS 
* intendedRoute[EDQM].coding.system = "http://www.edqm.eu/routes"

* ingredient 1..* MS
  * strength
    * extension contains
        BoSS named boss 1..1 MS and
        StrengthPattern named pattern 1..1 MS and
        ConcentrationPresentation named concentration_presentation 1..1 MS and
        UnitOfPresentation named unit_presentation 0..1 MS


Extension: BoSS
Description: "Basis of Substance Strength."
* value[x] only code
* valueCode from BoSSVS (required)

Extension: StrengthPattern
Description: "Pattern for Strength."
* value[x] only code
* valueCode from PatternVS (required)

Extension: ConcentrationPresentation
Description: "Pattern for Concentration or Presentation."
* value[x] only code
* valueCode from ConcPresVS (required)

Extension: UnitOfPresentation
Description: "Unit of Presentation."
* value[x] only code
