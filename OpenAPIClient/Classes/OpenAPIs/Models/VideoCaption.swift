//
// VideoCaption.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoCaption: Codable {

    public var language: VideoConstantString?
    public var captionPath: String?

    public init(language: VideoConstantString? = nil, captionPath: String? = nil) {
        self.language = language
        self.captionPath = captionPath
    }

}
