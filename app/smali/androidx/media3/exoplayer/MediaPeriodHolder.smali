.class final Landroidx/media3/exoplayer/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPeriodHolder"


# instance fields
.field public allRenderersInCorrectState:Z

.field public hasEnabledTracks:Z

.field public info:Landroidx/media3/exoplayer/MediaPeriodInfo;

.field private final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field private final mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

.field private next:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public prepareCalled:Z

.field public prepared:Z

.field private final rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

.field private rendererPositionOffsetUs:J

.field public final sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

.field public final targetPreloadBufferDurationUs:J

.field private trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field private trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;J)V
    .locals 18
    .param p1, "rendererCapabilities"    # [Landroidx/media3/exoplayer/RendererCapabilities;
    .param p2, "rendererPositionOffsetUs"    # J
    .param p4, "trackSelector"    # Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .param p5, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p6, "mediaSourceList"    # Landroidx/media3/exoplayer/MediaSourceList;
    .param p7, "info"    # Landroidx/media3/exoplayer/MediaPeriodInfo;
    .param p8, "emptyTrackSelectorResult"    # Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .param p9, "targetPreloadBufferDurationUs"    # J

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 115
    move-wide/from16 v3, p2

    iput-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 116
    move-object/from16 v5, p4

    iput-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 117
    move-object/from16 v13, p6

    iput-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 118
    iget-object v6, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 119
    iput-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 120
    move-wide/from16 v14, p9

    iput-wide v14, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->targetPreloadBufferDurationUs:J

    .line 121
    sget-object v6, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 122
    move-object/from16 v11, p8

    iput-object v11, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 123
    array-length v6, v1

    new-array v6, v6, [Landroidx/media3/exoplayer/source/SampleStream;

    iput-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 124
    array-length v6, v1

    new-array v6, v6, [Z

    iput-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    .line 125
    iget-object v6, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v9, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v7, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    .line 126
    move-wide/from16 v16, v7

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    move-wide/from16 v11, v16

    invoke-static/range {v6 .. v12}, Landroidx/media3/exoplayer/MediaPeriodHolder;->createMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/upstream/Allocator;JJ)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 128
    return-void
.end method

.method private associateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/SampleStream;)V
    .locals 3
    .param p1, "sampleStreams"    # [Landroidx/media3/exoplayer/source/SampleStream;

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 474
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 475
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    new-instance v1, Landroidx/media3/exoplayer/source/EmptySampleStream;

    invoke-direct {v1}, Landroidx/media3/exoplayer/source/EmptySampleStream;-><init>()V

    aput-object v1, p1, v0

    .line 473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static createMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/upstream/Allocator;JJ)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 9
    .param p0, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p1, "mediaSourceList"    # Landroidx/media3/exoplayer/MediaSourceList;
    .param p2, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p3, "startPositionUs"    # J
    .param p5, "endPositionUs"    # J

    .line 492
    invoke-virtual {p1, p0, p2, p3, p4}, Landroidx/media3/exoplayer/MediaSourceList;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v7

    .line 493
    .local v7, "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v8, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v8

    move-object v1, v7

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    move-object v7, v8

    .line 498
    :cond_0
    return-object v7
.end method

