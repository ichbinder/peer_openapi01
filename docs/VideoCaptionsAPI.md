# VideoCaptionsAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**videosIdCaptionsCaptionLanguageDelete**](VideoCaptionsAPI.md#videosidcaptionscaptionlanguagedelete) | **DELETE** /videos/{id}/captions/{captionLanguage} | Delete a video caption
[**videosIdCaptionsCaptionLanguagePut**](VideoCaptionsAPI.md#videosidcaptionscaptionlanguageput) | **PUT** /videos/{id}/captions/{captionLanguage} | Add or replace a video caption
[**videosIdCaptionsGet**](VideoCaptionsAPI.md#videosidcaptionsget) | **GET** /videos/{id}/captions | List captions of a video


# **videosIdCaptionsCaptionLanguageDelete**
```swift
    open class func videosIdCaptionsCaptionLanguageDelete(id: OneOfintegerUUID, captionLanguage: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a video caption

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let captionLanguage = "captionLanguage_example" // String | The caption language

// Delete a video caption
VideoCaptionsAPI.videosIdCaptionsCaptionLanguageDelete(id: id, captionLanguage: captionLanguage) { (response, error) in
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
 **captionLanguage** | **String** | The caption language | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdCaptionsCaptionLanguagePut**
```swift
    open class func videosIdCaptionsCaptionLanguagePut(id: OneOfintegerUUID, captionLanguage: String, captionfile: URL? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add or replace a video caption

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid
let captionLanguage = "captionLanguage_example" // String | The caption language
let captionfile = URL(string: "https://example.com")! // URL | The file to upload. (optional)

// Add or replace a video caption
VideoCaptionsAPI.videosIdCaptionsCaptionLanguagePut(id: id, captionLanguage: captionLanguage, captionfile: captionfile) { (response, error) in
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
 **captionLanguage** | **String** | The caption language | 
 **captionfile** | **URL** | The file to upload. | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosIdCaptionsGet**
```swift
    open class func videosIdCaptionsGet(id: OneOfintegerUUID, completion: @escaping (_ data: InlineResponse2002?, _ error: Error?) -> Void)
```

List captions of a video

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = TODO // OneOfintegerUUID | The object id or uuid

// List captions of a video
VideoCaptionsAPI.videosIdCaptionsGet(id: id) { (response, error) in
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

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

