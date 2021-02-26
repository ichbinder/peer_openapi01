# VideoOwnershipChangeAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**videosIdGiveOwnershipPost**](VideoOwnershipChangeAPI.md#videosidgiveownershippost) | **POST** /videos/{id}/give-ownership | Request ownership change
[**videosOwnershipGet**](VideoOwnershipChangeAPI.md#videosownershipget) | **GET** /videos/ownership | List video ownership changes
[**videosOwnershipIdAcceptPost**](VideoOwnershipChangeAPI.md#videosownershipidacceptpost) | **POST** /videos/ownership/{id}/accept | Accept ownership change request
[**videosOwnershipIdRefusePost**](VideoOwnershipChangeAPI.md#videosownershipidrefusepost) | **POST** /videos/ownership/{id}/refuse | Refuse ownership change request


# **videosIdGiveOwnershipPost**
```swift
    open class func videosIdGiveOwnershipPost(id: OneOfintegerUUID, username: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Request ownership change

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let username = "username_example" // String | 

// Request ownership change
VideoOwnershipChangeAPI.videosIdGiveOwnershipPost(id: id, username: username) { (response, error) in
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
 **id** | [**OneOfintegerUUID**](.md) | The object id or uuid | 
 **username** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosOwnershipGet**
```swift
    open class func videosOwnershipGet(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List video ownership changes

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List video ownership changes
VideoOwnershipChangeAPI.videosOwnershipGet() { (response, error) in
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

# **videosOwnershipIdAcceptPost**
```swift
    open class func videosOwnershipIdAcceptPost(id: OneOfintegerUUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Accept ownership change request

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Accept ownership change request
VideoOwnershipChangeAPI.videosOwnershipIdAcceptPost(id: id) { (response, error) in
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
 **id** | [**OneOfintegerUUID**](.md) | The object id or uuid | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosOwnershipIdRefusePost**
```swift
    open class func videosOwnershipIdRefusePost(id: OneOfintegerUUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Refuse ownership change request

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Refuse ownership change request
VideoOwnershipChangeAPI.videosOwnershipIdRefusePost(id: id) { (response, error) in
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
 **id** | [**OneOfintegerUUID**](.md) | The object id or uuid | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

