# MyUserAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersMeAbusesGet**](MyUserAPI.md#usersmeabusesget) | **GET** /users/me/abuses | List my abuses
[**usersMeAvatarPickPost**](MyUserAPI.md#usersmeavatarpickpost) | **POST** /users/me/avatar/pick | Update my user avatar
[**usersMeGet**](MyUserAPI.md#usersmeget) | **GET** /users/me | Get my user information
[**usersMePut**](MyUserAPI.md#usersmeput) | **PUT** /users/me | Update my user information
[**usersMeVideoQuotaUsedGet**](MyUserAPI.md#usersmevideoquotausedget) | **GET** /users/me/video-quota-used | Get my user used quota
[**usersMeVideosGet**](MyUserAPI.md#usersmevideosget) | **GET** /users/me/videos | Get videos of my user
[**usersMeVideosImportsGet**](MyUserAPI.md#usersmevideosimportsget) | **GET** /users/me/videos/imports | Get video imports of my user
[**usersMeVideosVideoIdRatingGet**](MyUserAPI.md#usersmevideosvideoidratingget) | **GET** /users/me/videos/{videoId}/rating | Get rate of my user for a video


# **usersMeAbusesGet**
```swift
    open class func usersMeAbusesGet(id: Int? = nil, state: AbuseStateSet? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_usersMeAbusesGet? = nil, completion: @escaping (_ data: [Abuse]?, _ error: Error?) -> Void)
```

List my abuses

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | only list the report with this id (optional)
let state = AbuseStateSet() // AbuseStateSet |  (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort abuses by criteria (optional)

// List my abuses
MyUserAPI.usersMeAbusesGet(id: id, state: state, start: start, count: count, sort: sort) { (response, error) in
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
 **id** | **Int** | only list the report with this id | [optional] 
 **state** | [**AbuseStateSet**](.md) |  | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort abuses by criteria | [optional] 

### Return type

[**[Abuse]**](Abuse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeAvatarPickPost**
```swift
    open class func usersMeAvatarPickPost(avatarfile: URL? = nil, completion: @escaping (_ data: Avatar?, _ error: Error?) -> Void)
```

Update my user avatar

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let avatarfile = URL(string: "https://example.com")! // URL | The file to upload. (optional)

// Update my user avatar
MyUserAPI.usersMeAvatarPickPost(avatarfile: avatarfile) { (response, error) in
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
 **avatarfile** | **URL** | The file to upload. | [optional] 

### Return type

[**Avatar**](Avatar.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeGet**
```swift
    open class func usersMeGet(completion: @escaping (_ data: [User]?, _ error: Error?) -> Void)
```

Get my user information

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get my user information
MyUserAPI.usersMeGet() { (response, error) in
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

[**[User]**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMePut**
```swift
    open class func usersMePut(updateMe: UpdateMe, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update my user information

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateMe = UpdateMe(password: "password_example", email: "email_example", displayNSFW: "displayNSFW_example", autoPlayVideo: false) // UpdateMe | 

// Update my user information
MyUserAPI.usersMePut(updateMe: updateMe) { (response, error) in
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
 **updateMe** | [**UpdateMe**](UpdateMe.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeVideoQuotaUsedGet**
```swift
    open class func usersMeVideoQuotaUsedGet(completion: @escaping (_ data: Double?, _ error: Error?) -> Void)
```

Get my user used quota

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get my user used quota
MyUserAPI.usersMeVideoQuotaUsedGet() { (response, error) in
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

**Double**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeVideosGet**
```swift
    open class func usersMeVideosGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

Get videos of my user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// Get videos of my user
MyUserAPI.usersMeVideosGet(start: start, count: count, sort: sort) { (response, error) in
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

[**VideoListResponse**](VideoListResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeVideosImportsGet**
```swift
    open class func usersMeVideosImportsGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: VideoImport?, _ error: Error?) -> Void)
```

Get video imports of my user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// Get video imports of my user
MyUserAPI.usersMeVideosImportsGet(start: start, count: count, sort: sort) { (response, error) in
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

[**VideoImport**](VideoImport.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
MyUserAPI.usersMeVideosVideoIdRatingGet(videoId: videoId) { (response, error) in
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

