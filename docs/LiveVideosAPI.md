# LiveVideosAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**videosLiveIdGet**](LiveVideosAPI.md#videosliveidget) | **GET** /videos/live/{id} | Get a live information
[**videosLiveIdPut**](LiveVideosAPI.md#videosliveidput) | **PUT** /videos/live/{id} | Update a live information
[**videosLivePost**](LiveVideosAPI.md#videoslivepost) | **POST** /videos/live | Create a live


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
LiveVideosAPI.videosLiveIdGet(id: id) { (response, error) in
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
LiveVideosAPI.videosLiveIdPut(id: id, liveVideoUpdate: liveVideoUpdate) { (response, error) in
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
LiveVideosAPI.videosLivePost(channelId: channelId, name: name, saveReplay: saveReplay, permanentLive: permanentLive, thumbnailfile: thumbnailfile, previewfile: previewfile, privacy: privacy, category: category, licence: licence, language: language, description: description, support: support, nsfw: nsfw, tags: tags, commentsEnabled: commentsEnabled, downloadEnabled: downloadEnabled) { (response, error) in
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

