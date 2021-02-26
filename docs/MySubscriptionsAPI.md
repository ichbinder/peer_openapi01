# MySubscriptionsAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersMeSubscriptionsExistGet**](MySubscriptionsAPI.md#usersmesubscriptionsexistget) | **GET** /users/me/subscriptions/exist | Get if subscriptions exist for my user
[**usersMeSubscriptionsGet**](MySubscriptionsAPI.md#usersmesubscriptionsget) | **GET** /users/me/subscriptions | Get my user subscriptions
[**usersMeSubscriptionsPost**](MySubscriptionsAPI.md#usersmesubscriptionspost) | **POST** /users/me/subscriptions | Add subscription to my user
[**usersMeSubscriptionsSubscriptionHandleDelete**](MySubscriptionsAPI.md#usersmesubscriptionssubscriptionhandledelete) | **DELETE** /users/me/subscriptions/{subscriptionHandle} | Delete subscription of my user
[**usersMeSubscriptionsSubscriptionHandleGet**](MySubscriptionsAPI.md#usersmesubscriptionssubscriptionhandleget) | **GET** /users/me/subscriptions/{subscriptionHandle} | Get subscription of my user
[**usersMeSubscriptionsVideosGet**](MySubscriptionsAPI.md#usersmesubscriptionsvideosget) | **GET** /users/me/subscriptions/videos | List videos of subscriptions of my user


# **usersMeSubscriptionsExistGet**
```swift
    open class func usersMeSubscriptionsExistGet(uris: [String], completion: @escaping (_ data: Any?, _ error: Error?) -> Void)
```

Get if subscriptions exist for my user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let uris = ["inner_example"] // [String] | list of uris to check if each is part of the user subscriptions

// Get if subscriptions exist for my user
MySubscriptionsAPI.usersMeSubscriptionsExistGet(uris: uris) { (response, error) in
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
 **uris** | [**[String]**](String.md) | list of uris to check if each is part of the user subscriptions | 

### Return type

**Any**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeSubscriptionsGet**
```swift
    open class func usersMeSubscriptionsGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get my user subscriptions

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// Get my user subscriptions
MySubscriptionsAPI.usersMeSubscriptionsGet(start: start, count: count, sort: sort) { (response, error) in
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

# **usersMeSubscriptionsPost**
```swift
    open class func usersMeSubscriptionsPost(inlineObject1: InlineObject1? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add subscription to my user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject1 = inline_object_1(uri: "uri_example") // InlineObject1 |  (optional)

// Add subscription to my user
MySubscriptionsAPI.usersMeSubscriptionsPost(inlineObject1: inlineObject1) { (response, error) in
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
 **inlineObject1** | [**InlineObject1**](InlineObject1.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeSubscriptionsSubscriptionHandleDelete**
```swift
    open class func usersMeSubscriptionsSubscriptionHandleDelete(subscriptionHandle: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete subscription of my user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let subscriptionHandle = "subscriptionHandle_example" // String | The subscription handle

// Delete subscription of my user
MySubscriptionsAPI.usersMeSubscriptionsSubscriptionHandleDelete(subscriptionHandle: subscriptionHandle) { (response, error) in
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
 **subscriptionHandle** | **String** | The subscription handle | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeSubscriptionsSubscriptionHandleGet**
```swift
    open class func usersMeSubscriptionsSubscriptionHandleGet(subscriptionHandle: String, completion: @escaping (_ data: VideoChannel?, _ error: Error?) -> Void)
```

Get subscription of my user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let subscriptionHandle = "subscriptionHandle_example" // String | The subscription handle

// Get subscription of my user
MySubscriptionsAPI.usersMeSubscriptionsSubscriptionHandleGet(subscriptionHandle: subscriptionHandle) { (response, error) in
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
 **subscriptionHandle** | **String** | The subscription handle | 

### Return type

[**VideoChannel**](VideoChannel.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeSubscriptionsVideosGet**
```swift
    open class func usersMeSubscriptionsVideosGet(categoryOneOf: OneOfintegerarray? = nil, tagsOneOf: OneOfstringarray? = nil, tagsAllOf: OneOfstringarray? = nil, licenceOneOf: OneOfintegerarray? = nil, languageOneOf: OneOfstringarray? = nil, nsfw: Nsfw_usersMeSubscriptionsVideosGet? = nil, filter: Filter_usersMeSubscriptionsVideosGet? = nil, skipCount: SkipCount_usersMeSubscriptionsVideosGet? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_usersMeSubscriptionsVideosGet? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

List videos of subscriptions of my user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let categoryOneOf = TODO // OneOfintegerarray | category id of the video (see [/videos/categories](#tag/Video/paths/~1videos~1categories/get)) (optional)
let tagsOneOf = TODO // OneOfstringarray | tag(s) of the video (optional)
let tagsAllOf = TODO // OneOfstringarray | tag(s) of the video, where all should be present in the video (optional)
let licenceOneOf = TODO // OneOfintegerarray | licence id of the video (see [/videos/licences](#tag/Video/paths/~1videos~1licences/get)) (optional)
let languageOneOf = TODO // OneOfstringarray | language id of the video (see [/videos/languages](#tag/Video/paths/~1videos~1languages/get)). Use `_unknown` to filter on videos that don't have a video language (optional)
let nsfw = "nsfw_example" // String | whether to include nsfw videos, if any (optional)
let filter = "filter_example" // String | Special filters which might require special rights:  * `local` - only videos local to the instance  * `all-local` - only videos local to the instance, but showing private and unlisted videos (requires Admin privileges)  * `all` - all videos, showing private and unlisted videos (requires Admin privileges)  (optional)
let skipCount = "skipCount_example" // String | if you don't need the `total` in the response (optional) (default to ._false)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort videos by criteria (optional)

// List videos of subscriptions of my user
MySubscriptionsAPI.usersMeSubscriptionsVideosGet(categoryOneOf: categoryOneOf, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, filter: filter, skipCount: skipCount, start: start, count: count, sort: sort) { (response, error) in
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
 **categoryOneOf** | [**OneOfintegerarray**](.md) | category id of the video (see [/videos/categories](#tag/Video/paths/~1videos~1categories/get)) | [optional] 
 **tagsOneOf** | [**OneOfstringarray**](.md) | tag(s) of the video | [optional] 
 **tagsAllOf** | [**OneOfstringarray**](.md) | tag(s) of the video, where all should be present in the video | [optional] 
 **licenceOneOf** | [**OneOfintegerarray**](.md) | licence id of the video (see [/videos/licences](#tag/Video/paths/~1videos~1licences/get)) | [optional] 
 **languageOneOf** | [**OneOfstringarray**](.md) | language id of the video (see [/videos/languages](#tag/Video/paths/~1videos~1languages/get)). Use &#x60;_unknown&#x60; to filter on videos that don&#39;t have a video language | [optional] 
 **nsfw** | **String** | whether to include nsfw videos, if any | [optional] 
 **filter** | **String** | Special filters which might require special rights:  * &#x60;local&#x60; - only videos local to the instance  * &#x60;all-local&#x60; - only videos local to the instance, but showing private and unlisted videos (requires Admin privileges)  * &#x60;all&#x60; - all videos, showing private and unlisted videos (requires Admin privileges)  | [optional] 
 **skipCount** | **String** | if you don&#39;t need the &#x60;total&#x60; in the response | [optional] [default to ._false]
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort videos by criteria | [optional] 

### Return type

[**VideoListResponse**](VideoListResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

