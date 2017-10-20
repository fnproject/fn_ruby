=begin
#fn

#The open source serverless platform.

OpenAPI spec version: 0.2.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for Fn::AppsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AppsApi' do
  before do
    # run before each test
    @instance = Fn::AppsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AppsApi' do
    it 'should create an instance of AppsApi' do
      expect(@instance).to be_instance_of(Fn::AppsApi)
    end
  end

  # unit tests for apps_app_delete
  # Delete an app.
  # Delete an app.
  # @param app Name of the app.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'apps_app_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for apps_app_get
  # Get information for a app.
  # This gives more details about a app, such as statistics.
  # @param app name of the app.
  # @param [Hash] opts the optional parameters
  # @return [AppWrapper]
  describe 'apps_app_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for apps_app_patch
  # Updates an app.
  # You can set app level settings here. 
  # @param app name of the app.
  # @param body App to post.
  # @param [Hash] opts the optional parameters
  # @return [AppWrapper]
  describe 'apps_app_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for apps_get
  # Get all app names.
  # Get a list of all the apps in the system, returned in alphabetical order.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor Cursor from previous response.next_cursor to begin results after, if any.
  # @option opts [Integer] :per_page Number of results to return, defaults to 30. Max of 100.
  # @return [AppsWrapper]
  describe 'apps_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for apps_post
  # Post new app
  # Insert a new app
  # @param body App to post.
  # @param [Hash] opts the optional parameters
  # @return [AppWrapper]
  describe 'apps_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
