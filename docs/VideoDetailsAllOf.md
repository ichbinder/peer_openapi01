# VideoDetailsAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**descriptionPath** | **String** |  | [optional] 
**support** | **String** | A text tell the audience how to support the video creator | [optional] 
**channel** | [**VideoChannel**](VideoChannel.md) |  | [optional] 
**account** | [**Account**](Account.md) |  | [optional] 
**tags** | **[String]** |  | [optional] 
**files** | [VideoFile] | WebTorrent/raw video files. Can be empty if WebTorrent is disabled on the server. In this case, video files will be in the \&quot;streamingPlaylists[].files\&quot; property | [optional] 
**commentsEnabled** | **Bool** |  | [optional] 
**downloadEnabled** | **Bool** |  | [optional] 
**trackerUrls** | **[String]** |  | [optional] 
**streamingPlaylists** | [VideoStreamingPlaylists] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


