=begin
#fn

#The open source serverless platform.

OpenAPI spec version: 0.2.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module Fn
  class LogApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete call log entry
    # Delete call log entry
    # @param call Call ID.
    # @param app App name.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def apps_app_calls_call_log_delete(call, app, opts = {})
      apps_app_calls_call_log_delete_with_http_info(call, app, opts)
      return nil
    end

    # Delete call log entry
    # Delete call log entry
    # @param call Call ID.
    # @param app App name.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def apps_app_calls_call_log_delete_with_http_info(call, app, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LogApi.apps_app_calls_call_log_delete ..."
      end
      # verify the required parameter 'call' is set
      if @api_client.config.client_side_validation && call.nil?
        fail ArgumentError, "Missing the required parameter 'call' when calling LogApi.apps_app_calls_call_log_delete"
      end
      # verify the required parameter 'app' is set
      if @api_client.config.client_side_validation && app.nil?
        fail ArgumentError, "Missing the required parameter 'app' when calling LogApi.apps_app_calls_call_log_delete"
      end
      # resource path
      local_var_path = "/apps/{app}/calls/{call}/log".sub('{' + 'call' + '}', call.to_s).sub('{' + 'app' + '}', app.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogApi#apps_app_calls_call_log_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: LogApi.apps_app_calls_call_log_get ..."
      end
      # verify the required parameter 'app' is set
      if @api_client.config.client_side_validation && app.nil?
        fail ArgumentError, "Missing the required parameter 'app' when calling LogApi.apps_app_calls_call_log_get"
      end
      # verify the required parameter 'call' is set
      if @api_client.config.client_side_validation && call.nil?
        fail ArgumentError, "Missing the required parameter 'call' when calling LogApi.apps_app_calls_call_log_get"
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
        @api_client.config.logger.debug "API called: LogApi#apps_app_calls_call_log_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