.method private disableTrackSelectionsInResult()V
    .locals 3

    .line 442
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    return-void

    .line 445
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v1, :cond_2

    .line 446
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    .line 447
    .local v1, "rendererEnabled":Z
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    .line 448
    .local v2, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 449
    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->disable()V

    .line 445
    .end local v1    # "rendererEnabled":Z
    .end local v2    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private disassociateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/SampleStream;)V
    .locals 3
    .param p1, "sampleStreams"    # [Landroidx/media3/exoplayer/source/SampleStream;

    .line 460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 461
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 462
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 460
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private enableTrackSelectionsInResult()V
    .locals 3

    .line 429
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v1, :cond_2

    .line 433
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    .line 434
    .local v1, "rendererEnabled":Z
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    .line 435
    .local v2, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 436
    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->enable()V

    .line 432
    .end local v1    # "rendererEnabled":Z
    .end local v2    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private isLoadingMediaPeriod()Z
    .locals 1

    .line 482
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static releaseMediaPeriod(Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 3
    .param p0, "mediaSourceList"    # Landroidx/media3/exoplayer/MediaSourceList;
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 504
    :try_start_0
    instance-of v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v0, :cond_0

    .line 505
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaSourceList;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    goto :goto_1

    .line 509
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method


# virtual methods
.method public applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J
    .locals 7
    .param p1, "trackSelectorResult"    # Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .param p2, "positionUs"    # J
    .param p4, "forceRecreateStreams"    # Z

    .line 297
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J
    .locals 13
    .param p1, "newTrackSelectorResult"    # Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .param p2, "positionUs"    # J
    .param p4, "forceRecreateStreams"    # Z
    .param p5, "streamResetFlags"    # [Z

    .line 321
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    .line 322
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 323
    invoke-virtual {p1, v6, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    nop

    :goto_1
    aput-boolean v4, v3, v2

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v2    # "i":I
    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disassociateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/SampleStream;)V

    .line 329
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 330
    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 331
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    .line 333
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v7, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v9, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 334
    move-object/from16 v10, p5

    move-wide v11, p2

    invoke-interface/range {v6 .. v12}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v2

    .line 340
    .end local p2    # "positionUs":J
    .local v2, "positionUs":J
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    invoke-direct {p0, v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->associateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/SampleStream;)V

    .line 343
    iput-boolean v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    .line 344
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    array-length v7, v7

    if-ge v6, v7, :cond_5

    .line 345
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v7, v7, v6

    if-eqz v7, :cond_2

    .line 346
    invoke-virtual {p1, v6}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v7

    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 348
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v7, v7, v6

    invoke-interface {v7}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_4

    .line 349
    iput-boolean v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_4

    .line 352
    :cond_2
    iget-object v7, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v7, v7, v6

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 344
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 355
    .end local v6    # "i":I
    :cond_5
    return-wide v2
.end method

.method public canBeUsedForMediaPeriodInfo(Landroidx/media3/exoplayer/MediaPeriodInfo;)Z
    .locals 4
    .param p1, "info"    # Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 516
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v2, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->areDurationsCompatible(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 518
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 516
    :goto_0
    return v0
.end method

.method public continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)V
    .locals 1
    .param p1, "loadingInfo"    # Landroidx/media3/exoplayer/LoadingInfo;

    .line 247
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 248
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    .line 249
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 5

    .line 185
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    return-wide v0

    .line 189
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 190
    .local v3, "bufferedPositionUs":J
    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :goto_1
    return-wide v0
.end method

.method public getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 1

    .line 385
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 198
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getRendererOffset()J
    .locals 2

    .line 148
    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-wide v0
.end method

.method public getStartPositionRendererTime()J
    .locals 4

    .line 162
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    .line 390
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 1

    .line 395
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    return-object v0
.end method

.method public handlePrepared(FLandroidx/media3/common/Timeline;Z)V
    .locals 9
    .param p1, "playbackSpeed"    # F
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
    .param p3, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 212
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 213
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->selectTracks(FLandroidx/media3/common/Timeline;Z)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 214
    .local v0, "selectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 215
    .local v1, "requestedStartPositionUs":J
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 217
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 219
    :cond_0
    nop

    .line 220
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J

    move-result-wide v3

    .line 222
    .local v3, "newStartPositionUs":J
    iget-wide v5, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v7, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 223
    iget-object v5, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {v5, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 224
    return-void
.end method

.method public hasLoadingError()Z
    .locals 5

    .line 413
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_1

    .line 416
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 417
    .local v4, "sampleStream":Landroidx/media3/exoplayer/source/SampleStream;
    if-eqz v4, :cond_1

    .line 418
    invoke-interface {v4}, Landroidx/media3/exoplayer/source/SampleStream;->maybeThrowError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v4    # "sampleStream":Landroidx/media3/exoplayer/source/SampleStream;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    :cond_2
    :goto_1
    nop

    .line 425
    return v1

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    return v1
.end method

.method public isFullyBuffered()Z
    .locals 4

    .line 167
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 168
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0
.end method

.method public isFullyPreloaded()Z
    .locals 4

    .line 173
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->targetPreloadBufferDurationUs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 1
    .param p1, "callback"    # Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    .param p2, "startPositionUs"    # J

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    .line 523
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    .line 524
    return-void
.end method

.method public reevaluateBuffer(J)V
    .locals 3
    .param p1, "rendererPositionUs"    # J

    .line 233
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 234
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    .line 237
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 360
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 361
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->releaseMediaPeriod(Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 362
    return-void
.end method

.method public selectTracks(FLandroidx/media3/common/Timeline;Z)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 6
    .param p1, "playbackSpeed"    # F
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
    .param p3, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 266
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2, v3, p2}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->selectTracks([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 267
    .local v0, "selectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_4

    .line 268
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v2, v2, v1

    .line 271
    invoke-interface {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v2

    const/4 v5, -0x2

    if-ne v2, v5, :cond_1

    :cond_0
    move v3, v4

    .line 269
    :cond_1
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    goto :goto_1

    .line 273
    :cond_2
    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 267
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "i":I
    :cond_4
    iget-object v1, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 277
    .local v4, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eqz v4, :cond_5

    .line 278
    invoke-interface {v4, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    .line 279
    invoke-interface {v4, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    .line 276
    .end local v4    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 282
    :cond_6
    return-object v0
.end method

.method public setNext(Landroidx/media3/exoplayer/MediaPeriodHolder;)V
    .locals 1
    .param p1, "nextMediaPeriodHolder"    # Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 371
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v0, :cond_0

    .line 372
    return-void

    .line 374
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 375
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 376
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    .line 377
    return-void
.end method

.method public setRendererOffset(J)V
    .locals 0
    .param p1, "rendererPositionOffsetUs"    # J

    .line 157
    iput-wide p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 158
    return-void
.end method

.method public toPeriodTime(J)J
    .locals 2
    .param p1, "rendererTimeUs"    # J

    .line 143
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public toRendererTime(J)J
    .locals 2
    .param p1, "periodTimeUs"    # J

    .line 135
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public updateClipping()V
    .locals 5

    .line 400
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    instance-of v0, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    .line 403
    .local v0, "endPositionUs":J
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    check-cast v2, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->updateClipping(JJ)V

    .line 405
    .end local v0    # "endPositionUs":J
    :cond_1
    return-void
.end method
