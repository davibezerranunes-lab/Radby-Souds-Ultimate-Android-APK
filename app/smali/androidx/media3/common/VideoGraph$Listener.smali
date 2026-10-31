.class public interface abstract Landroidx/media3/common/VideoGraph$Listener;
.super Ljava/lang/Object;
.source "VideoGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/VideoGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onEnded(J)V
    .locals 0
    .param p1, "finalFramePresentationTimeUs"    # J

    .line 51
    return-void
.end method

.method public onError(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0
    .param p1, "exception"    # Landroidx/media3/common/VideoFrameProcessingException;

    .line 59
    return-void
.end method

.method public onOutputFrameAvailableForRendering(J)V
    .locals 0
    .param p1, "framePresentationTimeUs"    # J

    .line 44
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 36
    return-void
.end method
