.class public abstract Landroidx/media3/common/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Landroidx/media3/common/Player;


# instance fields
.field protected final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 37
    return-void
.end method

.method private getRepeatModeForNavigation()I
    .locals 2

    .line 441
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getRepeatMode()I

    move-result v0

    .line 442
    .local v0, "repeatMode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private ignoreSeek(I)V
    .locals 6
    .param p1, "seekCommand"    # I

    .line 446
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    .line 451
    return-void
.end method

.method private repeatCurrentMediaItem(I)V
    .locals 6
    .param p1, "seekCommand"    # I

    .line 503
    nop

    .line 504
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    .line 503
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    .line 508
    return-void
.end method

.method private seekToCurrentItem(JI)V
    .locals 6
    .param p1, "positionMs"    # J
    .param p3, "seekCommand"    # I

    .line 454
    nop

    .line 455
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    .line 454
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    .line 456
    return-void
.end method

.method private seekToDefaultPositionInternal(II)V
    .locals 6
    .param p1, "mediaItemIndex"    # I
    .param p2, "seekCommand"    # I

    .line 469
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    .line 474
    return-void
.end method

.method private seekToNextMediaItemInternal(I)V
    .locals 2
    .param p1, "seekCommand"    # I

    .line 477
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    .line 478
    .local v0, "nextMediaItemIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 479
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    .line 480
    return-void

    .line 482
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 483
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->repeatCurrentMediaItem(I)V

    goto :goto_0

    .line 485
    :cond_1
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 487
    :goto_0
    return-void
.end method

.method private seekToOffset(JI)V
    .locals 6
    .param p1, "offsetMs"    # J
    .param p3, "seekCommand"    # I

    .line 459
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 460
    .local v0, "positionMs":J
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getDuration()J

    move-result-wide v2

    .line 461
    .local v2, "durationMs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 462
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 464
    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 465
    invoke-direct {p0, v0, v1, p3}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(JI)V

    .line 466
    return-void
.end method

.method private seekToPreviousMediaItemInternal(I)V
    .locals 2
    .param p1, "seekCommand"    # I

    .line 490
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    .line 491
    .local v0, "previousMediaItemIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 492
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    .line 493
    return-void

    .line 495
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 496
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->repeatCurrentMediaItem(I)V

    goto :goto_0

    .line 498
    :cond_1
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 500
    :goto_0
    return-void
.end method


# virtual methods
.method public final addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 61
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/BasePlayer;->addMediaItems(ILjava/util/List;)V

    .line 62
    return-void
.end method

