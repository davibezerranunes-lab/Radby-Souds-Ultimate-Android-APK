.class public abstract Landroidx/media3/exoplayer/video/DecoderVideoRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "DecoderVideoRenderer.java"


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DecoderVideoRenderer"


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private consecutiveDroppedFrameCount:I

.field private decoder:Landroidx/media3/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/decoder/Decoder<",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            "+",
            "Landroidx/media3/decoder/VideoDecoderOutputBuffer;",
            "+",
            "Landroidx/media3/decoder/DecoderException;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field private decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field private firstFrameState:I

.field private final flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final formatQueue:Landroidx/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/TimedValueQueue<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field private initialPositionUs:J

.field private inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private inputFormat:Landroidx/media3/common/Format;

.field private inputStreamEnded:Z

.field private joiningDeadlineMs:J

.field private lastRenderTimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private output:Ljava/lang/Object;

.field private outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

.field private outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

.field private outputFormat:Landroidx/media3/common/Format;

.field private outputMode:I

.field private outputStreamEnded:Z

.field private outputSurface:Landroid/view/Surface;

.field private reportedVideoSize:Landroidx/media3/common/VideoSize;

.field private sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field private waitingForFirstSampleInFormat:Z


# direct methods
.method protected constructor <init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 2
    .param p1, "allowedJoiningTimeMs"    # J
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p5, "maxDroppedFramesToNotify"    # I

    .line 174
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 175
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    .line 176
    iput p5, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    .line 177
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 178
    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 179
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->newNoDataInstance()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 180
    new-instance v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {v0, p3, p4}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    .line 182
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    .line 183
    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    .line 184
    new-instance v0, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {v0}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 185
    return-void
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;,
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 808
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/Decoder;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 809
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-nez v0, :cond_0

    .line 810
    return v1

    .line 812
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    iget v3, v3, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 813
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    iget v2, v2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 816
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 817
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 819
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 820
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    .line 822
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 823
    iput-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamEnded:Z

    .line 826
    :goto_0
    return v1

    .line 829
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->processOutputBuffer(JJ)Z

    move-result v0

    .line 830
    .local v0, "processedOutputBuffer":Z
    if-eqz v0, :cond_4

    .line 831
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    iget-wide v3, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->timeUs:J

    invoke-virtual {p0, v3, v4}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onProcessedOutputBuffer(J)V

    .line 832
    iput-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 834
    :cond_4
    return v0
.end method

.method private feedInputBuffer()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;,
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 749
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    .line 750
    return v1

    .line 754
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 755
    .local v0, "inputBuffer":Landroidx/media3/decoder/DecoderInputBuffer;
    iget v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 756
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 757
    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/decoder/Decoder;

    invoke-interface {v3, v0}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 758
    iput-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 759
    iput v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    .line 760
    return v1

    .line 763
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v2

    .line 764
    .local v2, "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 791
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 766
    :pswitch_0
    return v1

    .line 771
    :pswitch_1
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 772
    iput-boolean v5, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 773
    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/decoder/Decoder;

    invoke-interface {v3, v0}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 774
    iput-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 775
    return v1

    .line 777
    :cond_3
    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v3, :cond_4

    .line 778
    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    iget-wide v6, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v8, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/Format;

    invoke-virtual {v3, v6, v7, v8}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 779
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 781
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    .line 782
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->format:Landroidx/media3/common/Format;

    .line 783
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onQueueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 784
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/Decoder;

    invoke-interface {v1, v0}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 785
    iget v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v1, v5

    iput v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 786
    iput-boolean v5, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 787
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v3, v1, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v3, v5

    iput v3, v1, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    .line 788
    iput-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 789
    return v5

    .line 768
    :pswitch_2
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)V

    .line 769
    return v5

    .line 744
    .end local v0    # "inputBuffer":Landroidx/media3/decoder/DecoderInputBuffer;
    .end local v2    # "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    :cond_5
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasOutput()Z
    .locals 2

    .line 923
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isBufferLate(J)Z
    .locals 2
    .param p0, "earlyUs"    # J

    .line 1001
    const-wide/16 v0, -0x7530

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isBufferVeryLate(J)Z
    .locals 2
    .param p0, "earlyUs"    # J

    .line 1006
    const-wide/32 v0, -0x7a120

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lowerFirstFrameState(I)V
    .locals 1
    .param p1, "firstFrameState"    # I

    .line 956
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    .line 957
    return-void
