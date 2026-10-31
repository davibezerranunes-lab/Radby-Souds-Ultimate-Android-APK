.class public abstract Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "DecoderAudioRenderer.java"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;,
        Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$Api23;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media3/decoder/Decoder<",
        "Landroidx/media3/decoder/DecoderInputBuffer;",
        "+",
        "Landroidx/media3/decoder/SimpleDecoderOutputBuffer;",
        "+",
        "Landroidx/media3/decoder/DecoderException;",
        ">;>",
        "Landroidx/media3/exoplayer/BaseRenderer;",
        "Landroidx/media3/exoplayer/MediaClock;"
    }
.end annotation


# static fields
.field private static final MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT:I = 0xa

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DecoderAudioRenderer"


# instance fields
.field private allowPositionDiscontinuity:Z

.field private final audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

.field private audioTrackNeedsConfigure:Z

.field private currentPositionUs:J

.field private decoder:Landroidx/media3/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field private decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field private firstStreamSampleRead:Z

.field private final flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private hasPendingReportedSkippedSilence:Z

.field private inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private inputFormat:Landroidx/media3/common/Format;

.field private inputStreamEnded:Z

.field private outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private pendingOutputStreamOffsetCount:I

.field private final pendingOutputStreamOffsetsUs:[J

.field private sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 170
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/common/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;[Landroidx/media3/common/audio/AudioProcessor;)V

    .line 171
    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioCapabilities;[Landroidx/media3/common/audio/AudioProcessor;)V
    .locals 2
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p3, "audioCapabilities"    # Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .param p4, "audioProcessors"    # [Landroidx/media3/common/audio/AudioProcessor;

    .line 200
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;-><init>()V

    sget-object v1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 205
    invoke-static {p3, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 204
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->setAudioCapabilities(Landroidx/media3/exoplayer/audio/AudioCapabilities;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->setAudioProcessors([Landroidx/media3/common/audio/AudioProcessor;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->build()Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    move-result-object v0

    .line 200
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioSink;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioSink;)V
    .locals 3
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p3, "audioSink"    # Landroidx/media3/exoplayer/audio/AudioSink;

    .line 220
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 221
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 222
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 223
    new-instance v1, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;-><init>(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$1;)V

    invoke-interface {p3, v1}, Landroidx/media3/exoplayer/audio/AudioSink;->setListener(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V

    .line 224
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->newNoDataInstance()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 225
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 226
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 227
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->setOutputStreamOffsetUs(J)V

    .line 228
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    .line 229
    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;[Landroidx/media3/common/audio/AudioProcessor;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p3, "audioProcessors"    # [Landroidx/media3/common/audio/AudioProcessor;

    .line 183
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioCapabilities;[Landroidx/media3/common/audio/AudioProcessor;)V

    .line 184
    return-void
.end method

.method static synthetic access$102(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;
    .param p1, "x1"    # Z

    .line 95
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->hasPendingReportedSkippedSilence:Z

    return p1
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    .line 95
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    return-object v0
.end method

.method private drainOutputBuffer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;,
            Landroidx/media3/decoder/DecoderException;,
            Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;,
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 408
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 409
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 410
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    if-nez v0, :cond_0

    .line 411
    return v1

    .line 413
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iget v0, v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->skippedOutputBufferCount:I

    if-lez v0, :cond_1

    .line 414
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iget v3, v3, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 415
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->handleDiscontinuity()V

    .line 417
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->isFirstSample()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->processFirstSampleOfStream()V

    .line 422
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 423
    iget v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 425
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 426
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 428
    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_0

    .line 430
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 431
    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 433
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->processEndOfStream()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    nop

    .line 439
    :goto_0
    return v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->format:Landroidx/media3/common/Format;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 442
    .end local v0    # "e":Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    if-eqz v0, :cond_5

    .line 443
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 444
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->getOutputFormat(Landroidx/media3/decoder/Decoder;)Landroidx/media3/common/Format;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->encoderDelay:I

    .line 446
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->encoderPadding:I

    .line 447
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 448
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    .line 449
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setCustomData(Ljava/lang/Object;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 450
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 451
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 452
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 453
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget v4, v4, Landroidx/media3/common/Format;->selectionFlags:I

    .line 454
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget v4, v4, Landroidx/media3/common/Format;->roleFlags:I

    .line 455
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 457
    .local v0, "outputFormat":Landroidx/media3/common/Format;
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->getChannelMapping(Landroidx/media3/decoder/Decoder;)[I

    move-result-object v5

    invoke-interface {v4, v0, v1, v5}, Landroidx/media3/exoplayer/audio/AudioSink;->configure(Landroidx/media3/common/Format;I[I)V

    .line 458
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 461
    .end local v0    # "outputFormat":Landroidx/media3/common/Format;
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iget-object v4, v4, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iget-wide v5, v5, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->timeUs:J

    invoke-interface {v0, v4, v5, v6, v3}, Landroidx/media3/exoplayer/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 463
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v1, v3

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 464
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 465
    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 466
    return v3

    .line 469
    :cond_6
    return v1
.end method

.method private feedInputBuffer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;,
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 494
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    .line 502
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 503
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    .line 504
    return v1

    .line 508
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 509
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 510
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-interface {v0, v4}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 511
    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 512
    iput v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 513
    return v1

    .line 516
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 517
    .local v0, "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 542
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 519
    :pswitch_0
    return v1

    .line 524
    :pswitch_1
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    iput-boolean v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 526
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-interface {v2, v4}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 527
    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 528
    return v1

    .line 530
    :cond_3
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->firstStreamSampleRead:Z

    if-nez v1, :cond_4

    .line 531
    iput-boolean v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->firstStreamSampleRead:Z

    .line 532
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 534
    :cond_4
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    .line 535
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    iput-object v2, v1, Landroidx/media3/decoder/DecoderInputBuffer;->format:Landroidx/media3/common/Format;

    .line 536
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-interface {v1, v2}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 537
    iput-boolean v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 538
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v2, v4

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    .line 539
    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 540
    return v4

    .line 521
    :pswitch_2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)V

    .line 522
    return v4

    .line 498
    .end local v0    # "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
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

.method private flushDecoder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 552
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    if-eqz v0, :cond_0

    .line 553
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 554
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    goto :goto_0

    .line 556
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 557
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 559
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 561
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/Decoder;

    .line 562
    .local v0, "decoder":Landroidx/media3/decoder/Decoder;, "Landroidx/media3/decoder/Decoder<***>;"
    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->flush()V

    .line 563
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->getLastResetPositionUs()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/media3/decoder/Decoder;->setOutputStartTimeUs(J)V

    .line 564
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 566
    .end local v0    # "decoder":Landroidx/media3/decoder/Decoder;, "Landroidx/media3/decoder/Decoder<***>;"
    :goto_0
    return-void
.end method

.method private maybeInitDecoder()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 721
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v0, :cond_0

    .line 722
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->setDecoderDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, "cryptoConfig":Landroidx/media3/decoder/CryptoConfig;
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 729
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v0

    .line 730
    if-nez v0, :cond_2

    .line 731
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 732
    .local v1, "drmError":Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 737
    :cond_1
    return-void

    .line 743
    .end local v1    # "drmError":Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    :cond_2
    :goto_0
    const/16 v1, 0xfa1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 744
    .local v2, "codecInitializingTimestamp":J
    const-string v4, "createAudioDecoder"

    invoke-static {v4}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 745
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p0, v4, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->createDecoder(Landroidx/media3/common/Format;Landroidx/media3/decoder/CryptoConfig;)Landroidx/media3/decoder/Decoder;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 746
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->getLastResetPositionUs()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Landroidx/media3/decoder/Decoder;->setOutputStartTimeUs(J)V

    .line 747
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 749
    .local v4, "codecInitializedTimestamp":J
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 750
    invoke-interface {v7}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v7

    sub-long v10, v4, v2

    .line 749
    move-wide v8, v4

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 753
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v7, v6, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    .end local v2    # "codecInitializingTimestamp":J
    .end local v4    # "codecInitializedTimestamp":J
    nop

    .line 763
    return-void

    .line 759
    :catch_0
    move-exception v2

    .line 760
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 754
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 755
    .local v2, "e":Landroidx/media3/decoder/DecoderException;
    const-string v3, "DecoderAudioRenderer"

    const-string v4, "Audio codec error"

    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 756
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 757
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method private onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)V
    .locals 9
    .param p1, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 790
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    .line 791
    .local v0, "newFormat":Landroidx/media3/common/Format;
    iget-object v1, p1, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 792
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 793
    .local v7, "oldFormat":Landroidx/media3/common/Format;
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 794
    iget v1, v0, Landroidx/media3/common/Format;->encoderDelay:I

    iput v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->encoderDelay:I

    .line 795
    iget v1, v0, Landroidx/media3/common/Format;->encoderPadding:I

    iput v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->encoderPadding:I

    .line 797
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-nez v1, :cond_0

    .line 798
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 799
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    .line 800
    return-void

    .line 804
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 805
    new-instance v8, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 807
    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x80

    move-object v1, v8

    move-object v3, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .local v1, "evaluation":Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    goto :goto_0

    .line 813
    .end local v1    # "evaluation":Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->canReuseDecoder(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v1

    .line 816
    .restart local v1    # "evaluation":Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    :goto_0
    iget v2, v1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-nez v2, :cond_3

    .line 817
    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 819
    iput v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    goto :goto_1

    .line 822
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 823
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 824
    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 827
    :cond_3
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    .line 828
    return-void
.end method

.method private processEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 547
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    .line 548
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->playToEndOfStream()V

    .line 549
    return-void
.end method

.method private processFirstSampleOfStream()V
    .locals 5

    .line 473
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->handleDiscontinuity()V

    .line 474
    iget v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->setOutputStreamOffsetUs(J)V

    .line 476
    iget v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    .line 477
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v4, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    :cond_0
    return-void
.end method

.method private releaseDecoder()V
    .locals 3

    .line 766
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 767
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 768
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 769
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 770
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    .line 772
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->release()V

    .line 773
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    invoke-interface {v2}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    .line 774
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 776
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->setDecoderDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 777
    return-void
.end method

.method private setDecoderDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/exoplayer/drm/DrmSession;

    .line 785
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 786
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 787
    return-void
.end method

.method private setOutputStreamOffsetUs(J)V
    .locals 2
    .param p1, "outputStreamOffsetUs"    # J

    .line 487
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputStreamOffsetUs:J

    .line 488
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->setOutputStreamOffsetUs(J)V

    .line 491
    :cond_0
    return-void
.end method

.method private setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/exoplayer/drm/DrmSession;

    .line 780
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 781
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 782
    return-void
.end method

.method private updateCurrentPosition()V
    .locals 4

    .line 831
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 832
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 833
    nop

    .line 834
    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    .line 835
    move-wide v2, v0

    goto :goto_0

    .line 836
    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->currentPositionUs:J

    .line 837
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 839
    :cond_1
    return-void
.end method


# virtual methods
.method protected canReuseDecoder(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 7
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "oldFormat"    # Landroidx/media3/common/Format;
    .param p3, "newFormat"    # Landroidx/media3/common/Format;

    .line 398
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
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
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected getChannelMapping(Landroidx/media3/decoder/Decoder;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[I"
        }
    .end annotation

    .line 382
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    .local p1, "decoder":Landroidx/media3/decoder/Decoder;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 0

    .line 234
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    return-object p0
.end method

.method protected abstract getOutputFormat(Landroidx/media3/decoder/Decoder;)Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media3/common/Format;"
        }
    .end annotation
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 601
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 581
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 582
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->updateCurrentPosition()V

    .line 584
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method protected final getSinkFormatSupport(Landroidx/media3/common/Format;)I
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 274
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result v0

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 685
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    packed-switch p1, :pswitch_data_0

    .line 715
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 704
    :pswitch_1
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-static {v0, p2}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$Api23;->setAudioSinkPreferredDevice(Landroidx/media3/exoplayer/audio/AudioSink;Ljava/lang/Object;)V

    goto :goto_0

    .line 701
    :pswitch_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink;->setAudioSessionId(I)V

    .line 702
    goto :goto_0

    .line 698
    :pswitch_3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    .line 699
    goto :goto_0

    .line 694
    :pswitch_4
    move-object v0, p2

    check-cast v0, Landroidx/media3/common/AuxEffectInfo;

    .line 695
    .local v0, "auxEffectInfo":Landroidx/media3/common/AuxEffectInfo;
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/audio/AudioSink;->setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V

    .line 696
    goto :goto_0

    .line 690
    .end local v0    # "auxEffectInfo":Landroidx/media3/common/AuxEffectInfo;
    :pswitch_5
    move-object v0, p2

    check-cast v0, Landroidx/media3/common/AudioAttributes;

    .line 691
    .local v0, "audioAttributes":Landroidx/media3/common/AudioAttributes;
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/audio/AudioSink;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    .line 692
    goto :goto_0

    .line 687
    .end local v0    # "audioAttributes":Landroidx/media3/common/AudioAttributes;
    :pswitch_6
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink;->setVolume(F)V

    .line 688
    nop

    .line 718
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasSkippedSilenceSinceLastCall()Z
    .locals 2

    .line 589
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->hasPendingReportedSkippedSilence:Z

    .line 590
    .local v0, "hasPendingReportedSkippedSilence":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->hasPendingReportedSkippedSilence:Z

    .line 591
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 570
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 575
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 575
    :goto_1
    return v0
.end method

.method protected onDisabled()V
    .locals 3

    .line 645
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 646
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 647
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->setOutputStreamOffsetUs(J)V

    .line 648
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->hasPendingReportedSkippedSilence:Z

    .line 650
    :try_start_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 651
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 652
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 655
    nop

    .line 656
    return-void

    .line 654
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 655
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

    .line 607
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    new-instance v0, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {v0}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 608
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->enabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 609
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->enableTunnelingV21()V

    goto :goto_0

    .line 612
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->disableTunneling()V

    .line 614
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->getPlayerId()Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink;->setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 615
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink;->setClock(Landroidx/media3/common/util/Clock;)V

    .line 616
    return-void
.end method

.method protected onPositionDiscontinuity()V
    .locals 1

    .line 348
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 349
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 2
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 620
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->flush()V

    .line 622
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->currentPositionUs:J

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->hasPendingReportedSkippedSilence:Z

    .line 624
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 625
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 626
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    .line 627
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v0, :cond_0

    .line 628
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->flushDecoder()V

    .line 630
    :cond_0
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 634
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->play()V

    .line 635
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 639
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->updateCurrentPosition()V

    .line 640
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->pause()V

    .line 641
    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4
    .param p1, "formats"    # [Landroidx/media3/common/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J
    .param p6, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 665
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/BaseRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 666
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->firstStreamSampleRead:Z

    .line 667
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 668
    invoke-direct {p0, p4, p5}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->setOutputStreamOffsetUs(J)V

    goto :goto_1

    .line 670
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecoderAudioRenderer"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    .line 678
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p4, v0, v1

    .line 680
    :goto_1
    return-void
.end method

.method public render(JJ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 279
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    const/16 v1, 0x138a

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    nop

    .line 286
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->format:Landroidx/media3/common/Format;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 290
    .end local v0    # "e":Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_3

    .line 292
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 293
    .local v0, "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 294
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    .line 295
    .local v2, "result":I
    const/4 v3, -0x5

    if-ne v2, v3, :cond_1

    .line 296
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)V

    goto :goto_0

    .line 297
    :cond_1
    const/4 v3, -0x4

    if-ne v2, v3, :cond_2

    .line 299
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 300
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 302
    :try_start_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->processEndOfStream()V
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    nop

    .line 307
    return-void

    .line 303
    :catch_1
    move-exception v3

    .line 304
    .local v3, "e":Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 310
    .end local v3    # "e":Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
    :cond_2
    return-void

    .line 315
    .end local v0    # "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    .end local v2    # "result":I
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 317
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v0, :cond_6

    .line 320
    const/16 v0, 0x1389

    :try_start_2
    const-string v2, "drainAndFeed"

    invoke-static {v2}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 321
    :goto_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->drainOutputBuffer()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 322
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->feedInputBuffer()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 323
    :cond_5
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V
    :try_end_2
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 338
    nop

    .line 339
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    .line 335
    :catch_2
    move-exception v0

    .line 336
    .local v0, "e":Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->format:Landroidx/media3/common/Format;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 332
    .end local v0    # "e":Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
    :catch_3
    move-exception v1

    .line 333
    .local v1, "e":Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->format:Landroidx/media3/common/Format;

    iget-boolean v3, v1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->isRecoverable:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 329
    .end local v1    # "e":Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
    :catch_4
    move-exception v1

    .line 330
    .local v1, "e":Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;->format:Landroidx/media3/common/Format;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 324
    .end local v1    # "e":Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
    :catch_5
    move-exception v0

    .line 326
    .local v0, "e":Landroidx/media3/decoder/DecoderException;
    const-string v1, "DecoderAudioRenderer"

    const-string v2, "Audio codec error"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->eventDispatcher:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 328
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 v2, 0xfa3

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 341
    .end local v0    # "e":Landroidx/media3/decoder/DecoderException;
    :cond_6
    :goto_3
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 596
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 597
    return-void
.end method

.method protected final sinkSupportsFormat(Landroidx/media3/common/Format;)Z
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 264
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v0

    return v0
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 3
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 239
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v0

    return v0

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->supportsFormatInternal(Landroidx/media3/common/Format;)I

    move-result v0

    .line 243
    .local v0, "formatSupport":I
    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 244
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v1

    return v1

    .line 246
    :cond_1
    const/16 v1, 0x8

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(III)I

    move-result v1

    return v1
.end method

.method protected abstract supportsFormatInternal(Landroidx/media3/common/Format;)I
.end method
