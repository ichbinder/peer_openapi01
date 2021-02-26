# ConfigAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configAboutGet**](ConfigAPI.md#configaboutget) | **GET** /config/about | Get instance \&quot;About\&quot; information
[**configCustomDelete**](ConfigAPI.md#configcustomdelete) | **DELETE** /config/custom | Delete instance runtime configuration
[**configCustomGet**](ConfigAPI.md#configcustomget) | **GET** /config/custom | Get instance runtime configuration
[**configCustomPut**](ConfigAPI.md#configcustomput) | **PUT** /config/custom | Set instance runtime configuration
[**configGet**](ConfigAPI.md#configget) | **GET** /config | Get instance public configuration


# **configAboutGet**
```swift
    open class func configAboutGet(completion: @escaping (_ data: ServerConfigAbout?, _ error: Error?) -> Void)
```

Get instance \"About\" information

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get instance \"About\" information
ConfigAPI.configAboutGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ServerConfigAbout**](ServerConfigAbout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configCustomDelete**
```swift
    open class func configCustomDelete(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete instance runtime configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete instance runtime configuration
ConfigAPI.configCustomDelete() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configCustomGet**
```swift
    open class func configCustomGet(completion: @escaping (_ data: ServerConfigCustom?, _ error: Error?) -> Void)
```

Get instance runtime configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get instance runtime configuration
ConfigAPI.configCustomGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ServerConfigCustom**](ServerConfigCustom.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configCustomPut**
```swift
    open class func configCustomPut(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set instance runtime configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Set instance runtime configuration
ConfigAPI.configCustomPut() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configGet**
```swift
    open class func configGet(completion: @escaping (_ data: ServerConfig?, _ error: Error?) -> Void)
```

Get instance public configuration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get instance public configuration
ConfigAPI.configGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ServerConfig**](ServerConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

