Instance: med-amlor
InstanceOf: Medication
Title: "Medication - Amlor Harde Caps"
* code = #123
* form = DoseFormOntologyCS#10220000


Instance: MedPrescription
InstanceOf: MedicationRequest
Title: "Prescription - Amlor 1x day for 30 days"
* medicationReference = Reference(med-amlor)
* status = #active
* intent = #order
* subject.identifier.system = "http://patientids.org"
* subject.identifier.value = "P09123873847"

