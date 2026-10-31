.class final Landroidx/media3/exoplayer/video/DefaultVideoSink;
.super Ljava/lang/Object;
.source "DefaultVideoSink.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;


# instance fields
.field private inputFormat:Landroidx/media3/common/Format;

.field private final videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field private final videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameRenderControl;)V
    .locals 1
    .param p1, "videoFrameReleaseControl"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
    .param p2, "videoFrameRenderControl"    # Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 42
    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 43
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    .line 44
    return-void
.end method


# virtual methods
.method public clearOutputSurfaceInfo()V
    .locals 2

    .line 140
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    .line 141
    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowReleaseFirstFrameBeforeStarted()V

    .line 151
    return-void
.end method

.method public flush(Z)V
    .locals 1
    .param p1, "resetPosition"    # Z

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->reset()V

    .line 86
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->flush()V

    .line 87
    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z
    .locals 1
    .param p1, "inputBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "timestampIterator"    # Landroidx/media3/common/util/TimestampIterator;

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleInputFrame(JZJJLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .locals 1
    .param p1, "framePresentationTimeUs"    # J
    .param p3, "isLastFrame"    # Z
    .param p4, "positionUs"    # J
    .param p6, "elapsedRealtimeUs"    # J
    .param p8, "videoFrameHandler"    # Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public initialize(Landroidx/media3/common/Format;)V
    .locals 0
    .param p1, "sourceFormat"    # Landroidx/media3/common/Format;

    .line 74
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isReady(Z)Z
    .locals 1
    .param p1, "rendererOtherwiseReady"    # Z

    .line 91
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->isReady(Z)Z

    move-result v0

    return v0
.end method

.method public join(Z)V
    .locals 1
    .param p1, "renderNextFrameImmediately"    # Z

    .line 183
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->join(Z)V

    .line 184
    return-void
.end method

.method public onInputStreamChanged(ILandroidx/media3/common/Format;)V
    .locals 3
    .param p1, "inputType"    # I
    .param p2, "format"    # Landroidx/media3/common/Format;

    .line 155
    iget v0, p2, Landroidx/media3/common/Format;->width:I

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroidx/media3/common/Format;->height:I

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->height:I

    if-eq v0, v1, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    iget v1, p2, Landroidx/media3/common/Format;->width:I

    iget v2, p2, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->onOutputSizeChanged(II)V

    .line 158
    :cond_1
    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    .line 159
    return-void
.end method

.method public onRendererDisabled()V
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onDisabled()V

    .line 54
    return-void
.end method

.method public onRendererEnabled(Z)V
    .locals 1
    .param p1, "mayRenderStartOfStream"    # Z

    .line 48
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onEnabled(Z)V

    .line 49
    return-void
.end method

.method public onRendererStarted()V
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onStarted()V

    .line 59
    return-void
.end method

.method public onRendererStopped()V
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onStopped()V

    .line 64
    return-void
.end method

.method public release()V
    .locals 0

    .line 187
    return-void
.end method

.method public render(JJ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1
    .param p1, "changeFrameRateStrategy"    # I

    .line 145
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setChangeFrameRateStrategy(I)V

    .line 146
    return-void
.end method

.method public setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/video/VideoSink$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 1
    .param p1, "outputSurface"    # Landroid/view/Surface;
    .param p2, "outputResolution"    # Landroidx/media3/common/util/Size;

    .line 135
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    .line 136
    return-void
.end method

.method public setPendingVideoEffects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "videoEffects":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Effect;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPlaybackSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 111
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setPlaybackSpeed(F)V

    .line 112
    return-void
.end method

.method public setStreamTimestampInfo(JJJJ)V
    .locals 1
    .param p1, "streamStartPositionUs"    # J
    .param p3, "streamOffsetUs"    # J
    .param p5, "bufferTimestampAdjustmentUs"    # J
    .param p7, "lastResetPositionUs"    # J

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "videoEffects":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Effect;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 1
    .param p1, "videoFrameMetadataListener"    # Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
