.class public interface abstract Landroidx/media3/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# direct methods
.method public static synthetic lambda$onSetMediaItems$0(IJLjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "startIndex"    # I
    .param p1, "startPositionMs"    # J
    .param p3, "mediaItemList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1726
    new-instance v0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    invoke-direct {v0, p3, p0, p1, p2}, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;-><init>(Ljava/util/List;IJ)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onAddMediaItems(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 1641
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    .line 1642
    .local v1, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v2, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-nez v2, :cond_0

    .line 1643
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1645
    .end local v1    # "mediaItem":Landroidx/media3/common/MediaItem;
    :cond_0
    goto :goto_0

    .line 1646
    :cond_1
    invoke-static {p3}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public onConnect(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1469
    new-instance v0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    invoke-direct {v0, p1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;-><init>(Landroidx/media3/session/MediaSession;)V

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->build()Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method public onCustomCommand(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "customCommand"    # Landroidx/media3/session/SessionCommand;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1583
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public onDisconnected(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1495
    return-void
.end method

.method public onMediaButtonEvent(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 1778
    const/4 v0, 0x0

    return v0
.end method

.method public onPlaybackResumption(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;",
            ">;"
        }
    .end annotation

    .line 1751
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public onPlayerCommandRequest(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;I)I
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "playerCommand"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1505
    const/4 v0, 0x0

    return v0
.end method

.method public onPlayerInteractionFinished(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "playerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 1800
    return-void
.end method

.method public onPostConnect(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1483
    return-void
.end method

.method public onSetMediaItems(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "startIndex"    # I
    .param p5, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;",
            ">;"
        }
    .end annotation

    .line 1723
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1724
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$Callback;->onAddMediaItems(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSession$Callback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4, p5, p6}, Landroidx/media3/session/MediaSession$Callback$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 1723
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSetRating(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "rating"    # Landroidx/media3/common/Rating;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1550
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSetRating(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "rating"    # Landroidx/media3/common/Rating;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1528
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
