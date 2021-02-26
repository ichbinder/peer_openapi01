//
// NotificationVideoImport.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct NotificationVideoImport: Codable {

    public var id: Int?
    public var video: VideoInfo?
    public var torrentName: String?
    public var magnetUri: String?
    public var targetUri: String?

    public init(id: Int? = nil, video: VideoInfo? = nil, torrentName: String? = nil, magnetUri: String? = nil, targetUri: String? = nil) {
        self.id = id
        self.video = video
        self.torrentName = torrentName
        self.magnetUri = magnetUri
        self.targetUri = targetUri
    }

}
