# ApiGeoClient::RgionsApi

All URIs are relative to *https://geo.api.gouv.fr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**regions_code_departements_get**](RgionsApi.md#regions_code_departements_get) | **GET** /regions/{code}/departements | Renvoi les départements d&#39;une région
[**regions_code_get**](RgionsApi.md#regions_code_get) | **GET** /regions/{code} | Récupérer les informations concernant une région
[**regions_get**](RgionsApi.md#regions_get) | **GET** /regions | Recherche des régions


# **regions_code_departements_get**
> Departement regions_code_departements_get(code, opts)

Renvoi les départements d'une région

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::RgionsApi.new

code = 'code_example' # String | Code de la région

opts = { 
  fields: ['[\"nom\",\"code\"]'] # Array<String> | Liste des champs souhaités dans la réponse
}

begin
  #Renvoi les départements d'une région
  result = api_instance.regions_code_departements_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling RgionsApi->regions_code_departements_get: #{e}"
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



# **regions_code_get**
> Departement regions_code_get(code, opts)

Récupérer les informations concernant une région

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::RgionsApi.new

code = 'code_example' # String | Code de la région

opts = { 
  fields: ['[\"nom\",\"code\"]'] # Array<String> | Liste des champs souhaités dans la réponse
}

begin
  #Récupérer les informations concernant une région
  result = api_instance.regions_code_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling RgionsApi->regions_code_get: #{e}"
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



# **regions_get**
> Array&lt;Region&gt; regions_get(opts)

Recherche des régions

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::RgionsApi.new

opts = { 
  code: 'code_example', # String | Code de la région
  nom: 'nom_example', # String | Nom de la région
  fields: ['[\"nom\",\"code\"]'] # Array<String> | Liste des champs souhaités dans la réponse
}

begin
  #Recherche des régions
  result = api_instance.regions_get(opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling RgionsApi->regions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code de la région | [optional] 
 **nom** | **String**| Nom de la région | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] [default to [&quot;nom&quot;,&quot;code&quot;]]

### Return type

[**Array&lt;Region&gt;**](Region.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



