//
// FeedsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class FeedsAPI {
    /**
     * enum for parameter format
     */
    public enum Format_feedsVideoCommentsFormatGet: String, CaseIterable {
        case xml = "xml"
        case rss = "rss"
        case rss2 = "rss2"
        case atom = "atom"
        case atom1 = "atom1"
        case json = "json"
        case json1 = "json1"
    }

    /**
     List comments on videos
     
     - parameter format: (path) format expected (we focus on making &#x60;rss&#x60; the most featureful ; it serves [Media RSS](https://www.rssboard.org/media-rss)) 
     - parameter videoId: (query) limit listing to a specific video (optional)
     - parameter accountId: (query) limit listing to a specific account (optional)
     - parameter accountName: (query) limit listing to a specific account (optional)
     - parameter videoChannelId: (query) limit listing to a specific video channel (optional)
     - parameter videoChannelName: (query) limit listing to a specific video channel (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func feedsVideoCommentsFormatGet(format: Format_feedsVideoCommentsFormatGet, videoId: String? = nil, accountId: String? = nil, accountName: String? = nil, videoChannelId: String? = nil, videoChannelName: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Any]?, _ error: Error?) -> Void)) {
        feedsVideoCommentsFormatGetWithRequestBuilder(format: format, videoId: videoId, accountId: accountId, accountName: accountName, videoChannelId: videoChannelId, videoChannelName: videoChannelName).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List comments on videos
     - GET /feeds/video-comments.{format}
     - responseHeaders: [Cache-Control(String)]
     - parameter format: (path) format expected (we focus on making &#x60;rss&#x60; the most featureful ; it serves [Media RSS](https://www.rssboard.org/media-rss)) 
     - parameter videoId: (query) limit listing to a specific video (optional)
     - parameter accountId: (query) limit listing to a specific account (optional)
     - parameter accountName: (query) limit listing to a specific account (optional)
     - parameter videoChannelId: (query) limit listing to a specific video channel (optional)
     - parameter videoChannelName: (query) limit listing to a specific video channel (optional)
     - returns: RequestBuilder<[Any]> 
     */
    open class func feedsVideoCommentsFormatGetWithRequestBuilder(format: Format_feedsVideoCommentsFormatGet, videoId: String? = nil, accountId: String? = nil, accountName: String? = nil, videoChannelId: String? = nil, videoChannelName: String? = nil) -> RequestBuilder<[Any]> {
        var path = "/feeds/video-comments.{format}"
        let formatPreEscape = "\(format.rawValue)"
        let formatPostEscape = formatPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{format}", with: formatPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "videoId": videoId?.encodeToJSON(),
            "accountId": accountId?.encodeToJSON(),
            "accountName": accountName?.encodeToJSON(),
            "videoChannelId": videoChannelId?.encodeToJSON(),
            "videoChannelName": videoChannelName?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[Any]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter format
     */
    public enum Format_feedsVideosFormatGet: String, CaseIterable {
        case xml = "xml"
        case rss = "rss"
        case rss2 = "rss2"
        case atom = "atom"
        case atom1 = "atom1"
        case json = "json"
        case json1 = "json1"
    }

    /**
     * enum for parameter nsfw
     */
    public enum Nsfw_feedsVideosFormatGet: String, CaseIterable {
        case _true = "true"
        case _false = "false"
    }

    /**
     * enum for parameter filter
     */
    public enum Filter_feedsVideosFormatGet: String, CaseIterable {
        case local = "local"
        case allLocal = "all-local"
    }

    /**
     List videos
     
     - parameter format: (path) format expected (we focus on making &#x60;rss&#x60; the most featureful ; it serves [Media RSS](https://www.rssboard.org/media-rss)) 
     - parameter accountId: (query) limit listing to a specific account (optional)
     - parameter accountName: (query) limit listing to a specific account (optional)
     - parameter videoChannelId: (query) limit listing to a specific video channel (optional)
     - parameter videoChannelName: (query) limit listing to a specific video channel (optional)
     - parameter sort: (query) Sort column (optional)
     - parameter nsfw: (query) whether to include nsfw videos, if any (optional)
     - parameter filter: (query) Special filters which might require special rights:  * &#x60;local&#x60; - only videos local to the instance  * &#x60;all-local&#x60; - only videos local to the instance, but showing private and unlisted videos (requires Admin privileges)  * &#x60;all&#x60; - all videos, showing private and unlisted videos (requires Admin privileges)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func feedsVideosFormatGet(format: Format_feedsVideosFormatGet, accountId: String? = nil, accountName: String? = nil, videoChannelId: String? = nil, videoChannelName: String? = nil, sort: String? = nil, nsfw: Nsfw_feedsVideosFormatGet? = nil, filter: Filter_feedsVideosFormatGet? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Any]?, _ error: Error?) -> Void)) {
        feedsVideosFormatGetWithRequestBuilder(format: format, accountId: accountId, accountName: accountName, videoChannelId: videoChannelId, videoChannelName: videoChannelName, sort: sort, nsfw: nsfw, filter: filter).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List videos
     - GET /feeds/videos.{format}
     - responseHeaders: [Cache-Control(String)]
     - parameter format: (path) format expected (we focus on making &#x60;rss&#x60; the most featureful ; it serves [Media RSS](https://www.rssboard.org/media-rss)) 
     - parameter accountId: (query) limit listing to a specific account (optional)
     - parameter accountName: (query) limit listing to a specific account (optional)
     - parameter videoChannelId: (query) limit listing to a specific video channel (optional)
     - parameter videoChannelName: (query) limit listing to a specific video channel (optional)
     - parameter sort: (query) Sort column (optional)
     - parameter nsfw: (query) whether to include nsfw videos, if any (optional)
     - parameter filter: (query) Special filters which might require special rights:  * &#x60;local&#x60; - only videos local to the instance  * &#x60;all-local&#x60; - only videos local to the instance, but showing private and unlisted videos (requires Admin privileges)  * &#x60;all&#x60; - all videos, showing private and unlisted videos (requires Admin privileges)  (optional)
     - returns: RequestBuilder<[Any]> 
     */
    open class func feedsVideosFormatGetWithRequestBuilder(format: Format_feedsVideosFormatGet, accountId: String? = nil, accountName: String? = nil, videoChannelId: String? = nil, videoChannelName: String? = nil, sort: String? = nil, nsfw: Nsfw_feedsVideosFormatGet? = nil, filter: Filter_feedsVideosFormatGet? = nil) -> RequestBuilder<[Any]> {
        var path = "/feeds/videos.{format}"
        let formatPreEscape = "\(format.rawValue)"
        let formatPostEscape = formatPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{format}", with: formatPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "accountId": accountId?.encodeToJSON(),
            "accountName": accountName?.encodeToJSON(),
            "videoChannelId": videoChannelId?.encodeToJSON(),
            "videoChannelName": videoChannelName?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "nsfw": nsfw?.encodeToJSON(),
            "filter": filter?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[Any]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
