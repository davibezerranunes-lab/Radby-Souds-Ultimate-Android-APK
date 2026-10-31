.class final Landroidx/media3/common/ForwardingPlayer$ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingPlayer.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/ForwardingPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForwardingListener"
.end annotation


# instance fields
.field private final forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

.field private final listener:Landroidx/media3/common/Player$Listener;


# direct methods
.method public constructor <init>(Landroidx/media3/common/ForwardingPlayer;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p1, "forwardingPlayer"    # Landroidx/media3/common/ForwardingPlayer;
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput-object p1, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    .line 925
    iput-object p2, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 926
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1124
    if-ne p0, p1, :cond_0

    .line 1125
    const/4 v0, 0x1

    return v0

    .line 1127
    :cond_0
    instance-of v0, p1, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1128
    return v1

    .line 1130
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;

    .line 1131
    .local v0, "that":Landroidx/media3/common/ForwardingPlayer$ForwardingListener;
    iget-object v2, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    iget-object v3, v0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1132
    return v1

    .line 1134
    :cond_2
    iget-object v1, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    iget-object v2, v0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1139
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1140
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1141
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 1
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1083
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    .line 1084
    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 1
    .param p1, "audioSessionId"    # I

    .line 1078
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onAudioSessionIdChanged(I)V

    .line 1079
    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 1
    .param p1, "availableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 973
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    .line 974
    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 1
    .param p1, "cueGroup"    # Landroidx/media3/common/text/CueGroup;

    .line 1104
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onCues(Landroidx/media3/common/text/CueGroup;)V

    .line 1105
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 1099
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    .line 1100
    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 1
    .param p1, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;

    .line 1114
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    .line 1115
    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "muted"    # Z

    .line 1119
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    .line 1120
    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 2
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/common/Player$Events;

    .line 931
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    iget-object v1, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    invoke-interface {v0, v1, p2}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    .line 932
    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 1
    .param p1, "isLoading"    # Z

    .line 962
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    .line 963
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1
    .param p1, "isPlaying"    # Z

    .line 1006
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    .line 1007
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 1
    .param p1, "isLoading"    # Z

    .line 968
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    .line 969
    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 1
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 1058
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    .line 1059
    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "reason"    # I

    .line 942
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    .line 943
    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 1
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 952
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    .line 953
    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 1109
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onMetadata(Landroidx/media3/common/Metadata;)V

    .line 1110
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 995
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    .line 996
    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 1043
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    .line 1044
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1
    .param p1, "playbackState"    # I

    .line 989
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    .line 990
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 1
    .param p1, "playbackSuppressionReason"    # I

    .line 1001
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    .line 1002
    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 1
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    .line 1021
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    .line 1022
    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 1
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    .line 1026
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    .line 1027
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 984
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player$Listener;->onPlayerStateChanged(ZI)V

    .line 985
    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 1
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 957
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    .line 958
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 1032
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    .line 1033
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 1
    .param p1, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 1038
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    .line 1039
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 1073
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0}, Landroidx/media3/common/Player$Listener;->onRenderedFirstFrame()V

    .line 1074
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 1011
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    .line 1012
    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 1
    .param p1, "seekBackIncrementMs"    # J

    .line 1048
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player$Listener;->onSeekBackIncrementChanged(J)V

    .line 1049
    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 1
    .param p1, "seekForwardIncrementMs"    # J

    .line 1053
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player$Listener;->onSeekForwardIncrementChanged(J)V

    .line 1054
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .line 1016
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    .line 1017
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1
    .param p1, "skipSilenceEnabled"    # Z

    .line 1093
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    .line 1094
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1068
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    .line 1069
    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 1
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "reason"    # I

    .line 936
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    .line 937
    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 1
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 978
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 979
    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 1
    .param p1, "tracks"    # Landroidx/media3/common/Tracks;

    .line 947
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    .line 948
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 1
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 1063
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 1064
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 1088
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    .line 1089
    return-void
.end method
