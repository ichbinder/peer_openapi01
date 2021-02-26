//
// RegisterUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct RegisterUser: Codable {

    /** The username of the user */
    public var username: String
    /** The password of the user */
    public var password: String
    /** The email of the user */
    public var email: String
    /** The user display name */
    public var displayName: String?
    public var channel: RegisterUserChannel?

    public init(username: String, password: String, email: String, displayName: String? = nil, channel: RegisterUserChannel? = nil) {
        self.username = username
        self.password = password
        self.email = email
        self.displayName = displayName
        self.channel = channel
    }

}
