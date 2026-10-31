.class final Landroidx/media3/session/MediaSessionStub;
.super Landroidx/media3/session/IMediaSession$Stub;
.source "MediaSessionStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$SessionTask;,
        Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$Controller2Cb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSessionStub"

.field public static final UNKNOWN_SEQUENCE_NUMBER:I = -0x80000000

.field public static final VERSION_INT:I = 0x4


# instance fields
.field private final connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private nextUniqueTrackGroupIdPrefix:I

.field private final pendingControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

.field private trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Landroidx/media3/common/TrackGroup;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3gNk6WdWluwULgaxKQoRHUHPGh0(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$spWBP4AIczHboZgG1eyjPH8qGJk()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 1
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;

    .line 138
    invoke-direct {p0}, Landroidx/media3/session/IMediaSession$Stub;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 141
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/legacy/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media3/session/legacy/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

    .line 142
    new-instance v0, Landroidx/media3/session/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    .line 145
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    .line 146
    return-void
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 6
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "commandCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "II",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 356
    .local p4, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 358
    return-void
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 15
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "sessionCommand"    # Landroidx/media3/session/SessionCommand;
    .param p4, "commandCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "I",
            "Landroidx/media3/session/SessionCommand;",
            "I",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 375
    .local p5, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    move-object v9, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 379
    .local v10, "token":J
    :try_start_0
    iget-object v0, v9, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 380
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v1, v9, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v1

    .line 385
    .local v12, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v12, :cond_1

    .line 411
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    return-void

    .line 388
    :cond_1
    nop

    .line 389
    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda49;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v12

    move-object/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda49;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;IILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;)V

    .line 388
    invoke-static {v13, v14}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    nop

    .end local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    .end local v12    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    nop

    .line 413
    return-void

    .line 411
    .restart local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    :cond_2
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 381
    return-void

    .line 411
    .end local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    throw v0
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 6
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "sessionCommand"    # Landroidx/media3/session/SessionCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "I",
            "Landroidx/media3/session/SessionCommand;",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 365
    .local p4, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 367
    return-void
.end method

.method private generateUniqueTrackGroupId(Landroidx/media3/common/TrackGroup;)Ljava/lang/String;
    .locals 3
    .param p1, "trackGroup"    # Landroidx/media3/common/TrackGroup;

    .line 1989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/session/MediaSessionStub;->nextUniqueTrackGroupIdPrefix:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/session/MediaSessionStub;->nextUniqueTrackGroupIdPrefix:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;TK;>;",
            "Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;",
            ")",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;TK;>;"
        }
    .end annotation

    .line 212
    .local p0, "mediaItemsTask":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Landroidx/media3/common/MediaItem;>;>;TK;>;"
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda80;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda80;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)V

    return-object v0
.end method

.method private static handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;",
            ">;TK;>;",
            "Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;",
            ")",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;TK;>;"
        }
    .end annotation

    .line 237
    .local p0, "mediaItemsTask":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;>;TK;>;"
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda63;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)V

    return-object v0
.end method

