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
* code.coding[PhPID].system = "http://www.edqm.eu/pharmaceutical-product-identifier-type"
* code.coding[Other].system = "http://www.belgium.be/pharmaceutical-ids"

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

