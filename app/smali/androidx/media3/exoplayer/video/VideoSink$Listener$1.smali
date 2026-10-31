.class Landroidx/media3/exoplayer/video/VideoSink$Listener$1;
.super Ljava/lang/Object;
.source "VideoSink.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/VideoSink$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;)V
    .locals 0
    .param p1, "videoSink"    # Landroidx/media3/exoplayer/video/VideoSink;
    .param p2, "videoSinkException"    # Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 94
    return-void
.end method

.method public onFirstFrameRendered(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0
    .param p1, "videoSink"    # Landroidx/media3/exoplayer/video/VideoSink;

    .line 85
    return-void
.end method

.method public onFrameDropped(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0
    .param p1, "videoSink"    # Landroidx/media3/exoplayer/video/VideoSink;

    .line 88
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/common/VideoSize;)V
    .locals 0
    .param p1, "videoSink"    # Landroidx/media3/exoplayer/video/VideoSink;
    .param p2, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 91
    return-void
.end method
