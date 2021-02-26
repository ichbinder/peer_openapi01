# InstanceRedundancyAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**redundancyHostPut**](InstanceRedundancyAPI.md#redundancyhostput) | **PUT** /redundancy/{host} | Update a server redundancy policy


# **redundancyHostPut**
```swift
    open class func redundancyHostPut(host: String, inlineObject24: InlineObject24? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a server redundancy policy

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let host = "host_example" // String | server domain to mirror
let inlineObject24 = inline_object_24(redundancyAllowed: false) // InlineObject24 |  (optional)

// Update a server redundancy policy
InstanceRedundancyAPI.redundancyHostPut(host: host, inlineObject24: inlineObject24) { (response, error) in
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
 **host** | **String** | server domain to mirror | 
 **inlineObject24** | [**InlineObject24**](InlineObject24.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

