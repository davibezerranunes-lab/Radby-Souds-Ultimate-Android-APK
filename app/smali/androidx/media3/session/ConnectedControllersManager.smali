.class final Landroidx/media3/session/ConnectedControllersManager;
.super Ljava/lang/Object;
.source "ConnectedControllersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;,
        Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;
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
.field private final controllerInfoMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "TT;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final controllerRecords:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final sessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSessionImpl;

    .line 69
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    .line 63
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 75
    return-void
.end method

.method private flushCommandQueue(Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<",
            "TT;>;)V"
        }
    .end annotation

    .line 276
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    .local p1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/media3/session/MediaSessionImpl;

    .line 277
    .local v8, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-nez v8, :cond_0

    .line 278
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v10, v0

    .line 281
    .local v10, "continueRunning":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_0
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    iget-object v0, v7, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;

    .line 284
    .local v12, "asyncCommand":Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;
    if-nez v12, :cond_1

    .line 285
    iput-boolean v11, v7, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueueIsFlushing:Z

    .line 286
    return-void

    .line 288
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v13, v0

    .line 289
    .local v13, "commandExecuting":Ljava/util/concurrent/atomic/AtomicBoolean;
    nop

    .line 290
    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v14

    iget-object v0, v7, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->controllerKey:Ljava/lang/Object;

    .line 292
    invoke-virtual {v6, v0}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v15

    new-instance v5, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda0;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, p1

    move-object v9, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/ConnectedControllersManager;Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 291
    invoke-virtual {v8, v15, v9}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 289
    invoke-static {v14, v0}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 307
    invoke-virtual {v13, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 308
    .end local v12    # "asyncCommand":Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;
    .end local v13    # "commandExecuting":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v9, 0x1

    goto :goto_0

    .line 309
    :cond_2
    return-void
.end method

.method static synthetic lambda$removeController$0(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 148
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onDisconnectedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 152
    return-void
.end method


# virtual methods
.method public addController(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 5
    .param p2, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p4, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            ")V"
        }
    .end annotation

    .line 82
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    .line 84
    .local v1, "savedInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v1, :cond_0

    .line 85
    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    new-instance v3, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    new-instance v4, Landroidx/media3/session/SequencedFutureManager;

    invoke-direct {v4}, Landroidx/media3/session/SequencedFutureManager;-><init>()V

    invoke-direct {v3, p1, v4, p3, p4}, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;-><init>(Ljava/lang/Object;Landroidx/media3/session/SequencedFutureManager;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    invoke-virtual {v2, p2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_0
    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 93
    .local v2, "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    iput-object p3, v2, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 94
    iput-object p4, v2, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    .line 96
    .end local v1    # "savedInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v2    # "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :goto_0
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addToCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/ConnectedControllersManager$AsyncCommand;)V
    .locals 3
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "command"    # I
    .param p3, "asyncCommand"    # Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;

    .line 239
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 241
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    if-eqz v1, :cond_0

    .line 242
    iget-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueuePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 243
    invoke-virtual {v2}, Landroidx/media3/common/Player$Commands;->buildUpon()Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueuePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 244
    iget-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueue:Ljava/util/Deque;

    invoke-interface {v2, p3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :cond_0
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flushCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 5
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 250
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 252
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    if-nez v1, :cond_0

    .line 253
    monitor-exit v0

    return-void

    .line 255
    :cond_0
    iget-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueuePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 256
    .local v2, "commandQueuePlayerCommands":Landroidx/media3/common/Player$Commands;
    sget-object v3, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v3, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueuePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 257
    iget-object v3, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueue:Ljava/util/Deque;

    new-instance v4, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, v2}, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/ConnectedControllersManager;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player$Commands;)V

    invoke-interface {v3, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 266
    iget-boolean v3, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueueIsFlushing:Z

    if-eqz v3, :cond_1

    .line 267
    monitor-exit v0

    return-void

    .line 269
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueueIsFlushing:Z

    .line 270
    invoke-direct {p0, v1}, Landroidx/media3/session/ConnectedControllersManager;->flushCommandQueue(Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;)V

    .line 271
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    .end local v2    # "commandQueuePlayerCommands":Landroidx/media3/common/Player$Commands;
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAvailablePlayerCommands(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/common/Player$Commands;
    .locals 3
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 114
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 116
    .local v1, "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    if-eqz v1, :cond_0

    .line 117
    iget-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    monitor-exit v0

    return-object v2

    .line 119
    .end local v1    # "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :cond_0
    monitor-exit v0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectedControllers()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 156
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media3/session/MediaSession$ControllerInfo;"
        }
    .end annotation

    .line 232
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    monitor-exit v0

    return-object v1

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSequencedFutureManager(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 177
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 179
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 179
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSequencedFutureManager(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media3/session/SequencedFutureManager;"
        }
    .end annotation

    .line 193
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    .line 195
    .local v1, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    move-object v1, v3

    .line 196
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    :cond_1
    return-object v2

    .line 196
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 162
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z
    .locals 3
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "commandCode"    # I

    .line 220
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 222
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 224
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    .line 225
    invoke-virtual {v2, p2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 224
    :goto_0
    return v2

    .line 222
    .end local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "commandCode"    # I

    .line 211
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 213
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v0, p2}, Landroidx/media3/session/SessionCommands;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 213
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;

    .line 202
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 204
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v0, p2}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 204
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method synthetic lambda$flushCommandQueue$1$androidx-media3-session-ConnectedControllersManager(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player$Commands;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "commandQueuePlayerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 259
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 260
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->onPlayerInteractionFinishedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player$Commands;)V

    .line 264
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$flushCommandQueue$2$androidx-media3-session-ConnectedControllersManager(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "commandExecuting"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "info"    # Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;
    .param p3, "continueRunning"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 298
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    invoke-direct {p0, p2}, Landroidx/media3/session/ConnectedControllersManager;->flushCommandQueue(Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;)V

    goto :goto_0

    .line 302
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 304
    :goto_0
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$flushCommandQueue$3$androidx-media3-session-ConnectedControllersManager(Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3
    .param p1, "asyncCommand"    # Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;
    .param p2, "commandExecuting"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "info"    # Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;
    .param p4, "continueRunning"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 294
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    nop

    .line 295
    invoke-interface {p1}, Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;->run()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p3, p4}, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/ConnectedControllersManager;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 306
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 296
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 294
    return-void
.end method

.method public removeController(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 4
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 132
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 134
    .local v1, "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    if-nez v1, :cond_0

    .line 135
    monitor-exit v0

    return-void

    .line 137
    :cond_0
    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    iget-object v3, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->controllerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {v0}, Landroidx/media3/session/SequencedFutureManager;->release()V

    .line 141
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 142
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    nop

    .line 146
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, p1}, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 145
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 153
    return-void

    .line 143
    :cond_2
    :goto_0
    return-void

    .line 138
    .end local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .end local v1    # "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeController(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 125
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Landroidx/media3/session/ConnectedControllersManager;->removeController(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 128
    :cond_0
    return-void
.end method

.method public updateCommandsFromSession(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p3, "playerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 103
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 105
    .local v1, "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    if-eqz v1, :cond_0

    .line 106
    iput-object p2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 107
    iput-object p3, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    .line 109
    .end local v1    # "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :cond_0
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
