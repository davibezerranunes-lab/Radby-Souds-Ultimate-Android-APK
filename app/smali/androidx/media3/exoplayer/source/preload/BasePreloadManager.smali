.class public abstract Landroidx/media3/exoplayer/source/preload/BasePreloadManager;
.super Ljava/lang/Object;
.source "BasePreloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;,
        Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;,
        Landroidx/media3/exoplayer/source/preload/BasePreloadManager$BuilderBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final applicationHandler:Landroid/os/Handler;

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final mediaItemMediaSourceHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;>.MediaSourceHolder;>;"
        }
    .end annotation
.end field

.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field protected final rankingDataComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sourceHolderPriorityQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;>.MediaSourceHolder;>;"
        }
    .end annotation
.end field

.field private final targetPreloadStatusControl:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private targetPreloadStatusOfCurrentPreloadingSource:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl$PreloadStatus;


# direct methods
.method protected constructor <init>(Ljava/util/Comparator;Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 4
    .param p3, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;",
            "Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl<",
            "TT;>;",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ")V"
        }
    .end annotation

    .line 93
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    .local p1, "rankingDataComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p2, "targetPreloadStatusControl":Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;, "Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    .line 95
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    .line 96
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->rankingDataComparator:Ljava/util/Comparator;

    .line 97
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusControl:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;

    .line 98
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 99
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    .line 100
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    new-instance v3, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    .line 103
    return-void
.end method

.method private isPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Z
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 312
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    .line 313
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0
.end method

.method static synthetic lambda$new$0(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 0
    .param p0, "listener"    # Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;
    .param p1, "flags"    # Landroidx/media3/common/FlagSet;

    .line 100
    return-void
.end method

.method static synthetic lambda$onPreloadCompleted$1(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;)V
    .locals 1
    .param p0, "source"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;

    .line 269
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;->onCompleted(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method static synthetic lambda$onPreloadError$3(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;)V
    .locals 0
    .param p0, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;

    .line 283
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;->onError(Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    return-void
.end method

.method private maybeAdvanceToNextSource(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 2
    .param p1, "currentSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 299
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->isPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    monitor-exit v0

    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeStartPreloadNextSource()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    :cond_1
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeStartPreloadNextSource()Z
    .locals 4

    .line 384
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->shouldStartPreloadingNextSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    .line 386
    .local v0, "preloadingHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>.MediaSourceHolder;"
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusControl:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->rankingData:Ljava/lang/Object;

    .line 387
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;->getTargetPreloadStatus(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl$PreloadStatus;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusOfCurrentPreloadingSource:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl$PreloadStatus;

    .line 388
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusOfCurrentPreloadingSource:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl$PreloadStatus;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    iget-wide v2, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->startPositionUs:J

    invoke-virtual {p0, v1, v2, v3}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->preloadSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;J)V

    .line 390
    const/4 v1, 0x1

    return v1

    .line 392
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->clearSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 395
    .end local v0    # "preloadingHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>.MediaSourceHolder;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private verifyApplicationThread()V
    .locals 2

    .line 399
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 402
    return-void

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preload manager is accessed on the wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(Landroidx/media3/common/MediaItem;Ljava/lang/Object;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "TT;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    .local p2, "rankingData":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->add(Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public final add(Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;)V
    .locals 4
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "TT;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    .local p2, "rankingData":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->createMediaSourceForPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    .line 162
    .local v0, "mediaSourceForPreloading":Landroidx/media3/exoplayer/source/MediaSource;
    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    invoke-direct {v1, p0, v0, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;)V

    .line 164
    .local v1, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>.MediaSourceHolder;"
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public addListener(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;

    .line 111
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 130
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->verifyApplicationThread()V

    .line 131
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->clear()V

    .line 132
    return-void
.end method

.method protected abstract clearSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;)V
.end method

.method protected createMediaSourceForPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 339
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    return-object p1
.end method

.method public final getMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 190
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    return-object v0
.end method

.method public final getSourceCount()I
    .locals 1

    .line 141
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected final getTargetPreloadStatus(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl$PreloadStatus;
    .locals 2
    .param p1, "source"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 323
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->isPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 327
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusOfCurrentPreloadingSource:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl$PreloadStatus;

    monitor-exit v0

    return-object v1

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final invalidate()V
    .locals 3

    .line 172
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 174
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 175
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeStartPreloadNextSource()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_0
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$onPreloadCompleted$2$androidx-media3-exoplayer-source-preload-BasePreloadManager(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 3
    .param p1, "source"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 267
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 270
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 271
    return-void
.end method

.method synthetic lambda$onPreloadError$4$androidx-media3-exoplayer-source-preload-BasePreloadManager(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 3
    .param p1, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;
    .param p2, "source"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 283
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 284
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 285
    return-void
.end method

.method synthetic lambda$onPreloadSkipped$5$androidx-media3-exoplayer-source-preload-BasePreloadManager(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0
    .param p1, "source"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 295
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method protected final onPreloadCompleted(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 2
    .param p1, "source"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 260
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->isPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    monitor-exit v0

    return-void

    .line 264
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void

    .line 264
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected final onPreloadError(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 2
    .param p1, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;
    .param p2, "source"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 276
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->isPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    monitor-exit v0

    return-void

    .line 280
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/MediaSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    return-void

    .line 280
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected final onPreloadSkipped(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 2
    .param p1, "source"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 290
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->isPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    monitor-exit v0

    return-void

    .line 294
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    return-void

    .line 294
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract preloadSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;J)V
.end method

.method public final release()V
    .locals 0

    .line 253
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->reset()V

    .line 254
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->releaseInternal()V

    .line 255
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->clearListeners()V

    .line 256
    return-void
.end method

.method protected releaseInternal()V
    .locals 0

    .line 372
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    return-void
.end method

.method protected abstract releaseSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;)V
.end method

.method public final remove(Landroidx/media3/common/MediaItem;)Z
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 204
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 206
    .local v0, "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->releaseSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 208
    const/4 v1, 0x1

    return v1

    .line 210
    .end local v0    # "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove(Landroidx/media3/exoplayer/source/MediaSource;)Z
    .locals 3
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 221
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 222
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 224
    .local v1, "heldMediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    if-ne p1, v1, :cond_0

    .line 225
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->releaseSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 227
    const/4 v2, 0x1

    return v2

    .line 230
    .end local v1    # "heldMediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeListener(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/preload/BasePreloadManager$Listener;

    .line 120
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->verifyApplicationThread()V

    .line 121
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public final reset()V
    .locals 3

    .line 237
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    .line 238
    .local v1, "sourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>.MediaSourceHolder;"
    iget-object v2, v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->releaseSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 239
    .end local v1    # "sourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>.MediaSourceHolder;"
    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaItemMediaSourceHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 241
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusOfCurrentPreloadingSource:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl$PreloadStatus;

    .line 244
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected shouldStartPreloadingNextSource()Z
    .locals 1

    .line 344
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
