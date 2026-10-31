.class Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;
.super Landroid/os/Handler;
.source "MediaSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayPauseKeyHandler"
.end annotation


# instance fields
.field private playPauseTask:Ljava/lang/Runnable;

.field final synthetic this$0:Landroidx/media3/session/MediaSessionImpl;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "applicationLooper"    # Landroid/os/Looper;

    .line 1882
    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    .line 1883
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1884
    return-void
.end method


# virtual methods
.method public clearPendingPlayPauseTask()Ljava/lang/Runnable;
    .locals 2

    .line 1902
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->playPauseTask:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->playPauseTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1904
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->playPauseTask:Ljava/lang/Runnable;

    .line 1905
    .local v0, "task":Ljava/lang/Runnable;
    iput-object v1, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->playPauseTask:Ljava/lang/Runnable;

    .line 1906
    return-object v0

    .line 1908
    .end local v0    # "task":Ljava/lang/Runnable;
    :cond_0
    return-object v1
.end method

.method public flush()V
    .locals 1

    .line 1916
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->clearPendingPlayPauseTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 1917
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 1918
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 1920
    :cond_0
    return-void
.end method

.method public hasPendingPlayPauseTask()Z
    .locals 1

    .line 1912
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->playPauseTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$setPendingPlayPauseTask$0$androidx-media3-session-MediaSessionImpl$MediaPlayPauseKeyHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1889
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroidx/media3/session/MediaSessionImpl;->access$700(Landroidx/media3/session/MediaSessionImpl;Landroid/view/KeyEvent;Z)Z

    goto :goto_0

    .line 1892
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$800(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionLegacyStub;

    move-result-object v0

    .line 1893
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getRemoteUserInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    .line 1892
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaPlayPauseOnHandler(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    .line 1895
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->playPauseTask:Ljava/lang/Runnable;

    .line 1896
    return-void
.end method

.method public setPendingPlayPauseTask(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1887
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/view/KeyEvent;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->playPauseTask:Ljava/lang/Runnable;

    .line 1897
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->playPauseTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1898
    return-void
.end method
