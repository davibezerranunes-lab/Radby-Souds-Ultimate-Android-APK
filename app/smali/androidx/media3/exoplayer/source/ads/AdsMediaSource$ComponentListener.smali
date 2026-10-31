.class final Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field private final playerHandler:Landroid/os/Handler;

.field private volatile stopped:Z

.field final synthetic this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)V
    .locals 0

    .line 394
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    .line 396
    return-void
.end method


# virtual methods
.method synthetic lambda$onAdPlaybackState$0$androidx-media3-exoplayer-source-ads-AdsMediaSource$ComponentListener(Landroidx/media3/common/AdPlaybackState;)V
    .locals 1
    .param p1, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 411
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    if-eqz v0, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->access$100(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/AdPlaybackState;)V

    .line 415
    return-void
.end method

.method public onAdLoadError(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;Landroidx/media3/datasource/DataSpec;)V
    .locals 8
    .param p1, "error"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;

    .line 420
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    if-eqz v0, :cond_0

    .line 421
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->access$000(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    new-instance v7, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 426
    invoke-static {}, Landroidx/media3/exoplayer/source/LoadEventInfo;->getNewId()J

    move-result-wide v2

    .line 428
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    .line 424
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v1, p1, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 432
    return-void
.end method

.method public onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V
    .locals 2
    .param p1, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 406
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    if-eqz v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;Landroidx/media3/common/AdPlaybackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method

.method public stop()V
    .locals 2

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    .line 401
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 402
    return-void
.end method
