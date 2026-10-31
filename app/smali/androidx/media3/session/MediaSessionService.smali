.class public abstract Landroidx/media3/session/MediaSessionService;
.super Landroid/app/Service;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;,
        Landroidx/media3/session/MediaSessionService$Listener;,
        Landroidx/media3/session/MediaSessionService$Api31;,
        Landroidx/media3/session/MediaSessionService$MediaSessionListener;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "androidx.media3.session.MediaSessionService"

.field private static final TAG:Ljava/lang/String; = "MSessionService"


# instance fields
.field private actionFactory:Landroidx/media3/session/DefaultActionFactory;

.field private defaultMethodCalled:Z

.field private listener:Landroidx/media3/session/MediaSessionService$Listener;

.field private final lock:Ljava/lang/Object;

.field private final mainHandler:Landroid/os/Handler;

.field private mediaNotificationManager:Landroidx/media3/session/MediaNotificationManager;

.field private mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field

.field private stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 189
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->mainHandler:Landroid/os/Handler;

    .line 192
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/session/MediaSessionService;->defaultMethodCalled:Z

    .line 194
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/session/MediaSessionService;)Landroidx/media3/session/MediaNotificationManager;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionService;

    .line 141
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private static createFallbackMediaButtonCaller(Landroid/content/Intent;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 11
    .param p0, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 455
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 457
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 459
    :cond_0
    const-string v1, "androidx.media3.session.MediaSessionService"

    :goto_0
    nop

    .line 460
    .local v1, "packageName":Ljava/lang/String;
    new-instance v10, Landroidx/media3/session/MediaSession$ControllerInfo;

    new-instance v3, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    const/4 v2, -0x1

    invoke-direct {v3, v1, v2, v2}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v9, 0x0

    const v4, 0x3be71a54

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;I)V

    return-object v10
.end method

