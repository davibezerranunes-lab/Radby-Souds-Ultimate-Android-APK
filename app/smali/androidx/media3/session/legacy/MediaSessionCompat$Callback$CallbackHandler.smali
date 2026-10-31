.class Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final MSG_MEDIA_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT:I = 0x1


# instance fields
.field final synthetic this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1327
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 1328
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1329
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1333
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1338
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    iget-object v1, v1, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    .line 1340
    .local v1, "impl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    iget-object v2, v2, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;

    .line 1341
    .local v2, "callbackHandler":Landroid/os/Handler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 1343
    invoke-interface {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getCallback()Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    move-result-object v3

    if-ne v0, v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1347
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    .line 1348
    .local v0, "info":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    invoke-interface {v1, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    .line 1349
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->handleMediaPlayPauseIfPendingOnHandler(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V

    .line 1350
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    goto :goto_1

    .line 1345
    .end local v0    # "info":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    :cond_1
    :goto_0
    return-void

    .line 1341
    .end local v1    # "impl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    .end local v2    # "callbackHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1352
    :cond_2
    :goto_1
    return-void
.end method
