CodeSystem: ProductTypeCS
Id:         prod-type-cs
Title:     "Product Types code system"
Description: "Product Types"
* ^url =  https://medigree.github.io/mpd/CodeSystem/prod-type-cs
* #IDMP_PhP
    "IDMP Pharmaceutical Product"
* #IDMP_MP
    "IDMP Medicinal Product"
* #IDMP_PP
    "IDMP Packaged Medicinal Product"
* #BE_MP
    "Belgian Medicinal Product"
* #BE_VMP "Belgian Virtual Medicinal Product"
  * ^property.code = #template
  * ^property.valueString = "{\"<>\":\"div\",\"id\":\"${synonym}\",\"html\":[{\"<>\":\"table\",\"class\":\"table table-striped table-sm\",\"html\":[{\"<>\":\"thead\",\"html\":[{\"<>\":\"tr\",\"html\":[{\"<>\":\"th\",\"scope\":\"col\",\"html\":\"${resourceType}\"},{\"<>\":\"th\",\"scope\":\"col\",\"html\":\"\"}]}]},{\"<>\":\"tbody\",\"html\":[{\"<>\":\"tr\",\"html\":[{\"<>\":\"td\",\"style\":\"width: 90px;\",\"scope\":\"row\",\"html\":\"Name\"},{\"<>\":\"td\",\"html\":\"${synonym}\"}]},{\"<>\":\"tr\",\"html\":[{\"<>\":\"td\",\"scope\":\"row\",\"html\":\"ID\"},{\"<>\":\"td\",\"html\":\"${id}\"}]},{\"<>\":\"tr\",\"html\":[{\"<>\":\"td\",\"scope\":\"row\",\"html\":\"Status\"},{\"<>\":\"td\",\"html\":\"${status}\"}]}]}]}]}"
* #ePI "ePI"
  * ^property.code = #template
  * ^property.valueString = "{\"<>\":\"div\",\"id\":\"${synonym}\",\"html\":[{\"<>\":\"table\",\"class\":\"table table-striped table-sm\",\"html\":[{\"<>\":\"thead\",\"html\":[{\"<>\":\"tr\",\"html\":[{\"<>\":\"th\",\"scope\":\"col\",\"html\":\"${resourceType}\"},{\"<>\":\"th\",\"scope\":\"col\",\"html\":\"\"}]}]},{\"<>\":\"tbody\",\"html\":[{\"<>\":\"tr\",\"html\":[{\"<>\":\"td\",\"style\":\"width: 90px;\",\"scope\":\"row\",\"html\":\"Name\"},{\"<>\":\"td\",\"html\":\"${synonym}\"}]},{\"<>\":\"tr\",\"html\":[{\"<>\":\"td\",\"scope\":\"row\",\"html\":\"ID\"},{\"<>\":\"td\",\"html\":\"${id}\"}]},{\"<>\":\"tr\",\"html\":[{\"<>\":\"td\",\"scope\":\"row\",\"html\":\"Status\"},{\"<>\":\"td\",\"html\":\"${status}\"}]}]}]}]}"


ValueSet: ProductTypeVS
Id: prod-type-vs
Title: "Product Types Value Set"
Description: "Product Types Value Set."
* ^url =  https://medigree.github.io/mpd/ValueSet/prod-type-cs
* include codes from system ProductTypeCS

