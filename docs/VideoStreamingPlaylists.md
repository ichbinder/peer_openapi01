# VideoStreamingPlaylists

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**type** | **Int** | Playlist type (HLS &#x3D; &#x60;1&#x60;) | [optional] 
**playlistUrl** | **String** |  | [optional] 
**segmentsSha256Url** | **String** |  | [optional] 
**files** | [VideoFile] | Video files associated to this playlist. The difference with the root \&quot;files\&quot; property is that these files are fragmented, so they can be used in this streaming playlist (HLS etc) | [optional] 
**redundancies** | [VideoStreamingPlaylistsRedundancies] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


