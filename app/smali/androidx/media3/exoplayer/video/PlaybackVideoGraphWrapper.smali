.class public final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSinkProvider;
.implements Landroidx/media3/common/VideoGraph$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$FrameRendererImpl;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;
    }
.end annotation


# static fields
.field private static final NO_OP_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final STATE_CREATED:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_RELEASED:I = 0x2


# instance fields
.field private bufferTimestampAdjustmentUs:J

.field private final clock:Landroidx/media3/common/util/Clock;

.field private final compositionEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentSurfaceAndSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroidx/media3/common/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultVideoSink:Landroidx/media3/exoplayer/video/VideoSink;

.field private handler:Landroidx/media3/common/util/HandlerWrapper;

.field private final inputVideoSink:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private outputFormat:Landroidx/media3/common/Format;

.field private pendingFlushCount:I

.field private final previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

.field private state:I

.field private videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field private final videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field private final videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

.field private videoGraph:Landroidx/media3/common/PreviewingVideoGraph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 228
    new-instance v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->NO_OP_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-static {p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$200(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->context:Landroid/content/Context;

    .line 257
    new-instance v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->inputVideoSink:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    .line 258
    invoke-static {p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$300(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Landroidx/media3/common/util/Clock;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clock:Landroidx/media3/common/util/Clock;

    .line 259
    invoke-static {p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$400(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 260
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clock:Landroidx/media3/common/util/Clock;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setClock(Landroidx/media3/common/util/Clock;)V

    .line 261
    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    new-instance v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$FrameRendererImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$FrameRendererImpl;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;-><init>(Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 263
    invoke-static {p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$600(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Landroidx/media3/common/PreviewingVideoGraph$Factory;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/PreviewingVideoGraph$Factory;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    .line 264
    invoke-static {p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$700(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->compositionEffects:Ljava/util/List;

    .line 265
    new-instance v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/video/DefaultVideoSink;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameRenderControl;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 266
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    .line 268
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->inputVideoSink:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->addListener(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;)V

    .line 269
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;
    .param p2, "x1"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;

    .line 75
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/common/Format;)Landroidx/media3/common/VideoFrameProcessor;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .param p1, "x1"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->initialize(Landroidx/media3/common/Format;)Landroidx/media3/common/VideoFrameProcessor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .param p1, "x1"    # Z

    .line 75
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->flush(Z)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .param p1, "x1"    # Z

    .line 75
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->isReady(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;J)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .param p1, "x1"    # J

    .line 75
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->hasReleasedFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 75
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    return-object v0
.end method

.method static synthetic access$1500(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .param p1, "x1"    # Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 75
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;F)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .param p1, "x1"    # F

    .line 75
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setPlaybackSpeed(F)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 75
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->compositionEffects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;JJ)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->render(JJ)V

    return-void
.end method

.method static synthetic access$1900(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;JJJ)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .line 75
    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->onStreamOffsetChange(JJJ)V

    return-void
.end method

.method static synthetic access$2000(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/ColorInfo;

    .line 75
    invoke-static {p0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->getAdjustedInputColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Landroidx/media3/common/Format;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 75
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->outputFormat:Landroidx/media3/common/Format;

    return-object v0
.end method

.method static synthetic access$2102(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .param p1, "x1"    # Landroidx/media3/common/Format;

    .line 75
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->outputFormat:Landroidx/media3/common/Format;

    return-object p1
.end method

.method static synthetic access$2200(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 75
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$2300(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 75
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$2400(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 75
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    return-object v0
.end method

.method static synthetic access$2500(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Landroidx/media3/common/util/Clock;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 75
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clock:Landroidx/media3/common/util/Clock;

    return-object v0
.end method

.method static synthetic access$2600(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Landroidx/media3/common/PreviewingVideoGraph;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 75
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Landroidx/media3/common/PreviewingVideoGraph;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/Executor;
    .locals 1

    .line 75
    sget-object v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->NO_OP_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Landroidx/media3/exoplayer/video/VideoSink;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 75
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/VideoSink;

    return-object v0
.end method

.method private flush(Z)V
    .locals 2
    .param p1, "resetPosition"    # Z

    .line 445
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    return-void

    .line 448
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    .line 449
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->flush(Z)V

    .line 452
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-void
.end method

.method private static getAdjustedInputColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;
    .locals 1
    .param p0, "inputColorInfo"    # Landroidx/media3/common/ColorInfo;

    .line 471
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    return-object p0

    .line 472
    :cond_1
    :goto_0
    sget-object v0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    return-object v0
.end method

.method private hasReleasedFrame(J)Z
    .locals 1
    .param p1, "presentationTimeUs"    # J

    .line 430
    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->hasReleasedFrame(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initialize(Landroidx/media3/common/Format;)Landroidx/media3/common/VideoFrameProcessor;
    .locals 13
    .param p1, "sourceFormat"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 370
    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 372
    iget-object v0, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->getAdjustedInputColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;

    move-result-object v0

    .line 373
    .local v0, "inputColorInfo":Landroidx/media3/common/ColorInfo;
    move-object v3, v0

    .line 374
    .local v3, "outputColorInfo":Landroidx/media3/common/ColorInfo;
    iget v4, v0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x22

    if-ge v4, v5, :cond_1

    .line 378
    nop

    .line 379
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo;->buildUpon()Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v3

    .line 381
    :cond_1
    iget-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clock:Landroidx/media3/common/util/Clock;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Looper;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 383
    :try_start_0
    iget-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    iget-object v5, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->context:Landroid/content/Context;

    sget-object v7, Landroidx/media3/common/DebugViewProvider;->NONE:Landroidx/media3/common/DebugViewProvider;

    iget-object v6, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 389
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v9, v6}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/common/util/HandlerWrapper;)V

    .line 390
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    .line 384
    const-wide/16 v11, 0x0

    move-object v6, v3

    move-object v8, p0

    invoke-interface/range {v4 .. v12}, Landroidx/media3/common/PreviewingVideoGraph$Factory;->create(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Ljava/util/List;J)Landroidx/media3/common/PreviewingVideoGraph;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Landroidx/media3/common/PreviewingVideoGraph;

    .line 392
    iget-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v4, :cond_2

    .line 393
    iget-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/Surface;

    .line 394
    .local v4, "surface":Landroid/view/Surface;
    iget-object v5, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/util/Size;

    .line 395
    .local v5, "size":Landroidx/media3/common/util/Size;
    invoke-virtual {v5}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v6, v7}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V

    .line 397
    .end local v4    # "surface":Landroid/view/Surface;
    .end local v5    # "size":Landroidx/media3/common/util/Size;
    :cond_2
    iget-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Landroidx/media3/common/PreviewingVideoGraph;

    invoke-interface {v4, v2}, Landroidx/media3/common/PreviewingVideoGraph;->registerInput(I)V
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    nop

    .line 401
    iget-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v4, p1}, Landroidx/media3/exoplayer/video/VideoSink;->initialize(Landroidx/media3/common/Format;)V

    .line 402
    iput v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    .line 403
    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Landroidx/media3/common/PreviewingVideoGraph;

    invoke-interface {v1, v2}, Landroidx/media3/common/PreviewingVideoGraph;->getProcessor(I)Landroidx/media3/common/VideoFrameProcessor;

    move-result-object v1

    return-object v1

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Landroidx/media3/common/VideoFrameProcessingException;
    new-instance v2, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v2, v1, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v2
.end method

.method private isInitialized()Z
    .locals 2

    .line 407
    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isReady(Z)Z
    .locals 2
    .param p1, "rendererOtherwiseReady"    # Z

    .line 425
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->isReady(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 228
    return-void
.end method

.method private maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 411
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Landroidx/media3/common/PreviewingVideoGraph;

    if-nez v0, :cond_0

    .line 412
    return-void

    .line 415
    :cond_0
    if-eqz p1, :cond_1

    .line 416
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Landroidx/media3/common/PreviewingVideoGraph;

    new-instance v1, Landroidx/media3/common/SurfaceInfo;

    invoke-direct {v1, p1, p2, p3}, Landroidx/media3/common/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    invoke-interface {v0, v1}, Landroidx/media3/common/PreviewingVideoGraph;->setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V

    .line 417
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/VideoSink;

    new-instance v1, Landroidx/media3/common/util/Size;

    invoke-direct {v1, p2, p3}, Landroidx/media3/common/util/Size;-><init>(II)V

    invoke-interface {v0, p1, v1}, Landroidx/media3/exoplayer/video/VideoSink;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Landroidx/media3/common/PreviewingVideoGraph;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/media3/common/PreviewingVideoGraph;->setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V

    .line 420
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->clearOutputSurfaceInfo()V

    .line 422
    :goto_0
    return-void
.end method

.method private onStreamOffsetChange(JJJ)V
    .locals 1
    .param p1, "bufferTimestampAdjustmentUs"    # J
    .param p3, "bufferPresentationTimeUs"    # J
    .param p5, "streamOffsetUs"    # J

    .line 466
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->bufferTimestampAdjustmentUs:J

    .line 467
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p3, p4, p5, p6}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->onStreamOffsetChange(JJ)V

    .line 468
    return-void
.end method

.method private render(JJ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->render(JJ)V

    .line 442
    return-void
.end method

.method private setPlaybackSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 461
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setPlaybackSpeed(F)V

    .line 462
    return-void
.end method

.method private setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0
    .param p1, "videoFrameMetadataListener"    # Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 457
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 458
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;

    .line 277
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public clearOutputSurfaceInfo()V
    .locals 3

    .line 310
    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    .line 312
    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    sget-object v1, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    .line 313
    invoke-virtual {v1}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v1

    .line 310
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V

    .line 314
    iput-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 315
    return-void
.end method

.method public getSink()Landroidx/media3/exoplayer/video/VideoSink;
    .locals 1

    .line 293
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->inputVideoSink:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    return-object v0
.end method

.method synthetic lambda$flush$1$androidx-media3-exoplayer-video-PlaybackVideoGraphWrapper()V
    .locals 1

    .line 452
    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    return-void
.end method

.method public onEnded(J)V
    .locals 1
    .param p1, "finalFramePresentationTimeUs"    # J

    .line 357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onError(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 2
    .param p1, "exception"    # Landroidx/media3/common/VideoFrameProcessingException;

    .line 362
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;

    .line 363
    .local v1, "listener":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
    invoke-interface {v1, p0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;->onError(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/common/VideoFrameProcessingException;)V

    .line 364
    .end local v1    # "listener":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
    goto :goto_0

    .line 365
    :cond_0
    return-void
.end method

.method public onOutputFrameAvailableForRendering(J)V
    .locals 3
    .param p1, "framePresentationTimeUs"    # J

    .line 345
    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    if-lez v0, :cond_0

    .line 347
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    iget-wide v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->bufferTimestampAdjustmentUs:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->onOutputFrameAvailableForRendering(J)V

    .line 353
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 339
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 340
    .local v0, "format":Landroidx/media3/common/Format;
    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Landroidx/media3/exoplayer/video/VideoSink;->onInputStreamChanged(ILandroidx/media3/common/Format;)V

    .line 341
    return-void
.end method

.method public release()V
    .locals 3

    .line 319
    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 320
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 327
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Landroidx/media3/common/PreviewingVideoGraph;

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Landroidx/media3/common/PreviewingVideoGraph;

    invoke-interface {v0}, Landroidx/media3/common/PreviewingVideoGraph;->release()V

    .line 330
    :cond_2
    iput-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 331
    iput v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    .line 332
    return-void
.end method

.method public removeListener(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;

    .line 286
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 2
    .param p1, "outputSurface"    # Landroid/view/Surface;
    .param p2, "outputResolution"    # Landroidx/media3/common/util/Size;

    .line 298
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/Size;

    .line 300
    invoke-virtual {v0, p2}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    return-void

    .line 303
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 304
    nop

    .line 305
    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v1

    .line 304
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V

    .line 306
    return-void
.end method
