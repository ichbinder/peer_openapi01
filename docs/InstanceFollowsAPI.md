# InstanceFollowsAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serverFollowersGet**](InstanceFollowsAPI.md#serverfollowersget) | **GET** /server/followers | List instance followers
[**serverFollowingGet**](InstanceFollowsAPI.md#serverfollowingget) | **GET** /server/following | List instances followed by the server
[**serverFollowingHostDelete**](InstanceFollowsAPI.md#serverfollowinghostdelete) | **DELETE** /server/following/{host} | Unfollow a server
[**serverFollowingPost**](InstanceFollowsAPI.md#serverfollowingpost) | **POST** /server/following | Follow a server


# **serverFollowersGet**
```swift
    open class func serverFollowersGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: [Follow]?, _ error: Error?) -> Void)
```

List instance followers

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List instance followers
InstanceFollowsAPI.serverFollowersGet(start: start, count: count, sort: sort) { (response, error) in
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

[**[Follow]**](Follow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serverFollowingGet**
```swift
    open class func serverFollowingGet(state: State_serverFollowingGet? = nil, actorType: ActorType_serverFollowingGet? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: [Follow]?, _ error: Error?) -> Void)
```

List instances followed by the server

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let state = "state_example" // String |  (optional)
let actorType = "actorType_example" // String |  (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List instances followed by the server
InstanceFollowsAPI.serverFollowingGet(state: state, actorType: actorType, start: start, count: count, sort: sort) { (response, error) in
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
 **state** | **String** |  | [optional] 
 **actorType** | **String** |  | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 

### Return type

[**[Follow]**](Follow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serverFollowingHostDelete**
```swift
    open class func serverFollowingHostDelete(host: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unfollow a server

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let host = "host_example" // String | The host to unfollow 

// Unfollow a server
InstanceFollowsAPI.serverFollowingHostDelete(host: host) { (response, error) in
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
 **host** | **String** | The host to unfollow  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serverFollowingPost**
```swift
    open class func serverFollowingPost(inlineObject: InlineObject? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Follow a server

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject = inline_object(hosts: ["hosts_example"]) // InlineObject |  (optional)

// Follow a server
InstanceFollowsAPI.serverFollowingPost(inlineObject: inlineObject) { (response, error) in
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
 **inlineObject** | [**InlineObject**](InlineObject.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

