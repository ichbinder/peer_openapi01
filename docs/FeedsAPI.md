# FeedsAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**feedsVideoCommentsFormatGet**](FeedsAPI.md#feedsvideocommentsformatget) | **GET** /feeds/video-comments.{format} | List comments on videos
[**feedsVideosFormatGet**](FeedsAPI.md#feedsvideosformatget) | **GET** /feeds/videos.{format} | List videos


# **feedsVideoCommentsFormatGet**
```swift
    open class func feedsVideoCommentsFormatGet(format: Format_feedsVideoCommentsFormatGet, videoId: String? = nil, accountId: String? = nil, accountName: String? = nil, videoChannelId: String? = nil, videoChannelName: String? = nil, completion: @escaping (_ data: [Any]?, _ error: Error?) -> Void)
```

List comments on videos

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let format = "format_example" // String | format expected (we focus on making `rss` the most featureful ; it serves [Media RSS](https://www.rssboard.org/media-rss))
let videoId = "videoId_example" // String | limit listing to a specific video (optional)
let accountId = "accountId_example" // String | limit listing to a specific account (optional)
let accountName = "accountName_example" // String | limit listing to a specific account (optional)
let videoChannelId = "videoChannelId_example" // String | limit listing to a specific video channel (optional)
let videoChannelName = "videoChannelName_example" // String | limit listing to a specific video channel (optional)

// List comments on videos
FeedsAPI.feedsVideoCommentsFormatGet(format: format, videoId: videoId, accountId: accountId, accountName: accountName, videoChannelId: videoChannelId, videoChannelName: videoChannelName) { (response, error) in
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
 **format** | **String** | format expected (we focus on making &#x60;rss&#x60; the most featureful ; it serves [Media RSS](https://www.rssboard.org/media-rss)) | 
 **videoId** | **String** | limit listing to a specific video | [optional] 
 **accountId** | **String** | limit listing to a specific account | [optional] 
 **accountName** | **String** | limit listing to a specific account | [optional] 
 **videoChannelId** | **String** | limit listing to a specific video channel | [optional] 
 **videoChannelName** | **String** | limit listing to a specific video channel | [optional] 

### Return type

**[Any]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/rss+xml, text/xml, application/atom+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **feedsVideosFormatGet**
```swift
    open class func feedsVideosFormatGet(format: Format_feedsVideosFormatGet, accountId: String? = nil, accountName: String? = nil, videoChannelId: String? = nil, videoChannelName: String? = nil, sort: String? = nil, nsfw: Nsfw_feedsVideosFormatGet? = nil, filter: Filter_feedsVideosFormatGet? = nil, completion: @escaping (_ data: [Any]?, _ error: Error?) -> Void)
```

List videos

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let format = "format_example" // String | format expected (we focus on making `rss` the most featureful ; it serves [Media RSS](https://www.rssboard.org/media-rss))
let accountId = "accountId_example" // String | limit listing to a specific account (optional)
let accountName = "accountName_example" // String | limit listing to a specific account (optional)
let videoChannelId = "videoChannelId_example" // String | limit listing to a specific video channel (optional)
let videoChannelName = "videoChannelName_example" // String | limit listing to a specific video channel (optional)
let sort = "sort_example" // String | Sort column (optional)
let nsfw = "nsfw_example" // String | whether to include nsfw videos, if any (optional)
let filter = "filter_example" // String | Special filters which might require special rights:  * `local` - only videos local to the instance  * `all-local` - only videos local to the instance, but showing private and unlisted videos (requires Admin privileges)  * `all` - all videos, showing private and unlisted videos (requires Admin privileges)  (optional)

// List videos
FeedsAPI.feedsVideosFormatGet(format: format, accountId: accountId, accountName: accountName, videoChannelId: videoChannelId, videoChannelName: videoChannelName, sort: sort, nsfw: nsfw, filter: filter) { (response, error) in
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
 **format** | **String** | format expected (we focus on making &#x60;rss&#x60; the most featureful ; it serves [Media RSS](https://www.rssboard.org/media-rss)) | 
 **accountId** | **String** | limit listing to a specific account | [optional] 
 **accountName** | **String** | limit listing to a specific account | [optional] 
 **videoChannelId** | **String** | limit listing to a specific video channel | [optional] 
 **videoChannelName** | **String** | limit listing to a specific video channel | [optional] 
 **sort** | **String** | Sort column | [optional] 
 **nsfw** | **String** | whether to include nsfw videos, if any | [optional] 
 **filter** | **String** | Special filters which might require special rights:  * &#x60;local&#x60; - only videos local to the instance  * &#x60;all-local&#x60; - only videos local to the instance, but showing private and unlisted videos (requires Admin privileges)  * &#x60;all&#x60; - all videos, showing private and unlisted videos (requires Admin privileges)  | [optional] 

### Return type

**[Any]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/rss+xml, text/xml, application/atom+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

