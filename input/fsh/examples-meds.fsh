Instance: med-amlor
InstanceOf: Medication
* code = #123
* form = DoseFormOntologyCS#10220000


Instance: MedPrescription
InstanceOf: MedicationRequest
* medicationReference = Reference(med-amlor)
* status = #active
* intent = #order
* subject.identifier.system = "http://patientids.org"
* subject.identifier.value = "P09123873847"

