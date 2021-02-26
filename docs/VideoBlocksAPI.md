# VideoBlocksAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**videosBlacklistGet**](VideoBlocksAPI.md#videosblacklistget) | **GET** /videos/blacklist | List video blocks
[**videosIdBlacklistDelete**](VideoBlocksAPI.md#videosidblacklistdelete) | **DELETE** /videos/{id}/blacklist | Unblock a video by its id
[**videosIdBlacklistPost**](VideoBlocksAPI.md#videosidblacklistpost) | **POST** /videos/{id}/blacklist | Block a video


# **videosBlacklistGet**
```swift
    open class func videosBlacklistGet(type: ModelType_videosBlacklistGet? = nil, search: String? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_videosBlacklistGet? = nil, completion: @escaping (_ data: InlineResponse2001?, _ error: Error?) -> Void)
```

List video blocks

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = 987 // Int | list only blocks that match this type: - `1`: manual block - `2`: automatic block that needs review  (optional)
let search = "search_example" // String | plain search that will match with video titles, and more (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort blacklists by criteria (optional)

// List video blocks
VideoBlocksAPI.videosBlacklistGet(type: type, search: search, start: start, count: count, sort: sort) { (response, error) in
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
 **type** | **Int** | list only blocks that match this type: - &#x60;1&#x60;: manual block - &#x60;2&#x60;: automatic block that needs review  | [optional] 
 **search** | **String** | plain search that will match with video titles, and more | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort blacklists by criteria | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdBlacklistDelete**
```swift
    open class func videosIdBlacklistDelete(id: OneOfintegerUUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unblock a video by its id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Unblock a video by its id
VideoBlocksAPI.videosIdBlacklistDelete(id: id) { (response, error) in
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

# **videosIdBlacklistPost**
```swift
    open class func videosIdBlacklistPost(id: OneOfintegerUUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Block a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Block a video
VideoBlocksAPI.videosIdBlacklistPost(id: id) { (response, error) in
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

