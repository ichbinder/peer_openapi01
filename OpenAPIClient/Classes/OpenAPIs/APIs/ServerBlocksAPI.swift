//
// ServerBlocksAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class ServerBlocksAPI {
    /**
     List server blocks
     
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func blocklistServersGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        blocklistServersGetWithRequestBuilder(start: start, count: count, sort: sort).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List server blocks
     - GET /blocklist/servers
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func blocklistServersGetWithRequestBuilder(start: Int? = nil, count: Int? = nil, sort: String? = nil) -> RequestBuilder<Void> {
        let path = "/blocklist/servers"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Unblock a server by its domain
     
     - parameter host: (path) server domain to unblock 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func blocklistServersHostDelete(host: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        blocklistServersHostDeleteWithRequestBuilder(host: host).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Unblock a server by its domain
     - DELETE /blocklist/servers/{host}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter host: (path) server domain to unblock 
     - returns: RequestBuilder<Void> 
     */
    open class func blocklistServersHostDeleteWithRequestBuilder(host: String) -> RequestBuilder<Void> {
        var path = "/blocklist/servers/{host}"
        let hostPreEscape = "\(APIHelper.mapValueToPathItem(host))"
        let hostPostEscape = hostPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{host}", with: hostPostEscape, options: .literal, range: nil)
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

    /**
     Block a server
     
     - parameter inlineObject23: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func blocklistServersPost(inlineObject23: InlineObject23? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        blocklistServersPostWithRequestBuilder(inlineObject23: inlineObject23).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Block a server
     - POST /blocklist/servers
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter inlineObject23: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func blocklistServersPostWithRequestBuilder(inlineObject23: InlineObject23? = nil) -> RequestBuilder<Void> {
        let path = "/blocklist/servers"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineObject23)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
