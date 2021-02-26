//
// User.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct User: Codable {

    public enum RoleLabel: String, Codable, CaseIterable {
        case user = "User"
        case moderator = "Moderator"
        case administrator = "Administrator"
    }
    public var id: Int?
    /** The user username */
    public var username: String?
    /** The user email */
    public var email: String?
    /** Auth plugin to use to authenticate the user */
    public var pluginAuth: String?
    /** Theme enabled by this user */
    public var theme: String?
    /** Has the user confirmed their email address? */
    public var emailVerified: Bool?
    public var nsfwPolicy: NSFWPolicy?
    /** Enable P2P in the player */
    public var webtorrentEnabled: Bool?
    /** Automatically start playing the video on the watch page */
    public var autoPlayVideo: Bool?
    public var role: UserRole?
    public var roleLabel: RoleLabel?
    /** The user video quota */
    public var videoQuota: Int?
    /** The user daily video quota */
    public var videoQuotaDaily: Int?
    public var videosCount: Int?
    public var abusesCount: Int?
    public var abusesAcceptedCount: Int?
    public var abusesCreatedCount: Int?
    public var videoCommentsCount: Int?
    public var noInstanceConfigWarningModal: Bool?
    public var noWelcomeModal: Bool?
    public var blocked: Bool?
    public var blockedReason: String?
    public var createdAt: String?
    public var account: Account?
    public var videoChannels: [VideoChannel]?

    public init(id: Int? = nil, username: String? = nil, email: String? = nil, pluginAuth: String? = nil, theme: String? = nil, emailVerified: Bool? = nil, nsfwPolicy: NSFWPolicy? = nil, webtorrentEnabled: Bool? = nil, autoPlayVideo: Bool? = nil, role: UserRole? = nil, roleLabel: RoleLabel? = nil, videoQuota: Int? = nil, videoQuotaDaily: Int? = nil, videosCount: Int? = nil, abusesCount: Int? = nil, abusesAcceptedCount: Int? = nil, abusesCreatedCount: Int? = nil, videoCommentsCount: Int? = nil, noInstanceConfigWarningModal: Bool? = nil, noWelcomeModal: Bool? = nil, blocked: Bool? = nil, blockedReason: String? = nil, createdAt: String? = nil, account: Account? = nil, videoChannels: [VideoChannel]? = nil) {
        self.id = id
        self.username = username
        self.email = email
        self.pluginAuth = pluginAuth
        self.theme = theme
        self.emailVerified = emailVerified
        self.nsfwPolicy = nsfwPolicy
        self.webtorrentEnabled = webtorrentEnabled
        self.autoPlayVideo = autoPlayVideo
        self.role = role
        self.roleLabel = roleLabel
        self.videoQuota = videoQuota
        self.videoQuotaDaily = videoQuotaDaily
        self.videosCount = videosCount
        self.abusesCount = abusesCount
        self.abusesAcceptedCount = abusesAcceptedCount
        self.abusesCreatedCount = abusesCreatedCount
        self.videoCommentsCount = videoCommentsCount
        self.noInstanceConfigWarningModal = noInstanceConfigWarningModal
        self.noWelcomeModal = noWelcomeModal
        self.blocked = blocked
        self.blockedReason = blockedReason
        self.createdAt = createdAt
        self.account = account
        self.videoChannels = videoChannels
    }

}
