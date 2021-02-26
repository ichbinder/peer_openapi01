# AccountsAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountsGet**](AccountsAPI.md#accountsget) | **GET** /accounts | List accounts
[**accountsNameGet**](AccountsAPI.md#accountsnameget) | **GET** /accounts/{name} | Get an account
[**accountsNameRatingsGet**](AccountsAPI.md#accountsnameratingsget) | **GET** /accounts/{name}/ratings | List ratings of an account
[**accountsNameVideoChannelsGet**](AccountsAPI.md#accountsnamevideochannelsget) | **GET** /accounts/{name}/video-channels | List video channels of an account
[**accountsNameVideosGet**](AccountsAPI.md#accountsnamevideosget) | **GET** /accounts/{name}/videos | List videos of an account


# **accountsGet**
```swift
    open class func accountsGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: [Account]?, _ error: Error?) -> Void)
```

List accounts

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List accounts
AccountsAPI.accountsGet(start: start, count: count, sort: sort) { (response, error) in
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

[**[Account]**](Account.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountsNameGet**
```swift
    open class func accountsNameGet(name: String, completion: @escaping (_ data: Account?, _ error: Error?) -> Void)
```

Get an account

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The username or handle of the account

// Get an account
AccountsAPI.accountsNameGet(name: name) { (response, error) in
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

### Return type

[**Account**](Account.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountsNameRatingsGet**
```swift
    open class func accountsNameRatingsGet(name: String, start: Int? = nil, count: Int? = nil, sort: String? = nil, rating: Rating_accountsNameRatingsGet? = nil, completion: @escaping (_ data: [VideoRating]?, _ error: Error?) -> Void)
```

List ratings of an account

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The username or handle of the account
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)
let rating = "rating_example" // String | Optionally filter which ratings to retrieve (optional)

// List ratings of an account
AccountsAPI.accountsNameRatingsGet(name: name, start: start, count: count, sort: sort, rating: rating) { (response, error) in
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
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 
 **rating** | **String** | Optionally filter which ratings to retrieve | [optional] 

### Return type

[**[VideoRating]**](VideoRating.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
AccountsAPI.accountsNameVideoChannelsGet(name: name, withStats: withStats, start: start, count: count, sort: sort) { (response, error) in
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
AccountsAPI.accountsNameVideosGet(name: name, categoryOneOf: categoryOneOf, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, filter: filter, skipCount: skipCount, start: start, count: count, sort: sort) { (response, error) in
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

