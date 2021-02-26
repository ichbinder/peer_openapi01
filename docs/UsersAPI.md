# UsersAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delUserId**](UsersAPI.md#deluserid) | **DELETE** /users/{id} | Delete a user
[**getUserId**](UsersAPI.md#getuserid) | **GET** /users/{id} | Get a user
[**putUserId**](UsersAPI.md#putuserid) | **PUT** /users/{id} | Update a user
[**usersGet**](UsersAPI.md#usersget) | **GET** /users | List users
[**usersPost**](UsersAPI.md#userspost) | **POST** /users | Create a user
[**usersRegisterPost**](UsersAPI.md#usersregisterpost) | **POST** /users/register | Register a user


# **delUserId**
```swift
    open class func delUserId(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The user id

// Delete a user
UsersAPI.delUserId(id: id) { (response, error) in
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
 **id** | **Int** | The user id | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserId**
```swift
    open class func getUserId(id: Int, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Get a user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The user id

// Get a user
UsersAPI.getUserId(id: id) { (response, error) in
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
 **id** | **Int** | The user id | 

### Return type

[**User**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUserId**
```swift
    open class func putUserId(id: Int, updateUser: UpdateUser, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The user id
let updateUser = UpdateUser(id: "id_example", email: "email_example", emailVerified: false, videoQuota: 123, videoQuotaDaily: 123, pluginAuth: "pluginAuth_example", role: UserRole(), adminFlags: UserAdminFlags()) // UpdateUser | 

// Update a user
UsersAPI.putUserId(id: id, updateUser: updateUser) { (response, error) in
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
 **id** | **Int** | The user id | 
 **updateUser** | [**UpdateUser**](UpdateUser.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGet**
```swift
    open class func usersGet(search: String? = nil, blocked: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_usersGet? = nil, completion: @escaping (_ data: [User]?, _ error: Error?) -> Void)
```

List users

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let search = "search_example" // String | Plain text search that will match with user usernames or emails (optional)
let blocked = true // Bool | Filter results down to (un)banned users (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort users by criteria (optional)

// List users
UsersAPI.usersGet(search: search, blocked: blocked, start: start, count: count, sort: sort) { (response, error) in
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
 **search** | **String** | Plain text search that will match with user usernames or emails | [optional] 
 **blocked** | **Bool** | Filter results down to (un)banned users | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort users by criteria | [optional] 

### Return type

[**[User]**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersPost**
```swift
    open class func usersPost(addUser: AddUser, completion: @escaping (_ data: AddUserResponse?, _ error: Error?) -> Void)
```

Create a user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let addUser = AddUser(username: "username_example", password: "password_example", email: "email_example", videoQuota: 123, videoQuotaDaily: 123, channelName: "channelName_example", role: UserRole(), adminFlags: UserAdminFlags()) // AddUser | User to create

// Create a user
UsersAPI.usersPost(addUser: addUser) { (response, error) in
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
 **addUser** | [**AddUser**](AddUser.md) | User to create | 

### Return type

[**AddUserResponse**](AddUserResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersRegisterPost**
```swift
    open class func usersRegisterPost(registerUser: RegisterUser, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Register a user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let registerUser = RegisterUser(username: "username_example", password: "password_example", email: "email_example", displayName: "displayName_example", channel: RegisterUser_channel(name: "name_example", displayName: "displayName_example")) // RegisterUser | 

// Register a user
UsersAPI.usersRegisterPost(registerUser: registerUser) { (response, error) in
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
 **registerUser** | [**RegisterUser**](RegisterUser.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

