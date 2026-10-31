.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
.super Ljava/lang/Object;
.source "VideoFrameReleaseControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseAction;
    }
.end annotation


# static fields
.field public static final FRAME_RELEASE_DROP:I = 0x2

.field public static final FRAME_RELEASE_IGNORE:I = 0x4

.field public static final FRAME_RELEASE_IMMEDIATELY:I = 0x0

.field public static final FRAME_RELEASE_SCHEDULED:I = 0x1

.field public static final FRAME_RELEASE_SKIP:I = 0x3

.field public static final FRAME_RELEASE_TRY_AGAIN_LATER:I = 0x5

.field private static final MAX_EARLY_US_THRESHOLD:J = 0xc350L


# instance fields
.field private final allowedJoiningTimeMs:J

.field private clock:Landroidx/media3/common/util/Clock;

.field private firstFrameState:I

.field private final frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field private final frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private joiningRenderNextFrameImmediately:Z

.field private lastPresentationTimeUs:J

.field private lastReleaseRealtimeUs:J

.field private playbackSpeed:F

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "frameTimingEvaluator"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;
    .param p3, "allowedJoiningTimeMs"    # J

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 199
    iput-wide p3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    .line 200
    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 202
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    .line 203
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    .line 204
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    .line 206
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    .line 207
    return-void
.end method

.method private calculateEarlyTimeUs(JJJ)J
    .locals 4
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "framePresentationTimeUs"    # J

    .line 437
    sub-long v0, p5, p1

    long-to-double v0, v0

    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 438
    .local v0, "earlyUs":J
    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v2}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    sub-long/2addr v2, p3

    sub-long/2addr v0, v2

    .line 443
    :cond_0
    return-wide v0
.end method

.method private lowerFirstFrameState(I)V
    .locals 1
    .param p1, "firstFrameState"    # I

    .line 417
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 418
    return-void
.end method

