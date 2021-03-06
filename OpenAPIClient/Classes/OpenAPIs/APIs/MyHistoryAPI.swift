//
// MyHistoryAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class MyHistoryAPI {
    /**
     List watched videos history
     
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter search: (query) Plain text search, applied to various parts of the model depending on endpoint (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersMeHistoryVideosGet(start: Int? = nil, count: Int? = nil, search: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: VideoListResponse?, _ error: Error?) -> Void)) {
        usersMeHistoryVideosGetWithRequestBuilder(start: start, count: count, search: search).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List watched videos history
     - GET /users/me/history/videos
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter search: (query) Plain text search, applied to various parts of the model depending on endpoint (optional)
     - returns: RequestBuilder<VideoListResponse> 
     */
    open class func usersMeHistoryVideosGetWithRequestBuilder(start: Int? = nil, count: Int? = nil, search: String? = nil) -> RequestBuilder<VideoListResponse> {
        let path = "/users/me/history/videos"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "search": search?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VideoListResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Clear video history
     
     - parameter beforeDate: (form) history before this date will be deleted (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersMeHistoryVideosRemovePost(beforeDate: Date? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        usersMeHistoryVideosRemovePostWithRequestBuilder(beforeDate: beforeDate).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Clear video history
     - POST /users/me/history/videos/remove
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter beforeDate: (form) history before this date will be deleted (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func usersMeHistoryVideosRemovePostWithRequestBuilder(beforeDate: Date? = nil) -> RequestBuilder<Void> {
        let path = "/users/me/history/videos/remove"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String: Any?] = [
            "beforeDate": beforeDate?.encodeToJSON(),
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
