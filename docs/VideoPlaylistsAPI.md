# VideoPlaylistsAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersMeVideoPlaylistsVideosExistGet**](VideoPlaylistsAPI.md#usersmevideoplaylistsvideosexistget) | **GET** /users/me/video-playlists/videos-exist | Check video exists in my playlists
[**videoPlaylistsGet**](VideoPlaylistsAPI.md#videoplaylistsget) | **GET** /video-playlists | List video playlists
[**videoPlaylistsIdDelete**](VideoPlaylistsAPI.md#videoplaylistsiddelete) | **DELETE** /video-playlists/{id} | Delete a video playlist
[**videoPlaylistsIdGet**](VideoPlaylistsAPI.md#videoplaylistsidget) | **GET** /video-playlists/{id} | Get a video playlist
[**videoPlaylistsIdPut**](VideoPlaylistsAPI.md#videoplaylistsidput) | **PUT** /video-playlists/{id} | Update a video playlist
[**videoPlaylistsIdVideosGet**](VideoPlaylistsAPI.md#videoplaylistsidvideosget) | **GET** /video-playlists/{id}/videos | List videos of a playlist
[**videoPlaylistsIdVideosPlaylistElementIdDelete**](VideoPlaylistsAPI.md#videoplaylistsidvideosplaylistelementiddelete) | **DELETE** /video-playlists/{id}/videos/{playlistElementId} | Delete an element from a playlist
[**videoPlaylistsIdVideosPlaylistElementIdPut**](VideoPlaylistsAPI.md#videoplaylistsidvideosplaylistelementidput) | **PUT** /video-playlists/{id}/videos/{playlistElementId} | Update a playlist element
[**videoPlaylistsIdVideosPost**](VideoPlaylistsAPI.md#videoplaylistsidvideospost) | **POST** /video-playlists/{id}/videos | Add a video in a playlist
[**videoPlaylistsIdVideosReorderPost**](VideoPlaylistsAPI.md#videoplaylistsidvideosreorderpost) | **POST** /video-playlists/{id}/videos/reorder | Reorder a playlist
[**videoPlaylistsPost**](VideoPlaylistsAPI.md#videoplaylistspost) | **POST** /video-playlists | Create a video playlist
[**videoPlaylistsPrivaciesGet**](VideoPlaylistsAPI.md#videoplaylistsprivaciesget) | **GET** /video-playlists/privacies | List available playlist privacies


# **usersMeVideoPlaylistsVideosExistGet**
```swift
    open class func usersMeVideoPlaylistsVideosExistGet(videoIds: [Int], completion: @escaping (_ data: InlineResponse2007?, _ error: Error?) -> Void)
```

Check video exists in my playlists

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let videoIds = [123] // [Int] | The video ids to check

// Check video exists in my playlists
VideoPlaylistsAPI.usersMeVideoPlaylistsVideosExistGet(videoIds: videoIds) { (response, error) in
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
 **videoIds** | [**[Int]**](Int.md) | The video ids to check | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoPlaylistsGet**
```swift
    open class func videoPlaylistsGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: InlineResponse2004?, _ error: Error?) -> Void)
```

List video playlists

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List video playlists
VideoPlaylistsAPI.videoPlaylistsGet(start: start, count: count, sort: sort) { (response, error) in
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

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoPlaylistsIdDelete**
```swift
    open class func videoPlaylistsIdDelete(id: OneOfintegerUUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a video playlist

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Delete a video playlist
VideoPlaylistsAPI.videoPlaylistsIdDelete(id: id) { (response, error) in
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

# **videoPlaylistsIdGet**
```swift
    open class func videoPlaylistsIdGet(id: OneOfintegerUUID, completion: @escaping (_ data: VideoPlaylist?, _ error: Error?) -> Void)
```

Get a video playlist

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Get a video playlist
VideoPlaylistsAPI.videoPlaylistsIdGet(id: id) { (response, error) in
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

[**VideoPlaylist**](VideoPlaylist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoPlaylistsIdPut**
```swift
    open class func videoPlaylistsIdPut(id: OneOfintegerUUID, displayName: String? = nil, thumbnailfile: URL? = nil, privacy: VideoPlaylistPrivacySet? = nil, description: String? = nil, videoChannelId: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a video playlist

If the video playlist is set as public, the playlist must have a assigned channel.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let displayName = "displayName_example" // String | Video playlist display name (optional)
let thumbnailfile = URL(string: "https://example.com")! // URL | Video playlist thumbnail file (optional)
let privacy = VideoPlaylistPrivacySet() // VideoPlaylistPrivacySet |  (optional)
let description = "description_example" // String | Video playlist description (optional)
let videoChannelId = 987 // Int | Video channel in which the playlist will be published (optional)

// Update a video playlist
VideoPlaylistsAPI.videoPlaylistsIdPut(id: id, displayName: displayName, thumbnailfile: thumbnailfile, privacy: privacy, description: description, videoChannelId: videoChannelId) { (response, error) in
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
 **displayName** | **String** | Video playlist display name | [optional] 
 **thumbnailfile** | **URL** | Video playlist thumbnail file | [optional] 
 **privacy** | [**VideoPlaylistPrivacySet**](VideoPlaylistPrivacySet.md) |  | [optional] 
 **description** | **String** | Video playlist description | [optional] 
 **videoChannelId** | **Int** | Video channel in which the playlist will be published | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoPlaylistsIdVideosGet**
```swift
    open class func videoPlaylistsIdVideosGet(id: OneOfintegerUUID, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

List videos of a playlist

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// List videos of a playlist
VideoPlaylistsAPI.videoPlaylistsIdVideosGet(id: id) { (response, error) in
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

[**VideoListResponse**](VideoListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoPlaylistsIdVideosPlaylistElementIdDelete**
```swift
    open class func videoPlaylistsIdVideosPlaylistElementIdDelete(id: OneOfintegerUUID, playlistElementId: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an element from a playlist

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let playlistElementId = 987 // Int | Playlist element id

// Delete an element from a playlist
VideoPlaylistsAPI.videoPlaylistsIdVideosPlaylistElementIdDelete(id: id, playlistElementId: playlistElementId) { (response, error) in
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
 **playlistElementId** | **Int** | Playlist element id | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoPlaylistsIdVideosPlaylistElementIdPut**
```swift
    open class func videoPlaylistsIdVideosPlaylistElementIdPut(id: OneOfintegerUUID, playlistElementId: Int, inlineObject19: InlineObject19? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a playlist element

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let playlistElementId = 987 // Int | Playlist element id
let inlineObject19 = inline_object_19(startTimestamp: 123, stopTimestamp: 123) // InlineObject19 |  (optional)

// Update a playlist element
VideoPlaylistsAPI.videoPlaylistsIdVideosPlaylistElementIdPut(id: id, playlistElementId: playlistElementId, inlineObject19: inlineObject19) { (response, error) in
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
 **playlistElementId** | **Int** | Playlist element id | 
 **inlineObject19** | [**InlineObject19**](InlineObject19.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoPlaylistsIdVideosPost**
```swift
    open class func videoPlaylistsIdVideosPost(id: OneOfintegerUUID, inlineObject17: InlineObject17? = nil, completion: @escaping (_ data: InlineResponse2006?, _ error: Error?) -> Void)
```

Add a video in a playlist

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let inlineObject17 = inline_object_17(videoId: 123, startTimestamp: 123, stopTimestamp: 123) // InlineObject17 |  (optional)

// Add a video in a playlist
VideoPlaylistsAPI.videoPlaylistsIdVideosPost(id: id, inlineObject17: inlineObject17) { (response, error) in
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
 **inlineObject17** | [**InlineObject17**](InlineObject17.md) |  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoPlaylistsIdVideosReorderPost**
```swift
    open class func videoPlaylistsIdVideosReorderPost(id: OneOfintegerUUID, inlineObject18: InlineObject18? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reorder a playlist

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let inlineObject18 = inline_object_18(startPosition: 123, insertAfterPosition: 123, reorderLength: 123) // InlineObject18 |  (optional)

// Reorder a playlist
VideoPlaylistsAPI.videoPlaylistsIdVideosReorderPost(id: id, inlineObject18: inlineObject18) { (response, error) in
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
 **inlineObject18** | [**InlineObject18**](InlineObject18.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoPlaylistsPost**
```swift
    open class func videoPlaylistsPost(displayName: String, thumbnailfile: URL? = nil, privacy: VideoPlaylistPrivacySet? = nil, description: String? = nil, videoChannelId: Int? = nil, completion: @escaping (_ data: InlineResponse2005?, _ error: Error?) -> Void)
```

Create a video playlist

If the video playlist is set as public, the videoChannelId is mandatory.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let displayName = "displayName_example" // String | Video playlist display name
let thumbnailfile = URL(string: "https://example.com")! // URL | Video playlist thumbnail file (optional)
let privacy = VideoPlaylistPrivacySet() // VideoPlaylistPrivacySet |  (optional)
let description = "description_example" // String | Video playlist description (optional)
let videoChannelId = 987 // Int | Video channel in which the playlist will be published (optional)

// Create a video playlist
VideoPlaylistsAPI.videoPlaylistsPost(displayName: displayName, thumbnailfile: thumbnailfile, privacy: privacy, description: description, videoChannelId: videoChannelId) { (response, error) in
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
 **displayName** | **String** | Video playlist display name | 
 **thumbnailfile** | **URL** | Video playlist thumbnail file | [optional] 
 **privacy** | [**VideoPlaylistPrivacySet**](VideoPlaylistPrivacySet.md) |  | [optional] 
 **description** | **String** | Video playlist description | [optional] 
 **videoChannelId** | **Int** | Video channel in which the playlist will be published | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videoPlaylistsPrivaciesGet**
```swift
    open class func videoPlaylistsPrivaciesGet(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

List available playlist privacies

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List available playlist privacies
VideoPlaylistsAPI.videoPlaylistsPrivaciesGet() { (response, error) in
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

