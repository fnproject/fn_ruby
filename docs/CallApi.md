# Fn::CallApi

All URIs are relative to *https://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apps_app_calls_call_get**](CallApi.md#apps_app_calls_call_get) | **GET** /apps/{app}/calls/{call} | Get call information
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

Get app-bound calls can filter to route-bound calls, results returned in created_at, descending order (newest first).

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::CallApi.new

app = "app_example" # String | App name.

opts = { 
  path: "path_example", # String | Route path to match, exact.
  cursor: "cursor_example", # String | Cursor from previous response.next_cursor to begin results after, if any.
  per_page: 56, # Integer | Number of results to return, defaults to 30. Max of 100.
  from_time: 56, # Integer | Unix timestamp in seconds, of call.created_at to begin the results at, default 0.
  to_time: 56 # Integer | Unix timestamp in seconds, of call.created_at to end the results at, defaults to latest.
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
 **path** | **String**| Route path to match, exact. | [optional] 
 **cursor** | **String**| Cursor from previous response.next_cursor to begin results after, if any. | [optional] 
 **per_page** | **Integer**| Number of results to return, defaults to 30. Max of 100. | [optional] 
 **from_time** | **Integer**| Unix timestamp in seconds, of call.created_at to begin the results at, default 0. | [optional] 
 **to_time** | **Integer**| Unix timestamp in seconds, of call.created_at to end the results at, defaults to latest. | [optional] 

### Return type

[**CallsWrapper**](CallsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



