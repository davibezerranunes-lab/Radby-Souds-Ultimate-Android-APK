.class Landroidx/media3/session/MediaLibrarySessionImpl;
.super Landroidx/media3/session/MediaSessionImpl;
.source "MediaLibrarySessionImpl.java"


# static fields
.field private static final RECENT_LIBRARY_ROOT_MEDIA_ID:Ljava/lang/String; = "androidx.media3.session.recent.root"


# instance fields
.field private final callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

.field private final controllerToSubscribedParentIds:Lcom/google/common/collect/HashMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashMultimap<",
            "Landroidx/media3/session/MediaSession$ControllerCb;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

.field private final libraryErrorReplicationMode:I

.field private final parentIdToSubscribedControllers:Lcom/google/common/collect/HashMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashMultimap<",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vu4r3zTOaLdaA9vvkyAQmo-zYu0(Landroidx/media3/session/MediaLibrarySessionImpl;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZI)V
    .locals 5
    .param p1, "instance"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "player"    # Landroidx/media3/common/Player;
    .param p5, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p9, "callback"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;
    .param p10, "tokenExtras"    # Landroid/os/Bundle;
    .param p11, "sessionExtras"    # Landroid/os/Bundle;
    .param p12, "bitmapLoader"    # Landroidx/media3/common/util/BitmapLoader;
    .param p13, "playIfSuppressed"    # Z
    .param p14, "isPeriodicPositionUpdateEnabled"    # Z
    .param p15, "libraryErrorReplicationMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Player;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/common/util/BitmapLoader;",
            "ZZI)V"
        }
    .end annotation

    .line 87
    .local p6, "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .local p7, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .local p8, "commandButtonsForMediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    move-object v0, p0

    invoke-direct/range {p0 .. p14}, Landroidx/media3/session/MediaSessionImpl;-><init>(Landroidx/media3/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZ)V

    .line 102
    move-object v1, p1

    iput-object v1, v0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 103
    move-object v2, p9

    iput-object v2, v0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    .line 104
    move/from16 v3, p15

    iput v3, v0, Landroidx/media3/session/MediaLibrarySessionImpl;->libraryErrorReplicationMode:I

    .line 105
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/session/MediaLibrarySessionImpl;->parentIdToSubscribedControllers:Lcom/google/common/collect/HashMultimap;

    .line 106
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/session/MediaLibrarySessionImpl;->controllerToSubscribedParentIds:Lcom/google/common/collect/HashMultimap;

    .line 107
    return-void
.end method

