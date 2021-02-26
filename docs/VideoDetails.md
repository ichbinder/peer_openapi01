# VideoDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**uuid** | **UUID** |  | [optional] 
**isLive** | **Bool** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**publishedAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 
**originallyPublishedAt** | **Date** |  | [optional] 
**category** | [**VideoConstantNumber**](VideoConstantNumber.md) |  | [optional] 
**licence** | [**VideoConstantNumber**](VideoConstantNumber.md) |  | [optional] 
**language** | [**VideoConstantString**](VideoConstantString.md) |  | [optional] 
**privacy** | [**VideoPrivacyConstant**](VideoPrivacyConstant.md) |  | [optional] 
**description** | **String** |  | [optional] 
**duration** | **Int** |  | [optional] 
**isLocal** | **Bool** |  | [optional] 
**name** | **String** |  | [optional] 
**thumbnailPath** | **String** |  | [optional] 
**previewPath** | **String** |  | [optional] 
**embedPath** | **String** |  | [optional] 
**views** | **Int** |  | [optional] 
**likes** | **Int** |  | [optional] 
**dislikes** | **Int** |  | [optional] 
**nsfw** | **Bool** |  | [optional] 
**waitTranscoding** | **Bool** |  | [optional] 
**state** | [**VideoStateConstant**](VideoStateConstant.md) |  | [optional] 
**scheduledUpdate** | [**VideoScheduledUpdate**](VideoScheduledUpdate.md) |  | [optional] 
**blacklisted** | **Bool** |  | [optional] 
**blacklistedReason** | **String** |  | [optional] 
**account** | [**Account**](Account.md) |  | [optional] 
**channel** | [**VideoChannel**](VideoChannel.md) |  | [optional] 
**userHistory** | [**VideoUserHistory**](VideoUserHistory.md) |  | [optional] 
**descriptionPath** | **String** |  | [optional] 
**support** | **String** | A text tell the audience how to support the video creator | [optional] 
**tags** | **[String]** |  | [optional] 
**files** | [VideoFile] | WebTorrent/raw video files. Can be empty if WebTorrent is disabled on the server. In this case, video files will be in the \&quot;streamingPlaylists[].files\&quot; property | [optional] 
**commentsEnabled** | **Bool** |  | [optional] 
**downloadEnabled** | **Bool** |  | [optional] 
**trackerUrls** | **[String]** |  | [optional] 
**streamingPlaylists** | [VideoStreamingPlaylists] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


