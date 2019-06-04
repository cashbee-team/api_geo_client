=begin
#API Référentiels géographiques

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0-beta

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.5

=end

require 'uri'

module ApiGeoClient
  class DpartementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Renvoi les communes d'un département
    # @param code Code du département
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse (default to ["nom","code","codesPostaux","codeDepartement","codeRegion","population"])
    # @option opts [String] :format Format de réponse attendu (default to json)
    # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique (default to centre)
    # @return [Commune]
    def departements_code_communes_get(code, opts = {})
      data, _status_code, _headers = departements_code_communes_get_with_http_info(code, opts)
      data
    end

    # Renvoi les communes d&#39;un département
    # @param code Code du département
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
    # @option opts [String] :format Format de réponse attendu
    # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique
    # @return [Array<(Commune, Fixnum, Hash)>] Commune data, response status code and response headers
    def departements_code_communes_get_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DpartementsApi.departements_code_communes_get ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling DpartementsApi.departements_code_communes_get"
      end
      if @api_client.config.client_side_validation && opts[:'fields'] && !opts[:'fields'].all? { |item| ['nom', 'code', 'codesPostaux', 'centre', 'surface', 'contour', 'codeDepartement', 'departement', 'codeRegion', 'region', 'population'].include?(item) }
        fail ArgumentError, 'invalid value for "fields", must include one of nom, code, codesPostaux, centre, surface, contour, codeDepartement, departement, codeRegion, region, population'
      end
      if @api_client.config.client_side_validation && opts[:'format'] && !['json', 'geojson'].include?(opts[:'format'])
        fail ArgumentError, 'invalid value for "format", must be one of json, geojson'
      end
      if @api_client.config.client_side_validation && opts[:'geometry'] && !['centre', 'contour'].include?(opts[:'geometry'])
        fail ArgumentError, 'invalid value for "geometry", must be one of centre, contour'
      end
      # resource path
      local_var_path = '/departements/{code}/communes'.sub('{' + 'code' + '}', code.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'geometry'] = opts[:'geometry'] if !opts[:'geometry'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Commune')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DpartementsApi#departements_code_communes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Récupérer les informations concernant un département
    # @param code Code du département
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse (default to ["nom","code","codeRegion"])
    # @return [Departement]
    def departements_code_get(code, opts = {})
      data, _status_code, _headers = departements_code_get_with_http_info(code, opts)
      data
    end

    # Récupérer les informations concernant un département
    # @param code Code du département
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
    # @return [Array<(Departement, Fixnum, Hash)>] Departement data, response status code and response headers
    def departements_code_get_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DpartementsApi.departements_code_get ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling DpartementsApi.departements_code_get"
      end
      if @api_client.config.client_side_validation && opts[:'fields'] && !opts[:'fields'].all? { |item| ['nom', 'code', 'codeRegion', 'region'].include?(item) }
        fail ArgumentError, 'invalid value for "fields", must include one of nom, code, codeRegion, region'
      end
      # resource path
      local_var_path = '/departements/{code}'.sub('{' + 'code' + '}', code.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Departement')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DpartementsApi#departements_code_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Recherche des départements
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code Code du département
    # @option opts [String] :code_region Code région associé
    # @option opts [String] :nom Nom du département
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse (default to ["nom","code","codeRegion"])
    # @return [Array<Departement>]
    def departements_get(opts = {})
      data, _status_code, _headers = departements_get_with_http_info(opts)
      data
    end

    # Recherche des départements
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code Code du département
    # @option opts [String] :code_region Code région associé
    # @option opts [String] :nom Nom du département
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
    # @return [Array<(Array<Departement>, Fixnum, Hash)>] Array<Departement> data, response status code and response headers
    def departements_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DpartementsApi.departements_get ...'
      end
      if @api_client.config.client_side_validation && opts[:'fields'] && !opts[:'fields'].all? { |item| ['nom', 'code', 'codeRegion', 'region'].include?(item) }
        fail ArgumentError, 'invalid value for "fields", must include one of nom, code, codeRegion, region'
      end
      # resource path
      local_var_path = '/departements'

      # query parameters
      query_params = {}
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?
      query_params[:'codeRegion'] = opts[:'code_region'] if !opts[:'code_region'].nil?
      query_params[:'nom'] = opts[:'nom'] if !opts[:'nom'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Departement>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DpartementsApi#departements_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Renvoi les départements d'une région
    # @param code Code de la région
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse (default to ["nom","code"])
    # @return [Departement]
    def regions_code_departements_get(code, opts = {})
      data, _status_code, _headers = regions_code_departements_get_with_http_info(code, opts)
      data
    end

    # Renvoi les départements d&#39;une région
    # @param code Code de la région
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
    # @return [Array<(Departement, Fixnum, Hash)>] Departement data, response status code and response headers
    def regions_code_departements_get_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DpartementsApi.regions_code_departements_get ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling DpartementsApi.regions_code_departements_get"
      end
      if @api_client.config.client_side_validation && opts[:'fields'] && !opts[:'fields'].all? { |item| ['nom', 'code'].include?(item) }
        fail ArgumentError, 'invalid value for "fields", must include one of nom, code'
      end
      # resource path
      local_var_path = '/regions/{code}/departements'.sub('{' + 'code' + '}', code.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Departement')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DpartementsApi#regions_code_departements_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end