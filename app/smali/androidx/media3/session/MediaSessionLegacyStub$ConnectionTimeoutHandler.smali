.class Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;
.super Landroid/os/Handler;
.source "MediaSessionLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionTimeoutHandler"
.end annotation


# static fields
.field private static final MSG_CONNECTION_TIMED_OUT:I = 0x3e9


# instance fields
.field private final connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroidx/media3/session/ConnectedControllersManager;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1437
    .local p2, "connectedControllersManager":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;>;"
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1438
    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 1439
    return-void
.end method


# virtual methods
.method public disconnectControllerAfterTimeout(Landroidx/media3/session/MediaSession$ControllerInfo;J)V
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "disconnectTimeoutMs"    # J

    .line 1456
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1457
    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1458
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0, p2, p3}, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1459
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1443
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1444
    .local v0, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v1, v0}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1446
    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaSession$ControllerCb;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/media3/session/MediaSession$ControllerCb;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    goto :goto_0

    .line 1447
    :catch_0
    move-exception v1

    .line 1450
    :goto_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v1, v0}, Landroidx/media3/session/ConnectedControllersManager;->removeController(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1452
    :cond_0
    return-void
.end method
