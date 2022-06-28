{% assign skips = "y,Y,x,X" | split: "," %}
{% for row in data %}
{% unless skips contains row.skip  %}
Instance: be-ampp-{{ row.cti_ext }}
//Instance: be-ampp-x
InstanceOf: BEIdentifiableProduct
Title:   "{{ row.amppname }}"
Usage:        #example
* id = "be-ampp-{{ row.cti_ext }}"
* code.coding[ID] = #{{ row.cti_ext }} "{{ row.amppname }}"
* code.coding[1] = http://be-identifiers/samv2-amp_id#{{ row.samv2_amp_id }} "{{ row.medicinal_product_name }}"
//* code.coding[PhPID].code = #phpid
* synonym = "{{ row.amppname }}"
* medicineClassification[atc].classification = #{{ row.atc }}
* manufacturer.identifier.value = "{{ row.marketingauthorisationholder }}"
//* manufacturer.identifier.display = "manufacturer"
* doseForm.coding[EDQM].code = #{{ row.edqmid }} "{{ row.edqmform }}"
//* doseForm.coding[Other].code = #other_df
* ingredient[+].strength.numerator = {{ row.strenght_nominator_value_low_limit }} http://unitsofmeasure.org#{{ row.strengthunitucum }}
* ingredient[=].strength.denominator = 1 http://unitsofmeasure.org#U
* ingredient.itemCodeableConcept.text = "{{ row.basis_substance }}"
//* ingredient.itemCodeableConcept.coding.code = #amlodipine
//* drugCharacteristic[presentationUnit].valueCodeableConcept
//  * coding[EDQM] = http://www.edqm.eu/presentationunits#123
//  * coding[other].code = #234
* packaging
//  * type = #box
  * quantity.value = {{ row.packdisplayvalue }} 
* intendedRoute[EDQM].coding = #{{ row.edqm_roa_id }}
//* intendedRoute[Other].coding.code = #234
{% endunless %}
{% endfor %}