.end method

.method private maybeInitDecoder()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v0, :cond_0

    .line 697
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setDecoderDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "cryptoConfig":Landroidx/media3/decoder/CryptoConfig;
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 704
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v0

    .line 705
    if-nez v0, :cond_2

    .line 706
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 707
    .local v1, "drmError":Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 712
    :cond_1
    return-void

    .line 718
    .end local v1    # "drmError":Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    :cond_2
    :goto_0
    const/16 v1, 0xfa1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 719
    .local v2, "decoderInitializingTimestamp":J
    iget-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Format;

    invoke-virtual {p0, v4, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->createDecoder(Landroidx/media3/common/Format;Landroidx/media3/decoder/CryptoConfig;)Landroidx/media3/decoder/Decoder;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 720
    iget-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getLastResetPositionUs()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Landroidx/media3/decoder/Decoder;->setOutputStartTimeUs(J)V

    .line 721
    iget v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 723
    .local v4, "decoderInitializedTimestamp":J
    iget-object v6, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v7, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 724
    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/decoder/Decoder;

    invoke-interface {v7}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v7

    sub-long v10, v4, v2

    .line 723
    move-wide v8, v4

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 727
    iget-object v6, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v7, v6, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v2    # "decoderInitializingTimestamp":J
    .end local v4    # "decoderInitializedTimestamp":J
    nop

    .line 737
    return-void

    .line 733
    :catch_0
    move-exception v2

    .line 734
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 728
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 729
    .local v2, "e":Landroidx/media3/decoder/DecoderException;
    const-string v3, "DecoderVideoRenderer"

    const-string v4, "Video codec error"

    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 730
    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    .line 731
    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 990
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 991
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 992
    .local v0, "now":J
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 993
    .local v2, "elapsedMs":J
    iget-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    .line 994
    const/4 v4, 0x0

    iput v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    .line 995
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 997
    .end local v0    # "now":J
    .end local v2    # "elapsedMs":J
    :cond_0
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .locals 2

    .line 960
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 961
    iput v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    .line 962
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    .line 966
    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 975
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    iget v0, v0, Landroidx/media3/common/VideoSize;->width:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    iget v0, v0, Landroidx/media3/common/VideoSize;->height:I

    if-eq v0, p2, :cond_1

    .line 978
    :cond_0
    new-instance v0, Landroidx/media3/common/VideoSize;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/VideoSize;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    .line 979
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 981
    :cond_1
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 2

    .line 969
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    .line 972
    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 2

    .line 984
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 987
    :cond_0
    return-void
.end method

.method private onOutputChanged()V
    .locals 2

    .line 928
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 930
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->lowerFirstFrameState(I)V

    .line 931
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 932
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setJoiningDeadlineMs()V

    .line 934
    :cond_0
    return-void
.end method

.method private onOutputRemoved()V
    .locals 1

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    .line 938
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->lowerFirstFrameState(I)V

    .line 939
    return-void
.end method

.method private onOutputReset()V
    .locals 0

    .line 944
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 945
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    .line 946
    return-void
.end method

.method private processOutputBuffer(JJ)Z
    .locals 21
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;,
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 849
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-wide v5, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->initialPositionUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 850
    iput-wide v1, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->initialPositionUs:J

    .line 853
    :cond_0
    iget-object v5, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 854
    .local v5, "outputBuffer":Landroidx/media3/decoder/VideoDecoderOutputBuffer;
    iget-wide v6, v5, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->timeUs:J

    .line 855
    .local v6, "bufferTimeUs":J
    sub-long v8, v6, v1

    .line 856
    .local v8, "earlyUs":J
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->hasOutput()Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v10, :cond_2

    .line 858
    invoke-static {v8, v9}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 859
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->skipOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 860
    return v11

    .line 862
    :cond_1
    return v12

    .line 865
    :cond_2
    iget-object v10, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v10, v6, v7}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/common/Format;

    .line 866
    .local v10, "format":Landroidx/media3/common/Format;
    if-eqz v10, :cond_3

    .line 867
    iput-object v10, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputFormat:Landroidx/media3/common/Format;

    goto :goto_0

    .line 868
    :cond_3
    iget-object v13, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputFormat:Landroidx/media3/common/Format;

    if-nez v13, :cond_4

    .line 872
    iget-object v13, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v13}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/common/Format;

    iput-object v13, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 877
    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getStreamOffsetUs()J

    move-result-wide v13

    sub-long v13, v6, v13

    .line 878
    .local v13, "presentationTimeUs":J
    invoke-direct {v0, v8, v9}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->shouldForceRender(J)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 879
    iget-object v12, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-static {v12}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/Format;

    invoke-virtual {v0, v5, v13, v14, v12}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLandroidx/media3/common/Format;)V

    .line 880
    return v11

    .line 883
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getState()I

    move-result v15

    const/4 v11, 0x2

    if-ne v15, v11, :cond_6

    const/4 v11, 0x1

    goto :goto_1

    :cond_6
    move v11, v12

    .line 884
    .local v11, "isStarted":Z
    :goto_1
    if-eqz v11, :cond_b

    move-wide/from16 v17, v13

    .end local v13    # "presentationTimeUs":J
    .local v17, "presentationTimeUs":J
    iget-wide v12, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->initialPositionUs:J

    cmp-long v12, v1, v12

    if-nez v12, :cond_7

    move-wide/from16 v12, v17

    const/4 v14, 0x0

    goto :goto_2

    .line 889
    :cond_7
    invoke-virtual {v0, v8, v9, v3, v4}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 890
    invoke-virtual/range {p0 .. p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeDropBuffersToKeyframe(J)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 891
    const/4 v12, 0x0

    return v12

    .line 892
    :cond_8
    invoke-virtual {v0, v8, v9, v3, v4}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 893
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->dropOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 894
    const/4 v12, 0x1

    return v12

    .line 897
    :cond_9
    const/4 v12, 0x1

    const-wide/16 v15, 0x7530

    cmp-long v13, v8, v15

    if-gez v13, :cond_a

    .line 898
    iget-object v13, v0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-static {v13}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/common/Format;

    move-wide/from16 v14, v17

    .end local v17    # "presentationTimeUs":J
    .local v14, "presentationTimeUs":J
    invoke-virtual {v0, v5, v14, v15, v13}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLandroidx/media3/common/Format;)V

    .line 899
    return v12

    .line 902
    .end local v14    # "presentationTimeUs":J
    .restart local v17    # "presentationTimeUs":J
    :cond_a
    const/4 v14, 0x0

    return v14

    .line 884
    .end local v17    # "presentationTimeUs":J
    .restart local v13    # "presentationTimeUs":J
    :cond_b
    move-wide/from16 v19, v13

    move v14, v12

    move-wide/from16 v12, v19

    .line 885
    .end local v13    # "presentationTimeUs":J
    .local v12, "presentationTimeUs":J
    :goto_2
    return v14
