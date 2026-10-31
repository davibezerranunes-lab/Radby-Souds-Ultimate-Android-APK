.class public final Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final callbackThreadSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private enableSynchronousBufferQueueingWithAsyncCryptoFlag:Z

.field private final queueingThreadSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "trackType"    # I

    .line 70
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "callbackThreadSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/os/HandlerThread;>;"
    .local p2, "queueingThreadSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/os/HandlerThread;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    .line 82
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->enableSynchronousBufferQueueingWithAsyncCryptoFlag:Z

    .line 84
    return-void
.end method

.method static synthetic lambda$new$0(I)Landroid/os/HandlerThread;
    .locals 2
    .param p0, "trackType"    # I

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->access$300(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(I)Landroid/os/HandlerThread;
    .locals 2
    .param p0, "trackType"    # I

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->access$200(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static useSynchronousBufferQueueingWithAsyncCryptoFlag(Landroidx/media3/common/Format;)Z
    .locals 3
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 143
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 144
    return v2

    .line 147
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method public createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
    .locals 12
    .param p1, "configuration"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 101
    .local v0, "codecName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 102
    .local v1, "codecAdapter":Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
    const/4 v2, 0x0

    .line 104
    .local v2, "codec":Landroid/media/MediaCodec;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCodec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 105
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    move-object v2, v3

    .line 106
    const/4 v3, 0x0

    .line 108
    .local v3, "flags":I
    iget-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->enableSynchronousBufferQueueingWithAsyncCryptoFlag:Z

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->format:Landroidx/media3/common/Format;

    .line 109
    invoke-static {v4}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->useSynchronousBufferQueueingWithAsyncCryptoFlag(Landroidx/media3/common/Format;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    new-instance v4, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;

    invoke-direct {v4, v2}, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;)V

    .line 111
    .local v4, "bufferEnqueuer":Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;
    or-int/lit8 v3, v3, 0x4

    move-object v10, v4

    goto :goto_0

    .line 113
    .end local v4    # "bufferEnqueuer":Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;
    :cond_0
    new-instance v4, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    .line 114
    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/HandlerThread;

    invoke-direct {v4, v2, v5}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    move-object v10, v4

    .line 116
    .local v10, "bufferEnqueuer":Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;
    :goto_0
    new-instance v11, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    .line 119
    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/os/HandlerThread;

    iget-object v8, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->loudnessCodecController:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;

    const/4 v9, 0x0

    move-object v4, v11

    move-object v5, v2

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$1;)V

    move-object v1, v11

    .line 122
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 123
    iget-object v4, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    if-nez v4, :cond_1

    iget-object v4, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-boolean v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->detachedSurfaceSupported:Z

    if-eqz v4, :cond_1

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x23

    if-lt v4, v5, :cond_1

    .line 126
    or-int/lit8 v3, v3, 0x8

    .line 128
    :cond_1
    iget-object v4, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v5, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object v6, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    invoke-static {v1, v4, v5, v6, v3}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->access$100(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-object v1

    .line 131
    .end local v3    # "flags":I
    .end local v10    # "bufferEnqueuer":Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    .line 134
    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->release()V

    .line 137
    :cond_3
    :goto_1
    throw v3
.end method

.method public bridge synthetic createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetAsyncCryptoFlagEnabled(Z)V
    .locals 0
    .param p1, "enableAsyncCryptoFlag"    # Z

    .line 94
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->enableSynchronousBufferQueueingWithAsyncCryptoFlag:Z

    .line 95
    return-void
.end method
