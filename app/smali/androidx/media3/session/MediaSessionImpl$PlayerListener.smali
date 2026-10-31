.class Landroidx/media3/session/MediaSessionImpl$PlayerListener;
.super Ljava/lang/Object;
.source "MediaSessionImpl.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerListener"
.end annotation


# instance fields
.field private final player:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/PlayerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerWrapper;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1385
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->session:Ljava/lang/ref/WeakReference;

    .line 1386
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1387
    return-void
.end method

.method private getSession()Landroidx/media3/session/MediaSessionImpl;
    .locals 1

    .line 1869
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->session:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    return-object v0
.end method

.method static synthetic lambda$onAudioAttributesChanged$15(Landroidx/media3/common/AudioAttributes;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "attributes"    # Landroidx/media3/common/AudioAttributes;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1689
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onAudioAttributesChanged(ILandroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$onDeviceInfoChanged$18(Landroidx/media3/common/DeviceInfo;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1751
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onDeviceInfoChanged(ILandroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onDeviceVolumeChanged$19(IZLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "volume"    # I
    .param p1, "muted"    # Z
    .param p2, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1769
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onDeviceVolumeChanged(IIZ)V

    return-void
.end method

.method static synthetic lambda$onIsLoadingChanged$6(ZLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "isLoading"    # Z
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1524
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onIsLoadingChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onIsPlayingChanged$5(ZLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "isPlaying"    # Z
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1505
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onIsPlayingChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onMediaItemTransition$1(Landroidx/media3/common/MediaItem;ILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "reason"    # I
    .param p2, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1423
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onMediaItemTransition(ILandroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$onMediaMetadataChanged$22(Landroidx/media3/common/MediaMetadata;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1837
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onMediaMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onPlayWhenReadyChanged$2(ZILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "playWhenReady"    # Z
    .param p1, "reason"    # I
    .param p2, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlayWhenReadyChanged(IZI)V

    return-void
.end method

.method static synthetic lambda$onPlaybackParametersChanged$8(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlaybackParametersChanged(ILandroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$onPlaybackStateChanged$4(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 1
    .param p0, "playbackState"    # I
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p2, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1486
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    invoke-interface {p2, p3, p0, v0}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlaybackStateChanged(IILandroidx/media3/common/PlaybackException;)V

    .line 1487
    return-void
.end method

.method static synthetic lambda$onPlaybackSuppressionReasonChanged$3(ILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "reason"    # I
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1466
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlaybackSuppressionReasonChanged(II)V

    return-void
.end method

.method static synthetic lambda$onPlayerError$0(Landroidx/media3/common/PlaybackException;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "error"    # Landroidx/media3/common/PlaybackException;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1404
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlayerError(ILandroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlaylistMetadataChanged$12(Landroidx/media3/common/MediaMetadata;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1635
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlaylistMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onPositionDiscontinuity$7(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p1, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "reason"    # I
    .param p3, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1547
    invoke-interface {p3, p4, p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->onPositionDiscontinuity(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$onRepeatModeChanged$13(ILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "repeatMode"    # I
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1653
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onRepeatModeChanged(II)V

    return-void
.end method

.method static synthetic lambda$onSeekBackIncrementChanged$9(JLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "seekBackIncrementMs"    # J
    .param p2, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1583
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onSeekBackIncrementChanged(IJ)V

    return-void
.end method

.method static synthetic lambda$onSeekForwardIncrementChanged$10(JLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "seekForwardIncrementMs"    # J
    .param p2, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1601
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onSeekForwardIncrementChanged(IJ)V

    return-void
.end method

.method static synthetic lambda$onShuffleModeEnabledChanged$14(ZLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "shuffleModeEnabled"    # Z
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onShuffleModeEnabledChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onTimelineChanged$11(Landroidx/media3/common/Timeline;ILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "reason"    # I
    .param p2, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1621
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onTimelineChanged(ILandroidx/media3/common/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$onTrackSelectionParametersChanged$21(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1819
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onTrackSelectionParametersChanged(ILandroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$onTracksChanged$20(Landroidx/media3/common/Tracks;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "tracks"    # Landroidx/media3/common/Tracks;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1801
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onTracksChanged(ILandroidx/media3/common/Tracks;)V

    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$16(Landroidx/media3/common/VideoSize;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "size"    # Landroidx/media3/common/VideoSize;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1703
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onVideoSizeChanged(ILandroidx/media3/common/VideoSize;)V

    return-void
.end method

.method static synthetic lambda$onVolumeChanged$17(FLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "volume"    # F
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onVolumeChanged(IF)V

    return-void
.end method


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 4
    .param p1, "attributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1676
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1677
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1678
    return-void

    .line 1680
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1681
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1682
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1683
    return-void

    .line 1685
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1686
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1688
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/common/AudioAttributes;)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1690
    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 2
    .param p1, "availableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 1774
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1775
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1776
    return-void

    .line 1778
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1779
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1780
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1781
    return-void

    .line 1783
    :cond_1
    invoke-static {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->access$600(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/common/Player$Commands;)V

    .line 1784
    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 4
    .param p1, "cueGroup"    # Landroidx/media3/common/text/CueGroup;

    .line 1722
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1723
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1724
    return-void

    .line 1726
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1727
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1728
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1729
    return-void

    .line 1731
    :cond_1
    new-instance v2, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setCues(Landroidx/media3/common/text/CueGroup;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1732
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1734
    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 4
    .param p1, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;

    .line 1738
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1739
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1740
    return-void

    .line 1742
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1743
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1744
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1745
    return-void

    .line 1747
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceInfo(Landroidx/media3/common/DeviceInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1748
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1750
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/common/DeviceInfo;)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1752
    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 4
    .param p1, "volume"    # I
    .param p2, "muted"    # Z

    .line 1756
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1757
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1758
    return-void

    .line 1760
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1761
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1762
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1763
    return-void

    .line 1765
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1766
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1768
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda17;

    invoke-direct {v2, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda17;-><init>(IZ)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1770
    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 4
    .param p1, "isLoading"    # Z

    .line 1511
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1512
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1513
    return-void

    .line 1515
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1516
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1517
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1518
    return-void

    .line 1520
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithIsLoading(Z)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1521
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1523
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1525
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$500(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1526
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 4
    .param p1, "isPlaying"    # Z

    .line 1492
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1493
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1494
    return-void

    .line 1496
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1497
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1498
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1499
    return-void

    .line 1501
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithIsPlaying(Z)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1502
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1504
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda11;-><init>(Z)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1506
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$500(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1507
    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 4
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 1852
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1853
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1854
    return-void

    .line 1856
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1857
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1858
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1859
    return-void

    .line 1861
    :cond_1
    nop

    .line 1862
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroidx/media3/session/PlayerInfo;->copyWithMaxSeekToPreviousPositionMs(J)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1861
    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1863
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1865
    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 4
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "reason"    # I

    .line 1410
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1411
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1412
    return-void

    .line 1414
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1415
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1416
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1417
    return-void

    .line 1419
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/media3/session/PlayerInfo;->copyWithMediaItemTransitionReason(I)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1420
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1422
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda16;

    invoke-direct {v2, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/common/MediaItem;I)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1424
    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 4
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 1824
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1825
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1826
    return-void

    .line 1828
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1829
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1830
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1831
    return-void

    .line 1833
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1834
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1836
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda13;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/common/MediaMetadata;)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1838
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 4
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 1429
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1430
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1431
    return-void

    .line 1433
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1434
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1435
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1436
    return-void

    .line 1438
    :cond_1
    nop

    .line 1439
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1440
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    iget v3, v3, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    .line 1439
    invoke-virtual {v2, p1, p2, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1438
    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1441
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1443
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda21;

    invoke-direct {v2, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda21;-><init>(ZI)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1445
    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 4
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 1552
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1553
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1554
    return-void

    .line 1556
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1557
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1558
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1559
    return-void

    .line 1561
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1562
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1564
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda10;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/common/PlaybackParameters;)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1566
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 4
    .param p1, "playbackState"    # I

    .line 1471
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1472
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1473
    return-void

    .line 1475
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1476
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1477
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1478
    return-void

    .line 1480
    :cond_1
    nop

    .line 1481
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1480
    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1482
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1484
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda6;-><init>(ILandroidx/media3/session/PlayerWrapper;)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1488
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 1449
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1450
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1451
    return-void

    .line 1453
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1454
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1455
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1456
    return-void

    .line 1458
    :cond_1
    nop

    .line 1459
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1460
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    .line 1461
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    iget v4, v4, Landroidx/media3/session/PlayerInfo;->playWhenReadyChangeReason:I

    .line 1459
    invoke-virtual {v2, v3, v4, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1458
    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1463
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1465
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda23;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1467
    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 4
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    .line 1391
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1392
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1393
    return-void

    .line 1395
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1396
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1397
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1398
    return-void

    .line 1400
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1401
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1403
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda20;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/common/PlaybackException;)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1405
    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 3
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 1626
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1627
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1628
    return-void

    .line 1630
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1631
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1632
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1634
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/MediaMetadata;)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1636
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 4
    .param p1, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 1531
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1532
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1533
    return-void

    .line 1535
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1536
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1537
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1538
    return-void

    .line 1541
    :cond_1
    nop

    .line 1542
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroidx/media3/session/PlayerInfo;->copyWithPositionInfos(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1541
    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1543
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1545
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1, p2, p3}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1548
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 1842
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1843
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1844
    return-void

    .line 1846
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1847
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1848
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 4
    .param p1, "repeatMode"    # I

    .line 1640
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1641
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1642
    return-void

    .line 1644
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1645
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1646
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1647
    return-void

    .line 1649
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithRepeatMode(I)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1650
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1652
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1654
    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 4
    .param p1, "seekBackIncrementMs"    # J

    .line 1570
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1571
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1572
    return-void

    .line 1574
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1575
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1576
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1577
    return-void

    .line 1579
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroidx/media3/session/PlayerInfo;->copyWithSeekBackIncrement(J)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1580
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1582
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda18;

    invoke-direct {v2, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda18;-><init>(J)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1584
    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 4
    .param p1, "seekForwardIncrementMs"    # J

    .line 1588
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1589
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1590
    return-void

    .line 1592
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1593
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1594
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1595
    return-void

    .line 1597
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroidx/media3/session/PlayerInfo;->copyWithSeekForwardIncrement(J)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1598
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1600
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda14;

    invoke-direct {v2, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda14;-><init>(J)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1602
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 4
    .param p1, "shuffleModeEnabled"    # Z

    .line 1658
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1659
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1660
    return-void

    .line 1662
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1663
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1664
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1665
    return-void

    .line 1667
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithShuffleModeEnabled(Z)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1668
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1670
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda3;-><init>(Z)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1672
    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 5
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "reason"    # I

    .line 1606
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1607
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1608
    return-void

    .line 1610
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1611
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1612
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1613
    return-void

    .line 1615
    :cond_1
    nop

    .line 1616
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1617
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->createSessionPositionInfoForBundling()Landroidx/media3/session/SessionPositionInfo;

    move-result-object v3

    .line 1616
    invoke-virtual {v2, p1, v3, p2}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndSessionPositionInfo(Landroidx/media3/common/Timeline;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1615
    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1618
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1620
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/common/Timeline;I)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1622
    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 4
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 1806
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1807
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1808
    return-void

    .line 1810
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1811
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1812
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1813
    return-void

    .line 1815
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1816
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1818
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/TrackSelectionParameters;)V

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1820
    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 5
    .param p1, "tracks"    # Landroidx/media3/common/Tracks;

    .line 1788
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1789
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1790
    return-void

    .line 1792
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1793
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    .line 1794
    .local v1, "player":Landroidx/media3/session/PlayerWrapper;
    if-nez v1, :cond_1

    .line 1795
    return-void

    .line 1797
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithCurrentTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1798
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1800
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/common/Tracks;)V

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1802
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 3
    .param p1, "size"    # Landroidx/media3/common/VideoSize;

    .line 1694
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1695
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1696
    return-void

    .line 1698
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1699
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithVideoSize(Landroidx/media3/common/VideoSize;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1700
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1702
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/common/VideoSize;)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1704
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 3
    .param p1, "volume"    # F

    .line 1708
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    .line 1709
    .local v0, "session":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 1710
    return-void

    .line 1712
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1713
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithVolume(F)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1714
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1716
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda9;-><init>(F)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1718
    return-void
.end method
