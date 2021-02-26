# AccountBlocksAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blocklistAccountsAccountNameDelete**](AccountBlocksAPI.md#blocklistaccountsaccountnamedelete) | **DELETE** /blocklist/accounts/{accountName} | Unblock an account by its handle
[**blocklistAccountsGet**](AccountBlocksAPI.md#blocklistaccountsget) | **GET** /blocklist/accounts | List account blocks
[**blocklistAccountsPost**](AccountBlocksAPI.md#blocklistaccountspost) | **POST** /blocklist/accounts | Block an account


# **blocklistAccountsAccountNameDelete**
```swift
    open class func blocklistAccountsAccountNameDelete(accountName: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unblock an account by its handle

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountName = "accountName_example" // String | account to unblock, in the form `username@domain`

// Unblock an account by its handle
AccountBlocksAPI.blocklistAccountsAccountNameDelete(accountName: accountName) { (response, error) in
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
 **accountName** | **String** | account to unblock, in the form &#x60;username@domain&#x60; | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blocklistAccountsGet**
```swift
    open class func blocklistAccountsGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List account blocks

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List account blocks
AccountBlocksAPI.blocklistAccountsGet(start: start, count: count, sort: sort) { (response, error) in
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

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blocklistAccountsPost**
```swift
    open class func blocklistAccountsPost(inlineObject22: InlineObject22? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Block an account

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject22 = inline_object_22(accountName: "accountName_example") // InlineObject22 |  (optional)

// Block an account
AccountBlocksAPI.blocklistAccountsPost(inlineObject22: inlineObject22) { (response, error) in
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
 **inlineObject22** | [**InlineObject22**](InlineObject22.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

