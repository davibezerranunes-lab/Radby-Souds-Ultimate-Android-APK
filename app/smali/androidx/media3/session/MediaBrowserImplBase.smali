.class Landroidx/media3/session/MediaBrowserImplBase;
.super Landroidx/media3/session/MediaControllerImplBase;
.source "MediaBrowserImplBase.java"

# interfaces
.implements Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;
    }
.end annotation


# instance fields
.field private final instance:Landroidx/media3/session/MediaBrowser;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media3/session/MediaBrowser;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Landroidx/media3/session/MediaBrowser;
    .param p3, "token"    # Landroidx/media3/session/SessionToken;
    .param p4, "connectionHints"    # Landroid/os/Bundle;
    .param p5, "applicationLooper"    # Landroid/os/Looper;

    .line 55
    invoke-direct/range {p0 .. p5}, Landroidx/media3/session/MediaControllerImplBase;-><init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;)V

    .line 56
    iput-object p2, p0, Landroidx/media3/session/MediaBrowserImplBase;->instance:Landroidx/media3/session/MediaBrowser;

    .line 57
    return-void
.end method

.method private dispatchRemoteLibrarySessionTask(ILandroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p1, "commandCode"    # I
    .param p2, "task"    # Landroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;>;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaBrowserImplBase;->getSessionInterfaceWithSessionCommandIfAble(I)Landroidx/media3/session/IMediaSession;

    move-result-object v0

    .line 190
    .local v0, "iSession":Landroidx/media3/session/IMediaSession;
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 192
    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/session/SequencedFutureManager;->createSequencedFuture(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    move-result-object v1

    .line 194
    .local v1, "result":Landroidx/media3/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media3/session/SequencedFutureManager$SequencedFuture<Landroidx/media3/session/LibraryResult<TV;>;>;"
    :try_start_0
    invoke-virtual {v1}, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->getSequenceNumber()I

    move-result v2

    invoke-interface {p2, v0, v2}, Landroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;->run(Landroidx/media3/session/IMediaSession;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 195
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MCImplBase"

    const-string v4, "Cannot connect to the service or the session is gone"

    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    iget-object v3, p0, Landroidx/media3/session/MediaBrowserImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 198
    invoke-virtual {v1}, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->getSequenceNumber()I

    move-result v4

    const/16 v5, -0x64

    invoke-static {v5}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v5

    .line 197
    invoke-virtual {v3, v4, v5}, Landroidx/media3/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V

    .line 200
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 205
    .end local v1    # "result":Landroidx/media3/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media3/session/SequencedFutureManager$SequencedFuture<Landroidx/media3/session/LibraryResult<TV;>;>;"
    :cond_0
    const/4 v1, -0x4

    invoke-static {v1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getChildren(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 105
    new-instance v6, Landroidx/media3/session/MediaBrowserImplBase$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaBrowserImplBase$4;-><init>(Landroidx/media3/session/MediaBrowserImplBase;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    const v0, 0xc353

    invoke-direct {p0, v0, v6}, Landroidx/media3/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method getInstance()Landroidx/media3/session/MediaBrowser;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplBase;->instance:Landroidx/media3/session/MediaBrowser;

    return-object v0
.end method

.method bridge synthetic getInstance()Landroidx/media3/session/MediaController;
    .locals 1

    .line 44
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplBase;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Landroidx/media3/session/MediaBrowserImplBase$5;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaBrowserImplBase$5;-><init>(Landroidx/media3/session/MediaBrowserImplBase;Ljava/lang/String;)V

    const v1, 0xc354

    invoke-direct {p0, v1, v0}, Landroidx/media3/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryRoot(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Landroidx/media3/session/MediaBrowserImplBase$1;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaBrowserImplBase$1;-><init>(Landroidx/media3/session/MediaBrowserImplBase;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    const v1, 0xc350

    invoke-direct {p0, v1, v0}, Landroidx/media3/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSearchResult(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 149
    new-instance v6, Landroidx/media3/session/MediaBrowserImplBase$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaBrowserImplBase$7;-><init>(Landroidx/media3/session/MediaBrowserImplBase;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    const v0, 0xc356

    invoke-direct {p0, v0, v6}, Landroidx/media3/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$notifyChildrenChanged$1$androidx-media3-session-MediaBrowserImplBase(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaBrowser$Listener;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p4, "listener"    # Landroidx/media3/session/MediaBrowser$Listener;

    .line 184
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplBase;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    invoke-interface {p4, v0, p1, p2, p3}, Landroidx/media3/session/MediaBrowser$Listener;->onChildrenChanged(Landroidx/media3/session/MediaBrowser;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method synthetic lambda$notifySearchResultChanged$0$androidx-media3-session-MediaBrowserImplBase(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaBrowser$Listener;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p4, "listener"    # Landroidx/media3/session/MediaBrowser$Listener;

    .line 173
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplBase;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    invoke-interface {p4, v0, p1, p2, p3}, Landroidx/media3/session/MediaBrowser$Listener;->onSearchResultChanged(Landroidx/media3/session/MediaBrowser;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method notifyChildrenChanged(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 178
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplBase;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaBrowserImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media3/session/MediaBrowserImplBase$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaBrowserImplBase;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 182
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->notifyBrowserListener(Landroidx/media3/common/util/Consumer;)V

    .line 185
    return-void
.end method

.method notifySearchResultChanged(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 167
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplBase;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaBrowserImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media3/session/MediaBrowserImplBase$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaBrowserImplBase;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 171
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->notifyBrowserListener(Landroidx/media3/common/util/Consumer;)V

    .line 174
    return-void
.end method

.method public search(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 136
    new-instance v0, Landroidx/media3/session/MediaBrowserImplBase$6;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplBase$6;-><init>(Landroidx/media3/session/MediaBrowserImplBase;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    const v1, 0xc355

    invoke-direct {p0, v1, v0}, Landroidx/media3/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Landroidx/media3/session/MediaBrowserImplBase$2;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplBase$2;-><init>(Landroidx/media3/session/MediaBrowserImplBase;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    const v1, 0xc351

    invoke-direct {p0, v1, v0}, Landroidx/media3/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Landroidx/media3/session/MediaBrowserImplBase$3;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaBrowserImplBase$3;-><init>(Landroidx/media3/session/MediaBrowserImplBase;Ljava/lang/String;)V

    const v1, 0xc352

    invoke-direct {p0, v1, v0}, Landroidx/media3/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media3/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
