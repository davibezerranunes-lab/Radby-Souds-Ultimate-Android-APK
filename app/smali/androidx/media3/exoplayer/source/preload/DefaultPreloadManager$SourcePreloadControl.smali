.class final Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;
.super Ljava/lang/Object;
.source "DefaultPreloadManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SourcePreloadControl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)V
    .locals 0

    .line 453
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
    .param p2, "x1"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;

    .line 453
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)V

    return-void
.end method

.method private continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;Z)Z
    .locals 3
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;
    .param p3, "clearExceededDataFromTargetPreloadStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;",
            "Lcom/google/common/base/Predicate<",
            "Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;",
            ">;Z)Z"
        }
    .end annotation

    .line 510
    .local p2, "continueLoadingPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    .line 511
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getTargetPreloadStatus(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl$PreloadStatus;

    move-result-object v0

    .line 512
    .local v0, "targetPreloadStatus":Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl$PreloadStatus;
    if-eqz v0, :cond_2

    .line 513
    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;

    .line 514
    .local v1, "status":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;

    invoke-interface {p2, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    const/4 v2, 0x1

    return v2

    .line 517
    :cond_0
    if-eqz p3, :cond_1

    .line 518
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->clearSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 520
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onPreloadCompleted(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 521
    .end local v1    # "status":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;
    goto :goto_0

    .line 522
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onPreloadSkipped(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 524
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$onContinueLoadingRequested$2(JLandroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;)Z
    .locals 4
    .param p0, "bufferedDurationUs"    # J
    .param p2, "status"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;

    .line 485
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;->getStage()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 486
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;->getValue()J

    move-result-wide v0

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 485
    :goto_0
    return v0
.end method

.method static synthetic lambda$onSourcePrepared$0(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;)Z
    .locals 1
    .param p0, "status"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;

    .line 462
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;->getStage()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onTracksSelected$1(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;)Z
    .locals 2
    .param p0, "status"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;

    .line 473
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;->getStage()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;J)Z
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;
    .param p2, "bufferedDurationUs"    # J

    .line 482
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p3}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda2;-><init>(J)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;Z)Z

    move-result v0

    return v0
.end method

.method public onLoadedToTheEndOfSource(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 497
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onPreloadCompleted(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 498
    return-void
.end method

.method public onPreloadError(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .locals 1
    .param p1, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 502
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onPreloadError(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 503
    return-void
.end method

.method public onSourcePrepared(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 459
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;Z)Z

    move-result v0

    return v0
.end method

.method public onTracksSelected(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 470
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;Z)Z

    move-result v0

    return v0
.end method

.method public onUsedByPlayer(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 492
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onPreloadSkipped(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 493
    return-void
.end method
