.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final downloadExecutorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private final loadableLoadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private mediaItem:Landroidx/media3/common/MediaItem;

.field private final progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

.field private final suppressPrepareError:Z

.field private timelineDurationUs:J

.field private timelineIsLive:Z

.field private timelineIsPlaceholder:Z

.field private timelineIsSeekable:Z

.field private transferListener:Landroidx/media3/datasource/TransferListener;


# direct methods
.method private constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;IZLcom/google/common/base/Supplier;)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p3, "progressiveMediaExtractorFactory"    # Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;
    .param p4, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p5, "loadableLoadErrorHandlingPolicy"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .param p6, "continueLoadingCheckIntervalBytes"    # I
    .param p7, "suppressPrepareError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/datasource/DataSource$Factory;",
            "Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;",
            "Landroidx/media3/exoplayer/drm/DrmSessionManager;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "IZ",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p8, "downloadExecutorSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/util/ReleasableExecutor;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 297
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 298
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 299
    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 300
    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 301
    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 302
    iput p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    .line 303
    iput-boolean p7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->suppressPrepareError:Z

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    .line 305
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 306
    iput-object p8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    .line 307
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;IZLcom/google/common/base/Supplier;Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/MediaItem;
    .param p2, "x1"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p3, "x2"    # Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;
    .param p4, "x3"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p5, "x4"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .param p6, "x5"    # I
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lcom/google/common/base/Supplier;
    .param p9, "x8"    # Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;

    .line 58
    invoke-direct/range {p0 .. p8}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;IZLcom/google/common/base/Supplier;)V

    return-void
.end method

.method private getLocalConfiguration()Landroidx/media3/common/MediaItem$LocalConfiguration;
    .locals 1

    .line 400
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    return-object v0
.end method

.method private notifySourceInfoRefreshed()V
    .locals 9

    .line 406
    new-instance v8, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    .line 413
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    .line 414
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-eqz v1, :cond_0

    .line 417
    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;Landroidx/media3/common/Timeline;)V

    move-object v0, v1

    .line 435
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    .line 436
    return-void
.end method


# virtual methods
.method public canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z
    .locals 6
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 316
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getLocalConfiguration()Landroidx/media3/common/MediaItem$LocalConfiguration;

    move-result-object v0

    .line 317
    .local v0, "existingConfiguration":Landroidx/media3/common/MediaItem$LocalConfiguration;
    iget-object v1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 318
    .local v1, "newConfiguration":Landroidx/media3/common/MediaItem$LocalConfiguration;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v3, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 319
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    iget-wide v4, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 321
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 318
    :goto_0
    return v2
.end method

.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 22
    .param p1, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 345
    move-object/from16 v15, p0

    iget-object v0, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v13

    .line 346
    .local v13, "dataSource":Landroidx/media3/datasource/DataSource;
    iget-object v0, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    invoke-interface {v13, v0}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    .line 349
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getLocalConfiguration()Landroidx/media3/common/MediaItem$LocalConfiguration;

    move-result-object v14

    .line 350
    .local v14, "localConfiguration":Landroidx/media3/common/MediaItem$LocalConfiguration;
    new-instance v16, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v1, v14, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v0, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getPlayerId()Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;->createProgressiveMediaExtractor(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    move-result-object v3

    iget-object v4, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 355
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->createDrmEventDispatcher(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v5

    iget-object v6, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 357
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->createEventDispatcher(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v7

    iget-object v10, v14, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget v11, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    iget-boolean v12, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->suppressPrepareError:Z

    iget-wide v8, v14, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    .line 363
    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v17

    .line 364
    iget-object v0, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    if-eqz v0, :cond_1

    iget-object v0, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/util/ReleasableExecutor;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object v2, v13

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    .end local v13    # "dataSource":Landroidx/media3/datasource/DataSource;
    .end local v14    # "localConfiguration":Landroidx/media3/common/MediaItem$LocalConfiguration;
    .local v20, "dataSource":Landroidx/media3/datasource/DataSource;
    .local v21, "localConfiguration":Landroidx/media3/common/MediaItem$LocalConfiguration;
    move-wide/from16 v13, v17

    move-object/from16 v15, v19

    invoke-direct/range {v0 .. v15}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;Landroidx/media3/exoplayer/upstream/Allocator;Ljava/lang/String;IZJLandroidx/media3/exoplayer/util/ReleasableExecutor;)V

    .line 350
    return-object v16
.end method

.method public declared-synchronized getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 311
    .end local p0    # "this":Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 341
    return-void
.end method

.method public onSourceInfoRefreshed(JZZ)V
    .locals 2
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z
    .param p4, "isLive"    # Z

    .line 382
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    move-wide p1, v0

    .line 383
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    if-ne v0, p4, :cond_1

    .line 388
    return-void

    .line 390
    :cond_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 391
    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    .line 392
    iput-boolean p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    .line 394
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    .line 395
    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 3
    .param p1, "mediaTransferListener"    # Landroidx/media3/datasource/TransferListener;

    .line 331
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    .line 332
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 333
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getPlayerId()Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v2

    .line 332
    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 334
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->prepare()V

    .line 335
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    .line 336
    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 369
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->release()V

    .line 370
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 1

    .line 374
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->release()V

    .line 375
    return-void
.end method

.method public declared-synchronized updateMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    monitor-enter p0

    .line 326
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 325
    .end local p0    # "this":Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
    .end local p1    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
