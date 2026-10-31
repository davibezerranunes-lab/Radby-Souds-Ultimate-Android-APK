.class final Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;
.super Landroidx/media3/session/IMediaSessionService$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSessionServiceStub"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mediaSessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

.field private final pendingControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/session/IMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionService;)V
    .locals 3
    .param p1, "serviceReference"    # Landroidx/media3/session/MediaSessionService;

    .line 705
    invoke-direct {p0}, Landroidx/media3/session/IMediaSessionService$Stub;-><init>()V

    .line 706
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    .line 707
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 708
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    .line 709
    invoke-static {v0}, Landroidx/media3/session/legacy/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media3/session/legacy/MediaSessionManager;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->mediaSessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

    .line 711
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    .line 712
    return-void
.end method


# virtual methods
.method public connect(Landroidx/media3/session/IMediaController;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "connectionRequestBundle"    # Landroid/os/Bundle;

    .line 717
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 724
    :cond_0
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroidx/media3/session/ConnectionRequest;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v0

    .line 730
    .local v9, "request":Landroidx/media3/session/ConnectionRequest;
    nop

    .line 731
    iget-object v0, v7, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 733
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 737
    goto :goto_0

    .line 734
    :catch_0
    move-exception v0

    .line 738
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 741
    .local v10, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 742
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 743
    .local v12, "token":J
    if-eqz v10, :cond_2

    move v0, v10

    goto :goto_1

    :cond_2
    iget v0, v9, Landroidx/media3/session/ConnectionRequest;->pid:I

    :goto_1
    move v14, v0

    .line 744
    .local v14, "pid":I
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    iget-object v1, v9, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v14, v11}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    move-object v15, v0

    .line 746
    .local v15, "remoteUserInfo":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    iget-object v0, v7, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->mediaSessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

    invoke-virtual {v0, v15}, Landroidx/media3/session/legacy/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v16

    .line 747
    .local v16, "isTrusted":Z
    iget-object v0, v7, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 749
    :try_start_2
    iget-object v0, v7, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    new-instance v6, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub$$ExternalSyntheticLambda0;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v15

    move-object v5, v9

    move-object v7, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;Landroidx/media3/session/IMediaController;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;Z)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 797
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    nop

    .line 799
    return-void

    .line 797
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    throw v0

    .line 725
    .end local v9    # "request":Landroidx/media3/session/ConnectionRequest;
    .end local v10    # "callingPid":I
    .end local v11    # "uid":I
    .end local v12    # "token":J
    .end local v14    # "pid":I
    .end local v15    # "remoteUserInfo":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .end local v16    # "isTrusted":Z
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 728
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MSessionService"

    const-string v2, "Ignoring malformed Bundle for ConnectionRequest"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 729
    return-void

    .line 720
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_2
    return-void
.end method

.method synthetic lambda$connect$0$androidx-media3-session-MediaSessionService$MediaSessionServiceStub(Landroidx/media3/session/IMediaController;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;Z)V
    .locals 15
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "remoteUserInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .param p3, "request"    # Landroidx/media3/session/ConnectionRequest;
    .param p4, "isTrusted"    # Z

    .line 751
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    iget-object v0, v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 752
    const/4 v4, 0x1

    .line 754
    .local v4, "shouldNotifyDisconnected":Z
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    .line 755
    .local v6, "service":Landroidx/media3/session/MediaSessionService;
    if-nez v6, :cond_1

    .line 786
    if-eqz v4, :cond_0

    .line 788
    :try_start_1
    invoke-interface {v2, v5}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 792
    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    :try_start_2
    new-instance v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v9, v3, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    iget v10, v3, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    new-instance v12, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    iget v7, v3, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    invoke-direct {v12, v2, v7}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;-><init>(Landroidx/media3/session/IMediaController;I)V

    iget-object v13, v3, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;

    iget v14, v3, Landroidx/media3/session/ConnectionRequest;->maxCommandsForMediaItems:I

    move-object v7, v0

    move-object/from16 v8, p2

    move/from16 v11, p4

    invoke-direct/range {v7 .. v14}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v0

    .line 771
    .local v7, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    :try_start_3
    invoke-virtual {v6, v7}, Landroidx/media3/session/MediaSessionService;->onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v0

    .line 772
    .local v8, "session":Landroidx/media3/session/MediaSession;
    if-nez v8, :cond_3

    .line 786
    if-eqz v4, :cond_2

    .line 788
    :try_start_4
    invoke-interface {v2, v5}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 792
    goto :goto_1

    .line 789
    :catch_1
    move-exception v0

    .line 773
    :cond_2
    :goto_1
    return-void

    .line 776
    :cond_3
    :try_start_5
    invoke-virtual {v6, v8}, Landroidx/media3/session/MediaSessionService;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 777
    const/4 v4, 0x0

    .line 779
    invoke-virtual {v8, v2, v7}, Landroidx/media3/session/MediaSession;->handleControllerConnectionFromService(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 783
    goto :goto_2

    .line 780
    .end local v8    # "session":Landroidx/media3/session/MediaSession;
    :catch_2
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v8, "MSessionService"

    const-string v9, "Failed to add a session to session service"

    invoke-static {v8, v9, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 786
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "service":Landroidx/media3/session/MediaSessionService;
    .end local v7    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    :goto_2
    if-eqz v4, :cond_4

    .line 788
    :try_start_7
    invoke-interface {v2, v5}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 792
    :goto_3
    goto :goto_4

    .line 789
    :catch_3
    move-exception v0

    goto :goto_3

    .line 795
    :cond_4
    :goto_4
    return-void

    .line 786
    :catchall_0
    move-exception v0

    move-object v6, v0

    if-eqz v4, :cond_5

    .line 788
    :try_start_8
    invoke-interface {v2, v5}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 792
    goto :goto_5

    .line 789
    :catch_4
    move-exception v0

    .line 794
    :cond_5
    :goto_5
    throw v6
.end method

.method public release()V
    .locals 3

    .line 802
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 803
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 804
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/IMediaController;

    .line 806
    .local v1, "controller":Landroidx/media3/session/IMediaController;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    goto :goto_1

    .line 807
    :catch_0
    move-exception v2

    .line 810
    .end local v1    # "controller":Landroidx/media3/session/IMediaController;
    :goto_1
    goto :goto_0

    .line 811
    :cond_0
    return-void
.end method
