.class final Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingTimeline"
.end annotation


# instance fields
.field private final durationUs:J

.field private final endUs:J

.field private final isDynamic:Z

.field private final startUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;JJ)V
    .locals 15
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "startUs"    # J
    .param p4, "endUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 317
    move-object v0, p0

    move-wide/from16 v1, p4

    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    .line 321
    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v6, v4, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    .line 322
    .local v3, "window":Landroidx/media3/common/Timeline$Window;
    const-wide/16 v7, 0x0

    move-wide/from16 v9, p2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 323
    .end local p2    # "startUs":J
    .local v13, "startUs":J
    iget-boolean v9, v3, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-nez v9, :cond_1

    cmp-long v9, v13, v7

    if-eqz v9, :cond_1

    iget-boolean v9, v3, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz v9, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v4, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {v4, v5}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw v4

    .line 326
    :cond_1
    :goto_0
    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v9, v1, v9

    if-nez v9, :cond_2

    iget-wide v7, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    goto :goto_1

    :cond_2
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 327
    .local v7, "resolvedEndUs":J
    :goto_1
    iget-wide v9, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 328
    iget-wide v9, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_3

    .line 329
    iget-wide v7, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 331
    :cond_3
    cmp-long v9, v13, v7

    if-gtz v9, :cond_4

    move-wide v1, v13

    goto :goto_2

    .line 332
    :cond_4
    new-instance v4, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    const/4 v10, 0x2

    move-object v9, v4

    move-wide v11, v13

    move-wide v1, v13

    .end local v13    # "startUs":J
    .local v1, "startUs":J
    move-wide v13, v7

    invoke-direct/range {v9 .. v14}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(IJJ)V

    throw v4

    .line 327
    .end local v1    # "startUs":J
    .restart local v13    # "startUs":J
    :cond_5
    move-wide v1, v13

    .line 338
    .end local v13    # "startUs":J
    .restart local v1    # "startUs":J
    :goto_2
    iput-wide v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 339
    iput-wide v7, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    .line 340
    cmp-long v9, v7, v11

    if-nez v9, :cond_6

    move-wide v9, v11

    goto :goto_3

    :cond_6
    sub-long v9, v7, v1

    :goto_3
    iput-wide v9, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    .line 341
    iget-boolean v9, v3, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v9, :cond_8

    cmp-long v9, v7, v11

    if-eqz v9, :cond_7

    iget-wide v9, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_8

    iget-wide v9, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v9, v7, v9

    if-nez v9, :cond_8

    :cond_7
    move v4, v5

    :cond_8
    iput-boolean v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    .line 345
    return-void

    .line 319
    .end local v1    # "startUs":J
    .end local v3    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v7    # "resolvedEndUs":J
    .restart local p2    # "startUs":J
    :cond_9
    move-object/from16 v6, p1

    move-wide/from16 v9, p2

    new-instance v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {v1, v4}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw v1
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 12
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 371
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 372
    invoke-virtual {p2}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v2

    .line 374
    .local v0, "positionInClippedWindowUs":J
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-wide v8, v4

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    sub-long/2addr v2, v0

    move-wide v8, v2

    .line 375
    .local v8, "periodDurationUs":J
    :goto_0
    iget-object v5, p2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v6, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    move-wide v10, v0

    invoke-virtual/range {v4 .. v11}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    return-object v2
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 6
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 349
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 350
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 351
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 352
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    iput-boolean v0, p2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    .line 353
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 354
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 355
    nop

    .line 356
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 357
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v4

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 359
    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    .line 360
    .local v0, "startMs":J
    iget-wide v4, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    .line 361
    iget-wide v4, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr v4, v0

    iput-wide v4, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    .line 363
    :cond_2
    iget-wide v4, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 364
    iget-wide v2, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    .line 366
    :cond_3
    return-object p2
.end method