.method private getActionFactory()Landroidx/media3/session/DefaultActionFactory;
    .locals 2

    .line 651
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->actionFactory:Landroidx/media3/session/DefaultActionFactory;

    if-nez v1, :cond_0

    .line 653
    new-instance v1, Landroidx/media3/session/DefaultActionFactory;

    invoke-direct {v1, p0}, Landroidx/media3/session/DefaultActionFactory;-><init>(Landroid/app/Service;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->actionFactory:Landroidx/media3/session/DefaultActionFactory;

    .line 655
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->actionFactory:Landroidx/media3/session/DefaultActionFactory;

    monitor-exit v0

    return-object v1

    .line 656
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getListener()Landroidx/media3/session/MediaSessionService$Listener;
    .locals 2

    .line 661
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->listener:Landroidx/media3/session/MediaSessionService$Listener;

    monitor-exit v0

    return-object v1

    .line 663
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;
    .locals 4

    .line 636
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationManager:Landroidx/media3/session/MediaNotificationManager;

    if-nez v1, :cond_1

    .line 638
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    if-nez v1, :cond_0

    .line 639
    new-instance v1, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;

    .line 640
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->build()Landroidx/media3/session/DefaultMediaNotificationProvider;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    .line 642
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaNotificationManager;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    .line 644
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getActionFactory()Landroidx/media3/session/DefaultActionFactory;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroidx/media3/session/MediaNotificationManager;-><init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaNotification$Provider;Landroidx/media3/session/MediaNotification$ActionFactory;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationManager:Landroidx/media3/session/MediaNotificationManager;

    .line 646
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationManager:Landroidx/media3/session/MediaNotificationManager;

    monitor-exit v0

    return-object v1

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$onStartCommand$2(Landroidx/media3/session/MediaSessionImpl;Landroid/content/Intent;)V
    .locals 3
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 435
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getMediaNotificationControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 436
    .local v0, "callerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v0, :cond_0

    .line 437
    invoke-static {p1}, Landroidx/media3/session/MediaSessionService;->createFallbackMediaButtonCaller(Landroid/content/Intent;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 439
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaSessionImpl;->onMediaButtonEvent(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    const-string v1, "MSessionService"

    const-string v2, "Ignored unrecognized media button intent."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_1
    return-void
.end method

.method static synthetic lambda$removeSession$1(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;)V
    .locals 0
    .param p0, "notificationManager"    # Landroidx/media3/session/MediaNotificationManager;
    .param p1, "session"    # Landroidx/media3/session/MediaSession;

    .line 303
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaNotificationManager;->removeSession(Landroidx/media3/session/MediaSession;)V

    .line 304
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->clearListener()V

    .line 305
    return-void
.end method

.method private onForegroundServiceStartNotAllowedException()V
    .locals 2

    .line 668
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->mainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaSessionService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void
.end method


# virtual methods
.method public final addSession(Landroidx/media3/session/MediaSession;)V
    .locals 4
    .param p1, "session"    # Landroidx/media3/session/MediaSession;

    .line 262
    const-string/jumbo v0, "session must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->isReleased()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "session is already released"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 265
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession;

    .line 267
    .local v2, "old":Landroidx/media3/session/MediaSession;
    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v3, "Session ID should be unique"

    invoke-static {v1, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 268
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    if-nez v2, :cond_2

    .line 273
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    .line 274
    .local v0, "notificationManager":Landroidx/media3/session/MediaNotificationManager;
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->mainHandler:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, p1}, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 281
    .end local v0    # "notificationManager":Landroidx/media3/session/MediaNotificationManager;
    :cond_2
    return-void

    .line 269
    .end local v2    # "old":Landroidx/media3/session/MediaSession;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final clearListener()V
    .locals 2

    .line 351
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->listener:Landroidx/media3/session/MediaSessionService$Listener;

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getServiceBinder()Landroid/os/IBinder;
    .locals 2

    .line 608
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/MediaSession;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPlaybackOngoing()Z
    .locals 1

    .line 479
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaNotificationManager;->isStartedInForeground()Z

    move-result v0

    return v0
.end method

.method public final isSessionAdded(Landroidx/media3/session/MediaSession;)Z
    .locals 3
    .param p1, "session"    # Landroidx/media3/session/MediaSession;

    .line 327
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$addSession$0$androidx-media3-session-MediaSessionService(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;)V
    .locals 2
    .param p1, "notificationManager"    # Landroidx/media3/session/MediaNotificationManager;
    .param p2, "session"    # Landroidx/media3/session/MediaSession;

    .line 277
    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaNotificationManager;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 278
    new-instance v0, Landroidx/media3/session/MediaSessionService$MediaSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/MediaSessionService$MediaSessionListener;-><init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaSessionService$1;)V

    invoke-virtual {p2, v0}, Landroidx/media3/session/MediaSession;->setListener(Landroidx/media3/session/MediaSession$Listener;)V

    .line 279
    return-void
.end method

.method synthetic lambda$onForegroundServiceStartNotAllowedException$3$androidx-media3-session-MediaSessionService()V
    .locals 1

    .line 670
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getListener()Landroidx/media3/session/MediaSessionService$Listener;

    move-result-object v0

    .line 671
    .local v0, "serviceListener":Landroidx/media3/session/MediaSessionService$Listener;
    if-eqz v0, :cond_0

    .line 672
    invoke-interface {v0}, Landroidx/media3/session/MediaSessionService$Listener;->onForegroundServiceStartNotAllowedException()V

    .line 674
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 370
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 371
    return-object v0

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 375
    return-object v0

    .line 377
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v2, "android.media.browse.MediaBrowserService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "androidx.media3.session.MediaSessionService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 398
    return-object v0

    .line 382
    :pswitch_0
    invoke-static {}, Landroidx/media3/session/MediaSession$ControllerInfo;->createLegacyControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    .line 383
    .local v2, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {p0, v2}, Landroidx/media3/session/MediaSessionService;->onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object v3

    .line 384
    .local v3, "session":Landroidx/media3/session/MediaSession;
    if-nez v3, :cond_3

    .line 386
    return-object v0

    .line 388
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/session/MediaSessionService;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 395
    invoke-virtual {v3}, Landroidx/media3/session/MediaSession;->getLegacyBrowserServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 379
    .end local v2    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v3    # "session":Landroidx/media3/session/MediaSession;
    :pswitch_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->getServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x508763af -> :sswitch_1
        0x634addd6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 2

    .line 206
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 207
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    new-instance v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;-><init>(Landroidx/media3/session/MediaSessionService;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    .line 209
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    .line 539
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 540
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->release()V

    .line 543
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    .line 545
    :cond_0
    monitor-exit v0

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 414
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 415
    return v0

    .line 418
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getActionFactory()Landroidx/media3/session/DefaultActionFactory;

    move-result-object v1

    .line 419
    .local v1, "actionFactory":Landroidx/media3/session/DefaultActionFactory;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 420
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroidx/media3/session/MediaSession;->getSession(Landroid/net/Uri;)Landroidx/media3/session/MediaSession;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 421
    .local v3, "session":Landroidx/media3/session/MediaSession;
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/media3/session/DefaultActionFactory;->isMediaAction(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 422
    if-nez v3, :cond_3

    .line 423
    invoke-static {}, Landroidx/media3/session/MediaSession$ControllerInfo;->createLegacyControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v4

    .line 424
    .local v4, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {p0, v4}, Landroidx/media3/session/MediaSessionService;->onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object v3

    .line 425
    if-nez v3, :cond_2

    .line 426
    return v0

    .line 428
    :cond_2
    invoke-virtual {p0, v3}, Landroidx/media3/session/MediaSessionService;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 430
    .end local v4    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    :cond_3
    invoke-virtual {v3}, Landroidx/media3/session/MediaSession;->getImpl()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v4

    .line 431
    .local v4, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    nop

    .line 432
    invoke-virtual {v4}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, p1}, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroid/content/Intent;)V

    .line 433
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    .end local v4    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :cond_4
    goto :goto_1

    :cond_5
    if-eqz v3, :cond_4

    invoke-virtual {v1, p1}, Landroidx/media3/session/DefaultActionFactory;->isCustomAction(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 444
    invoke-virtual {v1, p1}, Landroidx/media3/session/DefaultActionFactory;->getCustomAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, "customAction":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 446
    return v0

    .line 448
    :cond_6
    invoke-virtual {v1, p1}, Landroidx/media3/session/DefaultActionFactory;->getCustomActionExtras(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    .line 449
    .local v5, "customExtras":Landroid/os/Bundle;
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v6

    invoke-virtual {v6, v3, v4, v5}, Landroidx/media3/session/MediaNotificationManager;->onCustomAction(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 451
    .end local v4    # "customAction":Ljava/lang/String;
    .end local v5    # "customExtras":Landroid/os/Bundle;
    :goto_1
    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 522
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->isPlaybackOngoing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->stopSelf()V

    .line 527
    :cond_0
    return-void
.end method

.method public onUpdateNotification(Landroidx/media3/session/MediaSession;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaSessionService;->defaultMethodCalled:Z

    .line 554
    return-void
.end method

.method public onUpdateNotification(Landroidx/media3/session/MediaSession;Z)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "startInForegroundRequired"    # Z

    .line 585
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionService;->onUpdateNotification(Landroidx/media3/session/MediaSession;)V

    .line 586
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionService;->defaultMethodCalled:Z

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaNotificationManager;->updateNotification(Landroidx/media3/session/MediaSession;Z)V

    .line 589
    :cond_0
    return-void
.end method

.method onUpdateNotificationInternal(Landroidx/media3/session/MediaSession;Z)Z
    .locals 3
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "startInForegroundWhenPaused"    # Z

    .line 621
    nop

    .line 622
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaNotificationManager;->shouldRunInForeground(Landroidx/media3/session/MediaSession;Z)Z

    move-result v0

    .line 623
    .local v0, "startInForegroundRequired":Z
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionService;->onUpdateNotification(Landroidx/media3/session/MediaSession;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .end local v0    # "startInForegroundRequired":Z
    nop

    .line 632
    const/4 v0, 0x1

    return v0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Landroidx/media3/session/MediaSessionService$Api31;->instanceOfForegroundServiceStartNotAllowedException(Ljava/lang/IllegalStateException;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    const-string v1, "MSessionService"

    const-string v2, "Failed to start foreground"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->onForegroundServiceStartNotAllowedException()V

    .line 628
    const/4 v1, 0x0

    return v1

    .line 630
    :cond_0
    throw v0
.end method

.method public pauseAllPlayersAndStopSelf()V
    .locals 4

    .line 490
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->getSessions()Ljava/util/List;

    move-result-object v0

    .line 491
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaSession;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 492
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession;

    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->stopSelf()V

    .line 495
    return-void
.end method

.method public final removeSession(Landroidx/media3/session/MediaSession;)V
    .locals 3
    .param p1, "session"    # Landroidx/media3/session/MediaSession;

    .line 294
    const-string/jumbo v0, "session must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "session not found"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 297
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    .line 300
    .local v0, "notificationManager":Landroidx/media3/session/MediaNotificationManager;
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->mainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;)V

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 306
    return-void

    .line 298
    .end local v0    # "notificationManager":Landroidx/media3/session/MediaNotificationManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final setListener(Landroidx/media3/session/MediaSessionService$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/session/MediaSessionService$Listener;

    .line 339
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iput-object p1, p0, Landroidx/media3/session/MediaSessionService;->listener:Landroidx/media3/session/MediaSessionService$Listener;

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final setMediaNotificationProvider(Landroidx/media3/session/MediaNotification$Provider;)V
    .locals 2
    .param p1, "mediaNotificationProvider"    # Landroidx/media3/session/MediaNotification$Provider;

    .line 601
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_0
    iput-object p1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    .line 604
    monitor-exit v0

    .line 605
    return-void

    .line 604
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
