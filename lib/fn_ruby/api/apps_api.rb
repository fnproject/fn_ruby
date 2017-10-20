=begin
#fn

#The open source serverless platform.

OpenAPI spec version: 0.2.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module Fn
  class AppsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete an app.
    # Delete an app.
    # @param app Name of the app.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def apps_app_delete(app, opts = {})
      apps_app_delete_with_http_info(app, opts)
      return nil
    end

    # Delete an app.
    # Delete an app.
    # @param app Name of the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def apps_app_delete_with_http_info(app, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppsApi.apps_app_delete ..."
      end
      # verify the required parameter 'app' is set
      if @api_client.config.client_side_validation && app.nil?
        fail ArgumentError, "Missing the required parameter 'app' when calling AppsApi.apps_app_delete"
      end
      # resource path
      local_var_path = "/apps/{app}".sub('{' + 'app' + '}', app.to_s)

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
        @api_client.config.logger.debug "API called: AppsApi#apps_app_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information for a app.
    # This gives more details about a app, such as statistics.
    # @param app name of the app.
    # @param [Hash] opts the optional parameters
    # @return [AppWrapper]
    def apps_app_get(app, opts = {})
      data, _status_code, _headers = apps_app_get_with_http_info(app, opts)
      return data
    end

    # Get information for a app.
    # This gives more details about a app, such as statistics.
    # @param app name of the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppWrapper, Fixnum, Hash)>] AppWrapper data, response status code and response headers
    def apps_app_get_with_http_info(app, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppsApi.apps_app_get ..."
      end
      # verify the required parameter 'app' is set
      if @api_client.config.client_side_validation && app.nil?
        fail ArgumentError, "Missing the required parameter 'app' when calling AppsApi.apps_app_get"
      end
      # resource path
      local_var_path = "/apps/{app}".sub('{' + 'app' + '}', app.to_s)

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
        :return_type => 'AppWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#apps_app_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an app.
    # You can set app level settings here. 
    # @param app name of the app.
    # @param body App to post.
    # @param [Hash] opts the optional parameters
    # @return [AppWrapper]
    def apps_app_patch(app, body, opts = {})
      data, _status_code, _headers = apps_app_patch_with_http_info(app, body, opts)
      return data
    end

    # Updates an app.
    # You can set app level settings here. 
    # @param app name of the app.
    # @param body App to post.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppWrapper, Fixnum, Hash)>] AppWrapper data, response status code and response headers
    def apps_app_patch_with_http_info(app, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppsApi.apps_app_patch ..."
      end
      # verify the required parameter 'app' is set
      if @api_client.config.client_side_validation && app.nil?
        fail ArgumentError, "Missing the required parameter 'app' when calling AppsApi.apps_app_patch"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AppsApi.apps_app_patch"
      end
      # resource path
      local_var_path = "/apps/{app}".sub('{' + 'app' + '}', app.to_s)

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#apps_app_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all app names.
    # Get a list of all the apps in the system, returned in alphabetical order.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Cursor from previous response.next_cursor to begin results after, if any.
    # @option opts [Integer] :per_page Number of results to return, defaults to 30. Max of 100.
    # @return [AppsWrapper]
    def apps_get(opts = {})
      data, _status_code, _headers = apps_get_with_http_info(opts)
      return data
    end

    # Get all app names.
    # Get a list of all the apps in the system, returned in alphabetical order.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Cursor from previous response.next_cursor to begin results after, if any.
    # @option opts [Integer] :per_page Number of results to return, defaults to 30. Max of 100.
    # @return [Array<(AppsWrapper, Fixnum, Hash)>] AppsWrapper data, response status code and response headers
    def apps_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppsApi.apps_get ..."
      end
      # resource path
      local_var_path = "/apps"

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

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
        :return_type => 'AppsWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#apps_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Post new app
    # Insert a new app
    # @param body App to post.
    # @param [Hash] opts the optional parameters
    # @return [AppWrapper]
    def apps_post(body, opts = {})
      data, _status_code, _headers = apps_post_with_http_info(body, opts)
      return data
    end

    # Post new app
    # Insert a new app
    # @param body App to post.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppWrapper, Fixnum, Hash)>] AppWrapper data, response status code and response headers
    def apps_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppsApi.apps_post ..."
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AppsApi.apps_post"
      end
      # resource path
      local_var_path = "/apps"

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#apps_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