.method private static handleSessionTaskWhenReady(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(TK;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "I",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;TK;>;",
            "Landroidx/media3/common/util/Consumer<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 421
    .local p0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    .local p3, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<TT;>;TK;>;"
    .local p4, "futureResultHandler":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Lcom/google/common/util/concurrent/ListenableFuture<TT;>;>;"
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 424
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 425
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 426
    .local v1, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v1, p4, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/session/MediaSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/util/Consumer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 439
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 426
    invoke-interface {v0, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 440
    return-object v1
.end method

.method static synthetic lambda$addMediaItem$34(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1178
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addMediaItem$35(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "playerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "mediaItems"    # Ljava/util/List;

    .line 1180
    invoke-virtual {p0, p2}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$addMediaItemWithIndex$36(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1206
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addMediaItems$38(Ljava/util/List;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItems"    # Ljava/util/List;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1236
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addMediaItems$39(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "playerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "items"    # Ljava/util/List;

    .line 1237
    invoke-virtual {p0, p2}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$addMediaItemsWithIndex$40(Ljava/util/List;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItems"    # Ljava/util/List;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1265
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decreaseDeviceVolume$58(Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1597
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume()V

    return-void
.end method

.method static synthetic lambda$decreaseDeviceVolumeWithFlags$59(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "flags"    # I
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1610
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume(I)V

    return-void
.end method

.method static synthetic lambda$getChildren$68(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "page"    # I
    .param p2, "pageSize"    # I
    .param p3, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p4, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p5, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p6, "sequenceNum"    # I

    .line 1809
    move-object v0, p4

    move-object v1, p5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetChildrenOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getItem$67(Ljava/lang/String;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1769
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetItemOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getLibraryRoot$66(Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p1, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1750
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetLibraryRootOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getSearchResult$70(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "page"    # I
    .param p2, "pageSize"    # I
    .param p3, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p4, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p5, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p6, "sequenceNum"    # I

    .line 1880
    move-object v0, p4

    move-object v1, p5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetSearchResultOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleMediaItemsWhenReady$4(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "mediaItems"    # Ljava/util/List;

    .line 224
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    nop

    .line 226
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 225
    invoke-interface {p1, v0, p2, p3}, Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;->run(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V

    .line 228
    :cond_0
    return-void
.end method

.method static synthetic lambda$handleMediaItemsWhenReady$5(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;
    .param p3, "mediaItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    nop

    .line 220
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda78;

    invoke-direct {v1, p0, p2, p1, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda78;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V

    .line 221
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/SessionResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 219
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->postOrRunWithCompletion(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleMediaItemsWhenReady$6(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "mediaItemsTask"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNumber"    # I

    .line 213
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/16 v1, -0x64

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    nop

    .line 217
    invoke-interface {p0, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda19;

    invoke-direct {v1, p2, p3, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)V

    .line 216
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleMediaItemsWithStartPositionWhenReady$7(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V
    .locals 1
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;
    .param p2, "mediaItemsWithStartPosition"    # Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    .line 249
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    nop

    .line 251
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 250
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;->run(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    .line 253
    :cond_0
    return-void
.end method

.method static synthetic lambda$handleMediaItemsWithStartPositionWhenReady$8(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;
    .param p3, "mediaItemsWithStartPosition"    # Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    nop

    .line 245
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, p2, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda36;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    .line 246
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/SessionResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 244
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->postOrRunWithCompletion(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleMediaItemsWithStartPositionWhenReady$9(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "mediaItemsTask"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNumber"    # I

    .line 238
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/16 v1, -0x64

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    nop

    .line 242
    invoke-interface {p0, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, p2, p3, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)V

    .line 241
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleSessionTaskWhenReady$16(Landroidx/media3/session/MediaSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/util/Consumer;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p2, "futureResultHandler"    # Landroidx/media3/common/util/Consumer;
    .param p3, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 428
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 430
    return-void

    .line 433
    :cond_0
    :try_start_0
    invoke-interface {p2, p3}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 434
    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    .line 436
    .local v0, "error":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 438
    .end local v0    # "error":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method static synthetic lambda$increaseDeviceVolume$56(Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1571
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume()V

    return-void
.end method

.method static synthetic lambda$increaseDeviceVolumeWithFlags$57(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "flags"    # I
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1584
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume(I)V

    return-void
.end method

.method static synthetic lambda$moveMediaItem$44(IILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "currentIndex"    # I
    .param p1, "newIndex"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1324
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->moveMediaItem(II)V

    return-void
.end method

.method static synthetic lambda$moveMediaItems$45(IIILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1341
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/PlayerWrapper;->moveMediaItems(III)V

    return-void
.end method

.method static synthetic lambda$onCustomCommand$24(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "command"    # Landroidx/media3/session/SessionCommand;
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 889
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onCustomCommandOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$queueSessionTaskWithPlayerCommandForControllerInfo$12(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 0
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNumber"    # I

    .line 337
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$queueSessionTaskWithPlayerCommandForControllerInfo$13(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNumber"    # I

    .line 343
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic lambda$replaceMediaItem$46(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1367
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$replaceMediaItems$48(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItems"    # Lcom/google/common/collect/ImmutableList;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1407
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$search$69(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p2, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 1840
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->onSearchOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$seekTo$22(JLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "positionMs"    # J
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 808
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->seekTo(J)V

    return-void
.end method

.method static synthetic lambda$seekToDefaultPosition$20(Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 780
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition()V

    return-void
.end method

.method static synthetic lambda$sendLibraryResultWhenReady$10(Landroidx/media3/session/MediaSession$ControllerInfo;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
    .param p0, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p1, "sequenceNumber"    # I
    .param p2, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 279
    const-string v0, "MediaSessionStub"

    :try_start_0
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/LibraryResult;

    const-string v2, "LibraryResult must not be null"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/LibraryResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .local v0, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    goto :goto_1

    .line 283
    .end local v0    # "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "Library operation failed"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    const/4 v0, -0x1

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    .restart local v0    # "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    goto :goto_2

    .line 280
    .end local v0    # "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 281
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    const-string v2, "Library operation cancelled"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    .line 286
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    .restart local v0    # "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    :goto_1
    nop

    .line 287
    :goto_2
    invoke-static {p0, p1, v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/LibraryResult;)V

    .line 288
    return-void
.end method

.method static synthetic lambda$sendLibraryResultWhenReady$11(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNumber"    # I

    .line 271
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-static {p1, p2, p3, p0, v0}, Landroidx/media3/session/MediaSessionStub;->handleSessionTaskWhenReady(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sendSessionResultSuccess$0(Landroidx/media3/common/util/Consumer;Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .param p0, "task"    # Landroidx/media3/common/util/Consumer;
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 164
    invoke-interface {p0, p1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$sendSessionResultSuccess$1(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNumber"    # I

    .line 170
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;->run(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 174
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p2, p3, v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 176
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sendSessionResultWhenReady$2(Landroidx/media3/session/MediaSession$ControllerInfo;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
    .param p0, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p1, "sequenceNumber"    # I
    .param p2, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 192
    const-string v0, "MediaSessionStub"

    :try_start_0
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/SessionResult;

    const-string v2, "SessionResult must not be null"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/SessionResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .local v0, "result":Landroidx/media3/session/SessionResult;
    goto :goto_2

    .line 196
    .end local v0    # "result":Landroidx/media3/session/SessionResult;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 197
    .local v1, "exception":Ljava/lang/Exception;
    :goto_0
    const-string v2, "Session operation failed"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    new-instance v0, Landroidx/media3/session/SessionResult;

    .line 200
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_0

    .line 201
    const/4 v2, -0x6

    goto :goto_1

    .line 202
    :cond_0
    const/4 v2, -0x1

    :goto_1
    invoke-direct {v0, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .restart local v0    # "result":Landroidx/media3/session/SessionResult;
    goto :goto_3

    .line 193
    .end local v0    # "result":Landroidx/media3/session/SessionResult;
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 194
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    const-string v2, "Session operation cancelled"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 203
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    .restart local v0    # "result":Landroidx/media3/session/SessionResult;
    :goto_2
    nop

    .line 204
    :goto_3
    invoke-static {p0, p1, v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 205
    return-void
.end method

.method static synthetic lambda$sendSessionResultWhenReady$3(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNumber"    # I

    .line 184
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda76;

    invoke-direct {v0, p2, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda76;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-static {p1, p2, p3, p0, v0}, Landroidx/media3/session/MediaSessionStub;->handleSessionTaskWhenReady(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setAudioAttributes$62(Landroidx/media3/common/AudioAttributes;ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "attributes"    # Landroidx/media3/common/AudioAttributes;
    .param p1, "handleAudioFocus"    # Z
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1660
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    return-void
.end method

.method static synthetic lambda$setDeviceMuted$60(ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "muted"    # Z
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1623
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    return-void
.end method

.method static synthetic lambda$setDeviceMutedWithFlags$61(ZILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "muted"    # Z
    .param p1, "flags"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1636
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    return-void
.end method

.method static synthetic lambda$setDeviceVolume$54(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "volume"    # I
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1545
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(I)V

    return-void
.end method

.method static synthetic lambda$setDeviceVolumeWithFlags$55(IILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "volume"    # I
    .param p1, "flags"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1558
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(II)V

    return-void
.end method

.method static synthetic lambda$setMediaItemWithResetPosition$30(Landroidx/media3/common/MediaItem;ZLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "resetPosition"    # Z
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 1038
    nop

    .line 1040
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1041
    if-eqz p1, :cond_0

    .line 1042
    const/4 v0, -0x1

    move v3, v0

    goto :goto_0

    .line 1043
    :cond_0
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v0

    move v3, v0

    .line 1044
    :goto_0
    if-eqz p1, :cond_1

    .line 1045
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v0

    goto :goto_1

    .line 1046
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    move-wide v4, v0

    .line 1038
    :goto_1
    move-object v0, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setMediaItemWithStartPosition$29(Landroidx/media3/common/MediaItem;JLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "startPositionMs"    # J
    .param p3, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p4, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p5, "sequenceNum"    # I

    .line 1007
    nop

    .line 1009
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1007
    const/4 v3, 0x0

    move-object v0, p3

    move-object v1, p4

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setMediaItemsWithResetPosition$31(Ljava/util/List;ZLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p0, "mediaItemList"    # Ljava/util/List;
    .param p1, "resetPosition"    # Z
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 1084
    nop

    .line 1087
    if-eqz p1, :cond_0

    .line 1088
    const/4 v0, -0x1

    move v4, v0

    goto :goto_0

    .line 1089
    :cond_0
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v0

    move v4, v0

    .line 1090
    :goto_0
    if-eqz p1, :cond_1

    .line 1091
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v0

    goto :goto_1

    .line 1092
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    move-wide v5, v0

    .line 1084
    :goto_1
    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setMediaItemsWithStartIndex$32(Ljava/util/List;IJLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p0, "mediaItemList"    # Ljava/util/List;
    .param p1, "startIndex"    # I
    .param p2, "startPositionMs"    # J
    .param p4, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p5, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p6, "sequenceNum"    # I

    .line 1124
    nop

    .line 1127
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1128
    invoke-virtual {p4}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v1

    move v5, v1

    goto :goto_0

    .line 1129
    :cond_0
    move v5, p1

    .line 1130
    :goto_0
    if-ne p1, v0, :cond_1

    .line 1131
    invoke-virtual {p4}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_1

    .line 1132
    :cond_1
    move-wide v6, p2

    .line 1124
    :goto_1
    move-object v2, p4

    move-object v3, p5

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setPlayWhenReady$63(ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "playWhenReady"    # Z
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1673
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlayWhenReady(Z)V

    return-void
.end method

.method static synthetic lambda$setPlaybackParameters$28(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 974
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$setPlaybackSpeed$27(FLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "speed"    # F
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 952
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlaybackSpeed(F)V

    return-void
.end method

.method static synthetic lambda$setPlaylistMetadata$33(Landroidx/media3/common/MediaMetadata;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1155
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$setRating$26(Landroidx/media3/common/Rating;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "rating"    # Landroidx/media3/common/Rating;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 940
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onSetRatingOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setRatingWithMediaId$25(Ljava/lang/String;Landroidx/media3/common/Rating;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "rating"    # Landroidx/media3/common/Rating;
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 918
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onSetRatingOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setRepeatMode$50(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "repeatMode"    # I
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1494
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic lambda$setShuffleModeEnabled$51(ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "shuffleModeEnabled"    # Z
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1507
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$setVideoSurface$52(Landroid/view/Surface;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1520
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic lambda$setVolume$53(FLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "volume"    # F
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1532
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setVolume(F)V

    return-void
.end method

.method static synthetic lambda$subscribe$71(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p2, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 1911
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->onSubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$unsubscribe$72(Ljava/lang/String;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1930
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->onUnsubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "mediaItemIndex"    # I

    .line 445
    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 446
    invoke-virtual {v1, p1, v0}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 448
    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v0

    add-int/2addr v0, p3

    return v0

    .line 454
    :cond_0
    return p3
.end method

.method private queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "II",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 296
    .local p4, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 297
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0, v0, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 301
    :cond_0
    return-void
.end method

.method private queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 13
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I
    .param p3, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "II",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 308
    .local p4, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 312
    .local v1, "token":J
    move-object v10, p0

    :try_start_0
    iget-object v0, v10, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 313
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    nop

    .line 317
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda51;

    move-object v3, v12

    move-object v4, p0

    move-object v5, p1

    move/from16 v6, p3

    move v7, p2

    move-object v8, v0

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda51;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 316
    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    nop

    .end local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    nop

    .line 349
    return-void

    .line 347
    .restart local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    return-void

    .line 347
    .end local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    throw v0
.end method

.method private static sendLibraryResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/LibraryResult;)V
    .locals 3
    .param p0, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "I",
            "Landroidx/media3/session/LibraryResult<",
            "*>;)V"
        }
    .end annotation

    .line 261
    .local p2, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->onLibraryResult(ILandroidx/media3/session/LibraryResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send result to browser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionStub"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "K:",
            "Landroidx/media3/session/MediaLibrarySessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;>;TK;>;)",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 270
    .local p0, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<TV;>;>;TK;>;"
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda69;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda69;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-object v0
.end method

.method private static sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V
    .locals 3
    .param p0, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p1, "sequenceNumber"    # I
    .param p2, "result"    # Landroidx/media3/session/SessionResult;

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->onSessionResult(ILandroidx/media3/session/SessionResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send result to controller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionStub"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/session/PlayerWrapper;",
            ">;)",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 164
    .local p0, "task":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/session/PlayerWrapper;>;"
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda68;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda68;-><init>(Landroidx/media3/common/util/Consumer;)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    return-object v0
.end method

.method private static sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;",
            ")",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda84;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda84;-><init>(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)V

    return-object v0
.end method

.method private static sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;TK;>;)",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 183
    .local p0, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;TK;>;"
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda70;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-object v0
.end method

.method private updateOverridesUsingUniqueTrackGroupIds(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 7
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 1969
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    return-object p1

    .line 1972
    :cond_0
    nop

    .line 1973
    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverrides()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    .line 1974
    .local v0, "updateTrackSelectionParameters":Landroidx/media3/common/TrackSelectionParameters$Builder;
    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/TrackSelectionOverride;

    .line 1975
    .local v2, "override":Landroidx/media3/common/TrackSelectionOverride;
    iget-object v3, v2, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 1976
    .local v3, "trackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v4, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v4

    iget-object v5, v3, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/TrackGroup;

    .line 1977
    .local v4, "originalTrackGroup":Landroidx/media3/common/TrackGroup;
    if-eqz v4, :cond_1

    iget-object v5, v2, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v5, v5, Landroidx/media3/common/TrackGroup;->length:I

    iget v6, v4, Landroidx/media3/common/TrackGroup;->length:I

    if-ne v5, v6, :cond_1

    .line 1979
    new-instance v5, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v6, v2, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v5, v4, v6}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_1

    .line 1982
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 1984
    .end local v2    # "override":Landroidx/media3/common/TrackSelectionOverride;
    .end local v3    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v4    # "originalTrackGroup":Landroidx/media3/common/TrackGroup;
    :goto_1
    goto :goto_0

    .line 1985
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;

    .line 1161
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1166
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 1171
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda57;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda57;-><init>(Landroidx/media3/common/MediaItem;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda58;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda58;-><init>()V

    .line 1176
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1175
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1171
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1181
    return-void

    .line 1167
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1169
    return-void

    .line 1162
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "index"    # I
    .param p4, "mediaItemBundle"    # Landroid/os/Bundle;

    .line 1189
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    :try_start_0
    invoke-static {p4}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 1199
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/common/MediaItem;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1204
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1203
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1199
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1210
    return-void

    .line 1195
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1197
    return-void

    .line 1190
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemsRetriever"    # Landroid/os/IBinder;

    .line 1217
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1222
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda85;-><init>()V

    .line 1224
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1223
    invoke-static {v0, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    .local v0, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1229
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda54;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda54;-><init>(Ljava/util/List;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda56;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda56;-><init>()V

    .line 1234
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1233
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1229
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1238
    return-void

    .line 1225
    .end local v0    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1227
    return-void

    .line 1218
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "index"    # I
    .param p4, "mediaItemsRetriever"    # Landroid/os/IBinder;

    .line 1246
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1251
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda85;-><init>()V

    .line 1253
    invoke-static {p4}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1252
    invoke-static {v0, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    .local v0, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1258
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda31;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda31;-><init>(Ljava/util/List;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda32;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1263
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1262
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1258
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1269
    return-void

    .line 1254
    .end local v0    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1256
    return-void

    .line 1247
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public clearMediaItems(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1304
    if-nez p1, :cond_0

    .line 1305
    return-void

    .line 1307
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda82;-><init>()V

    .line 1311
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1307
    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1312
    return-void
.end method

.method public connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 18
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "connectionRequestBundle"    # Landroid/os/Bundle;

    .line 616
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 621
    :cond_0
    :try_start_0
    invoke-static/range {p3 .. p3}, Landroidx/media3/session/ConnectionRequest;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 625
    .local v3, "request":Landroidx/media3/session/ConnectionRequest;
    nop

    .line 626
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 627
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 628
    .local v5, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 631
    .local v6, "token":J
    if-eqz v5, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    iget v0, v3, Landroidx/media3/session/ConnectionRequest;->pid:I

    :goto_0
    move v8, v0

    .line 634
    .local v8, "pid":I
    :try_start_1
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    iget-object v9, v3, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    invoke-direct {v0, v9, v8, v4}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 636
    .local v0, "remoteUserInfo":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    new-instance v9, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v12, v3, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    iget v13, v3, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    iget-object v10, v1, Landroidx/media3/session/MediaSessionStub;->sessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

    .line 641
    invoke-virtual {v10, v0}, Landroidx/media3/session/legacy/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v14

    new-instance v15, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    iget v10, v3, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    invoke-direct {v15, v2, v10}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;-><init>(Landroidx/media3/session/IMediaController;I)V

    iget-object v11, v3, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;

    iget v10, v3, Landroidx/media3/session/ConnectionRequest;->maxCommandsForMediaItems:I

    move/from16 v17, v10

    move-object v10, v9

    move-object/from16 v16, v11

    move-object v11, v0

    invoke-direct/range {v10 .. v17}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;I)V

    .line 645
    .local v9, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {v1, v2, v9}, Landroidx/media3/session/MediaSessionStub;->connect(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    .end local v0    # "remoteUserInfo":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .end local v9    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    nop

    .line 649
    return-void

    .line 647
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    throw v0

    .line 622
    .end local v3    # "request":Landroidx/media3/session/ConnectionRequest;
    .end local v4    # "uid":I
    .end local v5    # "callingPid":I
    .end local v6    # "token":J
    .end local v8    # "pid":I
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 623
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "MediaSessionStub"

    const-string v4, "Ignoring malformed Bundle for ConnectionRequest"

    invoke-static {v3, v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    return-void

    .line 617
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_1
    return-void
.end method

.method public connect(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 459
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 462
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 463
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 472
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    nop

    .line 474
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0, p2, v0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda44;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/IMediaController;)V

    .line 473
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 581
    return-void

    .line 465
    :cond_2
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    goto :goto_1

    .line 466
    :catch_0
    move-exception v1

    .line 470
    :goto_1
    return-void

    .line 460
    .end local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :cond_3
    :goto_2
    return-void
.end method

.method public decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1590
    if-nez p1, :cond_0

    .line 1591
    return-void

    .line 1593
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda55;-><init>()V

    .line 1597
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1593
    const/16 v1, 0x1a

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1598
    return-void
.end method

.method public decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "flags"    # I

    .line 1603
    if-nez p1, :cond_0

    .line 1604
    return-void

    .line 1606
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda33;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda33;-><init>(I)V

    .line 1610
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1606
    const/16 v1, 0x22

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1611
    return-void
.end method

.method public flushCommandQueue(Landroidx/media3/session/IMediaController;)V
    .locals 6
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;

    .line 1678
    if-nez p1, :cond_0

    .line 1679
    return-void

    .line 1681
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1683
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSessionImpl;

    .line 1684
    .local v2, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1687
    :cond_1
    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v3

    .line 1688
    .local v3, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v3, :cond_2

    .line 1689
    nop

    .line 1690
    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda37;

    invoke-direct {v5, p0, v3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda37;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1689
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    .end local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .end local v3    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1695
    nop

    .line 1696
    return-void

    .line 1694
    .restart local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1685
    return-void

    .line 1694
    .end local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1695
    throw v2
.end method

.method generateAndCacheUniqueTrackGroupIds(Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;
    .locals 11
    .param p1, "playerInfo"    # Landroidx/media3/session/PlayerInfo;

    .line 1934
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v0}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1935
    .local v0, "trackGroups":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/Tracks$Group;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 1936
    .local v1, "updatedTrackGroups":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Tracks$Group;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->builder()Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v2

    .line 1937
    .local v2, "updatedTrackGroupIdMap":Lcom/google/common/collect/ImmutableBiMap$Builder;, "Lcom/google/common/collect/ImmutableBiMap$Builder<Landroidx/media3/common/TrackGroup;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1938
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Tracks$Group;

    .line 1939
    .local v4, "trackGroup":Landroidx/media3/common/Tracks$Group;
    invoke-virtual {v4}, Landroidx/media3/common/Tracks$Group;->getMediaTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v5

    .line 1940
    .local v5, "mediaTrackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v6, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1941
    .local v6, "uniqueId":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1942
    invoke-direct {p0, v5}, Landroidx/media3/session/MediaSessionStub;->generateUniqueTrackGroupId(Landroidx/media3/common/TrackGroup;)Ljava/lang/String;

    move-result-object v6

    .line 1944
    :cond_0
    invoke-virtual {v2, v5, v6}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 1945
    invoke-virtual {v4, v6}, Landroidx/media3/common/Tracks$Group;->copyWithId(Ljava/lang/String;)Landroidx/media3/common/Tracks$Group;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1937
    .end local v4    # "trackGroup":Landroidx/media3/common/Tracks$Group;
    .end local v5    # "mediaTrackGroup":Landroidx/media3/common/TrackGroup;
    .end local v6    # "uniqueId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1947
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    .line 1948
    new-instance v3, Landroidx/media3/common/Tracks;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v3}, Landroidx/media3/session/PlayerInfo;->copyWithCurrentTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    .line 1949
    iget-object v3, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v3, v3, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1950
    return-object p1

    .line 1952
    :cond_2
    iget-object v3, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 1953
    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverrides()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v3

    .line 1954
    .local v3, "updatedTrackSelectionParameters":Landroidx/media3/common/TrackSelectionParameters$Builder;
    iget-object v4, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v4, v4, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/TrackSelectionOverride;

    .line 1955
    .local v5, "override":Landroidx/media3/common/TrackSelectionOverride;
    iget-object v6, v5, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 1956
    .local v6, "trackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v7, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v7, v6}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1957
    .local v7, "uniqueId":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1958
    new-instance v8, Landroidx/media3/common/TrackSelectionOverride;

    .line 1959
    invoke-virtual {v6, v7}, Landroidx/media3/common/TrackGroup;->copyWithId(Ljava/lang/String;)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    iget-object v10, v5, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v8, v9, v10}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    .line 1958
    invoke-virtual {v3, v8}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_2

    .line 1961
    :cond_3
    invoke-virtual {v3, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 1963
    .end local v5    # "override":Landroidx/media3/common/TrackSelectionOverride;
    .end local v6    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v7    # "uniqueId":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 1964
    :cond_4
    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/session/PlayerInfo;->copyWithTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    return-object v4
.end method

.method public getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 1780
    if-nez p1, :cond_0

    .line 1781
    return-void

    .line 1783
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    .line 1784
    const-string v0, "getChildren(): Ignoring empty parentId"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    return-void

    .line 1787
    :cond_1
    if-gez p4, :cond_2

    .line 1788
    const-string v0, "getChildren(): Ignoring negative page"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    return-void

    .line 1791
    :cond_2
    const/4 v0, 0x1

    if-ge p5, v0, :cond_3

    .line 1792
    const-string v0, "getChildren(): Ignoring pageSize less than 1"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    return-void

    .line 1798
    :cond_3
    if-nez p6, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {p6}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 1803
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p3, p4, p5, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1807
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1803
    const v2, 0xc353

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1811
    return-void

    .line 1799
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 1800
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1801
    return-void
.end method

.method public getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    return-object v0
.end method

.method public getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaId"    # Ljava/lang/String;

    .line 1756
    if-nez p1, :cond_0

    .line 1757
    return-void

    .line 1759
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1760
    const-string v0, "MediaSessionStub"

    const-string v1, "getItem(): Ignoring empty mediaId"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    return-void

    .line 1763
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda45;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda45;-><init>(Ljava/lang/String;)V

    .line 1767
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1763
    const v1, 0xc354

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1770
    return-void
.end method

.method public getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 1733
    if-nez p1, :cond_0

    .line 1734
    return-void

    .line 1739
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p3}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 1744
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda65;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda65;-><init>(Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1748
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1744
    const v2, 0xc350

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1751
    return-void

    .line 1740
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 1741
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1742
    return-void
.end method

.method public getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 1851
    if-nez p1, :cond_0

    .line 1852
    return-void

    .line 1854
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    .line 1855
    const-string v0, "getSearchResult(): Ignoring empty query"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    return-void

    .line 1858
    :cond_1
    if-gez p4, :cond_2

    .line 1859
    const-string v0, "getSearchResult(): Ignoring negative page"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    return-void

    .line 1862
    :cond_2
    const/4 v0, 0x1

    if-ge p5, v0, :cond_3

    .line 1863
    const-string v0, "getSearchResult(): Ignoring pageSize less than 1"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    return-void

    .line 1869
    :cond_3
    if-nez p6, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {p6}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1873
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 1874
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda59;

    invoke-direct {v1, p3, p4, p5, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda59;-><init>(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1878
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1874
    const v2, 0xc356

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1882
    return-void

    .line 1870
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 1871
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1872
    return-void
.end method

.method public increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1564
    if-nez p1, :cond_0

    .line 1565
    return-void

    .line 1567
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda21;-><init>()V

    .line 1571
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1567
    const/16 v1, 0x1a

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1572
    return-void
.end method

.method public increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "flags"    # I

    .line 1577
    if-nez p1, :cond_0

    .line 1578
    return-void

    .line 1580
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda35;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda35;-><init>(I)V

    .line 1584
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1580
    const/16 v1, 0x22

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1585
    return-void
.end method

.method synthetic lambda$addMediaItemWithIndex$37$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "mediaItems"    # Ljava/util/List;

    .line 1208
    nop

    .line 1209
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 1208
    invoke-virtual {p2, v0, p4}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method synthetic lambda$addMediaItemsWithIndex$41$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "items"    # Ljava/util/List;

    .line 1267
    nop

    .line 1268
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 1267
    invoke-virtual {p2, v0, p4}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method synthetic lambda$connect$17$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/IMediaController;)V
    .locals 27
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "caller"    # Landroidx/media3/session/IMediaController;

    .line 476
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    const/16 v16, 0x0

    .line 478
    .local v16, "connected":Z
    const/4 v9, 0x0

    :try_start_0
    iget-object v0, v13, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_1

    .line 571
    if-nez v16, :cond_0

    .line 573
    :try_start_1
    invoke-interface {v10, v9}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 577
    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    nop

    .line 483
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    .line 484
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v8, v0

    .line 485
    .local v8, "callbackBinder":Landroid/os/IBinder;
    nop

    .line 486
    invoke-virtual {v11, v12}, Landroidx/media3/session/MediaSessionImpl;->onConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v0

    move-object v1, v0

    .line 490
    .local v1, "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    iget-boolean v0, v1, Landroidx/media3/session/MediaSession$ConnectionResult;->isAccepted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v0, :cond_3

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->isTrusted()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 571
    if-nez v16, :cond_2

    .line 573
    :try_start_4
    invoke-interface {v10, v9}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 577
    goto :goto_1

    .line 574
    :catch_1
    move-exception v0

    .line 491
    :cond_2
    :goto_1
    return-void

    .line 571
    .end local v1    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    .end local v8    # "callbackBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move v3, v9

    move-object v2, v10

    move-object v5, v11

    move-object v4, v12

    goto/16 :goto_f

    .line 493
    .restart local v1    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    .restart local v8    # "callbackBinder":Landroid/os/IBinder;
    :cond_3
    :try_start_5
    iget-boolean v0, v1, Landroidx/media3/session/MediaSession$ConnectionResult;->isAccepted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v0, :cond_4

    .line 495
    :try_start_6
    sget-object v0, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    sget-object v2, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    .line 496
    invoke-static {v0, v2}, Landroidx/media3/session/MediaSession$ConnectionResult;->accept(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v0

    move-object v7, v1

    goto :goto_2

    .line 493
    :cond_4
    move-object v7, v1

    .line 500
    .end local v1    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    .local v7, "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    :goto_2
    :try_start_7
    iget-object v0, v13, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, v12}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_5

    .line 501
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has sent connection request multiple times"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 508
    :cond_5
    :try_start_9
    iget-object v0, v13, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    iget-object v2, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0, v8, v12, v2, v3}, Landroidx/media3/session/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 513
    iget-object v0, v13, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 514
    invoke-virtual {v0, v12}, Landroidx/media3/session/ConnectedControllersManager;->getSequencedFutureManager(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v17, v0

    .line 515
    .local v17, "sequencedFutureManager":Landroidx/media3/session/SequencedFutureManager;
    if-nez v17, :cond_7

    .line 516
    :try_start_a
    const-string v0, "Ignoring connection request from unknown controller info"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 571
    if-nez v16, :cond_6

    .line 573
    :try_start_b
    invoke-interface {v10, v9}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    .line 577
    goto :goto_3

    .line 574
    :catch_2
    move-exception v0

    .line 517
    :cond_6
    :goto_3
    return-void

    .line 522
    :cond_7
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    move-object/from16 v18, v0

    .line 523
    .local v18, "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    invoke-virtual/range {v18 .. v18}, Landroidx/media3/session/PlayerWrapper;->createPlayerInfoForBundling()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 524
    .local v0, "playerInfo":Landroidx/media3/session/PlayerInfo;
    invoke-virtual {v13, v0}, Landroidx/media3/session/MediaSessionStub;->generateAndCacheUniqueTrackGroupIds(Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v14

    .line 525
    .end local v0    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .local v14, "playerInfo":Landroidx/media3/session/PlayerInfo;
    nop

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/media/session/MediaSession$Token;

    .line 527
    .local v15, "platformToken":Landroid/media/session/MediaSession$Token;
    new-instance v0, Landroidx/media3/session/ConnectionState;

    .line 532
    iget-object v1, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->sessionActivity:Landroid/app/PendingIntent;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v1, :cond_8

    .line 533
    :try_start_d
    iget-object v1, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->sessionActivity:Landroid/app/PendingIntent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v5, v1

    goto :goto_4

    .line 534
    :cond_8
    :try_start_e
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v1

    move-object v5, v1

    .line 535
    :goto_4
    iget-object v1, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->customLayout:Lcom/google/common/collect/ImmutableList;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v1, :cond_9

    .line 536
    :try_start_f
    iget-object v1, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->customLayout:Lcom/google/common/collect/ImmutableList;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object v6, v1

    goto :goto_5

    .line 537
    :cond_9
    :try_start_10
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getCustomLayout()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object v6, v1

    .line 538
    :goto_5
    iget-object v1, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v1, :cond_a

    .line 539
    :try_start_11
    iget-object v1, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object/from16 v19, v1

    goto :goto_6

    .line 540
    :cond_a
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v19, v1

    .line 541
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getCommandButtonsForMediaItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v20

    iget-object v4, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 544
    invoke-virtual/range {v18 .. v18}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v21

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/SessionToken;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    .line 546
    iget-object v1, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->sessionExtras:Landroid/os/Bundle;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v1, :cond_b

    .line 547
    :try_start_13
    iget-object v1, v7, Landroidx/media3/session/MediaSession$ConnectionResult;->sessionExtras:Landroid/os/Bundle;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-object/from16 v23, v1

    goto :goto_7

    .line 548
    :cond_b
    :try_start_14
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getSessionExtras()Landroid/os/Bundle;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-object/from16 v23, v1

    :goto_7
    const v2, 0x3be71a54

    const/16 v24, 0x4

    move-object v1, v0

    move-object/from16 v25, v3

    move/from16 v3, v24

    move-object/from16 v24, v4

    move-object/from16 v4, p0

    move-object/from16 v26, v7

    .end local v7    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    .local v26, "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    move-object/from16 v7, v19

    move-object/from16 v19, v8

    .end local v8    # "callbackBinder":Landroid/os/IBinder;
    .local v19, "callbackBinder":Landroid/os/IBinder;
    move-object/from16 v8, v20

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    :try_start_15
    invoke-direct/range {v1 .. v15}, Landroidx/media3/session/ConnectionState;-><init>(IILandroidx/media3/session/IMediaSession;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/session/PlayerInfo;Landroid/media/session/MediaSession$Token;)V

    move-object v1, v0

    .line 554
    .local v1, "state":Landroidx/media3/session/ConnectionState;
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    if-eqz v0, :cond_d

    .line 571
    if-nez v16, :cond_c

    .line 573
    move-object/from16 v2, p3

    const/4 v3, 0x0

    :try_start_16
    invoke-interface {v2, v3}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_3

    .line 577
    goto :goto_8

    .line 574
    :catch_3
    move-exception v0

    goto :goto_8

    .line 571
    :cond_c
    move-object/from16 v2, p3

    .line 555
    :goto_8
    return-void

    .line 558
    :cond_d
    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 559
    :try_start_17
    invoke-virtual/range {v17 .. v17}, Landroidx/media3/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v0

    .line 560
    instance-of v4, v2, Landroidx/media3/session/MediaControllerStub;

    if-eqz v4, :cond_e

    .line 561
    invoke-virtual {v1}, Landroidx/media3/session/ConnectionState;->toBundleInProcess()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_9

    .line 562
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getInterfaceVersion()I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/media3/session/ConnectionState;->toBundleForRemoteProcess(I)Landroid/os/Bundle;

    move-result-object v4

    .line 558
    :goto_9
    invoke-interface {v2, v0, v4}, Landroidx/media3/session/IMediaController;->onConnected(ILandroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 563
    const/4 v0, 0x1

    .line 566
    .end local v16    # "connected":Z
    .local v0, "connected":Z
    move/from16 v16, v0

    goto :goto_a

    .line 571
    .end local v0    # "connected":Z
    .end local v1    # "state":Landroidx/media3/session/ConnectionState;
    .end local v14    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v15    # "platformToken":Landroid/media/session/MediaSession$Token;
    .end local v17    # "sequencedFutureManager":Landroidx/media3/session/SequencedFutureManager;
    .end local v18    # "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    .end local v19    # "callbackBinder":Landroid/os/IBinder;
    .end local v26    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    .restart local v16    # "connected":Z
    :catchall_1
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    goto :goto_e

    .line 564
    .restart local v1    # "state":Landroidx/media3/session/ConnectionState;
    .restart local v14    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .restart local v15    # "platformToken":Landroid/media/session/MediaSession$Token;
    .restart local v17    # "sequencedFutureManager":Landroidx/media3/session/SequencedFutureManager;
    .restart local v18    # "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    .restart local v19    # "callbackBinder":Landroid/os/IBinder;
    .restart local v26    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    :catch_4
    move-exception v0

    .line 567
    :goto_a
    if-eqz v16, :cond_f

    .line 568
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    :try_start_18
    invoke-virtual {v5, v4}, Landroidx/media3/session/MediaSessionImpl;->onPostConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_b

    .line 571
    .end local v1    # "state":Landroidx/media3/session/ConnectionState;
    .end local v14    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v15    # "platformToken":Landroid/media/session/MediaSession$Token;
    .end local v17    # "sequencedFutureManager":Landroidx/media3/session/SequencedFutureManager;
    .end local v18    # "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    .end local v19    # "callbackBinder":Landroid/os/IBinder;
    .end local v26    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    :catchall_2
    move-exception v0

    goto :goto_e

    .line 567
    .restart local v1    # "state":Landroidx/media3/session/ConnectionState;
    .restart local v14    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .restart local v15    # "platformToken":Landroid/media/session/MediaSession$Token;
    .restart local v17    # "sequencedFutureManager":Landroidx/media3/session/SequencedFutureManager;
    .restart local v18    # "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    .restart local v19    # "callbackBinder":Landroid/os/IBinder;
    .restart local v26    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    :cond_f
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 571
    .end local v1    # "state":Landroidx/media3/session/ConnectionState;
    .end local v14    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v15    # "platformToken":Landroid/media/session/MediaSession$Token;
    .end local v17    # "sequencedFutureManager":Landroidx/media3/session/SequencedFutureManager;
    .end local v18    # "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    .end local v19    # "callbackBinder":Landroid/os/IBinder;
    .end local v26    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    :goto_b
    if-nez v16, :cond_10

    .line 573
    :try_start_19
    invoke-interface {v2, v3}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_5

    .line 577
    :goto_c
    goto :goto_d

    .line 574
    :catch_5
    move-exception v0

    goto :goto_c

    .line 580
    :cond_10
    :goto_d
    return-void

    .line 571
    :catchall_3
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    goto :goto_e

    :catchall_4
    move-exception v0

    move v3, v9

    move-object v2, v10

    move-object v5, v11

    move-object v4, v12

    :goto_e
    move-object v1, v0

    :goto_f
    if-nez v16, :cond_11

    .line 573
    :try_start_1a
    invoke-interface {v2, v3}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_6

    .line 577
    goto :goto_10

    .line 574
    :catch_6
    move-exception v0

    .line 579
    :cond_11
    :goto_10
    throw v1
.end method

.method synthetic lambda$dispatchSessionTaskWithSessionCommand$15$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;IILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionCommand"    # Landroidx/media3/session/SessionCommand;
    .param p3, "sequenceNumber"    # I
    .param p4, "commandCode"    # I
    .param p5, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p6, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;

    .line 391
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    const/4 v0, -0x4

    if-eqz p2, :cond_1

    .line 395
    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 397
    new-instance v1, Landroidx/media3/session/SessionResult;

    invoke-direct {v1, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 399
    return-void

    .line 402
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v1, p1, p4}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 403
    new-instance v1, Landroidx/media3/session/SessionResult;

    invoke-direct {v1, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 405
    return-void

    .line 408
    :cond_2
    invoke-interface {p5, p6, p1, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    .line 409
    return-void
.end method

.method synthetic lambda$flushCommandQueue$64$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1691
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->flushCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void
.end method

.method synthetic lambda$playForControllerInfo$19$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 736
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 737
    .local v0, "impl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->handleMediaControllerPlayRequest(Landroidx/media3/session/MediaSession$ControllerInfo;Z)V

    .line 742
    return-void

    .line 738
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$queueSessionTaskWithPlayerCommandForControllerInfo$14$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "command"    # I
    .param p3, "sequenceNumber"    # I
    .param p4, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p5, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;

    .line 319
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x4

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 322
    return-void

    .line 325
    :cond_0
    invoke-virtual {p4, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->onPlayerCommandRequestOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;I)I

    move-result v0

    .line 326
    .local v0, "resultCode":I
    if-eqz v0, :cond_1

    .line 328
    new-instance v1, Landroidx/media3/session/SessionResult;

    invoke-direct {v1, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 329
    return-void

    .line 331
    :cond_1
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_2

    .line 335
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda38;

    invoke-direct {v1, p5, p4, p1, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda38;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 336
    invoke-virtual {p4, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 338
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 339
    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda39;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda39;-><init>()V

    invoke-virtual {v1, p1, p2, v2}, Landroidx/media3/session/ConnectedControllersManager;->addToCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/ConnectedControllersManager$AsyncCommand;)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda40;

    invoke-direct {v2, p5, p4, p1, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda40;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-virtual {v1, p1, p2, v2}, Landroidx/media3/session/ConnectedControllersManager;->addToCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/ConnectedControllersManager$AsyncCommand;)V

    .line 345
    :goto_0
    return-void
.end method

.method synthetic lambda$release$18$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/IMediaController;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;

    .line 684
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->removeController(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$removeMediaItem$42$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1282
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->removeMediaItem(I)V

    return-void
.end method

.method synthetic lambda$removeMediaItems$43$androidx-media3-session-MediaSessionStub(IILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p4, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1297
    nop

    .line 1298
    invoke-direct {p0, p4, p3, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 1299
    invoke-direct {p0, p4, p3, p2}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v1

    .line 1297
    invoke-virtual {p3, v0, v1}, Landroidx/media3/session/PlayerWrapper;->removeMediaItems(II)V

    return-void
.end method

.method synthetic lambda$replaceMediaItem$47$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "mediaItems"    # Ljava/util/List;

    .line 1369
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1370
    nop

    .line 1371
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    .line 1370
    invoke-virtual {p2, v0, v1}, Landroidx/media3/session/PlayerWrapper;->replaceMediaItem(ILandroidx/media3/common/MediaItem;)V

    goto :goto_0

    .line 1373
    :cond_0
    nop

    .line 1374
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 1375
    invoke-direct {p0, p3, p2, v1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v1

    .line 1373
    invoke-virtual {p2, v0, v1, p4}, Landroidx/media3/session/PlayerWrapper;->replaceMediaItems(IILjava/util/List;)V

    .line 1378
    :goto_0
    return-void
.end method

.method synthetic lambda$replaceMediaItems$49$androidx-media3-session-MediaSessionStub(IILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p4, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p5, "items"    # Ljava/util/List;

    .line 1409
    nop

    .line 1410
    invoke-direct {p0, p4, p3, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 1411
    invoke-direct {p0, p4, p3, p2}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v1

    .line 1409
    invoke-virtual {p3, v0, v1, p5}, Landroidx/media3/session/PlayerWrapper;->replaceMediaItems(IILjava/util/List;)V

    return-void
.end method

.method synthetic lambda$seekToDefaultPositionWithMediaItemIndex$21$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "mediaItemIndex"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 795
    nop

    .line 796
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 795
    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition(I)V

    return-void
.end method

.method synthetic lambda$seekToWithMediaItemIndex$23$androidx-media3-session-MediaSessionStub(IJLandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J
    .param p4, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p5, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 823
    nop

    .line 824
    invoke-direct {p0, p5, p4, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 823
    invoke-virtual {p4, v0, p2, p3}, Landroidx/media3/session/PlayerWrapper;->seekTo(IJ)V

    return-void
.end method

.method synthetic lambda$setTrackSelectionParameters$65$androidx-media3-session-MediaSessionStub(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/session/PlayerWrapper;)V
    .locals 1
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1720
    nop

    .line 1721
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionStub;->updateOverridesUsingUniqueTrackGroupIds(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    .line 1722
    .local v0, "updatedParameters":Landroidx/media3/common/TrackSelectionParameters;
    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 1723
    return-void
.end method

.method public moveMediaItem(Landroidx/media3/session/IMediaController;III)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "currentIndex"    # I
    .param p4, "newIndex"    # I

    .line 1317
    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-gez p4, :cond_0

    goto :goto_0

    .line 1320
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda75;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda75;-><init>(II)V

    .line 1324
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1320
    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1325
    return-void

    .line 1318
    :cond_1
    :goto_0
    return-void
.end method

.method public moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .param p5, "newIndex"    # I

    .line 1334
    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-lt p4, p3, :cond_1

    if-gez p5, :cond_0

    goto :goto_0

    .line 1337
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda42;

    invoke-direct {v0, p3, p4, p5}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda42;-><init>(III)V

    .line 1341
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1337
    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1342
    return-void

    .line 1335
    :cond_1
    :goto_0
    return-void
.end method

.method public onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "sessionResultBundle"    # Landroid/os/Bundle;

    .line 693
    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/session/SessionResult;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .local v0, "result":Landroidx/media3/session/SessionResult;
    nop

    .line 703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 706
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 707
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/session/ConnectedControllersManager;->getSequencedFutureManager(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    .local v3, "manager":Landroidx/media3/session/SequencedFutureManager;
    if-nez v3, :cond_1

    .line 713
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    return-void

    .line 711
    :cond_1
    :try_start_2
    invoke-virtual {v3, p2, v0}, Landroidx/media3/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 713
    .end local v3    # "manager":Landroidx/media3/session/SequencedFutureManager;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    nop

    .line 715
    return-void

    .line 713
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    throw v3

    .line 699
    .end local v0    # "result":Landroidx/media3/session/SessionResult;
    .end local v1    # "token":J
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for SessionResult"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 701
    return-void

    .line 694
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-void
.end method

.method public onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "commandBundle"    # Landroid/os/Bundle;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 873
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 878
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/session/SessionCommand;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .local v0, "command":Landroidx/media3/session/SessionCommand;
    nop

    .line 883
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda27;

    invoke-direct {v1, v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    .line 887
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 883
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 890
    return-void

    .line 879
    .end local v0    # "command":Landroidx/media3/session/SessionCommand;
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for SessionCommand"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 881
    return-void

    .line 874
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public pause(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 747
    if-nez p1, :cond_0

    .line 748
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 752
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->pauseForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 755
    :cond_1
    return-void
.end method

.method public pauseForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 758
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda15;-><init>()V

    .line 759
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 758
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 760
    return-void
.end method

.method public play(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 719
    if-nez p1, :cond_0

    .line 720
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 724
    .local v0, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->playForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 727
    :cond_1
    return-void
.end method

.method public playForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 730
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda34;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 734
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 730
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 743
    return-void
.end method

.method public prepare(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 764
    if-nez p1, :cond_0

    .line 765
    return-void

    .line 767
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda67;-><init>()V

    .line 768
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 767
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 769
    return-void
.end method

.method public release()V
    .locals 6

    .line 584
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 585
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 586
    .local v2, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v4

    .line 587
    .local v4, "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    if-eqz v4, :cond_0

    .line 589
    :try_start_0
    invoke-interface {v4, v3}, Landroidx/media3/session/MediaSession$ControllerCb;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    goto :goto_1

    .line 590
    :catch_0
    move-exception v3

    .line 594
    .end local v2    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v4    # "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    :cond_0
    :goto_1
    goto :goto_0

    .line 595
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 596
    .restart local v2    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v4

    .line 597
    .restart local v4    # "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    if-eqz v4, :cond_2

    .line 599
    :try_start_1
    invoke-interface {v4, v3}, Landroidx/media3/session/MediaSession$ControllerCb;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 602
    goto :goto_3

    .line 600
    :catch_1
    move-exception v5

    .line 604
    .end local v2    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v4    # "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    :cond_2
    :goto_3
    goto :goto_2

    .line 605
    :cond_3
    return-void
.end method

.method public release(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 673
    if-nez p1, :cond_0

    .line 674
    return-void

    .line 676
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 678
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSessionImpl;

    .line 679
    .local v2, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 682
    :cond_1
    nop

    .line 683
    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/IMediaController;)V

    .line 682
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    nop

    .end local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 687
    nop

    .line 688
    return-void

    .line 686
    .restart local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 680
    return-void

    .line 686
    .end local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 687
    throw v2
.end method

.method public removeMediaItem(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "index"    # I

    .line 1273
    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda77;

    invoke-direct {v0, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda77;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1280
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1276
    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1283
    return-void

    .line 1274
    :cond_1
    :goto_0
    return-void
.end method

.method public removeMediaItems(Landroidx/media3/session/IMediaController;III)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I

    .line 1288
    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-ge p4, p3, :cond_0

    goto :goto_0

    .line 1291
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    .line 1295
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1291
    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1300
    return-void

    .line 1289
    :cond_1
    :goto_0
    return-void
.end method

.method public replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "index"    # I
    .param p4, "mediaItemBundle"    # Landroid/os/Bundle;

    .line 1350
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1355
    :cond_0
    :try_start_0
    invoke-static {p4}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 1360
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/common/MediaItem;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1365
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1364
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1360
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1379
    return-void

    .line 1356
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1358
    return-void

    .line 1351
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .param p5, "mediaItemsRetriever"    # Landroid/os/IBinder;

    .line 1388
    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    if-ltz p3, :cond_1

    if-ge p4, p3, :cond_0

    goto :goto_0

    .line 1393
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda85;-><init>()V

    .line 1395
    invoke-static {p5}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1394
    invoke-static {v0, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    .local v0, "mediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1400
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda7;-><init>(Lcom/google/common/collect/ImmutableList;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    .line 1405
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1404
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1400
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1413
    return-void

    .line 1396
    .end local v0    # "mediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;"
    :catch_0
    move-exception v0

    .line 1397
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1398
    return-void

    .line 1389
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 1819
    if-nez p1, :cond_0

    .line 1820
    return-void

    .line 1822
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    .line 1823
    const-string/jumbo v0, "search(): Ignoring empty query"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    return-void

    .line 1829
    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p4}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 1834
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda83;

    invoke-direct {v1, p3, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda83;-><init>(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1838
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1834
    const v2, 0xc355

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1841
    return-void

    .line 1830
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1832
    return-void
.end method

.method public seekBack(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 829
    if-nez p1, :cond_0

    .line 830
    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 834
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 835
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->seekBackForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 837
    :cond_1
    return-void
.end method

.method public seekBackForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 840
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda25;-><init>()V

    .line 844
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 840
    const/16 v1, 0xb

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 845
    return-void
.end method

.method public seekForward(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 849
    if-nez p1, :cond_0

    .line 850
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 854
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->seekForwardForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 857
    :cond_1
    return-void
.end method

.method public seekForwardForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 860
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda46;-><init>()V

    .line 864
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 860
    const/16 v1, 0xc

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 865
    return-void
.end method

.method public seekTo(Landroidx/media3/session/IMediaController;IJ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "positionMs"    # J

    .line 801
    if-nez p1, :cond_0

    .line 802
    return-void

    .line 804
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda81;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda81;-><init>(J)V

    .line 808
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 804
    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 809
    return-void
.end method

.method public seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 773
    if-nez p1, :cond_0

    .line 774
    return-void

    .line 776
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda66;-><init>()V

    .line 780
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 776
    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 781
    return-void
.end method

.method public seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemIndex"    # I

    .line 786
    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 793
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 789
    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 797
    return-void

    .line 787
    :cond_1
    :goto_0
    return-void
.end method

.method public seekToNext(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1461
    if-nez p1, :cond_0

    .line 1462
    return-void

    .line 1465
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 1466
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 1467
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->seekToNextForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 1469
    :cond_1
    return-void
.end method

.method public seekToNextForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 1472
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda47;-><init>()V

    .line 1476
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1472
    const/16 v1, 0x9

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1477
    return-void
.end method

.method public seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1429
    if-nez p1, :cond_0

    .line 1430
    return-void

    .line 1432
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda20;-><init>()V

    .line 1436
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1432
    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1437
    return-void
.end method

.method public seekToPrevious(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1441
    if-nez p1, :cond_0

    .line 1442
    return-void

    .line 1445
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 1446
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 1447
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->seekToPreviousForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 1449
    :cond_1
    return-void
.end method

.method public seekToPreviousForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 1452
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda30;-><init>()V

    .line 1456
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1452
    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1457
    return-void
.end method

.method public seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1417
    if-nez p1, :cond_0

    .line 1418
    return-void

    .line 1420
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda41;-><init>()V

    .line 1424
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1420
    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1425
    return-void
.end method

.method public seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemIndex"    # I
    .param p4, "positionMs"    # J

    .line 814
    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 817
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p3, p4, p5}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/session/MediaSessionStub;IJ)V

    .line 821
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 817
    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 825
    return-void

    .line 815
    :cond_1
    :goto_0
    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "audioAttributes"    # Landroid/os/Bundle;
    .param p4, "handleAudioFocus"    # Z

    .line 1645
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1650
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/AudioAttributes;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AudioAttributes;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    .local v0, "attributes":Landroidx/media3/common/AudioAttributes;
    nop

    .line 1655
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda53;

    invoke-direct {v1, v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda53;-><init>(Landroidx/media3/common/AudioAttributes;Z)V

    .line 1659
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1655
    const/16 v2, 0x23

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1661
    return-void

    .line 1651
    .end local v0    # "attributes":Landroidx/media3/common/AudioAttributes;
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for AudioAttributes"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1653
    return-void

    .line 1646
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "muted"    # Z

    .line 1616
    if-nez p1, :cond_0

    .line 1617
    return-void

    .line 1619
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda26;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda26;-><init>(Z)V

    .line 1623
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1619
    const/16 v1, 0x1a

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1624
    return-void
.end method

.method public setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "muted"    # Z
    .param p4, "flags"    # I

    .line 1629
    if-nez p1, :cond_0

    .line 1630
    return-void

    .line 1632
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda71;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda71;-><init>(ZI)V

    .line 1636
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1632
    const/16 v1, 0x22

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1637
    return-void
.end method

.method public setDeviceVolume(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "volume"    # I

    .line 1538
    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1541
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda79;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda79;-><init>(I)V

    .line 1545
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1541
    const/16 v1, 0x19

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1546
    return-void

    .line 1539
    :cond_1
    :goto_0
    return-void
.end method

.method public setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "volume"    # I
    .param p4, "flags"    # I

    .line 1551
    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1554
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda50;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda50;-><init>(II)V

    .line 1558
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1554
    const/16 v1, 0x21

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1559
    return-void

    .line 1552
    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;

    .line 980
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/session/MediaSessionStub;->setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    .line 982
    return-void
.end method

.method public setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .param p4, "resetPosition"    # Z

    .line 1021
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1026
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 1031
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda29;-><init>(Landroidx/media3/common/MediaItem;Z)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;-><init>()V

    .line 1036
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1035
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1031
    const/16 v2, 0x1f

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1048
    return-void

    .line 1027
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1029
    return-void

    .line 1022
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .param p4, "startPositionMs"    # J

    .line 990
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 1000
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda73;

    invoke-direct {v1, v0, p4, p5}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda73;-><init>(Landroidx/media3/common/MediaItem;J)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;-><init>()V

    .line 1005
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1004
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1000
    const/16 v2, 0x1f

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1013
    return-void

    .line 996
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 998
    return-void

    .line 991
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemsRetriever"    # Landroid/os/IBinder;

    .line 1055
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/session/MediaSessionStub;->setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    .line 1057
    return-void
.end method

.method public setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemsRetriever"    # Landroid/os/IBinder;
    .param p4, "resetPosition"    # Z

    .line 1065
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda85;-><init>()V

    .line 1072
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1071
    invoke-static {v0, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    .local v0, "mediaItemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1077
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Z)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;-><init>()V

    .line 1082
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1081
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1077
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1094
    return-void

    .line 1073
    .end local v0    # "mediaItemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1075
    return-void

    .line 1066
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemsRetriever"    # Landroid/os/IBinder;
    .param p4, "startIndex"    # I
    .param p5, "startPositionMs"    # J

    .line 1103
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    if-gez p4, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda85;-><init>()V

    .line 1112
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1111
    invoke-static {v0, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    .local v0, "mediaItemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1117
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda43;

    invoke-direct {v1, v0, p4, p5, p6}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda43;-><init>(Ljava/util/List;IJ)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;-><init>()V

    .line 1122
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1121
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1117
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1134
    return-void

    .line 1113
    .end local v0    # "mediaItemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1115
    return-void

    .line 1106
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "playWhenReady"    # Z

    .line 1666
    if-nez p1, :cond_0

    .line 1667
    return-void

    .line 1669
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda10;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda10;-><init>(Z)V

    .line 1673
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1669
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1674
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "playbackParametersBundle"    # Landroid/os/Bundle;

    .line 960
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 965
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/PlaybackParameters;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    .local v0, "playbackParameters":Landroidx/media3/common/PlaybackParameters;
    nop

    .line 970
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda28;-><init>(Landroidx/media3/common/PlaybackParameters;)V

    .line 974
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 970
    const/16 v2, 0xd

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 975
    return-void

    .line 966
    .end local v0    # "playbackParameters":Landroidx/media3/common/PlaybackParameters;
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for PlaybackParameters"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 968
    return-void

    .line 961
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "speed"    # F

    .line 945
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda13;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda13;-><init>(F)V

    .line 952
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 948
    const/16 v1, 0xd

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 953
    return-void

    .line 946
    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "playlistMetadataBundle"    # Landroid/os/Bundle;

    .line 1141
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/MediaMetadata;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    .local v0, "playlistMetadata":Landroidx/media3/common/MediaMetadata;
    nop

    .line 1151
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda72;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda72;-><init>(Landroidx/media3/common/MediaMetadata;)V

    .line 1155
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1151
    const/16 v2, 0x13

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1156
    return-void

    .line 1147
    .end local v0    # "playlistMetadata":Landroidx/media3/common/MediaMetadata;
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaMetadata"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1149
    return-void

    .line 1142
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "ratingBundle"    # Landroid/os/Bundle;

    .line 924
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 929
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/Rating;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Rating;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    .local v0, "rating":Landroidx/media3/common/Rating;
    nop

    .line 934
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/common/Rating;)V

    .line 938
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 934
    const v2, 0x9c4a

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 941
    return-void

    .line 930
    .end local v0    # "rating":Landroidx/media3/common/Rating;
    :catch_0
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for Rating"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 932
    return-void

    .line 925
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "ratingBundle"    # Landroid/os/Bundle;

    .line 898
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 901
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    .line 902
    const-string/jumbo v0, "setRatingWithMediaId(): Ignoring empty mediaId"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    return-void

    .line 907
    :cond_1
    :try_start_0
    invoke-static {p4}, Landroidx/media3/common/Rating;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Rating;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    .local v0, "rating":Landroidx/media3/common/Rating;
    nop

    .line 912
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda48;

    invoke-direct {v1, p3, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda48;-><init>(Ljava/lang/String;Landroidx/media3/common/Rating;)V

    .line 916
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 912
    const v2, 0x9c4a

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 919
    return-void

    .line 908
    .end local v0    # "rating":Landroidx/media3/common/Rating;
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for Rating"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 910
    return-void

    .line 899
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-void
.end method

.method public setRepeatMode(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "repeatMode"    # I

    .line 1482
    if-nez p1, :cond_0

    .line 1483
    return-void

    .line 1485
    :cond_0
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    .line 1488
    return-void

    .line 1490
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda52;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda52;-><init>(I)V

    .line 1494
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1490
    const/16 v1, 0xf

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1495
    return-void
.end method

.method public setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 1500
    if-nez p1, :cond_0

    .line 1501
    return-void

    .line 1503
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda61;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda61;-><init>(Z)V

    .line 1507
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1503
    const/16 v1, 0xe

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1508
    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "trackSelectionParametersBundle"    # Landroid/os/Bundle;

    .line 1703
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1708
    :cond_0
    nop

    .line 1709
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/TrackSelectionParameters;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    .local v0, "trackSelectionParameters":Landroidx/media3/common/TrackSelectionParameters;
    nop

    .line 1714
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/common/TrackSelectionParameters;)V

    .line 1718
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1714
    const/16 v2, 0x1d

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1724
    return-void

    .line 1710
    .end local v0    # "trackSelectionParameters":Landroidx/media3/common/TrackSelectionParameters;
    :catch_0
    move-exception v0

    .line 1711
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for TrackSelectionParameters"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1712
    return-void

    .line 1704
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "surface"    # Landroid/view/Surface;

    .line 1513
    if-nez p1, :cond_0

    .line 1514
    return-void

    .line 1516
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda64;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda64;-><init>(Landroid/view/Surface;)V

    .line 1520
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1516
    const/16 v1, 0x1b

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1521
    return-void
.end method

.method public setVolume(Landroidx/media3/session/IMediaController;IF)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "volume"    # F

    .line 1525
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1528
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda60;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda60;-><init>(F)V

    .line 1532
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1528
    const/16 v1, 0x18

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1533
    return-void

    .line 1526
    :cond_1
    :goto_0
    return-void
.end method

.method public stop(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 653
    if-nez p1, :cond_0

    .line 654
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 658
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->stopForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 661
    :cond_1
    return-void
.end method

.method public stopForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 664
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda62;-><init>()V

    .line 668
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 664
    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 669
    return-void
.end method

.method public subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 1890
    if-nez p1, :cond_0

    .line 1891
    return-void

    .line 1893
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    .line 1894
    const-string/jumbo v0, "subscribe(): Ignoring empty parentId"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    return-void

    .line 1900
    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p4}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1904
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 1905
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda74;

    invoke-direct {v1, p3, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda74;-><init>(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1909
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1905
    const v2, 0xc351

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1912
    return-void

    .line 1901
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 1902
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1903
    return-void
.end method

.method public unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "parentId"    # Ljava/lang/String;

    .line 1917
    if-nez p1, :cond_0

    .line 1918
    return-void

    .line 1920
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1921
    const-string v0, "MediaSessionStub"

    const-string/jumbo v1, "unsubscribe(): Ignoring empty parentId"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    return-void

    .line 1924
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 1928
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1924
    const v1, 0xc352

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1931
    return-void
.end method
