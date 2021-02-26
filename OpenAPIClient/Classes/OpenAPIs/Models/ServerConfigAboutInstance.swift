//
// ServerConfigAboutInstance.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigAboutInstance: Codable {

    public var name: String?
    public var shortDescription: String?
    public var description: String?
    public var terms: String?

    public init(name: String? = nil, shortDescription: String? = nil, description: String? = nil, terms: String? = nil) {
        self.name = name
        self.shortDescription = shortDescription
        self.description = description
        self.terms = terms
    }

}