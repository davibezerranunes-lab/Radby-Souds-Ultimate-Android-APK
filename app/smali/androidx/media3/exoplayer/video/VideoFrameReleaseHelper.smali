.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;
    }
.end annotation


# static fields
.field private static final MAX_ALLOWED_ADJUSTMENT_NS:J = 0x1312d00L

.field private static final MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE:I = 0x1e

.field private static final MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS:J = 0x12a05f200L

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE:F = 0.02f

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "VideoFrameReleaseHelper"

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L

.field private static final VSYNC_SAMPLE_UPDATE_PERIOD_MS:J = 0x1f4L


# instance fields
.field private changeFrameRateStrategy:I

.field private final displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

.field private formatFrameRate:F

.field private frameIndex:J

.field private final frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

.field private lastAdjustedFrameIndex:J

.field private lastAdjustedReleaseTimeNs:J

.field private pendingLastAdjustedFrameIndex:J

.field private pendingLastAdjustedReleaseTimeNs:J

.field private playbackSpeed:F

.field private started:Z

.field private surface:Landroid/view/Surface;

.field private surfaceMediaFrameRate:F

.field private surfacePlaybackFrameRate:F

.field private vsyncDurationNs:J

.field private vsyncOffsetNs:J

.field private final vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 134
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->maybeBuildDisplayHelper(Landroid/content/Context;)Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    .line 135
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->getInstance()Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 136
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 137
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    .line 138
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 139
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 141
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/view/Display;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;
    .param p1, "x1"    # Landroid/view/Display;

    .line 50
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateDefaultDisplayRefreshRateParams(Landroid/view/Display;)V

    return-void
.end method

.method private static adjustmentAllowed(JJ)Z
    .locals 4
    .param p0, "unadjustedReleaseTimeNs"    # J
    .param p2, "adjustedReleaseTimeNs"    # J

    .line 290
    sub-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1312d00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clearSurfaceFrameRate()V
    .locals 2

    .line 375
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 382
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    .line 383
    return-void

    .line 379
    :cond_1
    :goto_0
    return-void
.end method

.method private static closestVsync(JJJ)J
    .locals 14
    .param p0, "releaseTime"    # J
    .param p2, "sampledVsyncTime"    # J
    .param p4, "vsyncDuration"    # J

    .line 400
    sub-long v0, p0, p2

    div-long v0, v0, p4

    .line 401
    .local v0, "vsyncCount":J
    mul-long v2, p4, v0

    add-long v2, p2, v2

    .line 404
    .local v2, "snappedTimeNs":J
    cmp-long v4, p0, v2

    if-gtz v4, :cond_0

    .line 405
    sub-long v4, v2, p4

    .line 406
    .local v4, "snappedBeforeNs":J
    move-wide v6, v2

    .local v6, "snappedAfterNs":J
    goto :goto_0

    .line 408
    .end local v4    # "snappedBeforeNs":J
    .end local v6    # "snappedAfterNs":J
    :cond_0
    move-wide v4, v2

    .line 409
    .restart local v4    # "snappedBeforeNs":J
    add-long v6, v2, p4

    .line 411
    .restart local v6    # "snappedAfterNs":J
    :goto_0
    sub-long v8, v6, p0

    .line 412
    .local v8, "snappedAfterDiff":J
    sub-long v10, p0, v4

    .line 413
    .local v10, "snappedBeforeDiff":J
    cmp-long v12, v8, v10

    if-gez v12, :cond_1

    move-wide v12, v6

    goto :goto_1

    :cond_1
    move-wide v12, v4

    :goto_1
    return-wide v12
.end method

.method private maybeBuildDisplayHelper(Landroid/content/Context;)Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 418
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 419
    return-object v0

    .line 421
    :cond_0
    nop

    .line 422
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 423
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v1, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/hardware/display/DisplayManager;)V

    :cond_1
    return-object v0
.end method

.method private resetAdjustment()V
    .locals 2

    .line 283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 284
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 285
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 286
    return-void
.end method

.method private updateDefaultDisplayRefreshRateParams(Landroid/view/Display;)V
    .locals 6
    .param p1, "defaultDisplay"    # Landroid/view/Display;

    .line 388
    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    .line 390
    .local v0, "defaultDisplayRefreshRate":D
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v2, v2

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 391
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide/16 v4, 0x50

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    .line 392
    .end local v0    # "defaultDisplayRefreshRate":D
    goto :goto_0

    .line 393
    :cond_0
    const-string v0, "VideoFrameReleaseHelper"

    const-string v1, "Unable to query display refresh rate"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 395
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    .line 397
    :goto_0
    return-void
.end method

