# JobAPI

All URIs are relative to *https://peertube2.cpy.re/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jobsStateGet**](JobAPI.md#jobsstateget) | **GET** /jobs/{state} | List instance jobs


# **jobsStateGet**
```swift
    open class func jobsStateGet(state: State_jobsStateGet, jobType: JobType_jobsStateGet? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: InlineResponse200?, _ error: Error?) -> Void)
```

List instance jobs

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let state = "state_example" // String | The state of the job ('' for for no filter)
let jobType = "jobType_example" // String | job type (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List instance jobs
JobAPI.jobsStateGet(state: state, jobType: jobType, start: start, count: count, sort: sort) { (response, error) in
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
 **state** | **String** | The state of the job (&#39;&#39; for for no filter) | 
 **jobType** | **String** | job type | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

