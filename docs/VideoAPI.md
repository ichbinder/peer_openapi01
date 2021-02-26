# VideoAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountsNameVideosGet**](VideoAPI.md#accountsnamevideosget) | **GET** /accounts/{name}/videos | List videos of an account
[**videoChannelsChannelHandleVideosGet**](VideoAPI.md#videochannelschannelhandlevideosget) | **GET** /video-channels/{channelHandle}/videos | List videos of a video channel
[**videosCategoriesGet**](VideoAPI.md#videoscategoriesget) | **GET** /videos/categories | List available video categories
[**videosGet**](VideoAPI.md#videosget) | **GET** /videos | List videos
[**videosIdDelete**](VideoAPI.md#videosiddelete) | **DELETE** /videos/{id} | Delete a video
[**videosIdDescriptionGet**](VideoAPI.md#videosiddescriptionget) | **GET** /videos/{id}/description | Get complete video description
[**videosIdGet**](VideoAPI.md#videosidget) | **GET** /videos/{id} | Get a video
[**videosIdPut**](VideoAPI.md#videosidput) | **PUT** /videos/{id} | Update a video
[**videosIdViewsPost**](VideoAPI.md#videosidviewspost) | **POST** /videos/{id}/views | Add a view to a video
[**videosIdWatchingPut**](VideoAPI.md#videosidwatchingput) | **PUT** /videos/{id}/watching | Set watching progress of a video
[**videosImportsPost**](VideoAPI.md#videosimportspost) | **POST** /videos/imports | Import a video
[**videosLanguagesGet**](VideoAPI.md#videoslanguagesget) | **GET** /videos/languages | List available video languages
[**videosLicencesGet**](VideoAPI.md#videoslicencesget) | **GET** /videos/licences | List available video licences
[**videosLiveIdGet**](VideoAPI.md#videosliveidget) | **GET** /videos/live/{id} | Get a live information
[**videosLiveIdPut**](VideoAPI.md#videosliveidput) | **PUT** /videos/live/{id} | Update a live information
[**videosLivePost**](VideoAPI.md#videoslivepost) | **POST** /videos/live | Create a live
[**videosPrivaciesGet**](VideoAPI.md#videosprivaciesget) | **GET** /videos/privacies | List available video privacies
[**videosUploadPost**](VideoAPI.md#videosuploadpost) | **POST** /videos/upload | Upload a video


# **accountsNameVideosGet**
```swift
    open class func accountsNameVideosGet(name: String, categoryOneOf: OneOfintegerarray? = nil, tagsOneOf: OneOfstringarray? = nil, tagsAllOf: OneOfstringarray? = nil, licenceOneOf: OneOfintegerarray? = nil, languageOneOf: OneOfstringarray? = nil, nsfw: Nsfw_accountsNameVideosGet? = nil, filter: Filter_accountsNameVideosGet? = nil, skipCount: SkipCount_accountsNameVideosGet? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_accountsNameVideosGet? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

List videos of an account

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The username or handle of the account
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

// List videos of an account
VideoAPI.accountsNameVideosGet(name: name, categoryOneOf: categoryOneOf, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, filter: filter, skipCount: skipCount, start: start, count: count, sort: sort) { (response, error) in
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
VideoAPI.videoChannelsChannelHandleVideosGet(channelHandle: channelHandle, categoryOneOf: categoryOneOf, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, filter: filter, skipCount: skipCount, start: start, count: count, sort: sort) { (response, error) in
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

# **videosCategoriesGet**
```swift
    open class func videosCategoriesGet(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

List available video categories

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List available video categories
VideoAPI.videosCategoriesGet() { (response, error) in
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

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosGet**
```swift
    open class func videosGet(categoryOneOf: OneOfintegerarray? = nil, tagsOneOf: OneOfstringarray? = nil, tagsAllOf: OneOfstringarray? = nil, licenceOneOf: OneOfintegerarray? = nil, languageOneOf: OneOfstringarray? = nil, nsfw: Nsfw_videosGet? = nil, filter: Filter_videosGet? = nil, skipCount: SkipCount_videosGet? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_videosGet? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

List videos

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

// List videos
VideoAPI.videosGet(categoryOneOf: categoryOneOf, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, filter: filter, skipCount: skipCount, start: start, count: count, sort: sort) { (response, error) in
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdDelete**
```swift
    open class func videosIdDelete(id: OneOfintegerUUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Delete a video
VideoAPI.videosIdDelete(id: id) { (response, error) in
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

# **videosIdDescriptionGet**
```swift
    open class func videosIdDescriptionGet(id: OneOfintegerUUID, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get complete video description

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Get complete video description
VideoAPI.videosIdDescriptionGet(id: id) { (response, error) in
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdGet**
```swift
    open class func videosIdGet(id: OneOfintegerUUID, completion: @escaping (_ data: VideoDetails?, _ error: Error?) -> Void)
```

Get a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Get a video
VideoAPI.videosIdGet(id: id) { (response, error) in
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

[**VideoDetails**](VideoDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdPut**
```swift
    open class func videosIdPut(id: OneOfintegerUUID, thumbnailfile: URL? = nil, previewfile: URL? = nil, category: Int? = nil, licence: Int? = nil, language: String? = nil, privacy: VideoPrivacySet? = nil, description: String? = nil, waitTranscoding: String? = nil, support: String? = nil, nsfw: Bool? = nil, name: String? = nil, tags: [String]? = nil, commentsEnabled: Bool? = nil, originallyPublishedAt: Date? = nil, scheduleUpdate: VideoScheduledUpdate? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let thumbnailfile = URL(string: "https://example.com")! // URL | Video thumbnail file (optional)
let previewfile = URL(string: "https://example.com")! // URL | Video preview file (optional)
let category = 987 // Int | Video category (optional)
let licence = 987 // Int | Video licence (optional)
let language = "language_example" // String | Video language (optional)
let privacy = VideoPrivacySet() // VideoPrivacySet |  (optional)
let description = "description_example" // String | Video description (optional)
let waitTranscoding = "waitTranscoding_example" // String | Whether or not we wait transcoding before publish the video (optional)
let support = "support_example" // String | A text tell the audience how to support the video creator (optional)
let nsfw = true // Bool | Whether or not this video contains sensitive content (optional)
let name = "name_example" // String | Video name (optional)
let tags = ["inner_example"] // [String] | Video tags (maximum 5 tags each between 2 and 30 characters) (optional)
let commentsEnabled = true // Bool | Enable or disable comments for this video (optional)
let originallyPublishedAt = Date() // Date | Date when the content was originally published (optional)
let scheduleUpdate = VideoScheduledUpdate(privacy: VideoPrivacySet(), updateAt: Date()) // VideoScheduledUpdate |  (optional)

// Update a video
VideoAPI.videosIdPut(id: id, thumbnailfile: thumbnailfile, previewfile: previewfile, category: category, licence: licence, language: language, privacy: privacy, description: description, waitTranscoding: waitTranscoding, support: support, nsfw: nsfw, name: name, tags: tags, commentsEnabled: commentsEnabled, originallyPublishedAt: originallyPublishedAt, scheduleUpdate: scheduleUpdate) { (response, error) in
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
 **thumbnailfile** | **URL** | Video thumbnail file | [optional] 
 **previewfile** | **URL** | Video preview file | [optional] 
 **category** | **Int** | Video category | [optional] 
 **licence** | **Int** | Video licence | [optional] 
 **language** | **String** | Video language | [optional] 
 **privacy** | [**VideoPrivacySet**](VideoPrivacySet.md) |  | [optional] 
 **description** | **String** | Video description | [optional] 
 **waitTranscoding** | **String** | Whether or not we wait transcoding before publish the video | [optional] 
 **support** | **String** | A text tell the audience how to support the video creator | [optional] 
 **nsfw** | **Bool** | Whether or not this video contains sensitive content | [optional] 
 **name** | **String** | Video name | [optional] 
 **tags** | [**[String]**](String.md) | Video tags (maximum 5 tags each between 2 and 30 characters) | [optional] 
 **commentsEnabled** | **Bool** | Enable or disable comments for this video | [optional] 
 **originallyPublishedAt** | **Date** | Date when the content was originally published | [optional] 
 **scheduleUpdate** | [**VideoScheduledUpdate**](VideoScheduledUpdate.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdViewsPost**
```swift
    open class func videosIdViewsPost(id: OneOfintegerUUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add a view to a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Add a view to a video
VideoAPI.videosIdViewsPost(id: id) { (response, error) in
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdWatchingPut**
```swift
    open class func videosIdWatchingPut(id: OneOfintegerUUID, userWatchingVideo: UserWatchingVideo, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set watching progress of a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let userWatchingVideo = UserWatchingVideo(currentTime: 123) // UserWatchingVideo | 

// Set watching progress of a video
VideoAPI.videosIdWatchingPut(id: id, userWatchingVideo: userWatchingVideo) { (response, error) in
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
 **userWatchingVideo** | [**UserWatchingVideo**](UserWatchingVideo.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosImportsPost**
```swift
    open class func videosImportsPost(channelId: Int, name: String, torrentfile: URL? = nil, targetUrl: String? = nil, magnetUri: String? = nil, thumbnailfile: URL? = nil, previewfile: URL? = nil, privacy: VideoPrivacySet? = nil, category: String? = nil, licence: String? = nil, language: String? = nil, description: String? = nil, waitTranscoding: Bool? = nil, support: String? = nil, nsfw: Bool? = nil, tags: [String]? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, scheduleUpdate: VideoScheduledUpdate? = nil, completion: @escaping (_ data: VideoUploadResponse?, _ error: Error?) -> Void)
```

Import a video

Import a torrent or magnetURI or HTTP resource (if enabled by the instance administrator)

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelId = 987 // Int | Channel id that will contain this video
let name = "name_example" // String | Video name
let torrentfile = URL(string: "https://example.com")! // URL | Torrent File (optional)
let targetUrl = "targetUrl_example" // String | HTTP target URL (optional)
let magnetUri = "magnetUri_example" // String | Magnet URI (optional)
let thumbnailfile = URL(string: "https://example.com")! // URL | Video thumbnail file (optional)
let previewfile = URL(string: "https://example.com")! // URL | Video preview file (optional)
let privacy = VideoPrivacySet() // VideoPrivacySet |  (optional)
let category = "category_example" // String | Video category (optional)
let licence = "licence_example" // String | Video licence (optional)
let language = "language_example" // String | Video language (optional)
let description = "description_example" // String | Video description (optional)
let waitTranscoding = true // Bool | Whether or not we wait transcoding before publish the video (optional)
let support = "support_example" // String | A text tell the audience how to support the video creator (optional)
let nsfw = true // Bool | Whether or not this video contains sensitive content (optional)
let tags = ["inner_example"] // [String] | Video tags (maximum 5 tags each between 2 and 30 characters) (optional)
let commentsEnabled = true // Bool | Enable or disable comments for this video (optional)
let downloadEnabled = true // Bool | Enable or disable downloading for this video (optional)
let scheduleUpdate = VideoScheduledUpdate(privacy: VideoPrivacySet(), updateAt: Date()) // VideoScheduledUpdate |  (optional)

// Import a video
VideoAPI.videosImportsPost(channelId: channelId, name: name, torrentfile: torrentfile, targetUrl: targetUrl, magnetUri: magnetUri, thumbnailfile: thumbnailfile, previewfile: previewfile, privacy: privacy, category: category, licence: licence, language: language, description: description, waitTranscoding: waitTranscoding, support: support, nsfw: nsfw, tags: tags, commentsEnabled: commentsEnabled, downloadEnabled: downloadEnabled, scheduleUpdate: scheduleUpdate) { (response, error) in
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
 **channelId** | **Int** | Channel id that will contain this video | 
 **name** | **String** | Video name | 
 **torrentfile** | **URL** | Torrent File | [optional] 
 **targetUrl** | **String** | HTTP target URL | [optional] 
 **magnetUri** | **String** | Magnet URI | [optional] 
 **thumbnailfile** | **URL** | Video thumbnail file | [optional] 
 **previewfile** | **URL** | Video preview file | [optional] 
 **privacy** | [**VideoPrivacySet**](VideoPrivacySet.md) |  | [optional] 
 **category** | **String** | Video category | [optional] 
 **licence** | **String** | Video licence | [optional] 
 **language** | **String** | Video language | [optional] 
 **description** | **String** | Video description | [optional] 
 **waitTranscoding** | **Bool** | Whether or not we wait transcoding before publish the video | [optional] 
 **support** | **String** | A text tell the audience how to support the video creator | [optional] 
 **nsfw** | **Bool** | Whether or not this video contains sensitive content | [optional] 
 **tags** | [**[String]**](String.md) | Video tags (maximum 5 tags each between 2 and 30 characters) | [optional] 
 **commentsEnabled** | **Bool** | Enable or disable comments for this video | [optional] 
 **downloadEnabled** | **Bool** | Enable or disable downloading for this video | [optional] 
 **scheduleUpdate** | [**VideoScheduledUpdate**](VideoScheduledUpdate.md) |  | [optional] 

### Return type

[**VideoUploadResponse**](VideoUploadResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosLanguagesGet**
```swift
    open class func videosLanguagesGet(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

List available video languages

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List available video languages
VideoAPI.videosLanguagesGet() { (response, error) in
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

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosLicencesGet**
```swift
    open class func videosLicencesGet(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

List available video licences

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List available video licences
VideoAPI.videosLicencesGet() { (response, error) in
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

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosLiveIdGet**
```swift
    open class func videosLiveIdGet(id: OneOfintegerUUID, completion: @escaping (_ data: LiveVideoResponse?, _ error: Error?) -> Void)
```

Get a live information

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Get a live information
VideoAPI.videosLiveIdGet(id: id) { (response, error) in
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

[**LiveVideoResponse**](LiveVideoResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosLiveIdPut**
```swift
    open class func videosLiveIdPut(id: OneOfintegerUUID, liveVideoUpdate: LiveVideoUpdate? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a live information

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let liveVideoUpdate = LiveVideoUpdate(saveReplay: false, permanentLive: false) // LiveVideoUpdate |  (optional)

// Update a live information
VideoAPI.videosLiveIdPut(id: id, liveVideoUpdate: liveVideoUpdate) { (response, error) in
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
 **liveVideoUpdate** | [**LiveVideoUpdate**](LiveVideoUpdate.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosLivePost**
```swift
    open class func videosLivePost(channelId: Int, name: String, saveReplay: Bool? = nil, permanentLive: Bool? = nil, thumbnailfile: URL? = nil, previewfile: URL? = nil, privacy: VideoPrivacySet? = nil, category: String? = nil, licence: String? = nil, language: String? = nil, description: String? = nil, support: String? = nil, nsfw: Bool? = nil, tags: [String]? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, completion: @escaping (_ data: VideoUploadResponse?, _ error: Error?) -> Void)
```

Create a live

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelId = 987 // Int | Channel id that will contain this live video
let name = "name_example" // String | Live video/replay name
let saveReplay = true // Bool |  (optional)
let permanentLive = true // Bool | User can stream multiple times in a permanent live (optional)
let thumbnailfile = URL(string: "https://example.com")! // URL | Live video/replay thumbnail file (optional)
let previewfile = URL(string: "https://example.com")! // URL | Live video/replay preview file (optional)
let privacy = VideoPrivacySet() // VideoPrivacySet |  (optional)
let category = "category_example" // String | Live video/replay category (optional)
let licence = "licence_example" // String | Live video/replay licence (optional)
let language = "language_example" // String | Live video/replay language (optional)
let description = "description_example" // String | Live video/replay description (optional)
let support = "support_example" // String | A text tell the audience how to support the creator (optional)
let nsfw = true // Bool | Whether or not this live video/replay contains sensitive content (optional)
let tags = ["inner_example"] // [String] | Live video/replay tags (maximum 5 tags each between 2 and 30 characters) (optional)
let commentsEnabled = true // Bool | Enable or disable comments for this live video/replay (optional)
let downloadEnabled = true // Bool | Enable or disable downloading for the replay of this live (optional)

// Create a live
VideoAPI.videosLivePost(channelId: channelId, name: name, saveReplay: saveReplay, permanentLive: permanentLive, thumbnailfile: thumbnailfile, previewfile: previewfile, privacy: privacy, category: category, licence: licence, language: language, description: description, support: support, nsfw: nsfw, tags: tags, commentsEnabled: commentsEnabled, downloadEnabled: downloadEnabled) { (response, error) in
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
 **channelId** | **Int** | Channel id that will contain this live video | 
 **name** | **String** | Live video/replay name | 
 **saveReplay** | **Bool** |  | [optional] 
 **permanentLive** | **Bool** | User can stream multiple times in a permanent live | [optional] 
 **thumbnailfile** | **URL** | Live video/replay thumbnail file | [optional] 
 **previewfile** | **URL** | Live video/replay preview file | [optional] 
 **privacy** | [**VideoPrivacySet**](VideoPrivacySet.md) |  | [optional] 
 **category** | **String** | Live video/replay category | [optional] 
 **licence** | **String** | Live video/replay licence | [optional] 
 **language** | **String** | Live video/replay language | [optional] 
 **description** | **String** | Live video/replay description | [optional] 
 **support** | **String** | A text tell the audience how to support the creator | [optional] 
 **nsfw** | **Bool** | Whether or not this live video/replay contains sensitive content | [optional] 
 **tags** | [**[String]**](String.md) | Live video/replay tags (maximum 5 tags each between 2 and 30 characters) | [optional] 
 **commentsEnabled** | **Bool** | Enable or disable comments for this live video/replay | [optional] 
 **downloadEnabled** | **Bool** | Enable or disable downloading for the replay of this live | [optional] 

### Return type

[**VideoUploadResponse**](VideoUploadResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosPrivaciesGet**
```swift
    open class func videosPrivaciesGet(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

List available video privacies

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List available video privacies
VideoAPI.videosPrivaciesGet() { (response, error) in
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

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosUploadPost**
```swift
    open class func videosUploadPost(videofile: URL, channelId: Int, name: String, thumbnailfile: URL? = nil, previewfile: URL? = nil, privacy: VideoPrivacySet? = nil, category: Int? = nil, licence: String? = nil, language: Int? = nil, description: String? = nil, waitTranscoding: Bool? = nil, support: String? = nil, nsfw: Bool? = nil, tags: Set<String>? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, originallyPublishedAt: Date? = nil, scheduleUpdate: VideoScheduledUpdate? = nil, completion: @escaping (_ data: VideoUploadResponse?, _ error: Error?) -> Void)
```

Upload a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let videofile = URL(string: "https://example.com")! // URL | Video file
let channelId = 987 // Int | Channel id that will contain this video
let name = "name_example" // String | Video name
let thumbnailfile = URL(string: "https://example.com")! // URL | Video thumbnail file (optional)
let previewfile = URL(string: "https://example.com")! // URL | Video preview file (optional)
let privacy = VideoPrivacySet() // VideoPrivacySet |  (optional)
let category = 987 // Int | Video category (optional)
let licence = "licence_example" // String | Video licence (optional)
let language = 987 // Int | Video language (optional)
let description = "description_example" // String | Video description (optional)
let waitTranscoding = true // Bool | Whether or not we wait transcoding before publish the video (optional)
let support = "support_example" // String | A text tell the audience how to support the video creator (optional)
let nsfw = true // Bool | Whether or not this video contains sensitive content (optional)
let tags = ["inner_example"] // Set<String> | Video tags (maximum 5 tags each between 2 and 30 characters) (optional)
let commentsEnabled = true // Bool | Enable or disable comments for this video (optional)
let downloadEnabled = true // Bool | Enable or disable downloading for this video (optional)
let originallyPublishedAt = Date() // Date | Date when the content was originally published (optional)
let scheduleUpdate = VideoScheduledUpdate(privacy: VideoPrivacySet(), updateAt: Date()) // VideoScheduledUpdate |  (optional)

// Upload a video
VideoAPI.videosUploadPost(videofile: videofile, channelId: channelId, name: name, thumbnailfile: thumbnailfile, previewfile: previewfile, privacy: privacy, category: category, licence: licence, language: language, description: description, waitTranscoding: waitTranscoding, support: support, nsfw: nsfw, tags: tags, commentsEnabled: commentsEnabled, downloadEnabled: downloadEnabled, originallyPublishedAt: originallyPublishedAt, scheduleUpdate: scheduleUpdate) { (response, error) in
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
 **videofile** | **URL** | Video file | 
 **channelId** | **Int** | Channel id that will contain this video | 
 **name** | **String** | Video name | 
 **thumbnailfile** | **URL** | Video thumbnail file | [optional] 
 **previewfile** | **URL** | Video preview file | [optional] 
 **privacy** | [**VideoPrivacySet**](VideoPrivacySet.md) |  | [optional] 
 **category** | **Int** | Video category | [optional] 
 **licence** | **String** | Video licence | [optional] 
 **language** | **Int** | Video language | [optional] 
 **description** | **String** | Video description | [optional] 
 **waitTranscoding** | **Bool** | Whether or not we wait transcoding before publish the video | [optional] 
 **support** | **String** | A text tell the audience how to support the video creator | [optional] 
 **nsfw** | **Bool** | Whether or not this video contains sensitive content | [optional] 
 **tags** | [**Set&lt;String&gt;**](String.md) | Video tags (maximum 5 tags each between 2 and 30 characters) | [optional] 
 **commentsEnabled** | **Bool** | Enable or disable comments for this video | [optional] 
 **downloadEnabled** | **Bool** | Enable or disable downloading for this video | [optional] 
 **originallyPublishedAt** | **Date** | Date when the content was originally published | [optional] 
 **scheduleUpdate** | [**VideoScheduledUpdate**](VideoScheduledUpdate.md) |  | [optional] 

### Return type

[**VideoUploadResponse**](VideoUploadResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