.method private updateSurfaceMediaFrameRate()V
    .locals 8

    .line 301
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 306
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getFrameRate()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 307
    .local v0, "candidateFrameRate":F
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    .line 308
    return-void

    .line 314
    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    iget v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_6

    .line 315
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 316
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 317
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getMatchingFrameDurationSumNs()J

    move-result-wide v1

    const-wide v6, 0x12a05f200L

    cmp-long v1, v1, v6

    if-ltz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v5

    .line 320
    .local v1, "candidateIsHighConfidence":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 321
    const v2, 0x3ca3d70a    # 0.02f

    goto :goto_2

    .line 322
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    nop

    .line 323
    .local v2, "minimumChangeForUpdate":F
    iget v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    move v1, v4

    .line 324
    .end local v2    # "minimumChangeForUpdate":F
    .local v1, "shouldUpdate":Z
    goto :goto_5

    .end local v1    # "shouldUpdate":Z
    :cond_6
    cmpl-float v2, v0, v2

    if-eqz v2, :cond_7

    .line 325
    const/4 v1, 0x1

    .restart local v1    # "shouldUpdate":Z
    goto :goto_5

    .line 327
    .end local v1    # "shouldUpdate":Z
    :cond_7
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 328
    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getFramesWithoutSyncCount()I

    move-result v2

    if-lt v2, v1, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    :goto_4
    move v1, v4

    .line 332
    .restart local v1    # "shouldUpdate":Z
    :goto_5
    if-eqz v1, :cond_9

    .line 333
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    .line 334
    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 336
    :cond_9
    return-void

    .line 302
    .end local v0    # "candidateFrameRate":F
    .end local v1    # "shouldUpdate":Z
    :cond_a
    :goto_6
    return-void
.end method

.method private updateSurfacePlaybackFrameRate(Z)V
    .locals 3
    .param p1, "forceUpdate"    # Z

    .line 349
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 356
    .local v0, "surfacePlaybackFrameRate":F
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 357
    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    mul-float v0, v1, v2

    .line 361
    :cond_1
    if-nez p1, :cond_2

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 362
    return-void

    .line 364
    :cond_2
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 365
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    invoke-static {v1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    .line 366
    return-void

    .line 352
    .end local v0    # "surfacePlaybackFrameRate":F
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustReleaseTime(J)J
    .locals 12
    .param p1, "releaseTimeNs"    # J

    .line 253
    move-wide v0, p1

    .line 255
    .local v0, "adjustedReleaseTimeNs":J
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getFrameDurationNs()J

    move-result-wide v2

    .line 257
    .local v2, "frameDurationNs":J
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    iget-wide v6, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iget-wide v8, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    sub-long/2addr v6, v8

    mul-long/2addr v6, v2

    long-to-float v6, v6

    iget v7, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    div-float/2addr v6, v7

    float-to-long v6, v6

    add-long/2addr v4, v6

    .line 260
    .local v4, "candidateAdjustedReleaseTimeNs":J
    invoke-static {p1, p2, v4, v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustmentAllowed(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    move-wide v0, v4

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 266
    .end local v2    # "frameDurationNs":J
    .end local v4    # "candidateAdjustedReleaseTimeNs":J
    :cond_1
    :goto_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 267
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    .line 269
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz v2, :cond_4

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_1

    .line 272
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    iget-wide v2, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 273
    .local v2, "sampledVsyncTimeNs":J
    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 274
    return-wide v0

    .line 277
    :cond_3
    iget-wide v10, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    move-wide v6, v0

    move-wide v8, v2

    invoke-static/range {v6 .. v11}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->closestVsync(JJJ)J

    move-result-wide v4

    .line 279
    .local v4, "snappedTimeNs":J
    iget-wide v6, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    sub-long v6, v4, v6

    return-wide v6

    .line 270
    .end local v2    # "sampledVsyncTimeNs":J
    .end local v4    # "snappedTimeNs":J
    :cond_4
    :goto_1
    return-wide v0
.end method

.method public onFormatChanged(F)V
    .locals 1
    .param p1, "formatFrameRate"    # F

    .line 205
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 206
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->reset()V

    .line 207
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    .line 208
    return-void
.end method

.method public onNextFrame(J)V
    .locals 4
    .param p1, "framePresentationTimeUs"    # J

    .line 216
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 217
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 218
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    .line 220
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 221
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->onNextFrame(J)V

    .line 222
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    .line 223
    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 1
    .param p1, "playbackSpeed"    # F

    .line 194
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 195
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 197
    return-void
.end method

.method public onPositionReset()V
    .locals 0

    .line 185
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 186
    return-void
.end method

.method public onStarted()V
    .locals 1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    .line 161
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 162
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->addObserver()V

    .line 164
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->register()V

    .line 166
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 167
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    .line 228
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->unregister()V

    .line 230
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->removeObserver()V

    .line 232
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 233
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 175
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 179
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 181
    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1
    .param p1, "changeFrameRateStrategy"    # I

    .line 151
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    if-ne v0, p1, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 156
    return-void
.end method
