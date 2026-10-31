.class public Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field private final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 160
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 164
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p2, "windowIndex"    # I
    .param p3, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 169
    .local p1, "listenerAndHandlers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 171
    iput p2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 172
    iput-object p3, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 173
    return-void
.end method

.method static synthetic lambda$dispatchEvent$6(Landroidx/media3/common/util/Consumer;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 0
    .param p0, "event"    # Landroidx/media3/common/util/Consumer;
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 467
    invoke-interface {p0, p1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 208
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public dispatchEvent(Landroidx/media3/common/util/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/exoplayer/source/MediaSourceEventListener;",
            ">;)V"
        }
    .end annotation

    .line 465
    .local p1, "event":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/exoplayer/source/MediaSourceEventListener;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 466
    .local v1, "listenerAndHandler":Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 467
    .local v2, "listener":Landroidx/media3/exoplayer/source/MediaSourceEventListener;
    iget-object v3, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v4, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v4, p1, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/common/util/Consumer;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 468
    .end local v1    # "listenerAndHandler":Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v2    # "listener":Landroidx/media3/exoplayer/source/MediaSourceEventListener;
    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public downstreamFormatChanged(ILandroidx/media3/common/Format;ILjava/lang/Object;J)V
    .locals 11
    .param p1, "trackType"    # I
    .param p2, "trackFormat"    # Landroidx/media3/common/Format;
    .param p3, "trackSelectionReason"    # I
    .param p4, "trackSelectionData"    # Ljava/lang/Object;
    .param p5, "mediaTimeUs"    # J

    .line 445
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 452
    invoke-static/range {p5 .. p6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x1

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 445
    move-object v0, p0

    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 454
    return-void
.end method

.method public downstreamFormatChanged(Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1
    .param p1, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 458
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    .line 461
    return-void
.end method

.method synthetic lambda$downstreamFormatChanged$5$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher(Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 2
    .param p1, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p2, "listener"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 460
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p2, v0, v1, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$loadCanceled$2$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 2
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p3, "listener"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 349
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p3, v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->onLoadCanceled(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$loadCompleted$1$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 2
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p3, "listener"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 307
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p3, v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->onLoadCompleted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$loadError$3$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 7
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p3, "error"    # Ljava/io/IOException;
    .param p4, "wasCanceled"    # Z
    .param p5, "listener"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 414
    iget v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v0, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->onLoadError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method synthetic lambda$loadStarted$0$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 2
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p3, "listener"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 265
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p3, v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$upstreamDiscarded$4$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 1
    .param p1, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p3, "listener"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 435
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    invoke-interface {p3, v0, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V
    .locals 11
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "dataType"    # I

    .line 312
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 321
    return-void
.end method

.method public loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V
    .locals 11
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Landroidx/media3/common/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeUs"    # J
    .param p9, "mediaEndTimeUs"    # J

    .line 333
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 341
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 342
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    move-object v0, v10

    move v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 333
    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 343
    return-void
.end method

.method public loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 347
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    .line 350
    return-void
.end method

.method public loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V
    .locals 11
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "dataType"    # I

    .line 270
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 279
    return-void
.end method

.method public loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V
    .locals 11
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Landroidx/media3/common/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeUs"    # J
    .param p9, "mediaEndTimeUs"    # J

    .line 291
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 299
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 300
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    move-object v0, v10

    move v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 291
    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 301
    return-void
.end method

.method public loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 305
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    .line 308
    return-void
.end method

.method public loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 11
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Landroidx/media3/common/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeUs"    # J
    .param p9, "mediaEndTimeUs"    # J
    .param p11, "error"    # Ljava/io/IOException;
    .param p12, "wasCanceled"    # Z

    .line 389
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 397
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 398
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    move-object v0, v10

    move v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 389
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    invoke-virtual {p0, p1, v10, v2, v3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 401
    return-void
.end method

.method public loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V
    .locals 13
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "dataType"    # I
    .param p3, "error"    # Ljava/io/IOException;
    .param p4, "wasCanceled"    # Z

    .line 361
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 372
    return-void
.end method

.method public loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 7
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p3, "error"    # Ljava/io/IOException;
    .param p4, "wasCanceled"    # Z

    .line 412
    new-instance v6, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    invoke-virtual {p0, v6}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    .line 416
    return-void
.end method

.method public loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V
    .locals 11
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "dataType"    # I

    .line 228
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 237
    return-void
.end method

.method public loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V
    .locals 11
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Landroidx/media3/common/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeUs"    # J
    .param p9, "mediaEndTimeUs"    # J

    .line 249
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 257
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 258
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    move-object v0, v10

    move v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 249
    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 259
    return-void
.end method

.method public loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 263
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    .line 266
    return-void
.end method

.method public removeEventListener(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 3
    .param p1, "eventListener"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 219
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 220
    .local v1, "listenerAndHandler":Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    if-ne v2, p1, :cond_0

    .line 221
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 223
    .end local v1    # "listenerAndHandler":Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    :cond_0
    goto :goto_0

    .line 224
    :cond_1
    return-void
.end method

.method public upstreamDiscarded(IJJ)V
    .locals 11
    .param p1, "trackType"    # I
    .param p2, "mediaStartTimeUs"    # J
    .param p4, "mediaEndTimeUs"    # J

    .line 420
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 427
    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 428
    invoke-static/range {p4 .. p5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v10

    move v2, p1

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 420
    move-object v0, p0

    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 429
    return-void
.end method

.method public upstreamDiscarded(Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2
    .param p1, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 433
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 434
    .local v0, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    new-instance v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    .line 436
    return-void
.end method

.method public withParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 185
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-object v0
.end method

.method public withParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "mediaTimeOffsetMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-object v0
.end method
