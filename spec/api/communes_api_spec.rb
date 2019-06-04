=begin
#API Référentiels géographiques

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0-beta

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.5

=end

require 'spec_helper'
require 'json'

# Unit tests for ApiGeoClient::CommunesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CommunesApi' do
  before do
    # run before each test
    @instance = ApiGeoClient::CommunesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommunesApi' do
    it 'should create an instance of CommunesApi' do
      expect(@instance).to be_instance_of(ApiGeoClient::CommunesApi)
    end
  end

  # unit tests for communes_code_get
  # Récupérer les informations concernant une commune
  # @param code Code INSEE de la commune
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
  # @option opts [String] :format Format de réponse attendu
  # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique
  # @return [Commune]
  describe 'communes_code_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for communes_get
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
  # @return [Array<Commune>]
  describe 'communes_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for departements_code_communes_get
  # Renvoi les communes d&#39;un département
  # @param code Code du département
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
  # @option opts [String] :format Format de réponse attendu
  # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique
  # @return [Commune]
  describe 'departements_code_communes_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
