# Fn::AppsApi

All URIs are relative to *https://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apps_app_delete**](AppsApi.md#apps_app_delete) | **DELETE** /apps/{app} | Delete an app.
[**apps_app_get**](AppsApi.md#apps_app_get) | **GET** /apps/{app} | Get information for a app.
[**apps_app_patch**](AppsApi.md#apps_app_patch) | **PATCH** /apps/{app} | Updates an app.
[**apps_get**](AppsApi.md#apps_get) | **GET** /apps | Get all app names.
[**apps_post**](AppsApi.md#apps_post) | **POST** /apps | Post new app


# **apps_app_delete**
> apps_app_delete(app)

Delete an app.

Delete an app.

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::AppsApi.new

app = "app_example" # String | Name of the app.


begin
  #Delete an app.
  api_instance.apps_app_delete(app)
rescue Fn::ApiError => e
  puts "Exception when calling AppsApi->apps_app_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| Name of the app. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_app_get**
> AppWrapper apps_app_get(app)

Get information for a app.

This gives more details about a app, such as statistics.

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::AppsApi.new

app = "app_example" # String | name of the app.


begin
  #Get information for a app.
  result = api_instance.apps_app_get(app)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling AppsApi->apps_app_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| name of the app. | 

### Return type

[**AppWrapper**](AppWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_app_patch**
> AppWrapper apps_app_patch(app, body)

Updates an app.

You can set app level settings here. 

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::AppsApi.new

app = "app_example" # String | name of the app.

body = Fn::AppWrapper.new # AppWrapper | App to post.


begin
  #Updates an app.
  result = api_instance.apps_app_patch(app, body)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling AppsApi->apps_app_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| name of the app. | 
 **body** | [**AppWrapper**](AppWrapper.md)| App to post. | 

### Return type

[**AppWrapper**](AppWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_get**
> AppsWrapper apps_get(opts)

Get all app names.

Get a list of all the apps in the system, returned in alphabetical order.

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::AppsApi.new

opts = { 
  cursor: "cursor_example", # String | Cursor from previous response.next_cursor to begin results after, if any.
  per_page: 56 # Integer | Number of results to return, defaults to 30. Max of 100.
}

begin
  #Get all app names.
  result = api_instance.apps_get(opts)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling AppsApi->apps_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **String**| Cursor from previous response.next_cursor to begin results after, if any. | [optional] 
 **per_page** | **Integer**| Number of results to return, defaults to 30. Max of 100. | [optional] 

### Return type

[**AppsWrapper**](AppsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_post**
> AppWrapper apps_post(body)

Post new app

Insert a new app

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::AppsApi.new

body = Fn::AppWrapper.new # AppWrapper | App to post.


begin
  #Post new app
  result = api_instance.apps_post(body)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling AppsApi->apps_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AppWrapper**](AppWrapper.md)| App to post. | 

### Return type

[**AppWrapper**](AppWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



