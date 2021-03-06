=begin
#fn

#The open source serverless platform.

OpenAPI spec version: 0.2.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Fn::Log
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Log' do
  before do
    # run before each test
    @instance = Fn::Log.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Log' do
    it 'should create an instance of Log' do
      expect(@instance).to be_instance_of(Fn::Log)
    end
  end
  describe 'test attribute "call_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "log"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

