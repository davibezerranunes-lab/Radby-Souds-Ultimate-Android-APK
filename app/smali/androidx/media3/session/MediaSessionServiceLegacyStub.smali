.class Landroidx/media3/session/MediaSessionServiceLegacyStub;
.super Landroidx/media3/session/legacy/MediaBrowserServiceCompat;
.source "MediaSessionServiceLegacyStub.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSSLegacyStub"


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

.field private final manager:Landroidx/media3/session/legacy/MediaSessionManager;

.field private final sessionImpl:Landroidx/media3/session/MediaSessionImpl;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 1
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;

    .line 48
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/legacy/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media3/session/legacy/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->manager:Landroidx/media3/session/legacy/MediaSessionManager;

    .line 50
    iput-object p1, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 51
    new-instance v0, Landroidx/media3/session/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 52
    return-void
.end method


# virtual methods
.method public createControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 9
    .param p1, "info"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .param p2, "rootHints"    # Landroid/os/Bundle;

    .line 98
    new-instance v8, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->manager:Landroidx/media3/session/legacy/MediaSessionManager;

    .line 102
    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v4

    .line 105
    invoke-static {p2}, Landroidx/media3/session/LegacyConversions;->extractMaxCommandsForMediaItemFromRootHints(Landroid/os/Bundle;)I

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;I)V

    .line 98
    return-object v8
.end method

.method public final getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    return-object v0
.end method

.method public final getMediaSessionManager()Landroidx/media3/session/legacy/MediaSessionManager;
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->manager:Landroidx/media3/session/legacy/MediaSessionManager;

    return-object v0
.end method

.method public initialize(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V
    .locals 1
    .param p1, "token"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 55
    iget-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->attachToBaseContext(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->onCreate()V

    .line 57
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->setSessionToken(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    .line 58
    return-void
.end method

.method synthetic lambda$onGetRoot$0$androidx-media3-session-MediaSessionServiceLegacyStub(Ljava/util/concurrent/atomic/AtomicReference;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 1
    .param p1, "resultReference"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "haveResult"    # Landroidx/media3/common/util/ConditionVariable;

    .line 73
    iget-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p2}, Landroidx/media3/session/MediaSessionImpl;->onConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p3}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    .line 75
    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;
    .locals 8
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .line 64
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->getCurrentBrowserInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    .line 65
    .local v0, "info":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    nop

    .line 66
    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->createControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    .line 68
    .local v1, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 69
    .local v2, "resultReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroidx/media3/session/MediaSession$ConnectionResult;>;"
    new-instance v3, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v3}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    .line 70
    .local v3, "haveResult":Landroidx/media3/common/util/ConditionVariable;
    iget-object v4, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 71
    invoke-virtual {v4}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroidx/media3/session/MediaSessionServiceLegacyStub$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v1, v3}, Landroidx/media3/session/MediaSessionServiceLegacyStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionServiceLegacyStub;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/util/ConditionVariable;)V

    .line 70
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 77
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroidx/media3/common/util/ConditionVariable;->block()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/session/MediaSession$ConnectionResult;

    .line 83
    .local v5, "result":Landroidx/media3/session/MediaSession$ConnectionResult;
    iget-boolean v6, v5, Landroidx/media3/session/MediaSession$ConnectionResult;->isAccepted:Z

    if-nez v6, :cond_1

    .line 84
    return-object v4

    .line 86
    :cond_1
    iget-object v4, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    iget-object v6, v5, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v7, v5, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v4, v0, v1, v6, v7}, Landroidx/media3/session/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 89
    sget-object v4, Landroidx/media3/session/MediaUtils;->defaultBrowserRoot:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    return-object v4

    .line 78
    .end local v5    # "result":Landroidx/media3/session/MediaSession$ConnectionResult;
    :catch_0
    move-exception v5

    .line 79
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "MSSLegacyStub"

    const-string v7, "Couldn\'t get a result from onConnect"

    invoke-static {v6, v7, v5}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-object v4
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

    .line 94
    .local p2, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
