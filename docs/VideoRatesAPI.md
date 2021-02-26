# VideoRatesAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersMeVideosVideoIdRatingGet**](VideoRatesAPI.md#usersmevideosvideoidratingget) | **GET** /users/me/videos/{videoId}/rating | Get rate of my user for a video
[**videosIdRatePut**](VideoRatesAPI.md#videosidrateput) | **PUT** /videos/{id}/rate | Like/dislike a video


# **usersMeVideosVideoIdRatingGet**
```swift
    open class func usersMeVideosVideoIdRatingGet(videoId: String, completion: @escaping (_ data: GetMeVideoRating?, _ error: Error?) -> Void)
```

Get rate of my user for a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let videoId = "videoId_example" // String | The video id 

// Get rate of my user for a video
VideoRatesAPI.usersMeVideosVideoIdRatingGet(videoId: videoId) { (response, error) in
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
 **videoId** | **String** | The video id  | 

### Return type

[**GetMeVideoRating**](GetMeVideoRating.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdRatePut**
```swift
    open class func videosIdRatePut(id: OneOfintegerUUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Like/dislike a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// Like/dislike a video
VideoRatesAPI.videosIdRatePut(id: id) { (response, error) in
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

