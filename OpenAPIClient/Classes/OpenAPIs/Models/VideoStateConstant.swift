//
// VideoStateConstant.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoStateConstant: Codable {

    public enum Id: Int, Codable, CaseIterable {
        case _1 = 1
        case _2 = 2
        case _3 = 3
    }
    /** The video state (Published &#x3D; &#x60;1&#x60;, to transcode &#x3D; &#x60;2&#x60;, to import &#x3D; &#x60;3&#x60;) */
    public var id: Id?
    public var label: String?

    public init(id: Id? = nil, label: String? = nil) {
        self.id = id
        self.label = label
    }

}
