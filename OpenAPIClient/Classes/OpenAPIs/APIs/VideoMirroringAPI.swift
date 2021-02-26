//
// VideoMirroringAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class VideoMirroringAPI {
    /**
     * enum for parameter target
     */
    public enum Target_redundancyVideosGet: String, CaseIterable {
        case myVideos = "my-videos"
        case remoteVideos = "remote-videos"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_redundancyVideosGet: String, CaseIterable {
        case name = "name"
    }

    /**
     List videos being mirrored
     
     - parameter target: (query) direction of the mirror 
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort abuses by criteria (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func redundancyVideosGet(target: Target_redundancyVideosGet, start: Int? = nil, count: Int? = nil, sort: Sort_redundancyVideosGet? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [VideoRedundancy]?, _ error: Error?) -> Void)) {
        redundancyVideosGetWithRequestBuilder(target: target, start: start, count: count, sort: sort).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List videos being mirrored
     - GET /redundancy/videos
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter target: (query) direction of the mirror 
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort abuses by criteria (optional)
     - returns: RequestBuilder<[VideoRedundancy]> 
     */
    open class func redundancyVideosGetWithRequestBuilder(target: Target_redundancyVideosGet, start: Int? = nil, count: Int? = nil, sort: Sort_redundancyVideosGet? = nil) -> RequestBuilder<[VideoRedundancy]> {
        let path = "/redundancy/videos"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "target": target.encodeToJSON(),
            "start": start?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[VideoRedundancy]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Mirror a video
     
     - parameter inlineObject25: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func redundancyVideosPost(inlineObject25: InlineObject25? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        redundancyVideosPostWithRequestBuilder(inlineObject25: inlineObject25).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Mirror a video
     - POST /redundancy/videos
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter inlineObject25: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func redundancyVideosPostWithRequestBuilder(inlineObject25: InlineObject25? = nil) -> RequestBuilder<Void> {
        let path = "/redundancy/videos"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineObject25)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Delete a mirror done on a video
     
     - parameter redundancyId: (path) id of an existing redundancy on a video 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func redundancyVideosRedundancyIdDelete(redundancyId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        redundancyVideosRedundancyIdDeleteWithRequestBuilder(redundancyId: redundancyId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a mirror done on a video
     - DELETE /redundancy/videos/{redundancyId}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter redundancyId: (path) id of an existing redundancy on a video 
     - returns: RequestBuilder<Void> 
     */
    open class func redundancyVideosRedundancyIdDeleteWithRequestBuilder(redundancyId: String) -> RequestBuilder<Void> {
        var path = "/redundancy/videos/{redundancyId}"
        let redundancyIdPreEscape = "\(APIHelper.mapValueToPathItem(redundancyId))"
        let redundancyIdPostEscape = redundancyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{redundancyId}", with: redundancyIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}