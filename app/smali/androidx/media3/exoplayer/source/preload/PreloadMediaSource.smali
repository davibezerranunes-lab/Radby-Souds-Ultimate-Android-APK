.class public final Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "PreloadMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;,
        Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;,
        Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;,
        Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;
    }
.end annotation


# static fields
.field private static final CHECK_FOR_PRELOAD_ERROR_INTERVAL_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "PreloadMediaSource"


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field private onSourcePreparedNotified:Z

.field private onUsedByPlayerNotified:Z

.field private playingPreloadedMediaPeriodAndId:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field private preloadCalled:Z

.field private final preloadControl:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;

.field private final preloadHandler:Landroid/os/Handler;

.field private preloadingMediaPeriodAndKey:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;",
            "Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;",
            ">;"
        }
    .end annotation
.end field

.field private prepareChildSourceCalled:Z

.field private final releaseHandler:Landroid/os/Handler;

.field private final rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

.field private startPositionUs:J

.field private timeline:Landroidx/media3/common/Timeline;

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;


# direct methods
.method public static synthetic $r8$lambda$PFEfUw-OjJlAGDPg8YCJvEWz75k(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->checkForPreloadError()V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/BandwidthMeter;[Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/upstream/Allocator;Landroid/os/Looper;)V
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "preloadControl"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;
    .param p3, "trackSelector"    # Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .param p4, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .param p5, "rendererCapabilities"    # [Landroidx/media3/exoplayer/RendererCapabilities;
    .param p6, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p7, "preloadLooper"    # Landroid/os/Looper;

    .line 242
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 243
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadControl:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;

    .line 244
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 245
    iput-object p4, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 246
    iput-object p5, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 247
    iput-object p6, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 249
    const/4 v0, 0x0

    invoke-static {p7, v0}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadHandler:Landroid/os/Handler;

    .line 250
    invoke-static {p7, v0}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->releaseHandler:Landroid/os/Handler;

    .line 251
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->startPositionUs:J

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/BandwidthMeter;[Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/upstream/Allocator;Landroid/os/Looper;Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "x1"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;
    .param p3, "x2"    # Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .param p4, "x3"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .param p5, "x4"    # [Landroidx/media3/exoplayer/RendererCapabilities;
    .param p6, "x5"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p7, "x6"    # Landroid/os/Looper;
    .param p8, "x7"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$1;

    .line 57
    invoke-direct/range {p0 .. p7}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/BandwidthMeter;[Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/upstream/Allocator;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 57
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->isUsedByPlayer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadControl:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 57
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->stopPreloading()V

    return-void
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)[Landroidx/media3/exoplayer/RendererCapabilities;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/common/Timeline;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p1, "x1"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 57
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->mediaPeriodIdEqualsWithoutWindowSequenceNumber(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    return v0
.end method

.method private checkForPreloadError()V
    .locals 5

    .line 428
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 429
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    .line 431
    .local v0, "preloadingMediaPeriod":Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;->prepared:Z

    if-nez v1, :cond_0

    .line 432
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;->maybeThrowPrepareError()V

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;->maybeThrowStreamError()V

    .line 437
    .end local v0    # "preloadingMediaPeriod":Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadControl:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;

    new-instance v2, Landroidx/media3/exoplayer/source/preload/PreloadException;

    .line 440
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Landroidx/media3/exoplayer/source/preload/PreloadException;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    invoke-interface {v1, v2, p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;->onPreloadError(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    .line 441
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->stopPreloading()V

    .line 443
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private isUsedByPlayer()Z
    .locals 1

    .line 417
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->prepareSourceCalled()Z

    move-result v0

    return v0
.end method

.method private static mediaPeriodIdEqualsWithoutWindowSequenceNumber(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 2
    .param p0, "firstPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p1, "secondPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 451
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onUsedByPlayer()V
    .locals 1

    .line 421
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadControl:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;->onUsedByPlayer(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    .line 422
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->stopPreloading()V

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->onUsedByPlayerNotified:Z

    .line 424
    return-void
.end method

.method private stopPreloading()V
    .locals 2

    .line 446
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 447
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 284
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method

.method public bridge synthetic createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    move-result-object p1

    return-object p1
.end method

.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    .locals 4
    .param p1, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 339
    new-instance v0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;

    invoke-direct {v0, p1, p3, p4}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)V

    .line 340
    .local v0, "key":Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    .line 342
    .local v1, "mediaPeriod":Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->isUsedByPlayer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    iput-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    .line 344
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->playingPreloadedMediaPeriodAndId:Landroid/util/Pair;

    .line 346
    :cond_0
    return-object v1

    .line 347
    .end local v1    # "mediaPeriod":Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 349
    iput-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    .line 352
    :cond_2
    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 353
    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 354
    .restart local v1    # "mediaPeriod":Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->isUsedByPlayer()Z

    move-result v2

    if-nez v2, :cond_3

    .line 355
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    .line 357
    :cond_3
    return-object v1
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1
    .param p1, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 362
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->playingPreloadedMediaPeriodAndId:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->playingPreloadedMediaPeriodAndId:Landroid/util/Pair;

    .line 364
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 363
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->mediaPeriodIdEqualsWithoutWindowSequenceNumber(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->playingPreloadedMediaPeriodAndId:Landroid/util/Pair;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0

    .line 367
    :cond_0
    return-object p1
.end method

.method synthetic lambda$clear$1$androidx-media3-exoplayer-source-preload-PreloadMediaSource()V
    .locals 2

    .line 287
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    .line 291
    :cond_0
    return-void
.end method

.method synthetic lambda$onChildSourceInfoRefreshed$2$androidx-media3-exoplayer-source-preload-PreloadMediaSource(Landroidx/media3/common/Timeline;)V
    .locals 7
    .param p1, "newTimeline"    # Landroidx/media3/common/Timeline;

    .line 313
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->isUsedByPlayer()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->onSourcePreparedNotified:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->onSourcePreparedNotified:Z

    .line 317
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadControl:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;->onSourcePrepared(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->stopPreloading()V

    .line 319
    return-void

    .line 321
    :cond_1
    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->startPositionUs:J

    .line 322
    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 327
    .local v0, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    new-instance v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    .line 328
    .local v1, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 329
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    move-result-object v2

    .line 330
    .local v2, "mediaPeriod":Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    new-instance v3, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 331
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, p0, v4, v5}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;J)V

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 332
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 330
    invoke-virtual {v2, v3, v4, v5}, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;->preload(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    .line 333
    return-void

    .line 314
    .end local v0    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v1    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .end local v2    # "mediaPeriod":Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$preload$0$androidx-media3-exoplayer-source-preload-PreloadMediaSource(J)V
    .locals 1
    .param p1, "startPositionUs"    # J

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadCalled:Z

    .line 266
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->startPositionUs:J

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->onSourcePreparedNotified:Z

    .line 268
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->isUsedByPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->onUsedByPlayer()V

    goto :goto_0

    .line 271
    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/analytics/PlayerId;->UNSET:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 272
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->getTransferListener()Landroidx/media3/datasource/TransferListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V

    .line 273
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->checkForPreloadError()V

    .line 275
    :goto_0
    return-void
.end method

.method synthetic lambda$releasePreloadMediaSource$3$androidx-media3-exoplayer-source-preload-PreloadMediaSource()V
    .locals 3

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadCalled:Z

    .line 404
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->startPositionUs:J

    .line 405
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->onSourcePreparedNotified:Z

    .line 406
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 408
    iput-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->releaseSourceInternal()V

    .line 411
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->releaseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method protected onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
    .locals 2
    .param p1, "newTimeline"    # Landroidx/media3/common/Timeline;

    .line 309
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->timeline:Landroidx/media3/common/Timeline;

    .line 310
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    .line 311
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Landroidx/media3/common/Timeline;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method

.method public preload(J)V
    .locals 2
    .param p1, "startPositionUs"    # J

    .line 263
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method protected prepareSourceInternal()V
    .locals 1

    .line 296
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->isUsedByPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->onUsedByPlayerNotified:Z

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->onUsedByPlayer()V

    .line 299
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->timeline:Landroidx/media3/common/Timeline;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->prepareChildSourceCalled:Z

    if-nez v0, :cond_2

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->prepareChildSourceCalled:Z

    .line 303
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->prepareChildSource()V

    .line 305
    :cond_2
    :goto_0
    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 3
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 372
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    .line 373
    .local v0, "preloadMediaPeriod":Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    .line 374
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 375
    iput-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadingMediaPeriodAndKey:Landroid/util/Pair;

    goto :goto_0

    .line 376
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->playingPreloadedMediaPeriodAndId:Landroid/util/Pair;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->playingPreloadedMediaPeriodAndId:Landroid/util/Pair;

    .line 377
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 378
    iput-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->playingPreloadedMediaPeriodAndId:Landroid/util/Pair;

    .line 380
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 381
    return-void
.end method

.method public releasePreloadMediaSource()V
    .locals 2

    .line 401
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->releaseHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 2

    .line 385
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->isUsedByPlayer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->onUsedByPlayerNotified:Z

    .line 387
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preloadCalled:Z

    if-nez v1, :cond_0

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->timeline:Landroidx/media3/common/Timeline;

    .line 389
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->prepareChildSourceCalled:Z

    .line 390
    invoke-super {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->releaseSourceInternal()V

    .line 393
    :cond_0
    return-void
.end method
