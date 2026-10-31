.class Landroidx/media3/session/MediaLibraryServiceLegacyStub;
.super Landroidx/media3/session/MediaSessionServiceLegacyStub;
.source "MediaLibraryServiceLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;,
        Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;,
        Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MLSLegacyStub"


# instance fields
.field private final browserLegacyCbForBroadcast:Landroidx/media3/session/MediaSession$ControllerCb;

.field private final librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V
    .locals 2
    .param p1, "session"    # Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 79
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionServiceLegacyStub;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    .line 80
    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 81
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaLibraryServiceLegacyStub$1;)V

    iput-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->browserLegacyCbForBroadcast:Landroidx/media3/session/MediaSession$ControllerCb;

    .line 82
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)Landroidx/media3/session/MediaLibrarySessionImpl;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    .line 69
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)Lcom/google/common/util/concurrent/AsyncFunction;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    .line 69
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->createMediaItemsToBrowserItemsAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 69
    invoke-static {p0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->sendLibraryResultWithMediaItemsWhenReady(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method private static cancelAllFutures(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 515
    .local p0, "futures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<TT;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 516
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 515
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private createMediaItemToBrowserItemAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 524
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)V

    return-object v0
.end method

.method private createMediaItemsToBrowserItemsAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 443
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)V

    return-object v0
.end method

.method private getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 2

    .line 386
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentBrowserInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    return-object v0
.end method

.method private handleBitmapFuturesAllCompletedAndSetOutputFuture(Ljava/util/List;Ljava/util/List;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 498
    .local p1, "bitmapFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;>;"
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    .local p3, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v0, "outputMediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 500
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 501
    .local v2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x0

    .line 502
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 504
    :try_start_0
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 507
    goto :goto_2

    .line 505
    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    .line 506
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    const-string v5, "MLSLegacyStub"

    const-string v6, "Failed to get bitmap"

    invoke-static {v5, v6, v4}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem;

    invoke-static {v4, v3}, Landroidx/media3/session/LegacyConversions;->convertToBrowserItem(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p3, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method private static ignoreFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 567
    .local p0, "unused":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    return-void
.end method

.method static synthetic lambda$createMediaItemToBrowserItemAsyncFunction$13(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .param p0, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p1, "bitmapFuture"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 545
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 548
    :cond_0
    return-void
.end method

.method static synthetic lambda$createMediaItemToBrowserItemAsyncFunction$14(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/MediaItem;)V
    .locals 4
    .param p0, "bitmapFuture"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 552
    const/4 v0, 0x0

    .line 554
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 557
    goto :goto_1

    .line 555
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 556
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "MLSLegacyStub"

    const-string v3, "failed to get bitmap"

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {p2, v0}, Landroidx/media3/session/LegacyConversions;->convertToBrowserItem(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method static synthetic lambda$createMediaItemsToBrowserItemsAsyncFunction$10(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/List;)V
    .locals 1
    .param p0, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p1, "bitmapFutures"    # Ljava/util/List;

    .line 461
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-static {p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->cancelAllFutures(Ljava/util/List;)V

    .line 464
    :cond_0
    return-void
.end method

.method static synthetic lambda$sendCustomActionResultWhenReady$7(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 3
    .param p0, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "result"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    .line 394
    nop

    .line 395
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/SessionResult;

    const-string v1, "SessionResult must not be null"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/SessionResult;

    .line 396
    .local v0, "sessionResult":Landroidx/media3/session/SessionResult;
    iget-object v1, v0, Landroidx/media3/session/SessionResult;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v0    # "sessionResult":Landroidx/media3/session/SessionResult;
    goto :goto_1

    .line 397
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "MLSLegacyStub"

    const-string v2, "Custom action failed"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static synthetic lambda$sendLibraryResultWithMediaItemWhenReady$8(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 3
    .param p0, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "result"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    .line 411
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    .line 412
    .local v0, "mediaItem":Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
    invoke-virtual {p1, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v0    # "mediaItem":Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
    goto :goto_1

    .line 413
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "MLSLegacyStub"

    const-string v2, "Library operation failed"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static synthetic lambda$sendLibraryResultWithMediaItemsWhenReady$9(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 4
    .param p0, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "result"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    .line 427
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 428
    .local v1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    nop

    .line 429
    if-nez v1, :cond_0

    .line 430
    move-object v2, v0

    goto :goto_0

    .line 431
    :cond_0
    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Landroidx/media3/session/MediaUtils;->truncateListBySize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 428
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v1    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    goto :goto_2

    .line 432
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "MLSLegacyStub"

    const-string v3, "Library operation failed"

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    invoke-virtual {p1, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 436
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private static sendCustomActionResultWhenReady(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;)V"
        }
    .end annotation

    .line 391
    .local p0, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Landroid/os/Bundle;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda4;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    .line 402
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 391
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 403
    return-void
.end method

.method private static sendLibraryResultWithMediaItemWhenReady(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 408
    .local p0, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    .line 418
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 408
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 419
    return-void
.end method

.method private static sendLibraryResultWithMediaItemsWhenReady(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 424
    .local p0, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda14;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    .line 437
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 424
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 438
    return-void
.end method


# virtual methods
.method public createControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 9
    .param p1, "remoteUserInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .param p2, "rootHints"    # Landroid/os/Bundle;

    .line 370
    new-instance v8, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 374
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getMediaSessionManager()Landroidx/media3/session/legacy/MediaSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v4

    new-instance v5, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    invoke-direct {v5, p0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    .line 377
    invoke-static {p2}, Landroidx/media3/session/LegacyConversions;->extractMaxCommandsForMediaItemFromRootHints(Landroid/os/Bundle;)I

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;I)V

    .line 370
    return-object v8
.end method

.method public getBrowserLegacyCbForBroadcast()Landroidx/media3/session/MediaSession$ControllerCb;
    .locals 1

    .line 381
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->browserLegacyCbForBroadcast:Landroidx/media3/session/MediaSession$ControllerCb;

    return-object v0
.end method

.method synthetic lambda$createMediaItemToBrowserItemAsyncFunction$15$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/LibraryResult;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p1, "result"    # Landroidx/media3/session/LibraryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 525
    const-string v0, "LibraryResult must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 528
    .local v0, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    iget v1, p1, Landroidx/media3/session/LibraryResult;->resultCode:I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object v1, p1, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/MediaItem;

    .line 534
    .local v1, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v3, v1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 535
    .local v3, "metadata":Landroidx/media3/common/MediaMetadata;
    iget-object v4, v3, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez v4, :cond_1

    .line 536
    nop

    .line 537
    invoke-static {v1, v2}, Landroidx/media3/session/LegacyConversions;->convertToBrowserItem(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    move-result-object v2

    .line 536
    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 538
    return-object v0

    .line 541
    :cond_1
    iget-object v2, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 542
    invoke-virtual {v2}, Landroidx/media3/session/MediaLibrarySessionImpl;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v2

    iget-object v4, v3, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-interface {v2, v4}, Landroidx/media3/common/util/BitmapLoader;->decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 543
    .local v2, "bitmapFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    new-instance v4, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0, v2}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda10;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 549
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 543
    invoke-virtual {v0, v4, v5}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 550
    new-instance v4, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda11;

    invoke-direct {v4, v2, v0, v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda11;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/MediaItem;)V

    .line 560
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 550
    invoke-interface {v2, v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 561
    return-object v0

    .line 529
    .end local v1    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local v2    # "bitmapFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    .end local v3    # "metadata":Landroidx/media3/common/MediaMetadata;
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 530
    return-object v0
.end method

.method synthetic lambda$createMediaItemsToBrowserItemsAsyncFunction$11$androidx-media3-session-MediaLibraryServiceLegacyStub(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/common/collect/ImmutableList;Ljava/util/List;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 2
    .param p1, "resultCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "mediaItems"    # Lcom/google/common/collect/ImmutableList;
    .param p3, "bitmapFutures"    # Ljava/util/List;
    .param p4, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;

    .line 470
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 471
    .local v0, "completedBitmapFutureCount":I
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 472
    invoke-direct {p0, p3, p2, p4}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->handleBitmapFuturesAllCompletedAndSetOutputFuture(Ljava/util/List;Ljava/util/List;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 475
    :cond_0
    return-void
.end method

.method synthetic lambda$createMediaItemsToBrowserItemsAsyncFunction$12$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/LibraryResult;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11
    .param p1, "result"    # Landroidx/media3/session/LibraryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    const-string v0, "LibraryResult must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 447
    .local v0, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    iget v1, p1, Landroidx/media3/session/LibraryResult;->resultCode:I

    const/4 v7, 0x0

    if-nez v1, :cond_4

    iget-object v1, p1, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 452
    :cond_0
    iget-object v1, p1, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/google/common/collect/ImmutableList;

    .line 453
    .local v8, "mediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;"
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 455
    return-object v0

    .line 458
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 459
    .local v9, "bitmapFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;>;"
    new-instance v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, v9}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda5;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/List;)V

    .line 465
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 459
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 467
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 468
    .local v3, "resultCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v10, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda6;

    move-object v1, v10

    move-object v2, p0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/common/collect/ImmutableList;Ljava/util/List;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 477
    .local v1, "handleBitmapFuturesTask":Ljava/lang/Runnable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 478
    invoke-virtual {v8, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem;

    .line 479
    .local v4, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v5, v4, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 480
    .local v5, "metadata":Landroidx/media3/common/MediaMetadata;
    iget-object v6, v5, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez v6, :cond_2

    .line 481
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 484
    :cond_2
    iget-object v6, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 485
    invoke-virtual {v6}, Landroidx/media3/session/MediaLibrarySessionImpl;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v6

    iget-object v10, v5, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-interface {v6, v10}, Landroidx/media3/common/util/BitmapLoader;->decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 486
    .local v6, "bitmapFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    invoke-interface {v6, v1, v10}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 477
    .end local v4    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local v5    # "metadata":Landroidx/media3/common/MediaMetadata;
    .end local v6    # "bitmapFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    .end local v2    # "i":I
    :cond_3
    return-object v0

    .line 448
    .end local v1    # "handleBitmapFuturesTask":Ljava/lang/Runnable;
    .end local v3    # "resultCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v8    # "mediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;"
    .end local v9    # "bitmapFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;>;"
    :cond_4
    :goto_2
    invoke-virtual {v0, v7}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 449
    return-object v0
.end method

.method synthetic lambda$onCustomAction$6$androidx-media3-session-MediaLibraryServiceLegacyStub(Ljava/lang/String;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "result"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 357
    new-instance v0, Landroidx/media3/session/SessionCommand;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 358
    .local v0, "command":Landroidx/media3/session/SessionCommand;
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    .line 360
    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 363
    invoke-virtual {v1, p2, v0, p4}, Landroidx/media3/session/MediaLibrarySessionImpl;->onCustomCommandOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 364
    .local v1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    invoke-static {p3, v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->sendCustomActionResultWhenReady(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 365
    return-void
.end method

.method synthetic lambda$onGetRoot$0$androidx-media3-session-MediaLibraryServiceLegacyStub(Ljava/util/concurrent/atomic/AtomicReference;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 1
    .param p1, "futureReference"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p4, "haveFuture"    # Landroidx/media3/common/util/ConditionVariable;

    .line 110
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    invoke-virtual {v0, p2, p3}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetLibraryRootOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p4}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    .line 112
    return-void
.end method

.method synthetic lambda$onLoadChildren$3$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "result"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "parentId"    # Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    .line 234
    const v1, 0xc353

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 237
    return-void

    .line 239
    :cond_0
    if-eqz p3, :cond_2

    .line 240
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 242
    :try_start_0
    const-string v0, "android.media.browse.extra.PAGE"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 243
    .local v0, "page":I
    const-string v1, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move v7, v1

    .line 244
    .local v7, "pageSize":I
    if-ltz v0, :cond_1

    if-lez v7, :cond_1

    .line 247
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 249
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 248
    invoke-static {v1, p3}, Landroidx/media3/session/LegacyConversions;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v6

    .line 250
    .local v6, "params":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 251
    move-object v2, p1

    move-object v3, p4

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetChildrenOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 254
    .local v1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;>;"
    nop

    .line 256
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->createMediaItemsToBrowserItemsAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v2

    .line 255
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 257
    .local v2, "browserItemsFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    invoke-static {p2, v2}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->sendLibraryResultWithMediaItemsWhenReady(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    return-void

    .line 265
    .end local v0    # "page":I
    .end local v1    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;>;"
    .end local v2    # "browserItemsFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    .end local v6    # "params":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .end local v7    # "pageSize":I
    :cond_1
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 268
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 269
    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetChildrenOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 275
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;>;"
    nop

    .line 276
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->createMediaItemsToBrowserItemsAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 277
    .local v1, "browserItemsFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    invoke-static {p2, v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->sendLibraryResultWithMediaItemsWhenReady(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 278
    return-void
.end method

.method synthetic lambda$onLoadItem$4$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "result"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;
    .param p3, "itemId"    # Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    .line 298
    const v1, 0xc354

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 301
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 304
    invoke-virtual {v0, p1, p3}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetItemOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 305
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Landroidx/media3/common/MediaItem;>;>;"
    nop

    .line 306
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->createMediaItemToBrowserItemAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 307
    .local v1, "browserItemFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    invoke-static {p2, v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->sendLibraryResultWithMediaItemWhenReady(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 308
    return-void
.end method

.method synthetic lambda$onSearch$5$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "result"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 331
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    .line 332
    const v1, 0xc355

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 334
    return-void

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    .line 337
    .local v0, "cb":Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;
    invoke-static {v0, p1, p3, p4, p2}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->access$400(Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    .line 339
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 340
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Landroidx/media3/session/LegacyConversions;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v1

    .line 341
    .local v1, "params":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    iget-object v2, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    invoke-virtual {v2, p1, p3, v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->onSearchOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    .line 343
    return-void
.end method

.method synthetic lambda$onSubscribe$1$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "option"    # Landroid/os/Bundle;
    .param p3, "id"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    .line 174
    const v1, 0xc351

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 180
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/media3/session/LegacyConversions;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0

    .line 181
    .local v0, "params":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    invoke-virtual {v1, p1, p3, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->onSubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    .line 182
    return-void
.end method

.method synthetic lambda$onUnsubscribe$2$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "id"    # Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    .line 200
    const v1, 0xc352

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaLibrarySessionImpl;->onUnsubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    .line 205
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p3, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v6

    .line 349
    .local v6, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v6, :cond_0

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    .line 351
    return-void

    .line 353
    :cond_0
    invoke-virtual {p3}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->detach()V

    .line 354
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 355
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda9;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Ljava/lang/String;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    .line 354
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;
    .locals 15
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .line 88
    move-object v7, p0

    invoke-super/range {p0 .. p3}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object v8

    .line 89
    .local v8, "browserRoot":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;
    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 90
    return-object v9

    .line 92
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v10

    .line 93
    .local v10, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v10, :cond_1

    .line 94
    return-object v9

    .line 96
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    .line 97
    const v1, 0xc350

    invoke-virtual {v0, v10, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    return-object v9

    .line 102
    :cond_2
    iget-object v0, v7, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 103
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v11, p3

    invoke-static {v0, v11}, Landroidx/media3/session/LegacyConversions;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v12

    .line 104
    .local v12, "params":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 106
    .local v3, "futureReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Landroidx/media3/common/MediaItem;>;>;>;"
    new-instance v6, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v6}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    .line 107
    .local v6, "haveFuture":Landroidx/media3/common/util/ConditionVariable;
    iget-object v0, v7, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 108
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v13, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda7;

    move-object v1, v13

    move-object v2, p0

    move-object v4, v10

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/common/util/ConditionVariable;)V

    .line 107
    invoke-static {v0, v13}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<Landroidx/media3/common/MediaItem;>;"
    :try_start_0
    invoke-virtual {v6}, Landroidx/media3/common/util/ConditionVariable;->block()V

    .line 116
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/LibraryResult;

    const-string v2, "LibraryResult must not be null"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/LibraryResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 119
    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "MLSLegacyStub"

    const-string v4, "Couldn\'t get a result from onGetLibraryRoot"

    invoke-static {v2, v4, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_7

    iget v0, v1, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-nez v0, :cond_7

    iget-object v0, v1, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, v1, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, v1, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToRootHints(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    .line 125
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_2
    nop

    .line 126
    .local v0, "extras":Landroid/os/Bundle;
    nop

    .line 127
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v2

    .line 128
    const v4, 0xc355

    invoke-virtual {v2, v10, v4}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v2

    .line 129
    .local v2, "isSearchSessionCommandAvailable":Z
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 130
    const-string v5, "android.media.browse.SEARCH_SUPPORTED"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    iget-object v4, v7, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 132
    invoke-virtual {v4}, Landroidx/media3/session/MediaLibrarySessionImpl;->getCommandButtonsForMediaItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 133
    .local v4, "commandButtonsForMediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 134
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v5, "browserActionBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v13

    if-ge v9, v13, :cond_5

    .line 136
    invoke-virtual {v4, v9}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/session/CommandButton;

    .line 137
    .local v13, "commandButton":Landroidx/media3/session/CommandButton;
    iget-object v14, v13, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v14, :cond_4

    iget-object v14, v13, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v14, v14, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v14, :cond_4

    .line 139
    invoke-static {v13}, Landroidx/media3/session/LegacyConversions;->convertToBundle(Landroidx/media3/session/CommandButton;)Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v13    # "commandButton":Landroidx/media3/session/CommandButton;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 142
    .end local v9    # "i":I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 143
    const-string v9, "androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ROOT_LIST"

    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 147
    .end local v5    # "browserActionBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_6
    new-instance v5, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    iget-object v9, v1, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast v9, Landroidx/media3/common/MediaItem;

    iget-object v9, v9, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-direct {v5, v9, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v5

    .line 151
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "isSearchSessionCommandAvailable":Z
    .end local v4    # "commandButtonsForMediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    :cond_7
    if-eqz v1, :cond_8

    iget v0, v1, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-eqz v0, :cond_8

    .line 152
    goto :goto_4

    .line 153
    :cond_8
    sget-object v9, Landroidx/media3/session/MediaUtils;->defaultBrowserRoot:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    .line 151
    :goto_4
    return-object v9
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 211
    .local p2, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->onLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 219
    .local p2, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v6

    .line 220
    .local v6, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    const/4 v0, 0x0

    if-nez v6, :cond_0

    .line 221
    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 222
    return-void

    .line 224
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadChildren(): Ignoring empty parentId from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MLSLegacyStub"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 227
    return-void

    .line 229
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->detach()V

    .line 230
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 231
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda13;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 230
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 4
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 283
    .local p2, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 284
    .local v0, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p2, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring empty itemId from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MLSLegacyStub"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 291
    return-void

    .line 293
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->detach()V

    .line 294
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 295
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V

    .line 294
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method

.method public onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 9
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 314
    .local p3, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v6

    .line 315
    .local v6, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    const/4 v0, 0x0

    if-nez v6, :cond_0

    .line 316
    invoke-virtual {p3, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 317
    return-void

    .line 319
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring empty query from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MLSLegacyStub"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p3, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 322
    return-void

    .line 324
    :cond_1
    invoke-virtual {v6}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    instance-of v0, v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    if-nez v0, :cond_2

    .line 325
    return-void

    .line 327
    :cond_2
    invoke-virtual {p3}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->detach()V

    .line 328
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 329
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 328
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method

.method public onSubscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "option"    # Landroid/os/Bundle;

    .line 162
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 163
    .local v0, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribe(): Ignoring empty id from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MLSLegacyStub"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 171
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 170
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method public onUnsubscribe(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 189
    .local v0, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v0, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnsubscribe(): Ignoring empty id from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MLSLegacyStub"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 197
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V

    .line 196
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method
