# VideoChannelsAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountsNameVideoChannelsGet**](VideoChannelsAPI.md#accountsnamevideochannelsget) | **GET** /accounts/{name}/video-channels | List video channels of an account
[**videoChannelsChannelHandleDelete**](VideoChannelsAPI.md#videochannelschannelhandledelete) | **DELETE** /video-channels/{channelHandle} | Delete a video channel
[**videoChannelsChannelHandleGet**](VideoChannelsAPI.md#videochannelschannelhandleget) | **GET** /video-channels/{channelHandle} | Get a video channel
[**videoChannelsChannelHandlePut**](VideoChannelsAPI.md#videochannelschannelhandleput) | **PUT** /video-channels/{channelHandle} | Update a video channel
[**videoChannelsChannelHandleVideosGet**](VideoChannelsAPI.md#videochannelschannelhandlevideosget) | **GET** /video-channels/{channelHandle}/videos | List videos of a video channel
[**videoChannelsGet**](VideoChannelsAPI.md#videochannelsget) | **GET** /video-channels | List video channels
[**videoChannelsPost**](VideoChannelsAPI.md#videochannelspost) | **POST** /video-channels | Create a video channel


# **accountsNameVideoChannelsGet**
```swift
    open class func accountsNameVideoChannelsGet(name: String, withStats: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: [VideoChannel]?, _ error: Error?) -> Void)
```

List video channels of an account

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The username or handle of the account
let withStats = true // Bool | include view statistics for the last 30 days (only if authentified as the account user) (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List video channels of an account
VideoChannelsAPI.accountsNameVideoChannelsGet(name: name, withStats: withStats, start: start, count: count, sort: sort) { (response, error) in
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
 **name** | **String** | The username or handle of the account | 
 **withStats** | **Bool** | include view statistics for the last 30 days (only if authentified as the account user) | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 

### Return type

[**[VideoChannel]**](VideoChannel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoChannelsChannelHandleDelete**
```swift
    open class func videoChannelsChannelHandleDelete(channelHandle: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a video channel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle

// Delete a video channel
VideoChannelsAPI.videoChannelsChannelHandleDelete(channelHandle: channelHandle) { (response, error) in
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
 **channelHandle** | **String** | The video channel handle | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoChannelsChannelHandleGet**
```swift
    open class func videoChannelsChannelHandleGet(channelHandle: String, completion: @escaping (_ data: VideoChannel?, _ error: Error?) -> Void)
```

Get a video channel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle

// Get a video channel
VideoChannelsAPI.videoChannelsChannelHandleGet(channelHandle: channelHandle) { (response, error) in
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
 **channelHandle** | **String** | The video channel handle | 

### Return type

[**VideoChannel**](VideoChannel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoChannelsChannelHandlePut**
```swift
    open class func videoChannelsChannelHandlePut(channelHandle: String, videoChannelUpdate: VideoChannelUpdate? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a video channel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle
let videoChannelUpdate = VideoChannelUpdate(displayName: "displayName_example", description: "description_example", support: "support_example", bulkVideosSupportUpdate: false) // VideoChannelUpdate |  (optional)

// Update a video channel
VideoChannelsAPI.videoChannelsChannelHandlePut(channelHandle: channelHandle, videoChannelUpdate: videoChannelUpdate) { (response, error) in
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
 **channelHandle** | **String** | The video channel handle | 
 **videoChannelUpdate** | [**VideoChannelUpdate**](VideoChannelUpdate.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoChannelsChannelHandleVideosGet**
```swift
    open class func videoChannelsChannelHandleVideosGet(channelHandle: String, categoryOneOf: OneOfintegerarray? = nil, tagsOneOf: OneOfstringarray? = nil, tagsAllOf: OneOfstringarray? = nil, licenceOneOf: OneOfintegerarray? = nil, languageOneOf: OneOfstringarray? = nil, nsfw: Nsfw_videoChannelsChannelHandleVideosGet? = nil, filter: Filter_videoChannelsChannelHandleVideosGet? = nil, skipCount: SkipCount_videoChannelsChannelHandleVideosGet? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_videoChannelsChannelHandleVideosGet? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

List videos of a video channel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle
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

// List videos of a video channel
VideoChannelsAPI.videoChannelsChannelHandleVideosGet(channelHandle: channelHandle, categoryOneOf: categoryOneOf, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, filter: filter, skipCount: skipCount, start: start, count: count, sort: sort) { (response, error) in
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
 **channelHandle** | **String** | The video channel handle | 
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoChannelsGet**
```swift
    open class func videoChannelsGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: InlineResponse2003?, _ error: Error?) -> Void)
```

List video channels

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List video channels
VideoChannelsAPI.videoChannelsGet(start: start, count: count, sort: sort) { (response, error) in
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

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoChannelsPost**
```swift
    open class func videoChannelsPost(videoChannelCreate: VideoChannelCreate? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a video channel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let videoChannelCreate = VideoChannelCreate(name: "name_example", displayName: "displayName_example", description: "description_example", support: "support_example") // VideoChannelCreate |  (optional)

// Create a video channel
VideoChannelsAPI.videoChannelsPost(videoChannelCreate: videoChannelCreate) { (response, error) in
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
 **videoChannelCreate** | [**VideoChannelCreate**](VideoChannelCreate.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

