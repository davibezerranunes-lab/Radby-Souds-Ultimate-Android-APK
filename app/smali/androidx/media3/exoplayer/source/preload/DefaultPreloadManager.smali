.class public final Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
.super Landroidx/media3/exoplayer/source/preload/BasePreloadManager;
.source "DefaultPreloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;,
        Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$RankingDataComparator;,
        Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;,
        Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final deprecatedConstructorCalled:Z

.field private final preloadHandler:Landroid/os/Handler;

.field private final preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

.field private final preloadMediaSourceFactory:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;

.field private final rendererCapabilitiesList:Landroidx/media3/exoplayer/RendererCapabilitiesList;

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)V
    .locals 12
    .param p1, "builder"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;

    .line 335
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$RankingDataComparator;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$RankingDataComparator;-><init>()V

    iget-object v1, p1, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->targetPreloadStatusControl:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;

    iget-object v2, p1, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    .line 338
    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 335
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;-><init>(Ljava/util/Comparator;Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    .line 339
    new-instance v0, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;

    .line 340
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->access$100(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/RenderersFactory;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    .line 341
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->createRendererCapabilitiesList()Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->rendererCapabilitiesList:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    .line 342
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->access$200(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Landroidx/media3/exoplayer/PlaybackLooperProvider;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 343
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->access$400(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->access$300(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;->createTrackSelector(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 344
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->access$500(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Lcom/google/common/base/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 345
    .local v0, "bandwidthMeter":Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    new-instance v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->init(Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    .line 346
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlaybackLooperProvider;->obtainLooper()Landroid/os/Looper;

    move-result-object v9

    .line 347
    .local v9, "preloadLooper":Landroid/os/Looper;
    new-instance v10, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;

    iget-object v1, p1, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    .line 349
    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    new-instance v3, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;

    const/4 v11, 0x0

    invoke-direct {v3, p0, v11}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->rendererCapabilitiesList:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    .line 353
    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->getRendererCapabilities()[Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v6

    .line 354
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->access$700(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/LoadControl;

    invoke-interface {v1}, Landroidx/media3/exoplayer/LoadControl;->getAllocator()Landroidx/media3/exoplayer/upstream/Allocator;

    move-result-object v7

    move-object v1, v10

    move-object v5, v0

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/BandwidthMeter;[Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/upstream/Allocator;Landroid/os/Looper;)V

    iput-object v10, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadMediaSourceFactory:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;

    .line 356
    invoke-static {v9, v11}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadHandler:Landroid/os/Handler;

    .line 357
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->deprecatedConstructorCalled:Z

    .line 358
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;
    .param p2, "x1"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;

    .line 64
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/RendererCapabilitiesList$Factory;Landroidx/media3/exoplayer/upstream/Allocator;Landroid/os/Looper;)V
    .locals 16
    .param p2, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .param p3, "trackSelector"    # Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .param p4, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .param p5, "rendererCapabilitiesListFactory"    # Landroidx/media3/exoplayer/RendererCapabilitiesList$Factory;
    .param p6, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p7, "preloadLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            "Landroidx/media3/exoplayer/trackselection/TrackSelector;",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            "Landroidx/media3/exoplayer/RendererCapabilitiesList$Factory;",
            "Landroidx/media3/exoplayer/upstream/Allocator;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    .local p1, "targetPreloadStatusControl":Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;, "Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$RankingDataComparator;

    invoke-direct {v1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$RankingDataComparator;-><init>()V

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    invoke-direct {v0, v1, v2, v11}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;-><init>(Ljava/util/Comparator;Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    .line 373
    nop

    .line 374
    invoke-interface/range {p5 .. p5}, Landroidx/media3/exoplayer/RendererCapabilitiesList$Factory;->createRendererCapabilitiesList()Landroidx/media3/exoplayer/RendererCapabilitiesList;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->rendererCapabilitiesList:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    .line 375
    new-instance v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;

    move-object/from16 v12, p7

    invoke-direct {v1, v12}, Landroidx/media3/exoplayer/PlaybackLooperProvider;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 376
    move-object/from16 v1, p3

    iput-object v1, v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 377
    iget-object v3, v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlaybackLooperProvider;->obtainLooper()Landroid/os/Looper;

    move-result-object v13

    .line 378
    .local v13, "obtainedPreloadLooper":Landroid/os/Looper;
    new-instance v14, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;

    new-instance v5, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;

    const/4 v15, 0x0

    invoke-direct {v5, v0, v15}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;)V

    iget-object v3, v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->rendererCapabilitiesList:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    .line 384
    invoke-interface {v3}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->getRendererCapabilities()[Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v8

    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object v10, v13

    invoke-direct/range {v3 .. v10}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/BandwidthMeter;[Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/upstream/Allocator;Landroid/os/Looper;)V

    iput-object v14, v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadMediaSourceFactory:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;

    .line 387
    invoke-static {v13, v15}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadHandler:Landroid/os/Handler;

    .line 388
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->deprecatedConstructorCalled:Z

    .line 389
    return-void
.end method

.method static synthetic lambda$new$0()V
    .locals 0

    .line 345
    return-void
.end method


# virtual methods
.method protected clearSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 415
    instance-of v0, p1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 416
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->clear()V

    .line 417
    return-void
.end method

.method public createMediaSourceForPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 404
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadMediaSourceFactory:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;->createMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$releaseInternal$1$androidx-media3-exoplayer-source-preload-DefaultPreloadManager()V
    .locals 1

    .line 429
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->rendererCapabilitiesList:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v0}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->release()V

    .line 430
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->deprecatedConstructorCalled:Z

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->release()V

    .line 435
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackLooperProvider;->releaseLooper()V

    .line 436
    return-void
.end method

.method protected preloadSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;J)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "startPositionsUs"    # J

    .line 409
    instance-of v0, p1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 410
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-virtual {v0, p2, p3}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->preload(J)V

    .line 411
    return-void
.end method

.method protected releaseInternal()V
    .locals 2

    .line 427
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->preloadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    return-void
.end method

.method protected releaseSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 421
    instance-of v0, p1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 422
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->releasePreloadMediaSource()V

    .line 423
    return-void
.end method

.method public setCurrentPlayingIndex(I)V
    .locals 1
    .param p1, "currentPlayingIndex"    # I

    .line 397
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->rankingDataComparator:Ljava/util/Comparator;

    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$RankingDataComparator;

    .line 399
    .local v0, "rankingDataComparator":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$RankingDataComparator;
    iput p1, v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$RankingDataComparator;->currentPlayingIndex:I

    .line 400
    return-void
.end method
