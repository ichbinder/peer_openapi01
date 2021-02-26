//
// VideoRedundancyRedundancies.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoRedundancyRedundancies: Codable {

    public var files: [FileRedundancyInformation]?
    public var streamingPlaylists: [FileRedundancyInformation]?

    public init(files: [FileRedundancyInformation]? = nil, streamingPlaylists: [FileRedundancyInformation]? = nil) {
        self.files = files
        self.streamingPlaylists = streamingPlaylists
    }

}
