# User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] [readonly] 
**username** | **String** | The user username | [optional] 
**email** | **String** | The user email | [optional] 
**pluginAuth** | **String** | Auth plugin to use to authenticate the user | [optional] 
**theme** | **String** | Theme enabled by this user | [optional] 
**emailVerified** | **Bool** | Has the user confirmed their email address? | [optional] 
**nsfwPolicy** | [**NSFWPolicy**](NSFWPolicy.md) |  | [optional] 
**webtorrentEnabled** | **Bool** | Enable P2P in the player | [optional] 
**autoPlayVideo** | **Bool** | Automatically start playing the video on the watch page | [optional] 
**role** | [**UserRole**](UserRole.md) |  | [optional] 
**roleLabel** | **String** |  | [optional] 
**videoQuota** | **Int** | The user video quota | [optional] 
**videoQuotaDaily** | **Int** | The user daily video quota | [optional] 
**videosCount** | **Int** |  | [optional] 
**abusesCount** | **Int** |  | [optional] 
**abusesAcceptedCount** | **Int** |  | [optional] 
**abusesCreatedCount** | **Int** |  | [optional] 
**videoCommentsCount** | **Int** |  | [optional] 
**noInstanceConfigWarningModal** | **Bool** |  | [optional] 
**noWelcomeModal** | **Bool** |  | [optional] 
**blocked** | **Bool** |  | [optional] 
**blockedReason** | **String** |  | [optional] 
**createdAt** | **String** |  | [optional] 
**account** | [**Account**](Account.md) |  | [optional] 
**videoChannels** | [VideoChannel] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