.method private shouldForceRelease(JJJ)Z
    .locals 7
    .param p1, "positionUs"    # J
    .param p3, "earlyUs"    # J
    .param p5, "outputStreamStartPositionUs"    # J

    .line 449
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    if-nez v0, :cond_0

    .line 451
    return v1

    .line 453
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 466
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 461
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    .line 462
    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    sub-long/2addr v3, v5

    .line 463
    .local v3, "elapsedTimeSinceLastReleaseUs":J
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 464
    invoke-interface {v0, p3, p4, v3, v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldForceReleaseFrame(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    .line 463
    :goto_0
    return v1

    .line 459
    .end local v3    # "elapsedTimeSinceLastReleaseUs":J
    :pswitch_1
    cmp-long v0, p1, p5

    if-ltz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 457
    :pswitch_2
    return v2

    .line 455
    :pswitch_3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public allowReleaseFirstFrameBeforeStarted()V
    .locals 1

    .line 274
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 277
    :cond_0
    return-void
.end method

.method public getFrameReleaseAction(JJJJZLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I
    .locals 19
    .param p1, "presentationTimeUs"    # J
    .param p3, "positionUs"    # J
    .param p5, "elapsedRealtimeUs"    # J
    .param p7, "outputStreamStartPositionUs"    # J
    .param p9, "isLastFrame"    # Z
    .param p10, "frameReleaseInfo"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 345
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v13, p3

    move-object/from16 v15, p10

    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$000(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)V

    .line 347
    iget-wide v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    .line 348
    iput-wide v13, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    .line 350
    :cond_0
    iget-wide v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, v8, v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    .line 352
    iput-wide v8, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    .line 355
    :cond_1
    nop

    .line 356
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move-wide/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->calculateEarlyTimeUs(JJJ)J

    move-result-wide v0

    .line 355
    invoke-static {v15, v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$102(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    .line 358
    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->shouldForceRelease(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 359
    return v1

    .line 361
    :cond_2
    iget-boolean v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    const/4 v2, 0x5

    if-eqz v0, :cond_9

    iget-wide v3, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    cmp-long v0, v13, v3

    if-nez v0, :cond_3

    goto :goto_1

    .line 366
    :cond_3
    iget-object v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->nanoTime()J

    move-result-wide v3

    .line 367
    .local v3, "systemTimeNs":J
    iget-object v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 368
    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v5

    const-wide/16 v16, 0x3e8

    mul-long v5, v5, v16

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v5

    .line 367
    invoke-static {v15, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$202(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    .line 369
    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$200(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v5

    sub-long/2addr v5, v3

    div-long v5, v5, v16

    invoke-static {v15, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$102(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    .line 371
    iget-wide v5, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long v0, v5, v10

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    if-nez v0, :cond_4

    move v1, v5

    :cond_4
    move v0, v1

    .line 373
    .local v0, "treatDropAsSkip":Z
    iget-object v10, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 374
    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v11

    .line 373
    move-wide/from16 v13, p3

    move-wide/from16 v15, p5

    move/from16 v17, p9

    move/from16 v18, v0

    invoke-interface/range {v10 .. v18}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldIgnoreFrame(JJJZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 375
    const/4 v1, 0x4

    return v1

    .line 376
    :cond_5
    iget-object v10, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 377
    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v11

    .line 376
    move-wide/from16 v13, p5

    move/from16 v15, p9

    invoke-interface/range {v10 .. v15}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldDropFrame(JJZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 379
    if-eqz v0, :cond_6

    const/4 v1, 0x3

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    :goto_0
    return v1

    .line 380
    :cond_7
    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v10

    const-wide/32 v12, 0xc350

    cmp-long v1, v10, v12

    if-lez v1, :cond_8

    .line 381
    return v2

    .line 383
    :cond_8
    return v5

    .line 362
    .end local v0    # "treatDropAsSkip":Z
    .end local v3    # "systemTimeNs":J
    :cond_9
    :goto_1
    return v2
.end method

.method public isReady(Z)Z
    .locals 9
    .param p1, "rendererOtherwiseReady"    # Z

    .line 289
    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    iget v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 291
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 292
    return v0

    .line 293
    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long v3, v3, v1

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 295
    return v4

    .line 296
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long v3, v5, v7

    if-gez v3, :cond_2

    .line 298
    return v0

    .line 301
    :cond_2
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 302
    return v4
.end method

.method public join(Z)V
    .locals 4
    .param p1, "renderNextFrameImmediately"    # Z

    .line 316
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    .line 317
    nop

    .line 318
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 319
    return-void
.end method

.method public onDisabled()V
    .locals 1

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    .line 220
    return-void
.end method

.method public onEnabled(Z)V
    .locals 1
    .param p1, "releaseFirstFrameBeforeStarted"    # Z

    .line 211
    nop

    .line 212
    if-eqz p1, :cond_0

    .line 213
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 215
    return-void
.end method

.method public onFrameReleasedIsFirstFrame()Z
    .locals 3

    .line 258
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    .local v0, "firstFrame":Z
    :goto_0
    iput v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 260
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    .line 261
    return v0
.end method

.method public onProcessedStreamChange()V
    .locals 1

    .line 238
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    .line 239
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    .line 225
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    .line 226
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onStarted()V

    .line 227
    return-void
.end method

.method public onStopped()V
    .locals 2

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    .line 232
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 233
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onStopped()V

    .line 234
    return-void
.end method

.method public reset()V
    .locals 3

    .line 388
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPositionReset()V

    .line 389
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    .line 390
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    .line 391
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    .line 392
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 393
    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1
    .param p1, "changeFrameRateStrategy"    # I

    .line 403
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->setChangeFrameRateStrategy(I)V

    .line 404
    return-void
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)V
    .locals 0
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 266
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    .line 267
    return-void
.end method

.method public setFrameRate(F)V
    .locals 1
    .param p1, "frameRate"    # F

    .line 249
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onFormatChanged(F)V

    .line 250
    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "outputSurface"    # Landroid/view/Surface;

    .line 243
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onSurfaceChanged(Landroid/view/Surface;)V

    .line 244
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    .line 245
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 408
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 409
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 410
    return-void

    .line 412
    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    .line 413
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPlaybackSpeed(F)V

    .line 414
    return-void
.end method
