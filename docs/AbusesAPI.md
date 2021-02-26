# AbusesAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**abusesAbuseIdDelete**](AbusesAPI.md#abusesabuseiddelete) | **DELETE** /abuses/{abuseId} | Delete an abuse
[**abusesAbuseIdMessagesAbuseMessageIdDelete**](AbusesAPI.md#abusesabuseidmessagesabusemessageiddelete) | **DELETE** /abuses/{abuseId}/messages/{abuseMessageId} | Delete an abuse message
[**abusesAbuseIdMessagesGet**](AbusesAPI.md#abusesabuseidmessagesget) | **GET** /abuses/{abuseId}/messages | List messages of an abuse
[**abusesAbuseIdMessagesPost**](AbusesAPI.md#abusesabuseidmessagespost) | **POST** /abuses/{abuseId}/messages | Add message to an abuse
[**abusesAbuseIdPut**](AbusesAPI.md#abusesabuseidput) | **PUT** /abuses/{abuseId} | Update an abuse
[**abusesGet**](AbusesAPI.md#abusesget) | **GET** /abuses | List abuses
[**abusesPost**](AbusesAPI.md#abusespost) | **POST** /abuses | Report an abuse
[**usersMeAbusesGet**](AbusesAPI.md#usersmeabusesget) | **GET** /users/me/abuses | List my abuses


# **abusesAbuseIdDelete**
```swift
    open class func abusesAbuseIdDelete(abuseId: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an abuse

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let abuseId = 987 // Int | Abuse id

// Delete an abuse
AbusesAPI.abusesAbuseIdDelete(abuseId: abuseId) { (response, error) in
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
 **abuseId** | **Int** | Abuse id | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abusesAbuseIdMessagesAbuseMessageIdDelete**
```swift
    open class func abusesAbuseIdMessagesAbuseMessageIdDelete(abuseId: Int, abuseMessageId: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an abuse message

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let abuseId = 987 // Int | Abuse id
let abuseMessageId = 987 // Int | Abuse message id

// Delete an abuse message
AbusesAPI.abusesAbuseIdMessagesAbuseMessageIdDelete(abuseId: abuseId, abuseMessageId: abuseMessageId) { (response, error) in
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
 **abuseId** | **Int** | Abuse id | 
 **abuseMessageId** | **Int** | Abuse message id | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abusesAbuseIdMessagesGet**
```swift
    open class func abusesAbuseIdMessagesGet(abuseId: Int, completion: @escaping (_ data: [AbuseMessage]?, _ error: Error?) -> Void)
```

List messages of an abuse

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let abuseId = 987 // Int | Abuse id

// List messages of an abuse
AbusesAPI.abusesAbuseIdMessagesGet(abuseId: abuseId) { (response, error) in
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
 **abuseId** | **Int** | Abuse id | 

### Return type

[**[AbuseMessage]**](AbuseMessage.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abusesAbuseIdMessagesPost**
```swift
    open class func abusesAbuseIdMessagesPost(abuseId: Int, inlineObject13: InlineObject13, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add message to an abuse

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let abuseId = 987 // Int | Abuse id
let inlineObject13 = inline_object_13(message: "message_example") // InlineObject13 | 

// Add message to an abuse
AbusesAPI.abusesAbuseIdMessagesPost(abuseId: abuseId, inlineObject13: inlineObject13) { (response, error) in
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
 **abuseId** | **Int** | Abuse id | 
 **inlineObject13** | [**InlineObject13**](InlineObject13.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abusesAbuseIdPut**
```swift
    open class func abusesAbuseIdPut(abuseId: Int, inlineObject12: InlineObject12? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update an abuse

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let abuseId = 987 // Int | Abuse id
let inlineObject12 = inline_object_12(state: AbuseStateSet(), moderationComment: "moderationComment_example") // InlineObject12 |  (optional)

// Update an abuse
AbusesAPI.abusesAbuseIdPut(abuseId: abuseId, inlineObject12: inlineObject12) { (response, error) in
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
 **abuseId** | **Int** | Abuse id | 
 **inlineObject12** | [**InlineObject12**](InlineObject12.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abusesGet**
```swift
    open class func abusesGet(id: Int? = nil, predefinedReason: [String]? = nil, search: String? = nil, state: AbuseStateSet? = nil, searchReporter: String? = nil, searchReportee: String? = nil, searchVideo: String? = nil, searchVideoChannel: String? = nil, videoIs: VideoIs_abusesGet? = nil, filter: Filter_abusesGet? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_abusesGet? = nil, completion: @escaping (_ data: [Abuse]?, _ error: Error?) -> Void)
```

List abuses

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | only list the report with this id (optional)
let predefinedReason = ["predefinedReason_example"] // [String] | predefined reason the listed reports should contain (optional)
let search = "search_example" // String | plain search that will match with video titles, reporter names and more (optional)
let state = AbuseStateSet() // AbuseStateSet |  (optional)
let searchReporter = "searchReporter_example" // String | only list reports of a specific reporter (optional)
let searchReportee = "searchReportee_example" // String | only list reports of a specific reportee (optional)
let searchVideo = "searchVideo_example" // String | only list reports of a specific video (optional)
let searchVideoChannel = "searchVideoChannel_example" // String | only list reports of a specific video channel (optional)
let videoIs = "videoIs_example" // String | only list blacklisted or deleted videos (optional)
let filter = "filter_example" // String | only list account, comment or video reports (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort abuses by criteria (optional)

// List abuses
AbusesAPI.abusesGet(id: id, predefinedReason: predefinedReason, search: search, state: state, searchReporter: searchReporter, searchReportee: searchReportee, searchVideo: searchVideo, searchVideoChannel: searchVideoChannel, videoIs: videoIs, filter: filter, start: start, count: count, sort: sort) { (response, error) in
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
 **predefinedReason** | [**[String]**](String.md) | predefined reason the listed reports should contain | [optional] 
 **search** | **String** | plain search that will match with video titles, reporter names and more | [optional] 
 **state** | [**AbuseStateSet**](.md) |  | [optional] 
 **searchReporter** | **String** | only list reports of a specific reporter | [optional] 
 **searchReportee** | **String** | only list reports of a specific reportee | [optional] 
 **searchVideo** | **String** | only list reports of a specific video | [optional] 
 **searchVideoChannel** | **String** | only list reports of a specific video channel | [optional] 
 **videoIs** | **String** | only list blacklisted or deleted videos | [optional] 
 **filter** | **String** | only list account, comment or video reports | [optional] 
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

# **abusesPost**
```swift
    open class func abusesPost(inlineObject11: InlineObject11, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Report an abuse

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject11 = inline_object_11(reason: "reason_example", predefinedReasons: ["predefinedReasons_example"], video: _abuses_video(id: 123, startAt: 123, endAt: 123), comment: _abuses_comment(id: 123), account: _abuses_account(id: 123)) // InlineObject11 | 

// Report an abuse
AbusesAPI.abusesPost(inlineObject11: inlineObject11) { (response, error) in
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
 **inlineObject11** | [**InlineObject11**](InlineObject11.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
AbusesAPI.usersMeAbusesGet(id: id, state: state, start: start, count: count, sort: sort) { (response, error) in
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

