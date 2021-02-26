# SearchAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchVideoChannelsGet**](SearchAPI.md#searchvideochannelsget) | **GET** /search/video-channels | Search channels
[**searchVideosGet**](SearchAPI.md#searchvideosget) | **GET** /search/videos | Search videos


# **searchVideoChannelsGet**
```swift
    open class func searchVideoChannelsGet(search: String, start: Int? = nil, count: Int? = nil, searchTarget: SearchTarget_searchVideoChannelsGet? = nil, sort: String? = nil, completion: @escaping (_ data: [VideoChannel]?, _ error: Error?) -> Void)
```

Search channels

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let search = "search_example" // String | String to search. If the user can make a remote URI search, and the string is an URI then the PeerTube instance will fetch the remote object and add it to its database. Then, you can use the REST API to fetch the complete channel information and interact with it. 
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let searchTarget = "searchTarget_example" // String | If the administrator enabled search index support, you can override the default search target.  **Warning**: If you choose to make an index search, PeerTube will get results from a third party service. It means the instance may not yet know the objects you fetched. If you want to load video/channel information:   * If the current user has the ability to make a remote URI search (this information is available in the config endpoint),   then reuse the search API to make a search using the object URI so PeerTube instance fetches the remote object and fill its database.   After that, you can use the classic REST API endpoints to fetch the complete object or interact with it   * If the current user doesn't have the ability to make a remote URI search, then redirect the user on the origin instance or fetch   the data from the origin instance API  (optional)
let sort = "sort_example" // String | Sort column (optional)

// Search channels
SearchAPI.searchVideoChannelsGet(search: search, start: start, count: count, searchTarget: searchTarget, sort: sort) { (response, error) in
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
 **search** | **String** | String to search. If the user can make a remote URI search, and the string is an URI then the PeerTube instance will fetch the remote object and add it to its database. Then, you can use the REST API to fetch the complete channel information and interact with it.  | 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **searchTarget** | **String** | If the administrator enabled search index support, you can override the default search target.  **Warning**: If you choose to make an index search, PeerTube will get results from a third party service. It means the instance may not yet know the objects you fetched. If you want to load video/channel information:   * If the current user has the ability to make a remote URI search (this information is available in the config endpoint),   then reuse the search API to make a search using the object URI so PeerTube instance fetches the remote object and fill its database.   After that, you can use the classic REST API endpoints to fetch the complete object or interact with it   * If the current user doesn&#39;t have the ability to make a remote URI search, then redirect the user on the origin instance or fetch   the data from the origin instance API  | [optional] 
 **sort** | **String** | Sort column | [optional] 

### Return type

[**[VideoChannel]**](VideoChannel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchVideosGet**
```swift
    open class func searchVideosGet(search: String, categoryOneOf: OneOfintegerarray? = nil, tagsOneOf: OneOfstringarray? = nil, tagsAllOf: OneOfstringarray? = nil, licenceOneOf: OneOfintegerarray? = nil, languageOneOf: OneOfstringarray? = nil, nsfw: Nsfw_searchVideosGet? = nil, filter: Filter_searchVideosGet? = nil, skipCount: SkipCount_searchVideosGet? = nil, start: Int? = nil, count: Int? = nil, searchTarget: SearchTarget_searchVideosGet? = nil, sort: Sort_searchVideosGet? = nil, startDate: Date? = nil, endDate: Date? = nil, originallyPublishedStartDate: Date? = nil, originallyPublishedEndDate: Date? = nil, durationMin: Int? = nil, durationMax: Int? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

Search videos

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let search = "search_example" // String | String to search. If the user can make a remote URI search, and the string is an URI then the PeerTube instance will fetch the remote object and add it to its database. Then, you can use the REST API to fetch the complete video information and interact with it. 
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
let searchTarget = "searchTarget_example" // String | If the administrator enabled search index support, you can override the default search target.  **Warning**: If you choose to make an index search, PeerTube will get results from a third party service. It means the instance may not yet know the objects you fetched. If you want to load video/channel information:   * If the current user has the ability to make a remote URI search (this information is available in the config endpoint),   then reuse the search API to make a search using the object URI so PeerTube instance fetches the remote object and fill its database.   After that, you can use the classic REST API endpoints to fetch the complete object or interact with it   * If the current user doesn't have the ability to make a remote URI search, then redirect the user on the origin instance or fetch   the data from the origin instance API  (optional)
let sort = "sort_example" // String | Sort videos by criteria (optional)
let startDate = Date() // Date | Get videos that are published after this date (optional)
let endDate = Date() // Date | Get videos that are published before this date (optional)
let originallyPublishedStartDate = Date() // Date | Get videos that are originally published after this date (optional)
let originallyPublishedEndDate = Date() // Date | Get videos that are originally published before this date (optional)
let durationMin = 987 // Int | Get videos that have this minimum duration (optional)
let durationMax = 987 // Int | Get videos that have this maximum duration (optional)

// Search videos
SearchAPI.searchVideosGet(search: search, categoryOneOf: categoryOneOf, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, filter: filter, skipCount: skipCount, start: start, count: count, searchTarget: searchTarget, sort: sort, startDate: startDate, endDate: endDate, originallyPublishedStartDate: originallyPublishedStartDate, originallyPublishedEndDate: originallyPublishedEndDate, durationMin: durationMin, durationMax: durationMax) { (response, error) in
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
 **search** | **String** | String to search. If the user can make a remote URI search, and the string is an URI then the PeerTube instance will fetch the remote object and add it to its database. Then, you can use the REST API to fetch the complete video information and interact with it.  | 
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
 **searchTarget** | **String** | If the administrator enabled search index support, you can override the default search target.  **Warning**: If you choose to make an index search, PeerTube will get results from a third party service. It means the instance may not yet know the objects you fetched. If you want to load video/channel information:   * If the current user has the ability to make a remote URI search (this information is available in the config endpoint),   then reuse the search API to make a search using the object URI so PeerTube instance fetches the remote object and fill its database.   After that, you can use the classic REST API endpoints to fetch the complete object or interact with it   * If the current user doesn&#39;t have the ability to make a remote URI search, then redirect the user on the origin instance or fetch   the data from the origin instance API  | [optional] 
 **sort** | **String** | Sort videos by criteria | [optional] 
 **startDate** | **Date** | Get videos that are published after this date | [optional] 
 **endDate** | **Date** | Get videos that are published before this date | [optional] 
 **originallyPublishedStartDate** | **Date** | Get videos that are originally published after this date | [optional] 
 **originallyPublishedEndDate** | **Date** | Get videos that are originally published before this date | [optional] 
 **durationMin** | **Int** | Get videos that have this minimum duration | [optional] 
 **durationMax** | **Int** | Get videos that have this maximum duration | [optional] 

### Return type

[**VideoListResponse**](VideoListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

