=begin
#fn

#The open source serverless platform.

OpenAPI spec version: 0.2.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module Fn
  class CallApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get call information
    # Get call information
    # @param app app name
    # @param call Call ID.
    # @param [Hash] opts the optional parameters
    # @return [CallWrapper]
    def apps_app_calls_call_get(app, call, opts = {})
      data, _status_code, _headers = apps_app_calls_call_get_with_http_info(app, call, opts)
      return data
    end

    # Get call information
    # Get call information
    # @param app app name
    # @param call Call ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallWrapper, Fixnum, Hash)>] CallWrapper data, response status code and response headers
    def apps_app_calls_call_get_with_http_info(app, call, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CallApi.apps_app_calls_call_get ..."
      end
      # verify the required parameter 'app' is set
      if @api_client.config.client_side_validation && app.nil?
        fail ArgumentError, "Missing the required parameter 'app' when calling CallApi.apps_app_calls_call_get"
      end
      # verify the required parameter 'call' is set
      if @api_client.config.client_side_validation && call.nil?
        fail ArgumentError, "Missing the required parameter 'call' when calling CallApi.apps_app_calls_call_get"
      end
      # resource path
      local_var_path = "/apps/{app}/calls/{call}".sub('{' + 'app' + '}', app.to_s).sub('{' + 'call' + '}', call.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'CallWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallApi#apps_app_calls_call_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get call logs
    # Get call logs
    # @param app App Name
    # @param call Call ID.
    # @param [Hash] opts the optional parameters
    # @return [LogWrapper]
    def apps_app_calls_call_log_get(app, call, opts = {})
      data, _status_code, _headers = apps_app_calls_call_log_get_with_http_info(app, call, opts)
      return data
    end

    # Get call logs
    # Get call logs
    # @param app App Name
    # @param call Call ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogWrapper, Fixnum, Hash)>] LogWrapper data, response status code and response headers
    def apps_app_calls_call_log_get_with_http_info(app, call, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CallApi.apps_app_calls_call_log_get ..."
      end
      # verify the required parameter 'app' is set
      if @api_client.config.client_side_validation && app.nil?
        fail ArgumentError, "Missing the required parameter 'app' when calling CallApi.apps_app_calls_call_log_get"
      end
      # verify the required parameter 'call' is set
      if @api_client.config.client_side_validation && call.nil?
        fail ArgumentError, "Missing the required parameter 'call' when calling CallApi.apps_app_calls_call_log_get"
      end
      # resource path
      local_var_path = "/apps/{app}/calls/{call}/log".sub('{' + 'app' + '}', app.to_s).sub('{' + 'call' + '}', call.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'LogWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallApi#apps_app_calls_call_log_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get app-bound calls.
    # Get app-bound calls can filter to route-bound calls, results returned in created_at, descending order (newest first).
    # @param app App name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :path Route path to match, exact.
    # @option opts [String] :cursor Cursor from previous response.next_cursor to begin results after, if any.
    # @option opts [Integer] :per_page Number of results to return, defaults to 30. Max of 100.
    # @option opts [Integer] :from_time Unix timestamp in seconds, of call.created_at to begin the results at, default 0.
    # @option opts [Integer] :to_time Unix timestamp in seconds, of call.created_at to end the results at, defaults to latest.
    # @return [CallsWrapper]
    def apps_app_calls_get(app, opts = {})
      data, _status_code, _headers = apps_app_calls_get_with_http_info(app, opts)
      return data
    end

    # Get app-bound calls.
    # Get app-bound calls can filter to route-bound calls, results returned in created_at, descending order (newest first).
    # @param app App name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :path Route path to match, exact.
    # @option opts [String] :cursor Cursor from previous response.next_cursor to begin results after, if any.
    # @option opts [Integer] :per_page Number of results to return, defaults to 30. Max of 100.
    # @option opts [Integer] :from_time Unix timestamp in seconds, of call.created_at to begin the results at, default 0.
    # @option opts [Integer] :to_time Unix timestamp in seconds, of call.created_at to end the results at, defaults to latest.
    # @return [Array<(CallsWrapper, Fixnum, Hash)>] CallsWrapper data, response status code and response headers
    def apps_app_calls_get_with_http_info(app, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CallApi.apps_app_calls_get ..."
      end
      # verify the required parameter 'app' is set
      if @api_client.config.client_side_validation && app.nil?
        fail ArgumentError, "Missing the required parameter 'app' when calling CallApi.apps_app_calls_get"
      end
      # resource path
      local_var_path = "/apps/{app}/calls".sub('{' + 'app' + '}', app.to_s)

      # query parameters
      query_params = {}
      query_params[:'path'] = opts[:'path'] if !opts[:'path'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'from_time'] = opts[:'from_time'] if !opts[:'from_time'].nil?
      query_params[:'to_time'] = opts[:'to_time'] if !opts[:'to_time'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'CallsWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallApi#apps_app_calls_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
