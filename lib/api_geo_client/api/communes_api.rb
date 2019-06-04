=begin
#API Référentiels géographiques

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0-beta

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.5

=end

require 'uri'

module ApiGeoClient
  class CommunesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Récupérer les informations concernant une commune
    # @param code Code INSEE de la commune
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse (default to ["nom","code","codesPostaux","codeDepartement","codeRegion","population"])
    # @option opts [String] :format Format de réponse attendu (default to json)
    # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique (default to centre)
    # @return [Commune]
    def communes_code_get(code, opts = {})
      data, _status_code, _headers = communes_code_get_with_http_info(code, opts)
      data
    end

    # Récupérer les informations concernant une commune
    # @param code Code INSEE de la commune
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
    # @option opts [String] :format Format de réponse attendu
    # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique
    # @return [Array<(Commune, Fixnum, Hash)>] Commune data, response status code and response headers
    def communes_code_get_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunesApi.communes_code_get ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling CommunesApi.communes_code_get"
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
      local_var_path = '/communes/{code}'.sub('{' + 'code' + '}', code.to_s)

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
        @api_client.config.logger.debug "API called: CommunesApi#communes_code_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Recherche des communes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code_postal Code postal associé
    # @option opts [Float] :lat Latitude (en degrés)
    # @option opts [Float] :lon Longitude (en degrés)
    # @option opts [String] :nom Nom de la commune
    # @option opts [String] :boost Mode de boost de la recherche par nom
    # @option opts [String] :code Code de la commune
    # @option opts [String] :code_departement Code du département associé
    # @option opts [String] :code_region Code de la région associée
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse (default to ["nom","code","codesPostaux","codeDepartement","codeRegion","population"])
    # @option opts [String] :format Format de réponse attendu (default to json)
    # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique (default to centre)
    # @return [Array<Commune>]
    def communes_get(opts = {})
      data, _status_code, _headers = communes_get_with_http_info(opts)
      data
    end

    # Recherche des communes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code_postal Code postal associé
    # @option opts [Float] :lat Latitude (en degrés)
    # @option opts [Float] :lon Longitude (en degrés)
    # @option opts [String] :nom Nom de la commune
    # @option opts [String] :boost Mode de boost de la recherche par nom
    # @option opts [String] :code Code de la commune
    # @option opts [String] :code_departement Code du département associé
    # @option opts [String] :code_region Code de la région associée
    # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
    # @option opts [String] :format Format de réponse attendu
    # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique
    # @return [Array<(Array<Commune>, Fixnum, Hash)>] Array<Commune> data, response status code and response headers
    def communes_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunesApi.communes_get ...'
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
      local_var_path = '/communes'

      # query parameters
      query_params = {}
      query_params[:'codePostal'] = opts[:'code_postal'] if !opts[:'code_postal'].nil?
      query_params[:'lat'] = opts[:'lat'] if !opts[:'lat'].nil?
      query_params[:'lon'] = opts[:'lon'] if !opts[:'lon'].nil?
      query_params[:'nom'] = opts[:'nom'] if !opts[:'nom'].nil?
      query_params[:'boost'] = opts[:'boost'] if !opts[:'boost'].nil?
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?
      query_params[:'codeDepartement'] = opts[:'code_departement'] if !opts[:'code_departement'].nil?
      query_params[:'codeRegion'] = opts[:'code_region'] if !opts[:'code_region'].nil?
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
        :return_type => 'Array<Commune>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunesApi#communes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
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
        @api_client.config.logger.debug 'Calling API: CommunesApi.departements_code_communes_get ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling CommunesApi.departements_code_communes_get"
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
        @api_client.config.logger.debug "API called: CommunesApi#departements_code_communes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
