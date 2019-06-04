# ApiGeoClient::DpartementsApi

All URIs are relative to *https://geo.api.gouv.fr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**departements_code_communes_get**](DpartementsApi.md#departements_code_communes_get) | **GET** /departements/{code}/communes | Renvoi les communes d&#39;un département
[**departements_code_get**](DpartementsApi.md#departements_code_get) | **GET** /departements/{code} | Récupérer les informations concernant un département
[**departements_get**](DpartementsApi.md#departements_get) | **GET** /departements | Recherche des départements
[**regions_code_departements_get**](DpartementsApi.md#regions_code_departements_get) | **GET** /regions/{code}/departements | Renvoi les départements d&#39;une région


# **departements_code_communes_get**
> Commune departements_code_communes_get(code, opts)

Renvoi les communes d'un département

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::DpartementsApi.new

code = 'code_example' # String | Code du département

opts = { 
  fields: ['[\"nom\",\"code\",\"codesPostaux\",\"codeDepartement\",\"codeRegion\",\"population\"]'], # Array<String> | Liste des champs souhaités dans la réponse
  format: 'json', # String | Format de réponse attendu
  geometry: 'centre' # String | Géométrie à utiliser pour la sortie géographique
}

begin
  #Renvoi les communes d'un département
  result = api_instance.departements_code_communes_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling DpartementsApi->departements_code_communes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code du département | 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] [default to [&quot;nom&quot;,&quot;code&quot;,&quot;codesPostaux&quot;,&quot;codeDepartement&quot;,&quot;codeRegion&quot;,&quot;population&quot;]]
 **format** | **String**| Format de réponse attendu | [optional] [default to json]
 **geometry** | **String**| Géométrie à utiliser pour la sortie géographique | [optional] [default to centre]

### Return type

[**Commune**](Commune.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **departements_code_get**
> Departement departements_code_get(code, opts)

Récupérer les informations concernant un département

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::DpartementsApi.new

code = 'code_example' # String | Code du département

opts = { 
  fields: ['[\"nom\",\"code\",\"codeRegion\"]'] # Array<String> | Liste des champs souhaités dans la réponse
}

begin
  #Récupérer les informations concernant un département
  result = api_instance.departements_code_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling DpartementsApi->departements_code_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code du département | 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] [default to [&quot;nom&quot;,&quot;code&quot;,&quot;codeRegion&quot;]]

### Return type

[**Departement**](Departement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **departements_get**
> Array&lt;Departement&gt; departements_get(opts)

Recherche des départements

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::DpartementsApi.new

opts = { 
  code: 'code_example', # String | Code du département
  code_region: 'code_region_example', # String | Code région associé
  nom: 'nom_example', # String | Nom du département
  fields: ['[\"nom\",\"code\",\"codeRegion\"]'] # Array<String> | Liste des champs souhaités dans la réponse
}

begin
  #Recherche des départements
  result = api_instance.departements_get(opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling DpartementsApi->departements_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code du département | [optional] 
 **code_region** | **String**| Code région associé | [optional] 
 **nom** | **String**| Nom du département | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] [default to [&quot;nom&quot;,&quot;code&quot;,&quot;codeRegion&quot;]]

### Return type

[**Array&lt;Departement&gt;**](Departement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **regions_code_departements_get**
> Departement regions_code_departements_get(code, opts)

Renvoi les départements d'une région

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::DpartementsApi.new

code = 'code_example' # String | Code de la région

opts = { 
  fields: ['[\"nom\",\"code\"]'] # Array<String> | Liste des champs souhaités dans la réponse
}

begin
  #Renvoi les départements d'une région
  result = api_instance.regions_code_departements_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling DpartementsApi->regions_code_departements_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code de la région | 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] [default to [&quot;nom&quot;,&quot;code&quot;]]

### Return type

[**Departement**](Departement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



