.class public Landroidx/media3/common/ForwardingPlayer;
.super Ljava/lang/Object;
.source "ForwardingPlayer.java"

# interfaces
.implements Landroidx/media3/common/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/ForwardingPlayer$ForwardingListener;
    }
.end annotation


# instance fields
.field private final player:Landroidx/media3/common/Player;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Player;)V
    .locals 0
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    .line 61
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 81
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    new-instance v1, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;

    invoke-direct {v1, p0, p1}, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;-><init>(Landroidx/media3/common/ForwardingPlayer;Landroidx/media3/common/Player$Listener;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 82
    return-void
.end method

.method public addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 141
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->addMediaItem(ILandroidx/media3/common/MediaItem;)V

    .line 142
    return-void
.end method

.method public addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 135
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->addMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 136
    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->addMediaItems(ILjava/util/List;)V

    .line 154
    return-void
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->addMediaItems(Ljava/util/List;)V

    .line 148
    return-void
.end method

.method public canAdvertiseSession()Z
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->canAdvertiseSession()Z

    move-result v0

    return v0
.end method

.method public clearMediaItems()V
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->clearMediaItems()V

    .line 196
    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 768
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->clearVideoSurface()V

    .line 769
    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 774
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->clearVideoSurface(Landroid/view/Surface;)V

    .line 775
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 792
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 793
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 804
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 805
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 816
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    .line 817
    return-void
.end method

.method public decreaseDeviceVolume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->decreaseDeviceVolume()V

    .line 883
    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 888
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->decreaseDeviceVolume(I)V

    .line 889
    return-void
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 738
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 213
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 630
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 624
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 732
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    .line 720
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 726
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 708
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 714
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 822
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLiveOffset()J
    .locals 2

    .line 678
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentLiveOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 521
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 594
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 551
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 533
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 618
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 527
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 484
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 545
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    .line 828
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 834
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getDeviceVolume()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 612
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 382
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaItemAt(I)Landroidx/media3/common/MediaItem;
    .locals 1
    .param p1, "index"    # I

    .line 606
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 600
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 502
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getNextMediaItemIndex()I
    .locals 1

    .line 569
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getNextWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getNextWindowIndex()I

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 268
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 466
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v0

    return v0
.end method

.method public getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 508
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 1

    .line 587
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 581
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPreviousWindowIndex()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 280
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 328
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 340
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 292
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 1

    .line 762
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getSurfaceSize()Landroidx/media3/common/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 636
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 490
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 1

    .line 756
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 750
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getVolume()F

    move-result v0

    return v0
.end method

.method public getWrappedPlayer()Landroidx/media3/common/Player;
    .locals 1

    .line 915
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNextMediaItem()Z
    .locals 1

    .line 412
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public hasNextWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->hasNextWindow()Z

    move-result v0

    return v0
.end method

.method public hasPreviousMediaItem()Z
    .locals 1

    .line 352
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 866
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->increaseDeviceVolume()V

    .line 867
    return-void
.end method

.method public increaseDeviceVolume(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 872
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->increaseDeviceVolume(I)V

    .line 873
    return-void
.end method

.method public isCommandAvailable(I)Z
    .locals 1
    .param p1, "command"    # I

    .line 201
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemDynamic()Z
    .locals 1

    .line 654
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemLive()Z
    .locals 1

    .line 672
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemSeekable()Z
    .locals 1

    .line 696
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowDynamic()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isCurrentWindowDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowLive()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isCurrentWindowLive()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 690
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isCurrentWindowSeekable()Z

    move-result v0

    return v0
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 840
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isDeviceMuted()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 298
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 237
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 702
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public moveMediaItem(II)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .line 159
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->moveMediaItem(II)V

    .line 160
    return-void
.end method

.method public moveMediaItems(III)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I

    .line 165
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/Player;->moveMediaItems(III)V

    .line 166
    return-void
.end method

.method public next()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->next()V

    .line 425
    return-void
.end method

.method public pause()V
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->pause()V

    .line 257
    return-void
.end method

.method public play()V
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->play()V

    .line 251
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->prepare()V

    .line 220
    return-void
.end method

.method public release()V
    .locals 1

    .line 478
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->release()V

    .line 479
    return-void
.end method

.method public removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 93
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    new-instance v1, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;

    invoke-direct {v1, p0, p1}, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;-><init>(Landroidx/media3/common/ForwardingPlayer;Landroidx/media3/common/Player$Listener;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 94
    return-void
.end method

.method public removeMediaItem(I)V
    .locals 1
    .param p1, "index"    # I

    .line 183
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->removeMediaItem(I)V

    .line 184
    return-void
.end method

.method public removeMediaItems(II)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 189
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->removeMediaItems(II)V

    .line 190
    return-void
.end method

.method public replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 171
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->replaceMediaItem(ILandroidx/media3/common/MediaItem;)V

    .line 172
    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/Player;->replaceMediaItems(IILjava/util/List;)V

    .line 178
    return-void
.end method

.method public seekBack()V
    .locals 1

    .line 334
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->seekBack()V

    .line 335
    return-void
.end method

.method public seekForward()V
    .locals 1

    .line 346
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->seekForward()V

    .line 347
    return-void
.end method

.method public seekTo(IJ)V
    .locals 1
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 322
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/Player;->seekTo(IJ)V

    .line 323
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .line 316
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->seekTo(J)V

    .line 317
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .line 304
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToDefaultPosition()V

    .line 305
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1
    .param p1, "mediaItemIndex"    # I

    .line 310
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->seekToDefaultPosition(I)V

    .line 311
    return-void
.end method

.method public seekToNext()V
    .locals 1

    .line 448
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToNext()V

    .line 449
    return-void
.end method

.method public seekToNextMediaItem()V
    .locals 1

    .line 442
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToNextMediaItem()V

    .line 443
    return-void
.end method

.method public seekToNextWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 436
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToNextWindow()V

    .line 437
    return-void
.end method

.method public seekToPrevious()V
    .locals 1

    .line 376
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToPrevious()V

    .line 377
    return-void
.end method

.method public seekToPreviousMediaItem()V
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToPreviousMediaItem()V

    .line 371
    return-void
.end method

.method public seekToPreviousWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToPreviousWindow()V

    .line 365
    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 1
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z

    .line 910
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    .line 911
    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 1
    .param p1, "muted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 898
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setDeviceMuted(Z)V

    .line 899
    return-void
.end method

.method public setDeviceMuted(ZI)V
    .locals 1
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 904
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->setDeviceMuted(ZI)V

    .line 905
    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 1
    .param p1, "volume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 850
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setDeviceVolume(I)V

    .line 851
    return-void
.end method

.method public setDeviceVolume(II)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "flags"    # I

    .line 856
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->setDeviceVolume(II)V

    .line 857
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 117
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 118
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "startPositionMs"    # J

    .line 123
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;J)V

    .line 124
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "resetPosition"    # Z

    .line 129
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;Z)V

    .line 130
    return-void
.end method

.method public setMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setMediaItems(Ljava/util/List;)V

    .line 100
    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 1
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 111
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/common/Player;->setMediaItems(Ljava/util/List;IJ)V

    .line 112
    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 1
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 105
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->setMediaItems(Ljava/util/List;Z)V

    .line 106
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .line 262
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 263
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 454
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 455
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 460
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setPlaybackSpeed(F)V

    .line 461
    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 1
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 514
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V

    .line 515
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 274
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    .line 275
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .line 286
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setShuffleModeEnabled(Z)V

    .line 287
    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 1
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 496
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 497
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 780
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVideoSurface(Landroid/view/Surface;)V

    .line 781
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 786
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 787
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 798
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 799
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 810
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 811
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 744
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVolume(F)V

    .line 745
    return-void
.end method

.method public stop()V
    .locals 1

    .line 472
    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    .line 473
    return-void
.end method
