# Fn::CallApi

All URIs are relative to *https://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apps_app_calls_call_get**](CallApi.md#apps_app_calls_call_get) | **GET** /apps/{app}/calls/{call} | Get call information
[**apps_app_calls_call_log_delete**](CallApi.md#apps_app_calls_call_log_delete) | **DELETE** /apps/{app}/calls/{call}/log | Delete call log entry
[**apps_app_calls_call_log_get**](CallApi.md#apps_app_calls_call_log_get) | **GET** /apps/{app}/calls/{call}/log | Get call logs
[**apps_app_calls_get**](CallApi.md#apps_app_calls_get) | **GET** /apps/{app}/calls | Get app-bound calls.


# **apps_app_calls_call_get**
> CallWrapper apps_app_calls_call_get(app, call)

Get call information

Get call information

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::CallApi.new

app = "app_example" # String | app name

call = "call_example" # String | Call ID.


begin
  #Get call information
  result = api_instance.apps_app_calls_call_get(app, call)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling CallApi->apps_app_calls_call_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| app name | 
 **call** | **String**| Call ID. | 

### Return type

[**CallWrapper**](CallWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_app_calls_call_log_delete**
> apps_app_calls_call_log_delete(call, app)

Delete call log entry

Delete call log entry

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::CallApi.new

call = "call_example" # String | Call ID.

app = "app_example" # String | App name.


begin
  #Delete call log entry
  api_instance.apps_app_calls_call_log_delete(call, app)
rescue Fn::ApiError => e
  puts "Exception when calling CallApi->apps_app_calls_call_log_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call** | **String**| Call ID. | 
 **app** | **String**| App name. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_app_calls_call_log_get**
> LogWrapper apps_app_calls_call_log_get(app, call)

Get call logs

Get call logs

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::CallApi.new

app = "app_example" # String | App Name

call = "call_example" # String | Call ID.


begin
  #Get call logs
  result = api_instance.apps_app_calls_call_log_get(app, call)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling CallApi->apps_app_calls_call_log_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| App Name | 
 **call** | **String**| Call ID. | 

### Return type

[**LogWrapper**](LogWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_app_calls_get**
> CallsWrapper apps_app_calls_get(app, opts)

Get app-bound calls.

Get app-bound calls can filter to route-bound calls.

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::CallApi.new

app = "app_example" # String | App name.

opts = { 
  route: "route_example" # String | App route.
}

begin
  #Get app-bound calls.
  result = api_instance.apps_app_calls_get(app, opts)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling CallApi->apps_app_calls_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| App name. | 
 **route** | **String**| App route. | [optional] 

### Return type

[**CallsWrapper**](CallsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



