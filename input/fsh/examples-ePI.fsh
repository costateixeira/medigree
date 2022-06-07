/*
Instance: EPI-humalog
InstanceOf: MedicationKnowledge
Usage: #example
* extension.url = "http://example.org/StructureDefinition/MedicationKnowledgeDomain"
* extension.valueCodeableConcept = http://snomed.info/sct#278412004 "Human"
* code.coding[0] = https://www.who-umc.org/phpid#0x073AF2E5B92AE19E8B67635AFFB3D6CA
* code.coding[+] = http://snomed.info/sct#13884911000001102
* status = #active
* manufacturer = Reference(Organization/Organization-uv-epi)
* doseForm = http://snomed.info/sct#385220007 "Suspension for injection"
* amount = 3 'mL'
* synonym = "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* productType[+] = http://snomed.info/sct#767102007 "Chemical Medicinal Product"
* productType[+] = ProductTypeCS#IDMP_MP "IDMPMedicinalProduct"

* ingredient[0].extension[0].url = "http://example.org/StructureDefinition/MedicationKnowledgeRole"
* ingredient[=].extension[=].valueCodeableConcept = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB "active ingredient - basis of strength"
* ingredient[=].extension[+].url = "http://example.org/StructureDefinition/MedicationKnowledgeIngredientManufacturer"
* ingredient[=].extension[=].valueReference = Reference(Org1)
* ingredient[=].itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta#GFX7QIS1II "Insulin lispro"
* ingredient[=].strength.numerator = 100 'units/ml'
* ingredient[+].extension[0].url = "http://example.org/StructureDefinition/MedicationKnowledgeRole"
* ingredient[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/ingredient-role/#100000072082 "Excipient"
* ingredient[=].extension[+].url = "http://example.org/StructureDefinition/MedicationKnowledgeIngredientManufacturer"
* ingredient[=].extension[=].valueReference = Reference(Org1)
* ingredient[=].itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta#PDC6A3C0OX "Glycerin"
* ingredient[+].extension[0].url = "http://example.org/StructureDefinition/MedicationKnowledgeRole"
* ingredient[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/ingredient-role/#100000072082 "Excipient"
* ingredient[=].extension[+].url = "http://example.org/StructureDefinition/MedicationKnowledgeIngredientManufacturer"
* ingredient[=].extension[=].valueReference = Reference(Org1)
* ingredient[=].itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta#QTT17582CB "Hydrochloric acid"
* ingredient[+].extension[0].url = "http://example.org/StructureDefinition/MedicationKnowledgeRole"
* ingredient[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/ingredient-role/#100000072082 "Excipient"
* ingredient[=].extension[+].url = "http://example.org/StructureDefinition/MedicationKnowledgeIngredientManufacturer"
* ingredient[=].extension[=].valueReference = Reference(Org1)
* ingredient[=].itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta#55X04QC32I "Sodium Hydroxide"
* ingredient[+].extension[0].url = "http://example.org/StructureDefinition/MedicationKnowledgeRole"
* ingredient[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/ingredient-role/#100000072082 "Excipient"
* ingredient[=].extension[+].url = "http://example.org/StructureDefinition/MedicationKnowledgeIngredientManufacturer"
* ingredient[=].extension[=].valueReference = Reference(Org1)
* ingredient[=].itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta#059QF0KO0R "Water for Injection"
* ingredient[+].extension[0].url = "http://example.org/StructureDefinition/MedicationKnowledgeRole"
* ingredient[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/ingredient-role/#100000072082 "Excipient"
* ingredient[=].extension[+].url = "http://example.org/StructureDefinition/MedicationKnowledgeIngredientManufacturer"
* ingredient[=].extension[=].valueReference = Reference(Org1)
* ingredient[=].itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta#SOI2LOH54Z "Zinc Oxide"
* ingredient[+].extension[0].url = "http://example.org/StructureDefinition/MedicationKnowledgeRole"
* ingredient[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/ingredient-role/#100000072082 "Excipient"
* ingredient[=].extension[+].url = "http://example.org/StructureDefinition/MedicationKnowledgeIngredientManufacturer"
* ingredient[=].extension[=].valueReference = Reference(Org1)
* ingredient[=].itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta#GGO4Y809LO "Metacresol"
* ingredient[+].extension[0].url = "http://example.org/StructureDefinition/MedicationKnowledgeRole"
* ingredient[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/ingredient-role/#100000072082 "Excipient"
* ingredient[=].extension[+].url = "http://example.org/StructureDefinition/MedicationKnowledgeIngredientManufacturer"
* ingredient[=].extension[=].valueReference = Reference(Org1)
* ingredient[=].itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta#023C2WHX2V "Tromethamine"
* intendedRoute = http://snomed.info/sct#34206005 "Subcutaneous use"
* packaging.type = http://snomed.info/sct#3318611000001103 "Pre-filled disposable injection"
* packaging.quantity = 5 'units'
* drugCharacteristic[0].type = http://example.org/CodeSystem/epi-leaflet-cs#packageleaflet
* drugCharacteristic[+].type = http://example.org/CodeSystem/epi-leaflet-cs#whatisinleaflet
* drugCharacteristic[+].type = http://example.org/CodeSystem/epi-leaflet-cs#usage
* drugCharacteristic[+].type = http://example.org/CodeSystem/epi-leaflet-cs#previousknowledge
* drugCharacteristic[+].type = http://example.org/CodeSystem/epi-leaflet-cs#howtouse
* drugCharacteristic[+].type = http://example.org/CodeSystem/epi-leaflet-cs#sideeffects
* drugCharacteristic[+].type = http://example.org/CodeSystem/epi-leaflet-cs#storageinstructions
* drugCharacteristic[+].type = http://example.org/CodeSystem/epi-leaflet-cs#contentspack

*/