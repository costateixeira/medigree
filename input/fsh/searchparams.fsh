Instance: sp-phpid
InstanceOf: SearchParameter
Usage: #definition
* url = "https://medigree.github.io/mpd/SearchParameter/sp-phpid"
* name = "PhPID-SEARCH-PARAMETER"
* status = #active
* experimental = true
* date = "2013-10-23"
* publisher = "Health Level Seven International"
* contact.name = "[string]"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/fhir"
* description = "Search by phpid"
* jurisdiction = urn:iso:std:iso:3166#BE
* purpose = "Search by PhP identifier"
* code = #phpid
* base = #MedicationKnowledge
* type = #token
* expression = "MedicationKnowledge.code.coding.where(system='https://www.who-umc.org/phpid')"
* xpath = "f:MedicationKnowledge/f:code"
//to do: search only with a given identifier
* xpathUsage = #normal


Instance: sp-prod-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://medigree.github.io/mpd/SearchParameter/sp-prod-type"
* name = "PRODUCT-TYPE-SEARCH-PARAMETER"
* status = #active
* experimental = true
* date = "2022-05-05"
* description = "Search by product type"
* jurisdiction = urn:iso:std:iso:3166#BE
* purpose = "Search by Product type"
* code = #prod-type
* base = #MedicationKnowledge
* type = #token
* expression = "MedicationKnowledge.productType"
* xpath = "f:MedicationKnowledge/f:productType"
* xpathUsage = #normal


Instance: sp-meta-tag
InstanceOf: SearchParameter
Usage: #definition
* url = "https://medigree.github.io/mpd/SearchParameter/sp-meta-tag"
* name = "META-TAG-SEARCH-PARAMETER"
* status = #active
* experimental = true
* date = "2022-05-05"
* description = "Search by meta tag_"
* jurisdiction = urn:iso:std:iso:3166#BE
* purpose = "Search by Meta tag"
* code = #meta
* base = #Resource
* type = #token
* expression = "Resource.meta.tag"
* xpath = "f:Resource/f:meta/f:tag"
* xpathUsage = #normal

