# ApiGeoClient::Commune

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Code INSEE de la commune | [optional] 
**nom** | **String** | Nom de la commune | [optional] 
**codes_postaux** | **Array&lt;String&gt;** | Liste des codes postaux associés à la commune | [optional] 
**code_departement** | **String** | Code du département associé à la commune | [optional] 
**code_region** | **String** | Code de la région associée à la commune | [optional] 
**departement** | [**Departement**](Departement.md) |  | [optional] 
**region** | [**Region**](Region.md) |  | [optional] 
**population** | **Integer** | Population municipale | [optional] 
**surface** | **Float** | Surface de la commune, en mètres-carrés | [optional] 
**centre** | **Object** | Centre de la commune (Point GeoJSON) | [optional] 
**contour** | **Object** | Contour de la commune (Polygon GeoJSON) | [optional] 


