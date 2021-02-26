# MyNotificationsAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersMeNotificationSettingsPut**](MyNotificationsAPI.md#usersmenotificationsettingsput) | **PUT** /users/me/notification-settings | Update my notification settings
[**usersMeNotificationsGet**](MyNotificationsAPI.md#usersmenotificationsget) | **GET** /users/me/notifications | List my notifications
[**usersMeNotificationsReadAllPost**](MyNotificationsAPI.md#usersmenotificationsreadallpost) | **POST** /users/me/notifications/read-all | Mark all my notification as read
[**usersMeNotificationsReadPost**](MyNotificationsAPI.md#usersmenotificationsreadpost) | **POST** /users/me/notifications/read | Mark notifications as read by their id


# **usersMeNotificationSettingsPut**
```swift
    open class func usersMeNotificationSettingsPut(inlineObject3: InlineObject3? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update my notification settings

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject3 = inline_object_3(newVideoFromSubscription: NotificationSettingValue(), newCommentOnMyVideo: NotificationSettingValue(), abuseAsModerator: NotificationSettingValue(), videoAutoBlacklistAsModerator: NotificationSettingValue(), blacklistOnMyVideo: NotificationSettingValue(), myVideoPublished: NotificationSettingValue(), myVideoImportFinished: NotificationSettingValue(), newFollow: NotificationSettingValue(), newUserRegistration: NotificationSettingValue(), commentMention: NotificationSettingValue(), newInstanceFollower: NotificationSettingValue(), autoInstanceFollowing: NotificationSettingValue()) // InlineObject3 |  (optional)

// Update my notification settings
MyNotificationsAPI.usersMeNotificationSettingsPut(inlineObject3: inlineObject3) { (response, error) in
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
 **inlineObject3** | [**InlineObject3**](InlineObject3.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeNotificationsGet**
```swift
    open class func usersMeNotificationsGet(unread: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: NotificationListResponse?, _ error: Error?) -> Void)
```

List my notifications

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let unread = true // Bool | only list unread notifications (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List my notifications
MyNotificationsAPI.usersMeNotificationsGet(unread: unread, start: start, count: count, sort: sort) { (response, error) in
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
 **unread** | **Bool** | only list unread notifications | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 

### Return type

[**NotificationListResponse**](NotificationListResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeNotificationsReadAllPost**
```swift
    open class func usersMeNotificationsReadAllPost(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Mark all my notification as read

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Mark all my notification as read
MyNotificationsAPI.usersMeNotificationsReadAllPost() { (response, error) in
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

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeNotificationsReadPost**
```swift
    open class func usersMeNotificationsReadPost(inlineObject2: InlineObject2? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Mark notifications as read by their id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject2 = inline_object_2(ids: [123]) // InlineObject2 |  (optional)

// Mark notifications as read by their id
MyNotificationsAPI.usersMeNotificationsReadPost(inlineObject2: inlineObject2) { (response, error) in
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
 **inlineObject2** | [**InlineObject2**](InlineObject2.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

