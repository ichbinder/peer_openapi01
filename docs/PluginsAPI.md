# PluginsAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pluginsAvailableGet**](PluginsAPI.md#pluginsavailableget) | **GET** /plugins/available | List available plugins
[**pluginsGet**](PluginsAPI.md#pluginsget) | **GET** /plugins | List plugins
[**pluginsInstallPost**](PluginsAPI.md#pluginsinstallpost) | **POST** /plugins/install | Install a plugin
[**pluginsNpmNameGet**](PluginsAPI.md#pluginsnpmnameget) | **GET** /plugins/{npmName} | Get a plugin
[**pluginsNpmNamePublicSettingsGet**](PluginsAPI.md#pluginsnpmnamepublicsettingsget) | **GET** /plugins/{npmName}/public-settings | Get a plugin&#39;s public settings
[**pluginsNpmNameRegisteredSettingsGet**](PluginsAPI.md#pluginsnpmnameregisteredsettingsget) | **GET** /plugins/{npmName}/registered-settings | Get a plugin&#39;s registered settings
[**pluginsNpmNameSettingsPut**](PluginsAPI.md#pluginsnpmnamesettingsput) | **PUT** /plugins/{npmName}/settings | Set a plugin&#39;s settings
[**pluginsUninstallPost**](PluginsAPI.md#pluginsuninstallpost) | **POST** /plugins/uninstall | Uninstall a plugin
[**pluginsUpdatePost**](PluginsAPI.md#pluginsupdatepost) | **POST** /plugins/update | Update a plugin


# **pluginsAvailableGet**
```swift
    open class func pluginsAvailableGet(search: String? = nil, pluginType: Int? = nil, currentPeerTubeEngine: String? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: PluginResponse?, _ error: Error?) -> Void)
```

List available plugins

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let search = "search_example" // String |  (optional)
let pluginType = 987 // Int |  (optional)
let currentPeerTubeEngine = "currentPeerTubeEngine_example" // String |  (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List available plugins
PluginsAPI.pluginsAvailableGet(search: search, pluginType: pluginType, currentPeerTubeEngine: currentPeerTubeEngine, start: start, count: count, sort: sort) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String** |  | [optional] 
 **pluginType** | **Int** |  | [optional] 
 **currentPeerTubeEngine** | **String** |  | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 

### Return type

[**PluginResponse**](PluginResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginsGet**
```swift
    open class func pluginsGet(pluginType: Int? = nil, uninstalled: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: PluginResponse?, _ error: Error?) -> Void)
```

List plugins

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let pluginType = 987 // Int |  (optional)
let uninstalled = true // Bool |  (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List plugins
PluginsAPI.pluginsGet(pluginType: pluginType, uninstalled: uninstalled, start: start, count: count, sort: sort) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pluginType** | **Int** |  | [optional] 
 **uninstalled** | **Bool** |  | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 

### Return type

[**PluginResponse**](PluginResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginsInstallPost**
```swift
    open class func pluginsInstallPost(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Install a plugin

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let UNKNOWN_BASE_TYPE = TODO // UNKNOWN_BASE_TYPE |  (optional)

// Install a plugin
PluginsAPI.pluginsInstallPost(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_BASE_TYPE** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginsNpmNameGet**
```swift
    open class func pluginsNpmNameGet(npmName: String, completion: @escaping (_ data: Plugin?, _ error: Error?) -> Void)
```

Get a plugin

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let npmName = "npmName_example" // String | name of the plugin/theme on npmjs.com or in its package.json

// Get a plugin
PluginsAPI.pluginsNpmNameGet(npmName: npmName) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **npmName** | **String** | name of the plugin/theme on npmjs.com or in its package.json | 

### Return type

[**Plugin**](Plugin.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginsNpmNamePublicSettingsGet**
```swift
    open class func pluginsNpmNamePublicSettingsGet(npmName: String, completion: @escaping (_ data: [String: Any]?, _ error: Error?) -> Void)
```

Get a plugin's public settings

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let npmName = "npmName_example" // String | name of the plugin/theme on npmjs.com or in its package.json

// Get a plugin's public settings
PluginsAPI.pluginsNpmNamePublicSettingsGet(npmName: npmName) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **npmName** | **String** | name of the plugin/theme on npmjs.com or in its package.json | 

### Return type

**[String: Any]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginsNpmNameRegisteredSettingsGet**
```swift
    open class func pluginsNpmNameRegisteredSettingsGet(npmName: String, completion: @escaping (_ data: [String: Any]?, _ error: Error?) -> Void)
```

Get a plugin's registered settings

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let npmName = "npmName_example" // String | name of the plugin/theme on npmjs.com or in its package.json

// Get a plugin's registered settings
PluginsAPI.pluginsNpmNameRegisteredSettingsGet(npmName: npmName) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **npmName** | **String** | name of the plugin/theme on npmjs.com or in its package.json | 

### Return type

**[String: Any]**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginsNpmNameSettingsPut**
```swift
    open class func pluginsNpmNameSettingsPut(npmName: String, inlineObject27: InlineObject27? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set a plugin's settings

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let npmName = "npmName_example" // String | name of the plugin/theme on npmjs.com or in its package.json
let inlineObject27 = inline_object_27(settings: "TODO") // InlineObject27 |  (optional)

// Set a plugin's settings
PluginsAPI.pluginsNpmNameSettingsPut(npmName: npmName, inlineObject27: inlineObject27) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **npmName** | **String** | name of the plugin/theme on npmjs.com or in its package.json | 
 **inlineObject27** | [**InlineObject27**](InlineObject27.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginsUninstallPost**
```swift
    open class func pluginsUninstallPost(inlineObject26: InlineObject26? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Uninstall a plugin

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject26 = inline_object_26(npmName: "npmName_example") // InlineObject26 |  (optional)

// Uninstall a plugin
PluginsAPI.pluginsUninstallPost(inlineObject26: inlineObject26) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject26** | [**InlineObject26**](InlineObject26.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginsUpdatePost**
```swift
    open class func pluginsUpdatePost(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a plugin

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let UNKNOWN_BASE_TYPE = TODO // UNKNOWN_BASE_TYPE |  (optional)

// Update a plugin
PluginsAPI.pluginsUpdatePost(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_BASE_TYPE** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