.method public final addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 66
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->addMediaItems(Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public final addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/BasePlayer;->addMediaItems(ILjava/util/List;)V

    .line 72
    return-void
.end method

.method public final canAdvertiseSession()Z
    .locals 1

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public final clearMediaItems()V
    .locals 2

    .line 94
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/BasePlayer;->removeMediaItems(II)V

    .line 95
    return-void
.end method

.method public final getBufferedPercentage()I
    .locals 10

    .line 366
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getBufferedPosition()J

    move-result-wide v0

    .line 367
    .local v0, "position":J
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getDuration()J

    move-result-wide v2

    .line 368
    .local v2, "duration":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/16 v5, 0x64

    if-nez v4, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v0

    div-long/2addr v8, v2

    long-to-int v4, v8

    invoke-static {v4, v7, v5}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v7

    goto :goto_1

    .line 369
    :cond_2
    :goto_0
    nop

    .line 368
    :goto_1
    return v7
.end method

.method public final getContentDuration()J
    .locals 3

    .line 434
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 435
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v1

    .line 435
    :goto_0
    return-wide v1
.end method

.method public final getCurrentLiveOffset()J
    .locals 8

    .line 405
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 406
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    .line 407
    return-wide v2

    .line 409
    :cond_0
    nop

    .line 410
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v4, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-wide v4, v1, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    .line 411
    .local v4, "windowStartTimeMs":J
    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 412
    return-wide v2

    .line 414
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-wide v6, v3, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr v1, v6

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getContentPosition()J

    move-result-wide v6

    sub-long/2addr v1, v6

    return-wide v1
.end method

.method public final getCurrentManifest()Ljava/lang/Object;
    .locals 3

    .line 358
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 359
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    const/4 v1, 0x0

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 359
    :goto_0
    return-object v1
.end method

.method public final getCurrentMediaItem()Landroidx/media3/common/MediaItem;
    .locals 3

    .line 339
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 340
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const/4 v1, 0x0

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 340
    :goto_0
    return-object v1
.end method

.method public final getCurrentWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getMediaItemAt(I)Landroidx/media3/common/MediaItem;
    .locals 2
    .param p1, "index"    # I

    .line 352
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method public final getMediaItemCount()I
    .locals 1

    .line 347
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    return v0
.end method

.method public final getNextMediaItemIndex()I
    .locals 4

    .line 311
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 312
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, -0x1

    goto :goto_0

    .line 314
    :cond_0
    nop

    .line 315
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getShuffleModeEnabled()Z

    move-result v3

    .line 314
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    .line 312
    :goto_0
    return v1
.end method

.method public final getNextWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getPreviousMediaItemIndex()I
    .locals 4

    .line 329
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 330
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const/4 v1, -0x1

    goto :goto_0

    .line 332
    :cond_0
    nop

    .line 333
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getShuffleModeEnabled()Z

    move-result v3

    .line 332
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v1

    .line 330
    :goto_0
    return v1
.end method

.method public final getPreviousWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 324
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasNextMediaItem()Z
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasNextWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasPreviousMediaItem()Z
    .locals 2

    .line 152
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCommandAvailable(I)Z
    .locals 1
    .param p1, "command"    # I

    .line 99
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    return v0
.end method

.method public final isCurrentMediaItemDynamic()Z
    .locals 3

    .line 384
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 385
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCurrentMediaItemLive()Z
    .locals 3

    .line 399
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 400
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCurrentMediaItemSeekable()Z
    .locals 3

    .line 428
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 429
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCurrentWindowDynamic()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowLive()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowSeekable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPlaybackSuppressionReason()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0
.end method

.method public final moveMediaItem(II)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .line 76
    if-eq p1, p2, :cond_0

    .line 77
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/common/BasePlayer;->moveMediaItems(III)V

    .line 79
    :cond_0
    return-void
.end method

.method public final next()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->seekToNextMediaItem()V

    .line 220
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->setPlayWhenReady(Z)V

    .line 120
    return-void
.end method

.method public final play()V
    .locals 1

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->setPlayWhenReady(Z)V

    .line 115
    return-void
.end method

.method public final removeMediaItem(I)V
    .locals 1
    .param p1, "index"    # I

    .line 89
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/BasePlayer;->removeMediaItems(II)V

    .line 90
    return-void
.end method

.method public final replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 83
    add-int/lit8 v0, p1, 0x1

    .line 84
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 83
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/common/BasePlayer;->replaceMediaItems(IILjava/util/List;)V

    .line 85
    return-void
.end method

.method public final seekBack()V
    .locals 3

    .line 142
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getSeekBackIncrement()J

    move-result-wide v0

    neg-long v0, v0

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/BasePlayer;->seekToOffset(JI)V

    .line 143
    return-void
.end method

.method public final seekForward()V
    .locals 3

    .line 147
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getSeekForwardIncrement()J

    move-result-wide v0

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/BasePlayer;->seekToOffset(JI)V

    .line 148
    return-void
.end method

.method public final seekTo(IJ)V
    .locals 6
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 259
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    .line 264
    return-void
.end method

.method public abstract seekTo(IJIZ)V
.end method

.method public final seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .line 254
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(JI)V

    .line 255
    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 2

    .line 131
    nop

    .line 132
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    .line 131
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 133
    return-void
.end method

.method public final seekToDefaultPosition(I)V
    .locals 1
    .param p1, "mediaItemIndex"    # I

    .line 137
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 138
    return-void
.end method

.method public final seekToNext()V
    .locals 3

    .line 238
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 239
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/16 v2, 0x9

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->hasNextMediaItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->seekToNextMediaItemInternal(I)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    goto :goto_0

    .line 248
    :cond_2
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    .line 250
    :goto_0
    return-void

    .line 240
    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    .line 241
    return-void
.end method

.method public final seekToNextMediaItem()V
    .locals 1

    .line 233
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroidx/media3/common/BasePlayer;->seekToNextMediaItemInternal(I)V

    .line 234
    return-void
.end method

.method public final seekToNextWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->seekToNextMediaItem()V

    .line 229
    return-void
.end method

.method public final seekToPrevious()V
    .locals 7

    .line 171
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 172
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/4 v2, 0x7

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->hasPreviousMediaItem()Z

    move-result v1

    .line 177
    .local v1, "hasPreviousMediaItem":Z
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 178
    if-eqz v1, :cond_1

    .line 179
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    goto :goto_0

    .line 183
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getMaxSeekToPreviousPosition()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 184
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    goto :goto_0

    .line 186
    :cond_3
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4, v2}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(JI)V

    .line 188
    :goto_0
    return-void

    .line 173
    .end local v1    # "hasPreviousMediaItem":Z
    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    .line 174
    return-void
.end method

.method public final seekToPreviousMediaItem()V
    .locals 1

    .line 166
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroidx/media3/common/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    .line 167
    return-void
.end method

.method public final seekToPreviousWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->seekToPreviousMediaItem()V

    .line 162
    return-void
.end method

.method public final setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 41
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->setMediaItems(Ljava/util/List;)V

    .line 42
    return-void
.end method

.method public final setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "startPositionMs"    # J

    .line 46
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/media3/common/BasePlayer;->setMediaItems(Ljava/util/List;IJ)V

    .line 47
    return-void
.end method

.method public final setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "resetPosition"    # Z

    .line 51
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/BasePlayer;->setMediaItems(Ljava/util/List;Z)V

    .line 52
    return-void
.end method

.method public final setMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/BasePlayer;->setMediaItems(Ljava/util/List;Z)V

    .line 57
    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 288
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->withSpeed(F)Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 289
    return-void
.end method
