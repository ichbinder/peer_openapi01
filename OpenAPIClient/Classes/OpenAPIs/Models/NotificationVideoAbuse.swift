//
// NotificationVideoAbuse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct NotificationVideoAbuse: Codable {

    public var id: Int?
    public var video: VideoInfo?

    public init(id: Int? = nil, video: VideoInfo? = nil) {
        self.id = id
        self.video = video
    }

}