.method private getRecentMediaItemAtDeviceBootTime(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation

    .line 465
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 467
    .local v0, "settableFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;>;"
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->isMediaNotificationControllerConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getMediaNotificationControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    goto :goto_0

    .line 469
    :cond_0
    move-object v1, p1

    :goto_0
    move-object p1, v1

    .line 470
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v2, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 471
    invoke-interface {v1, v2, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onPlaybackResumption(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 472
    .local v1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;>;"
    new-instance v2, Landroidx/media3/session/MediaLibrarySessionImpl$1;

    invoke-direct {v2, p0, v0, p2}, Landroidx/media3/session/MediaLibrarySessionImpl$1;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 494
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 472
    invoke-static {v1, v2, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 495
    return-object v0
.end method

.method private isReplicationErrorCode(I)Z
    .locals 1
    .param p1, "resultCode"    # I

    .line 426
    const/16 v0, -0x66

    if-eq p1, v0, :cond_1

    const/16 v0, -0x69

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSubscribed(Landroidx/media3/session/MediaSession$ControllerCb;Ljava/lang/String;)Z
    .locals 1
    .param p1, "controllerCb"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "parentId"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->controllerToSubscribedParentIds:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/HashMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$notifySearchResultChanged$7(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "itemCount"    # I
    .param p2, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p3, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    invoke-interface {p3, p4, p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->onSearchResultChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method private maybeUpdateLegacyErrorState(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/LibraryResult;)V
    .locals 3
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/LibraryResult<",
            "*>;)V"
        }
    .end annotation

    .line 378
    .local p2, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    iget v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->libraryErrorReplicationMode:I

    if-eqz v0, :cond_3

    .line 379
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 383
    .local v0, "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    invoke-direct {p0, p2}, Landroidx/media3/session/MediaLibrarySessionImpl;->setLegacyErrorState(Landroidx/media3/session/LibraryResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->setPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    goto :goto_0

    .line 386
    :cond_1
    iget v1, p2, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-nez v1, :cond_2

    .line 387
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->clearReplicatedLibraryError()V

    .line 389
    :cond_2
    :goto_0
    return-void

    .line 380
    .end local v0    # "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    :cond_3
    :goto_1
    return-void
.end method

.method private postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 458
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method private removeSubscription(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerCb;

    .line 453
    .local v0, "controllerCb":Landroidx/media3/session/MediaSession$ControllerCb;
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->parentIdToSubscribedControllers:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v1, p2, p1}, Lcom/google/common/collect/HashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 454
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->controllerToSubscribedParentIds:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v1, v0, p2}, Lcom/google/common/collect/HashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method private setLegacyErrorState(Landroidx/media3/session/LibraryResult;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/LibraryResult<",
            "*>;)Z"
        }
    .end annotation

    .line 392
    .local p1, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 393
    .local v0, "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    iget v1, p1, Landroidx/media3/session/LibraryResult;->resultCode:I

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->isReplicationErrorCode(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 395
    iget v1, p1, Landroidx/media3/session/LibraryResult;->resultCode:I

    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->convertToLegacyErrorCode(I)I

    move-result v1

    .line 396
    .local v1, "legacyErrorCode":I
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getLegacyError()Landroidx/media3/session/PlayerWrapper$LegacyError;

    move-result-object v3

    .line 397
    .local v3, "legacyError":Landroidx/media3/session/PlayerWrapper$LegacyError;
    if-eqz v3, :cond_0

    iget v4, v3, Landroidx/media3/session/PlayerWrapper$LegacyError;->code:I

    if-eq v4, v1, :cond_5

    .line 402
    :cond_0
    iget-object v4, p1, Landroidx/media3/session/LibraryResult;->sessionError:Landroidx/media3/session/SessionError;

    if-eqz v4, :cond_1

    .line 403
    iget-object v4, p1, Landroidx/media3/session/LibraryResult;->sessionError:Landroidx/media3/session/SessionError;

    iget-object v4, v4, Landroidx/media3/session/SessionError;->message:Ljava/lang/String;

    goto :goto_0

    .line 404
    :cond_1
    const-string v4, "no error message provided"

    :goto_0
    nop

    .line 405
    .local v4, "errorMessage":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 406
    .local v5, "bundle":Landroid/os/Bundle;
    iget-object v6, p1, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    if-eqz v6, :cond_2

    iget-object v6, p1, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iget-object v6, v6, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    .line 407
    const-string v7, "android.media.extras.ERROR_RESOLUTION_ACTION_INTENT"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 409
    iget-object v6, p1, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iget-object v5, v6, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    goto :goto_1

    .line 410
    :cond_2
    iget-object v6, p1, Landroidx/media3/session/LibraryResult;->sessionError:Landroidx/media3/session/SessionError;

    if-eqz v6, :cond_3

    .line 411
    iget-object v6, p1, Landroidx/media3/session/LibraryResult;->sessionError:Landroidx/media3/session/SessionError;

    iget-object v5, v6, Landroidx/media3/session/SessionError;->extras:Landroid/os/Bundle;

    .line 413
    :cond_3
    :goto_1
    iget v6, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->libraryErrorReplicationMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    move v2, v7

    :cond_4
    invoke-virtual {v0, v2, v1, v4, v5}, Landroidx/media3/session/PlayerWrapper;->setLegacyError(ZILjava/lang/String;Landroid/os/Bundle;)V

    .line 419
    return v7

    .line 422
    .end local v1    # "legacyErrorCode":I
    .end local v3    # "legacyError":Landroidx/media3/session/PlayerWrapper$LegacyError;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_5
    return v2
.end method

.method private static tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 432
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 434
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 435
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "MediaSessionImpl"

    const-string v2, "Library operation failed"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    const/4 v1, 0x0

    return-object v1
.end method

.method private static verifyResultItems(Landroidx/media3/session/LibraryResult;I)V
    .locals 4
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;I)V"
        }
    .end annotation

    .line 443
    .local p0, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;"
    iget v0, p0, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 445
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pageSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearReplicatedLibraryError()V
    .locals 3

    .line 130
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 131
    .local v0, "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getLegacyError()Landroidx/media3/session/PlayerWrapper$LegacyError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->clearLegacyErrorStatus()V

    .line 133
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->setPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected createLegacyBrowserService(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)Landroidx/media3/session/MediaSessionServiceLegacyStub;
    .locals 1
    .param p1, "compatToken"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 359
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    .line 360
    .local v0, "stub":Landroidx/media3/session/MediaLibraryServiceLegacyStub;
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->initialize(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    .line 361
    return-object v0
.end method

.method protected dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V
    .locals 4
    .param p1, "task"    # Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;

    .line 366
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 367
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getLegacyBrowserService()Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    move-result-object v0

    .line 368
    .local v0, "legacyStub":Landroidx/media3/session/MediaLibraryServiceLegacyStub;
    if-eqz v0, :cond_0

    .line 370
    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getBrowserLegacyCbForBroadcast()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;->run(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    goto :goto_0

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionImpl"

    const-string v3, "Exception in using media1 API"

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-super {p0}, Landroidx/media3/session/MediaSessionImpl;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getLegacyBrowserService()Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    move-result-object v1

    .line 113
    .local v1, "legacyStub":Landroidx/media3/session/MediaLibraryServiceLegacyStub;
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_0
    return-object v0
.end method

.method protected getLegacyBrowserService()Landroidx/media3/session/MediaLibraryServiceLegacyStub;
    .locals 1

    .line 353
    invoke-super {p0}, Landroidx/media3/session/MediaSessionImpl;->getLegacyBrowserService()Landroidx/media3/session/MediaSessionServiceLegacyStub;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    return-object v0
.end method

.method protected bridge synthetic getLegacyBrowserService()Landroidx/media3/session/MediaSessionServiceLegacyStub;
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getLegacyBrowserService()Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    move-result-object v0

    return-object v0
.end method

.method public getSubscribedControllers(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->parentIdToSubscribedControllers:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 121
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 122
    return v1

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getLegacyBrowserService()Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    move-result-object v0

    .line 125
    .local v0, "legacyStub":Landroidx/media3/session/MediaLibraryServiceLegacyStub;
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 125
    :goto_0
    return v1
.end method

.method synthetic lambda$notifyChildrenChanged$4$androidx-media3-session-MediaLibrarySessionImpl(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p4, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-direct {p0, p4, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->isSubscribed(Landroidx/media3/session/MediaSession$ControllerCb;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    invoke-interface {p4, p5, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb;->onChildrenChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 288
    return-void
.end method

.method synthetic lambda$onGetChildrenOnHandler$0$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 1
    .param p1, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "pageSize"    # I

    .line 191
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/LibraryResult;

    .line 192
    .local v0, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;"
    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0, p2, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->maybeUpdateLegacyErrorState(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/LibraryResult;)V

    .line 194
    invoke-static {v0, p3}, Landroidx/media3/session/MediaLibrarySessionImpl;->verifyResultItems(Landroidx/media3/session/LibraryResult;I)V

    .line 196
    :cond_0
    return-void
.end method

.method synthetic lambda$onGetItemOnHandler$1$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 207
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/LibraryResult;

    .line 208
    .local v0, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<Landroidx/media3/common/MediaItem;>;"
    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, p2, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->maybeUpdateLegacyErrorState(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/LibraryResult;)V

    .line 211
    :cond_0
    return-void
.end method

.method synthetic lambda$onGetSearchResultOnHandler$6$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 1
    .param p1, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "pageSize"    # I

    .line 317
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/LibraryResult;

    .line 318
    .local v0, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;"
    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0, p2, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->maybeUpdateLegacyErrorState(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/LibraryResult;)V

    .line 320
    invoke-static {v0, p3}, Landroidx/media3/session/MediaLibrarySessionImpl;->verifyResultItems(Landroidx/media3/session/LibraryResult;I)V

    .line 322
    :cond_0
    return-void
.end method

.method synthetic lambda$onSearchOnHandler$5$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 297
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/LibraryResult;

    .line 298
    .local v0, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<Ljava/lang/Void;>;"
    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0, p2, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->maybeUpdateLegacyErrorState(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/LibraryResult;)V

    .line 301
    :cond_0
    return-void
.end method

.method synthetic lambda$onSubscribeOnHandler$2$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "parentId"    # Ljava/lang/String;

    .line 236
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/LibraryResult;

    .line 237
    .local v0, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<Ljava/lang/Void;>;"
    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-eqz v1, :cond_1

    .line 239
    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/media3/session/MediaLibrarySessionImpl;->removeSubscription(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V

    .line 241
    :cond_1
    return-void
.end method

.method synthetic lambda$onUnsubscribeOnHandler$3$androidx-media3-session-MediaLibrarySessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;

    .line 260
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaLibrarySessionImpl;->removeSubscription(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V

    return-void
.end method

.method public notifyChildrenChanged(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 1
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 274
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->isMediaNotificationControllerConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getSystemUiControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 276
    .local v0, "systemUiBrowser":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    move-object p1, v0

    .line 281
    .end local v0    # "systemUiBrowser":Landroidx/media3/session/MediaSession$ControllerInfo;
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 289
    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 3
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 266
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    invoke-virtual {v0}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "connectedControllers":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p0, v2, p1, p2, p3}, Landroidx/media3/session/MediaLibrarySessionImpl;->notifyChildrenChanged(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public notifySearchResultChanged(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 1
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 329
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->isMediaNotificationControllerConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getSystemUiControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 331
    .local v0, "systemUiBrowser":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v0, :cond_0

    .line 332
    return-void

    .line 334
    :cond_0
    move-object p1, v0

    .line 336
    .end local v0    # "systemUiBrowser":Landroidx/media3/session/MediaSession$ControllerInfo;
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p3, p4}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 338
    return-void
.end method

.method public onDisconnectedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 4
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 342
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerCb;

    .line 343
    .local v0, "controllerCb":Landroidx/media3/session/MediaSession$ControllerCb;
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->controllerToSubscribedParentIds:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 344
    .local v1, "subscriptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 345
    .local v3, "parentId":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Landroidx/media3/session/MediaLibrarySessionImpl;->removeSubscription(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V

    .line 346
    .end local v3    # "parentId":Ljava/lang/String;
    goto :goto_0

    .line 347
    :cond_0
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onDisconnectedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 348
    return-void
.end method

.method public onGetChildrenOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "pageSize"    # I
    .param p5, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "II",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation

    .line 164
    const-string v0, "androidx.media3.session.recent.root"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->canResumePlaybackOnStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, -0x6

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 172
    invoke-direct {p0, p1, p5}, Landroidx/media3/session/MediaLibrarySessionImpl;->getRecentMediaItemAtDeviceBootTime(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 177
    const-string v2, "androidx.media3.session.recent.item"

    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    new-instance v2, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    .line 180
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v2

    .line 181
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 174
    invoke-static {v0, p5}, Landroidx/media3/session/LibraryResult;->ofItemList(Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 186
    :cond_2
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v2, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 188
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v3

    .line 187
    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onGetChildren(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 189
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;>;"
    new-instance v1, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1, p4}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    new-instance v2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 198
    return-object v0
.end method

.method public onGetItemOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 204
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onGetItem(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 205
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Landroidx/media3/common/MediaItem;>;>;"
    new-instance v1, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    new-instance v2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 213
    return-object v0
.end method

.method public onGetLibraryRootOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 139
    if-eqz p2, :cond_1

    iget-boolean v0, p2, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isRecent:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->isSystemUiController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->canResumePlaybackOnStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, -0x6

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 146
    const-string v1, "androidx.media3.session.recent.root"

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    .line 149
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 150
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 144
    invoke-static {v0, p2}, Landroidx/media3/session/LibraryResult;->ofItem(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 155
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onGetLibraryRoot(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public onGetSearchResultOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "pageSize"    # I
    .param p5, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "II",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 314
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    .line 313
    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onGetSearchResult(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 315
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;>;"
    new-instance v1, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1, p4}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    new-instance v2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 324
    return-object v0
.end method

.method public onSearchOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 294
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p3}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onSearch(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 295
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Ljava/lang/Void;>;>;"
    new-instance v1, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    new-instance v2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 303
    return-object v0
.end method

.method public onSubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 219
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerCb;

    .line 220
    .local v0, "controllerCb":Landroidx/media3/session/MediaSession$ControllerCb;
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->controllerToSubscribedParentIds:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v1, v0, p2}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->parentIdToSubscribedControllers:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v1, p2, p1}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v2, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 231
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v3

    .line 230
    invoke-interface {v1, v2, v3, p2, p3}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onSubscribe(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 229
    const-string/jumbo v2, "onSubscribe must return non-null future"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 234
    .local v1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Ljava/lang/Void;>;>;"
    new-instance v2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, p1, p2}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V

    new-instance v3, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 244
    return-object v1
.end method

.method public onUnsubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 258
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onUnsubscribe(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 259
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Ljava/lang/Void;>;>;"
    new-instance v1, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V

    new-instance v2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 261
    return-object v0
.end method
