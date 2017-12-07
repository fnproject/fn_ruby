# Fn::LogApi

All URIs are relative to *https://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apps_app_calls_call_log_get**](LogApi.md#apps_app_calls_call_log_get) | **GET** /apps/{app}/calls/{call}/log | Get call logs


# **apps_app_calls_call_log_get**
> LogWrapper apps_app_calls_call_log_get(app, call)

Get call logs

Get call logs

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::LogApi.new

app = "app_example" # String | App Name

call = "call_example" # String | Call ID.


begin
  #Get call logs
  result = api_instance.apps_app_calls_call_log_get(app, call)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling LogApi->apps_app_calls_call_log_get: #{e}"
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



