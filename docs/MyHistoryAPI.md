# MyHistoryAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersMeHistoryVideosGet**](MyHistoryAPI.md#usersmehistoryvideosget) | **GET** /users/me/history/videos | List watched videos history
[**usersMeHistoryVideosRemovePost**](MyHistoryAPI.md#usersmehistoryvideosremovepost) | **POST** /users/me/history/videos/remove | Clear video history


# **usersMeHistoryVideosGet**
```swift
    open class func usersMeHistoryVideosGet(start: Int? = nil, count: Int? = nil, search: String? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

List watched videos history

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let search = "search_example" // String | Plain text search, applied to various parts of the model depending on endpoint (optional)

// List watched videos history
MyHistoryAPI.usersMeHistoryVideosGet(start: start, count: count, search: search) { (response, error) in
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
 **search** | **String** | Plain text search, applied to various parts of the model depending on endpoint | [optional] 

### Return type

[**VideoListResponse**](VideoListResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeHistoryVideosRemovePost**
```swift
    open class func usersMeHistoryVideosRemovePost(beforeDate: Date? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Clear video history

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let beforeDate = Date() // Date | history before this date will be deleted (optional)

// Clear video history
MyHistoryAPI.usersMeHistoryVideosRemovePost(beforeDate: beforeDate) { (response, error) in
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
 **beforeDate** | **Date** | history before this date will be deleted | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