.end method

.method private setDecoderDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/exoplayer/drm/DrmSession;

    .line 691
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 692
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 693
    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 4

    .line 949
    nop

    .line 950
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 951
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 952
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 953
    return-void
.end method

.method private setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/exoplayer/drm/DrmSession;

    .line 686
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 687
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 688
    return-void
.end method

.method private shouldForceRender(J)Z
    .locals 8
    .param p1, "earlyUs"    # J

    .line 908
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 909
    .local v0, "isStarted":Z
    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    packed-switch v1, :pswitch_data_0

    .line 918
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 915
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    sub-long/2addr v4, v6

    .line 916
    .local v4, "elapsedSinceLastRenderUs":J
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, v4, v5}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 913
    .end local v4    # "elapsedSinceLastRenderUs":J
    :pswitch_2
    return v3

    .line 911
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected canReuseDecoder(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 7
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "oldFormat"    # Landroidx/media3/common/Format;
    .param p3, "newFormat"    # Landroidx/media3/common/Format;

    .line 679
    new-instance v6, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v6
.end method

.method protected abstract createDecoder(Landroidx/media3/common/Format;Landroidx/media3/decoder/CryptoConfig;)Landroidx/media3/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/decoder/CryptoConfig;",
            ")",
            "Landroidx/media3/decoder/Decoder<",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            "+",
            "Landroidx/media3/decoder/VideoDecoderOutputBuffer;",
            "+",
            "Landroidx/media3/decoder/DecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected dropOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 2
    .param p1, "outputBuffer"    # Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 512
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 514
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 515
    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .locals 1

    .line 288
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    .line 291
    :cond_0
    return-void
.end method

.method protected flushDecoder()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 357
    iget v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 359
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    .line 361
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 362
    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 364
    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 366
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/Decoder;

    .line 367
    .local v1, "decoder":Landroidx/media3/decoder/Decoder;, "Landroidx/media3/decoder/Decoder<***>;"
    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->flush()V

    .line 368
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getLastResetPositionUs()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/media3/decoder/Decoder;->setOutputStartTimeUs(J)V

    .line 369
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 371
    .end local v1    # "decoder":Landroidx/media3/decoder/Decoder;, "Landroidx/media3/decoder/Decoder<***>;"
    :goto_0
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 265
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setOutput(Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 267
    move-object v0, p2

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    goto :goto_0

    .line 269
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 271
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 9

    .line 240
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 242
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->hasOutput()Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    :cond_1
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 245
    return v1

    .line 246
    :cond_2
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 248
    return v4

    .line 249
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_4

    .line 251
    return v1

    .line 254
    :cond_4
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 255
    return v4
.end method

.method protected maybeDropBuffersToKeyframe(J)Z
    .locals 4
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 527
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->skipSource(J)I

    move-result v0

    .line 528
    .local v0, "droppedSourceBufferCount":I
    if-nez v0, :cond_0

    .line 529
    const/4 v1, 0x0

    return v1

    .line 531
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    .line 534
    iget v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 536
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flushDecoder()V

    .line 537
    return v3
.end method

.method protected onDisabled()V
    .locals 3

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 327
    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    .line 328
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->lowerFirstFrameState(I)V

    .line 330
    :try_start_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 331
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->releaseDecoder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 334
    nop

    .line 335
    return-void

    .line 333
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 334
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 2
    .param p1, "joining"    # Z
    .param p2, "mayRenderStartOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 278
    new-instance v0, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {v0}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 279
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->enabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 280
    nop

    .line 281
    if-eqz p2, :cond_0

    .line 282
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->firstFrameState:I

    .line 284
    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)V
    .locals 10
    .param p1, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 399
    iget-object v1, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Format;

    .line 400
    .local v1, "newFormat":Landroidx/media3/common/Format;
    iget-object v2, p1, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 401
    iget-object v8, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 402
    .local v8, "oldFormat":Landroidx/media3/common/Format;
    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 404
    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-nez v2, :cond_0

    .line 405
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 406
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 407
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    .line 406
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    .line 408
    return-void

    .line 412
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eq v2, v3, :cond_1

    .line 413
    new-instance v9, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 415
    invoke-interface {v2}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/media3/common/Format;

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .local v2, "evaluation":Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    goto :goto_0

    .line 421
    .end local v2    # "evaluation":Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-interface {v2}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->canReuseDecoder(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v2

    .line 424
    .restart local v2    # "evaluation":Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    :goto_0
    iget v3, v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-nez v3, :cond_3

    .line 425
    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    if-eqz v3, :cond_2

    .line 427
    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    goto :goto_1

    .line 430
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 431
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 434
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    invoke-virtual {v0, v3, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    .line 435
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 296
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamEnded:Z

    .line 297
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->lowerFirstFrameState(I)V

    .line 298
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->initialPositionUs:J

    .line 299
    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 300
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flushDecoder()V

    .line 303
    :cond_0
    if-eqz p3, :cond_1

    .line 304
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    .line 306
    :cond_1
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 308
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->clear()V

    .line 309
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 1
    .param p1, "presentationTimeUs"    # J

    .line 455
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 456
    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0
    .param p1, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;

    .line 446
    return-void
.end method

.method protected onStarted()V
    .locals 2

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    .line 316
    return-void
.end method

.method protected onStopped()V
    .locals 2

    .line 320
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 321
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 322
    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p1, "formats"    # [Landroidx/media3/common/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J
    .param p6, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 346
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/BaseRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 347
    return-void
.end method

.method protected releaseDecoder()V
    .locals 3

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 377
    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 378
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    .line 379
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 380
    iput v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 381
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    .line 383
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->release()V

    .line 384
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-interface {v2}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    .line 385
    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 387
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setDecoderDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 388
    return-void
.end method

.method public render(JJ)V
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 191
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_3

    .line 197
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 198
    .local v0, "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 199
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v1

    .line 200
    .local v1, "result":I
    const/4 v2, -0x5

    if-ne v1, v2, :cond_1

    .line 201
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)V

    goto :goto_0

    .line 202
    :cond_1
    const/4 v2, -0x4

    if-ne v1, v2, :cond_2

    .line 204
    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 205
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 206
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamEnded:Z

    .line 207
    return-void

    .line 210
    :cond_2
    return-void

    .line 215
    .end local v0    # "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    .end local v1    # "result":I
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 217
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v0, :cond_6

    .line 220
    :try_start_0
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 221
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 222
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->feedInputBuffer()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 223
    :cond_5
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .line 229
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroidx/media3/decoder/DecoderException;
    const-string v1, "DecoderVideoRenderer"

    const-string v2, "Video codec error"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    .line 227
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 v2, 0xfa3

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 231
    .end local v0    # "e":Landroidx/media3/decoder/DecoderException;
    :cond_6
    :goto_3
    return-void
.end method

.method protected renderOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLandroidx/media3/common/Format;)V
    .locals 8
    .param p1, "outputBuffer"    # Landroidx/media3/decoder/VideoDecoderOutputBuffer;
    .param p2, "presentationTimeUs"    # J
    .param p4, "outputFormat"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 591
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->nanoTime()J

    move-result-wide v4

    .line 590
    const/4 v7, 0x0

    move-wide v2, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 593
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    .line 594
    iget v0, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    .line 595
    .local v0, "bufferMode":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 596
    .local v3, "renderSurface":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 597
    .local v4, "renderYuv":Z
    :goto_1
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 598
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->dropOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    goto :goto_3

    .line 600
    :cond_3
    iget v5, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    iget v6, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    invoke-direct {p0, v5, v6}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeNotifyVideoSizeChanged(II)V

    .line 601
    if-eqz v4, :cond_4

    .line 602
    iget-object v5, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    invoke-interface {v5, p1}, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;->setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    goto :goto_2

    .line 604
    :cond_4
    iget-object v5, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    invoke-virtual {p0, p1, v5}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderOutputBufferToSurface(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 606
    :goto_2
    iput v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 607
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v5, v1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v5, v2

    iput v5, v1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 608
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 610
    :goto_3
    return-void
.end method

.method protected abstract renderOutputBufferToSurface(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected abstract setDecoderOutputMode(I)V
.end method

.method protected final setOutput(Ljava/lang/Object;)V
    .locals 2
    .param p1, "output"    # Ljava/lang/Object;

    .line 627
    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 628
    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    .line 629
    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    .line 630
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    goto :goto_0

    .line 631
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_1

    .line 632
    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    .line 633
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    goto :goto_0

    .line 637
    :cond_1
    const/4 p1, 0x0

    .line 638
    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    .line 639
    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    .line 640
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    .line 642
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    if-eq v0, p1, :cond_4

    .line 643
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    .line 644
    if-eqz p1, :cond_3

    .line 645
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v0, :cond_2

    .line 646
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 648
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onOutputChanged()V

    goto :goto_1

    .line 652
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onOutputRemoved()V

    goto :goto_1

    .line 654
    :cond_4
    if-eqz p1, :cond_5

    .line 656
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onOutputReset()V

    .line 658
    :cond_5
    :goto_1
    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .locals 1
    .param p1, "earlyUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 480
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->isBufferVeryLate(J)Z

    move-result v0

    return v0
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 1
    .param p1, "earlyUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 467
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result v0

    return v0
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 2
    .param p1, "earlyUs"    # J
    .param p3, "elapsedSinceLastRenderUs"    # J

    .line 493
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x186a0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected skipOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 2
    .param p1, "outputBuffer"    # Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 502
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 503
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 504
    return-void
.end method

.method protected updateDroppedBufferCounters(II)V
    .locals 4
    .param p1, "droppedInputBufferCount"    # I
    .param p2, "droppedDecoderBufferCount"    # I

    .line 550
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    .line 551
    add-int v0, p1, p2

    .line 552
    .local v0, "totalDroppedBufferCount":I
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v2, v0

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    .line 553
    iget v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    .line 554
    iget v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 555
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v3, v3, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 556
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 557
    iget v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez v1, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    iget v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-lt v1, v2, :cond_0

    .line 558
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 560
    :cond_0
    return-void
.end method
