=begin
#IronFunctions

#The open source serverless platform.

OpenAPI spec version: 0.1.29

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for OracleFunctions::TasksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TasksApi' do
  before do
    # run before each test
    @instance = OracleFunctions::TasksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TasksApi' do
    it 'should create an instance of TasksApi' do
      expect(@instance).to be_instance_of(OracleFunctions::TasksApi)
    end
  end

  # unit tests for tasks_get
  # Get next task.
  # Gets the next task in the queue, ready for processing. Consumers should start processing tasks in order. No other consumer can retrieve this task.
  # @param [Hash] opts the optional parameters
  # @return [TaskWrapper]
  describe 'tasks_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end