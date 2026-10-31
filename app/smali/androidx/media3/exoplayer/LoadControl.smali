.class public interface abstract Landroidx/media3/exoplayer/LoadControl;
.super Ljava/lang/Object;
.source "LoadControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/LoadControl$Parameters;
    }
.end annotation


# static fields
.field public static final EMPTY_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 124
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/media3/exoplayer/LoadControl;->EMPTY_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public abstract getAllocator()Landroidx/media3/exoplayer/upstream/Allocator;
.end method

.method public getBackBufferDurationUs()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getBackBufferDurationUs not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBackBufferDurationUs(Landroidx/media3/exoplayer/analytics/PlayerId;)J
    .locals 2
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 270
    invoke-interface {p0}, Landroidx/media3/exoplayer/LoadControl;->getBackBufferDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public onPrepared()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPrepared not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPrepared(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 133
    invoke-interface {p0}, Landroidx/media3/exoplayer/LoadControl;->onPrepared()V

    .line 134
    return-void
.end method

.method public onReleased()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onReleased not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onReleased(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 237
    invoke-interface {p0}, Landroidx/media3/exoplayer/LoadControl;->onReleased()V

    .line 238
    return-void
.end method

.method public onStopped()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onStopped not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStopped(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 217
    invoke-interface {p0}, Landroidx/media3/exoplayer/LoadControl;->onStopped()V

    .line 218
    return-void
.end method

.method public onTracksSelected(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 0
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "renderers"    # [Landroidx/media3/exoplayer/Renderer;
    .param p4, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p5, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-interface {p0, p3, p4, p5}, Landroidx/media3/exoplayer/LoadControl;->onTracksSelected([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 193
    return-void
.end method

.method public onTracksSelected(Landroidx/media3/exoplayer/LoadControl$Parameters;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 2
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;
    .param p2, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onTracksSelected not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTracksSelected(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 6
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
    .param p3, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p4, "renderers"    # [Landroidx/media3/exoplayer/Renderer;
    .param p5, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p6, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/LoadControl;->onTracksSelected(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 178
    return-void
.end method

.method public onTracksSelected([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 2
    .param p1, "renderers"    # [Landroidx/media3/exoplayer/Renderer;
    .param p2, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onTracksSelected not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "retainBackBufferFromKeyframe not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainBackBufferFromKeyframe(Landroidx/media3/exoplayer/analytics/PlayerId;)Z
    .locals 1
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 304
    invoke-interface {p0}, Landroidx/media3/exoplayer/LoadControl;->retainBackBufferFromKeyframe()Z

    move-result v0

    return v0
.end method

.method public shouldContinueLoading(JJF)Z
    .locals 2
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "playbackSpeed"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "shouldContinueLoading not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldContinueLoading(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 6
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;

    .line 328
    iget-wide v1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackPositionUs:J

    iget-wide v3, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    iget v5, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/LoadControl;->shouldContinueLoading(JJF)Z

    move-result v0

    return v0
.end method

.method public shouldContinuePreloading(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Z
    .locals 2
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "bufferedDurationUs"    # J

    .line 355
    const-string v0, "LoadControl"

    const-string/jumbo v1, "shouldContinuePreloading needs to be implemented when playlist preloading is enabled"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public shouldStartPlayback(JFZJ)Z
    .locals 2
    .param p1, "bufferedDurationUs"    # J
    .param p3, "playbackSpeed"    # F
    .param p4, "rebuffering"    # Z
    .param p5, "targetLiveOffsetUs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "shouldStartPlayback not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldStartPlayback(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)Z
    .locals 7
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "bufferedDurationUs"    # J
    .param p5, "playbackSpeed"    # F
    .param p6, "rebuffering"    # Z
    .param p7, "targetLiveOffsetUs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    move-object v0, p0

    move-wide v1, p3

    move v3, p5

    move v4, p6

    move-wide v5, p7

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/LoadControl;->shouldStartPlayback(JFZJ)Z

    move-result v0

    return v0
.end method

.method public shouldStartPlayback(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 9
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;

    .line 373
    iget-object v1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    iget v5, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    iget-boolean v6, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->rebuffering:Z

    iget-wide v7, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    move-object v0, p0

    invoke-interface/range {v0 .. v8}, Landroidx/media3/exoplayer/LoadControl;->shouldStartPlayback(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)Z

    move-result v0

    return v0
.end method
