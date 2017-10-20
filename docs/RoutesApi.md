# Fn::RoutesApi

All URIs are relative to *https://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apps_app_routes_get**](RoutesApi.md#apps_app_routes_get) | **GET** /apps/{app}/routes | Get route list by app name.
[**apps_app_routes_post**](RoutesApi.md#apps_app_routes_post) | **POST** /apps/{app}/routes | Create new Route
[**apps_app_routes_route_delete**](RoutesApi.md#apps_app_routes_route_delete) | **DELETE** /apps/{app}/routes/{route} | Deletes the route
[**apps_app_routes_route_get**](RoutesApi.md#apps_app_routes_route_get) | **GET** /apps/{app}/routes/{route} | Gets route by name
[**apps_app_routes_route_patch**](RoutesApi.md#apps_app_routes_route_patch) | **PATCH** /apps/{app}/routes/{route} | Update a Route, Fails if the route or app does not exist. Accepts partial updates / skips validation of zero values.
[**apps_app_routes_route_put**](RoutesApi.md#apps_app_routes_route_put) | **PUT** /apps/{app}/routes/{route} | Create a Route if it does not exist. Update if it does. Will also create app if it does not exist. Put does not skip validation of zero values


# **apps_app_routes_get**
> RoutesWrapper apps_app_routes_get(app, opts)

Get route list by app name.

This will list routes for a particular app, returned in alphabetical order.

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::RoutesApi.new

app = "app_example" # String | Name of app for this set of routes.

opts = { 
  image: "image_example", # String | Route image to match, exact.
  cursor: "cursor_example", # String | Cursor from previous response.next_cursor to begin results after, if any.
  per_page: 56 # Integer | Number of results to return, defaults to 30. Max of 100.
}

begin
  #Get route list by app name.
  result = api_instance.apps_app_routes_get(app, opts)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling RoutesApi->apps_app_routes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| Name of app for this set of routes. | 
 **image** | **String**| Route image to match, exact. | [optional] 
 **cursor** | **String**| Cursor from previous response.next_cursor to begin results after, if any. | [optional] 
 **per_page** | **Integer**| Number of results to return, defaults to 30. Max of 100. | [optional] 

### Return type

[**RoutesWrapper**](RoutesWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_app_routes_post**
> RouteWrapper apps_app_routes_post(app, body)

Create new Route

Create a new route in an app, if app doesn't exists, it creates the app. Post does not skip validation of zero values.

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::RoutesApi.new

app = "app_example" # String | name of the app.

body = Fn::RouteWrapper.new # RouteWrapper | One route to post.


begin
  #Create new Route
  result = api_instance.apps_app_routes_post(app, body)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling RoutesApi->apps_app_routes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| name of the app. | 
 **body** | [**RouteWrapper**](RouteWrapper.md)| One route to post. | 

### Return type

[**RouteWrapper**](RouteWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_app_routes_route_delete**
> apps_app_routes_route_delete(app, route)

Deletes the route

Deletes the route.

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::RoutesApi.new

app = "app_example" # String | Name of app for this set of routes.

route = "route_example" # String | Route name


begin
  #Deletes the route
  api_instance.apps_app_routes_route_delete(app, route)
rescue Fn::ApiError => e
  puts "Exception when calling RoutesApi->apps_app_routes_route_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| Name of app for this set of routes. | 
 **route** | **String**| Route name | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_app_routes_route_get**
> RouteWrapper apps_app_routes_route_get(app, route)

Gets route by name

Gets a route by name.

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::RoutesApi.new

app = "app_example" # String | Name of app for this set of routes.

route = "route_example" # String | Route name


begin
  #Gets route by name
  result = api_instance.apps_app_routes_route_get(app, route)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling RoutesApi->apps_app_routes_route_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| Name of app for this set of routes. | 
 **route** | **String**| Route name | 

### Return type

[**RouteWrapper**](RouteWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_app_routes_route_patch**
> RouteWrapper apps_app_routes_route_patch(app, route, body)

Update a Route, Fails if the route or app does not exist. Accepts partial updates / skips validation of zero values.

Update a route

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::RoutesApi.new

app = "app_example" # String | name of the app.

route = "route_example" # String | route path.

body = Fn::RouteWrapper.new # RouteWrapper | One route to post.


begin
  #Update a Route, Fails if the route or app does not exist. Accepts partial updates / skips validation of zero values.
  result = api_instance.apps_app_routes_route_patch(app, route, body)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling RoutesApi->apps_app_routes_route_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| name of the app. | 
 **route** | **String**| route path. | 
 **body** | [**RouteWrapper**](RouteWrapper.md)| One route to post. | 

### Return type

[**RouteWrapper**](RouteWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apps_app_routes_route_put**
> RouteWrapper apps_app_routes_route_put(app, route, body)

Create a Route if it does not exist. Update if it does. Will also create app if it does not exist. Put does not skip validation of zero values

Update or Create a route

### Example
```ruby
# load the gem
require 'fn_ruby'

api_instance = Fn::RoutesApi.new

app = "app_example" # String | name of the app.

route = "route_example" # String | route path.

body = Fn::RouteWrapper.new # RouteWrapper | One route to post.


begin
  #Create a Route if it does not exist. Update if it does. Will also create app if it does not exist. Put does not skip validation of zero values
  result = api_instance.apps_app_routes_route_put(app, route, body)
  p result
rescue Fn::ApiError => e
  puts "Exception when calling RoutesApi->apps_app_routes_route_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | **String**| name of the app. | 
 **route** | **String**| route path. | 
 **body** | [**RouteWrapper**](RouteWrapper.md)| One route to post. | 

### Return type

[**RouteWrapper**](RouteWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



