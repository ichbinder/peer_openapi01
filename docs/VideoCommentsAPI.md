# VideoCommentsAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**videosIdCommentThreadsGet**](VideoCommentsAPI.md#videosidcommentthreadsget) | **GET** /videos/{id}/comment-threads | List threads of a video
[**videosIdCommentThreadsPost**](VideoCommentsAPI.md#videosidcommentthreadspost) | **POST** /videos/{id}/comment-threads | Create a thread
[**videosIdCommentThreadsThreadIdGet**](VideoCommentsAPI.md#videosidcommentthreadsthreadidget) | **GET** /videos/{id}/comment-threads/{threadId} | Get a thread
[**videosIdCommentsCommentIdDelete**](VideoCommentsAPI.md#videosidcommentscommentiddelete) | **DELETE** /videos/{id}/comments/{commentId} | Delete a comment or a reply
[**videosIdCommentsCommentIdPost**](VideoCommentsAPI.md#videosidcommentscommentidpost) | **POST** /videos/{id}/comments/{commentId} | Reply to a thread of a video


# **videosIdCommentThreadsGet**
```swift
    open class func videosIdCommentThreadsGet(id: OneOfintegerUUID, start: Int? = nil, count: Int? = nil, sort: Sort_videosIdCommentThreadsGet? = nil, completion: @escaping (_ data: CommentThreadResponse?, _ error: Error?) -> Void)
```

List threads of a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort comments by criteria (optional)

// List threads of a video
VideoCommentsAPI.videosIdCommentThreadsGet(id: id, start: start, count: count, sort: sort) { (response, error) in
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
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort comments by criteria | [optional] 

### Return type

[**CommentThreadResponse**](CommentThreadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdCommentThreadsPost**
```swift
    open class func videosIdCommentThreadsPost(id: OneOfintegerUUID, inlineObject20: InlineObject20? = nil, completion: @escaping (_ data: CommentThreadPostResponse?, _ error: Error?) -> Void)
```

Create a thread

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let inlineObject20 = inline_object_20(text: "text_example") // InlineObject20 |  (optional)

// Create a thread
VideoCommentsAPI.videosIdCommentThreadsPost(id: id, inlineObject20: inlineObject20) { (response, error) in
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
 **inlineObject20** | [**InlineObject20**](InlineObject20.md) |  | [optional] 

### Return type

[**CommentThreadPostResponse**](CommentThreadPostResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdCommentThreadsThreadIdGet**
```swift
    open class func videosIdCommentThreadsThreadIdGet(id: OneOfintegerUUID, threadId: Int, completion: @escaping (_ data: VideoCommentThreadTree?, _ error: Error?) -> Void)
```

Get a thread

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let threadId = 987 // Int | The thread id (root comment id)

// Get a thread
VideoCommentsAPI.videosIdCommentThreadsThreadIdGet(id: id, threadId: threadId) { (response, error) in
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
 **threadId** | **Int** | The thread id (root comment id) | 

### Return type

[**VideoCommentThreadTree**](VideoCommentThreadTree.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdCommentsCommentIdDelete**
```swift
    open class func videosIdCommentsCommentIdDelete(id: OneOfintegerUUID, commentId: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a comment or a reply

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let commentId = 987 // Int | The comment id

// Delete a comment or a reply
VideoCommentsAPI.videosIdCommentsCommentIdDelete(id: id, commentId: commentId) { (response, error) in
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
 **commentId** | **Int** | The comment id | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdCommentsCommentIdPost**
```swift
    open class func videosIdCommentsCommentIdPost(id: OneOfintegerUUID, commentId: Int, inlineObject21: InlineObject21? = nil, completion: @escaping (_ data: CommentThreadPostResponse?, _ error: Error?) -> Void)
```

Reply to a thread of a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let commentId = 987 // Int | The comment id
let inlineObject21 = inline_object_21(text: "text_example") // InlineObject21 |  (optional)

// Reply to a thread of a video
VideoCommentsAPI.videosIdCommentsCommentIdPost(id: id, commentId: commentId, inlineObject21: inlineObject21) { (response, error) in
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
 **commentId** | **Int** | The comment id | 
 **inlineObject21** | [**InlineObject21**](InlineObject21.md) |  | [optional] 

### Return type

[**CommentThreadPostResponse**](CommentThreadPostResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

