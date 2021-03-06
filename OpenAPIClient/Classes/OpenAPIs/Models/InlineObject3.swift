//
// InlineObject3.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct InlineObject3: Codable {

    public var newVideoFromSubscription: NotificationSettingValue?
    public var newCommentOnMyVideo: NotificationSettingValue?
    public var abuseAsModerator: NotificationSettingValue?
    public var videoAutoBlacklistAsModerator: NotificationSettingValue?
    public var blacklistOnMyVideo: NotificationSettingValue?
    public var myVideoPublished: NotificationSettingValue?
    public var myVideoImportFinished: NotificationSettingValue?
    public var newFollow: NotificationSettingValue?
    public var newUserRegistration: NotificationSettingValue?
    public var commentMention: NotificationSettingValue?
    public var newInstanceFollower: NotificationSettingValue?
    public var autoInstanceFollowing: NotificationSettingValue?

    public init(newVideoFromSubscription: NotificationSettingValue? = nil, newCommentOnMyVideo: NotificationSettingValue? = nil, abuseAsModerator: NotificationSettingValue? = nil, videoAutoBlacklistAsModerator: NotificationSettingValue? = nil, blacklistOnMyVideo: NotificationSettingValue? = nil, myVideoPublished: NotificationSettingValue? = nil, myVideoImportFinished: NotificationSettingValue? = nil, newFollow: NotificationSettingValue? = nil, newUserRegistration: NotificationSettingValue? = nil, commentMention: NotificationSettingValue? = nil, newInstanceFollower: NotificationSettingValue? = nil, autoInstanceFollowing: NotificationSettingValue? = nil) {
        self.newVideoFromSubscription = newVideoFromSubscription
        self.newCommentOnMyVideo = newCommentOnMyVideo
        self.abuseAsModerator = abuseAsModerator
        self.videoAutoBlacklistAsModerator = videoAutoBlacklistAsModerator
        self.blacklistOnMyVideo = blacklistOnMyVideo
        self.myVideoPublished = myVideoPublished
        self.myVideoImportFinished = myVideoImportFinished
        self.newFollow = newFollow
        self.newUserRegistration = newUserRegistration
        self.commentMention = commentMention
        self.newInstanceFollower = newInstanceFollower
        self.autoInstanceFollowing = autoInstanceFollowing
    }

}
