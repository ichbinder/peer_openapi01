# ServerBlocksAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blocklistServersGet**](ServerBlocksAPI.md#blocklistserversget) | **GET** /blocklist/servers | List server blocks
[**blocklistServersHostDelete**](ServerBlocksAPI.md#blocklistservershostdelete) | **DELETE** /blocklist/servers/{host} | Unblock a server by its domain
[**blocklistServersPost**](ServerBlocksAPI.md#blocklistserverspost) | **POST** /blocklist/servers | Block a server


# **blocklistServersGet**
```swift
    open class func blocklistServersGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List server blocks

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List server blocks
ServerBlocksAPI.blocklistServersGet(start: start, count: count, sort: sort) { (response, error) in
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
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blocklistServersHostDelete**
```swift
    open class func blocklistServersHostDelete(host: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unblock a server by its domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let host = "host_example" // String | server domain to unblock

// Unblock a server by its domain
ServerBlocksAPI.blocklistServersHostDelete(host: host) { (response, error) in
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
 **host** | **String** | server domain to unblock | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blocklistServersPost**
```swift
    open class func blocklistServersPost(inlineObject23: InlineObject23? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Block a server

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject23 = inline_object_23(host: "host_example") // InlineObject23 |  (optional)

// Block a server
ServerBlocksAPI.blocklistServersPost(inlineObject23: inlineObject23) { (response, error) in
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
 **inlineObject23** | [**InlineObject23**](InlineObject23.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

