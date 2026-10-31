.class interface abstract Landroidx/media3/session/MediaSession$ControllerCb;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ControllerCb"
.end annotation


# virtual methods
.method public onAudioAttributesChanged(ILandroidx/media3/common/AudioAttributes;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2218
    return-void
.end method

.method public onAvailableCommandsChangedFromPlayer(ILandroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "availableCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2144
    return-void
.end method

.method public onAvailableCommandsChangedFromSession(ILandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p3, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2141
    return-void
.end method

.method public onChildrenChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2150
    return-void
.end method

.method public onDeviceInfoChanged(ILandroidx/media3/common/DeviceInfo;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2220
    return-void
.end method

.method public onDeviceVolumeChanged(IIZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "volume"    # I
    .param p3, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2222
    return-void
.end method

.method public onDisconnected(I)V
    .locals 0
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2124
    return-void
.end method

.method public onError(ILandroidx/media3/session/SessionError;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "sessionError"    # Landroidx/media3/session/SessionError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2229
    return-void
.end method

.method public onIsLoadingChanged(IZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "isLoading"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2174
    return-void
.end method

.method public onIsPlayingChanged(IZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "isPlaying"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2172
    return-void
.end method

.method public onLibraryResult(ILandroidx/media3/session/LibraryResult;)V
    .locals 0
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/session/LibraryResult<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2100
    .local p2, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    return-void
.end method

.method public onMediaItemTransition(ILandroidx/media3/common/MediaItem;I)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2193
    return-void
.end method

.method public onMediaMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2225
    return-void
.end method

.method public onPeriodicSessionPositionInfoChanged(ILandroidx/media3/session/SessionPositionInfo;ZZI)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;
    .param p3, "canAccessCurrentMediaItem"    # Z
    .param p4, "canAccessTimeline"    # Z
    .param p5, "controllerInterfaceVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2120
    return-void
.end method

.method public onPlayWhenReadyChanged(IZI)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "playWhenReady"    # Z
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2163
    return-void
.end method

.method public onPlaybackParametersChanged(ILandroidx/media3/common/PlaybackParameters;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2182
    return-void
.end method

.method public onPlaybackStateChanged(IILandroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "state"    # I
    .param p3, "playerError"    # Landroidx/media3/common/PlaybackException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2170
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(II)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2166
    return-void
.end method

.method public onPlayerChanged(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "oldPlayerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "newPlayerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2104
    return-void
.end method

.method public onPlayerError(ILandroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "playerError"    # Landroidx/media3/common/PlaybackException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2159
    return-void
.end method

.method public onPlayerInfoChanged(ILandroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Commands;ZZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p3, "availableCommands"    # Landroidx/media3/common/Player$Commands;
    .param p4, "excludeTimeline"    # Z
    .param p5, "excludeTracks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2112
    return-void
.end method

.method public onPlaylistMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "metadata"    # Landroidx/media3/common/MediaMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2200
    return-void
.end method

.method public onPositionDiscontinuity(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2189
    return-void
.end method

.method public onRenderedFirstFrame(I)V
    .locals 0
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2227
    return-void
.end method

.method public onRepeatModeChanged(II)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2205
    return-void
.end method

.method public onSearchResultChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2154
    return-void
.end method

.method public onSeekBackIncrementChanged(IJ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "seekBackIncrementMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2208
    return-void
.end method

.method public onSeekForwardIncrementChanged(IJ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "seekForwardIncrementMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2211
    return-void
.end method

.method public onSessionActivityChanged(ILandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "sessionActivity"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2132
    return-void
.end method

.method public onSessionExtrasChanged(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "sessionExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2134
    return-void
.end method

.method public onSessionResult(ILandroidx/media3/session/SessionResult;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media3/session/SessionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2098
    return-void
.end method

.method public onShuffleModeEnabledChanged(IZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "shuffleModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2203
    return-void
.end method

.method public onTimelineChanged(ILandroidx/media3/common/Timeline;I)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2197
    return-void
.end method

.method public onTrackSelectionParametersChanged(ILandroidx/media3/common/TrackSelectionParameters;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2179
    return-void
.end method

.method public onTracksChanged(ILandroidx/media3/common/Tracks;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "tracks"    # Landroidx/media3/common/Tracks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2176
    return-void
.end method

.method public onVideoSizeChanged(ILandroidx/media3/common/VideoSize;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "videoSize"    # Landroidx/media3/common/VideoSize;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2213
    return-void
.end method

.method public onVolumeChanged(IF)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2215
    return-void
.end method

.method public sendCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2137
    return-void
.end method

.method public setCustomLayout(ILjava/util/List;)V
    .locals 0
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2126
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    return-void
.end method

.method public setMediaButtonPreferences(ILjava/util/List;)V
    .locals 0
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2129
    .local p2, "mediaButtonPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    return-void
.end method
