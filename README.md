# fn_ruby

Fn - the Ruby gem for the fn

The open source serverless platform.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.2.2
- Package version: 0.2.2
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build fn_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./fn_ruby-0.2.2.gem
```
(for development, run `gem install --dev ./fn_ruby-0.2.2.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'fn_ruby', '~> 0.2.2'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'fn_ruby', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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

## Documentation for API Endpoints

All URIs are relative to *https://127.0.0.1:8080/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Fn::AppsApi* | [**apps_app_delete**](docs/AppsApi.md#apps_app_delete) | **DELETE** /apps/{app} | Delete an app.
*Fn::AppsApi* | [**apps_app_get**](docs/AppsApi.md#apps_app_get) | **GET** /apps/{app} | Get information for a app.
*Fn::AppsApi* | [**apps_app_patch**](docs/AppsApi.md#apps_app_patch) | **PATCH** /apps/{app} | Updates an app.
*Fn::AppsApi* | [**apps_get**](docs/AppsApi.md#apps_get) | **GET** /apps | Get all app names.
*Fn::AppsApi* | [**apps_post**](docs/AppsApi.md#apps_post) | **POST** /apps | Post new app
*Fn::CallApi* | [**apps_app_calls_call_get**](docs/CallApi.md#apps_app_calls_call_get) | **GET** /apps/{app}/calls/{call} | Get call information
*Fn::CallApi* | [**apps_app_calls_call_log_get**](docs/CallApi.md#apps_app_calls_call_log_get) | **GET** /apps/{app}/calls/{call}/log | Get call logs
*Fn::CallApi* | [**apps_app_calls_get**](docs/CallApi.md#apps_app_calls_get) | **GET** /apps/{app}/calls | Get app-bound calls.
*Fn::LogApi* | [**apps_app_calls_call_log_get**](docs/LogApi.md#apps_app_calls_call_log_get) | **GET** /apps/{app}/calls/{call}/log | Get call logs
*Fn::RoutesApi* | [**apps_app_routes_get**](docs/RoutesApi.md#apps_app_routes_get) | **GET** /apps/{app}/routes | Get route list by app name.
*Fn::RoutesApi* | [**apps_app_routes_post**](docs/RoutesApi.md#apps_app_routes_post) | **POST** /apps/{app}/routes | Create new Route
*Fn::RoutesApi* | [**apps_app_routes_route_delete**](docs/RoutesApi.md#apps_app_routes_route_delete) | **DELETE** /apps/{app}/routes/{route} | Deletes the route
*Fn::RoutesApi* | [**apps_app_routes_route_get**](docs/RoutesApi.md#apps_app_routes_route_get) | **GET** /apps/{app}/routes/{route} | Gets route by name
*Fn::RoutesApi* | [**apps_app_routes_route_patch**](docs/RoutesApi.md#apps_app_routes_route_patch) | **PATCH** /apps/{app}/routes/{route} | Update a Route, Fails if the route or app does not exist. Accepts partial updates / skips validation of zero values.
*Fn::RoutesApi* | [**apps_app_routes_route_put**](docs/RoutesApi.md#apps_app_routes_route_put) | **PUT** /apps/{app}/routes/{route} | Create a Route if it does not exist. Update if it does. Will also create app if it does not exist. Put does not skip validation of zero values


## Documentation for Models

 - [Fn::App](docs/App.md)
 - [Fn::AppWrapper](docs/AppWrapper.md)
 - [Fn::AppsWrapper](docs/AppsWrapper.md)
 - [Fn::Call](docs/Call.md)
 - [Fn::CallWrapper](docs/CallWrapper.md)
 - [Fn::CallsWrapper](docs/CallsWrapper.md)
 - [Fn::Error](docs/Error.md)
 - [Fn::ErrorBody](docs/ErrorBody.md)
 - [Fn::Log](docs/Log.md)
 - [Fn::LogWrapper](docs/LogWrapper.md)
 - [Fn::Route](docs/Route.md)
 - [Fn::RouteWrapper](docs/RouteWrapper.md)
 - [Fn::RoutesWrapper](docs/RoutesWrapper.md)
 - [Fn::Stat](docs/Stat.md)
 - [Fn::StatMetrics](docs/StatMetrics.md)
 - [Fn::Version](docs/Version.md)


## Documentation for Authorization

 All endpoints do not require authorization.

