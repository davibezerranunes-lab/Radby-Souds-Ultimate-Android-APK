.class public interface abstract Landroidx/media3/common/VideoFrameProcessor$Listener;
.super Ljava/lang/Object;
.source "VideoFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/VideoFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onEnded()V
    .locals 0

    .line 177
    return-void
.end method

.method public onError(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0
    .param p1, "exception"    # Landroidx/media3/common/VideoFrameProcessingException;

    .line 174
    return-void
.end method

.method public onInputStreamRegistered(ILjava/util/List;Landroidx/media3/common/FrameInfo;)V
    .locals 0
    .param p1, "inputType"    # I
    .param p3, "frameInfo"    # Landroidx/media3/common/FrameInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;",
            "Landroidx/media3/common/FrameInfo;",
            ")V"
        }
    .end annotation

    .line 147
    .local p2, "effects":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Effect;>;"
    return-void
.end method

.method public onOutputFrameAvailableForRendering(J)V
    .locals 0
    .param p1, "presentationTimeUs"    # J

    .line 166
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 158
    return-void
.end method
