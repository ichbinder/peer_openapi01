//
// UserWatchingVideo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct UserWatchingVideo: Codable {

    /** timestamp within the video, in seconds */
    public var currentTime: Int?

    public init(currentTime: Int? = nil) {
        self.currentTime = currentTime
    }

}