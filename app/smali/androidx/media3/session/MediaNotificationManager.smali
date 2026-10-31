.class final Landroidx/media3/session/MediaNotificationManager;
.super Ljava/lang/Object;
.source "MediaNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;,
        Landroidx/media3/session/MediaNotificationManager$Api24;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaNtfMng"


# instance fields
.field private final actionFactory:Landroidx/media3/session/MediaNotification$ActionFactory;

.field private final controllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media3/session/MediaSession;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private mediaNotification:Landroidx/media3/session/MediaNotification;

.field private final mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

.field private final mediaSessionService:Landroidx/media3/session/MediaSessionService;

.field private final notificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

.field private final startSelfIntent:Landroid/content/Intent;

.field private startedInForeground:Z

.field private totalNotificationCount:I


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaNotification$Provider;Landroidx/media3/session/MediaNotification$ActionFactory;)V
    .locals 3
    .param p1, "mediaSessionService"    # Landroidx/media3/session/MediaSessionService;
    .param p2, "mediaNotificationProvider"    # Landroidx/media3/session/MediaNotification$Provider;
    .param p3, "actionFactory"    # Landroidx/media3/session/MediaNotification$ActionFactory;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroidx/media3/session/MediaNotificationManager;->mediaSessionService:Landroidx/media3/session/MediaSessionService;

    .line 76
    iput-object p2, p0, Landroidx/media3/session/MediaNotificationManager;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    .line 77
    iput-object p3, p0, Landroidx/media3/session/MediaNotificationManager;->actionFactory:Landroidx/media3/session/MediaNotification$ActionFactory;

    .line 78
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->notificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 81
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->startSelfIntent:Landroid/content/Intent;

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->controllerMap:Ljava/util/Map;

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/session/MediaNotificationManager;->startedInForeground:Z

    .line 84
    return-void
.end method

.method private getConnectedControllerForSession(Landroidx/media3/session/MediaSession;)Landroidx/media3/session/MediaController;
    .locals 3
    .param p1, "session"    # Landroidx/media3/session/MediaSession;

    .line 261
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->controllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 262
    .local v0, "controller":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/MediaController;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaController;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 267
    :catch_0
    move-exception v1

    .line 269
    .local v1, "exception":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 263
    .end local v1    # "exception":Ljava/util/concurrent/ExecutionException;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$new$0(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "mainHandler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 80
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method private maybeStopForegroundService(Z)V
    .locals 4
    .param p1, "removeNotifications"    # Z

    .line 236
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->mediaSessionService:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionService;->getSessions()Ljava/util/List;

    move-result-object v0

    .line 237
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaSession;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroidx/media3/session/MediaNotificationManager;->shouldRunInForeground(Landroidx/media3/session/MediaSession;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    return-void

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaNotificationManager;->stopForeground(Z)V

    .line 243
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->mediaNotification:Landroidx/media3/session/MediaNotification;

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->notificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    iget-object v2, p0, Landroidx/media3/session/MediaNotificationManager;->mediaNotification:Landroidx/media3/session/MediaNotification;

    iget v2, v2, Landroidx/media3/session/MediaNotification;->notificationId:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 247
    iget v1, p0, Landroidx/media3/session/MediaNotificationManager;->totalNotificationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/session/MediaNotificationManager;->totalNotificationCount:I

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->mediaNotification:Landroidx/media3/session/MediaNotification;

    .line 250
    :cond_2
    return-void
.end method

.method private onNotificationUpdated(ILandroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;)V
    .locals 1
    .param p1, "notificationSequence"    # I
    .param p2, "session"    # Landroidx/media3/session/MediaSession;
    .param p3, "mediaNotification"    # Landroidx/media3/session/MediaNotification;

    .line 198
    iget v0, p0, Landroidx/media3/session/MediaNotificationManager;->totalNotificationCount:I

    if-ne p1, v0, :cond_0

    .line 199
    nop

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroidx/media3/session/MediaNotificationManager;->shouldRunInForeground(Landroidx/media3/session/MediaSession;Z)Z

    move-result v0

    .line 201
    .local v0, "startInForegroundRequired":Z
    invoke-direct {p0, p2, p3, v0}, Landroidx/media3/session/MediaNotificationManager;->updateNotificationInternal(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;Z)V

    .line 203
    .end local v0    # "startInForegroundRequired":Z
    :cond_0
    return-void
.end method

.method private sendCustomCommandIfCommandIsAvailable(Landroidx/media3/session/MediaController;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "mediaController"    # Landroidx/media3/session/MediaController;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "customCommand":Landroidx/media3/session/SessionCommand;
    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/SessionCommand;

    .line 277
    .local v2, "command":Landroidx/media3/session/SessionCommand;
    iget v3, v2, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v3, :cond_0

    iget-object v3, v2, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    .line 278
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    move-object v0, v2

    .line 280
    goto :goto_1

    .line 282
    .end local v2    # "command":Landroidx/media3/session/SessionCommand;
    :cond_0
    goto :goto_0

    .line 283
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    new-instance v1, Landroidx/media3/session/SessionCommand;

    invoke-direct {v1, p2, p3}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 286
    invoke-virtual {p1, v1, v2}, Landroidx/media3/session/MediaController;->sendCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 288
    .local v1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    new-instance v2, Landroidx/media3/session/MediaNotificationManager$1;

    invoke-direct {v2, p0, p2}, Landroidx/media3/session/MediaNotificationManager$1;-><init>(Landroidx/media3/session/MediaNotificationManager;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 288
    invoke-static {v1, v2, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 303
    .end local v1    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    :cond_2
    return-void
.end method

.method private shouldShowNotification(Landroidx/media3/session/MediaSession;)Z
    .locals 3
    .param p1, "session"    # Landroidx/media3/session/MediaSession;

    .line 253
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaNotificationManager;->getConnectedControllerForSession(Landroidx/media3/session/MediaSession;)Landroidx/media3/session/MediaController;

    move-result-object v0

    .line 254
    .local v0, "controller":Landroidx/media3/session/MediaController;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 254
    :goto_0
    return v2
.end method

.method private startForeground(Landroidx/media3/session/MediaNotification;)V
    .locals 5
    .param p1, "mediaNotification"    # Landroidx/media3/session/MediaNotification;

    .line 363
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->mediaSessionService:Landroidx/media3/session/MediaSessionService;

    iget-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->startSelfIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 364
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->mediaSessionService:Landroidx/media3/session/MediaSessionService;

    iget v1, p1, Landroidx/media3/session/MediaNotification;->notificationId:I

    iget-object v2, p1, Landroidx/media3/session/MediaNotification;->notification:Landroid/app/Notification;

    const/4 v3, 0x2

    const-string v4, "mediaPlayback"

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/media3/common/util/Util;->setForegroundServiceNotification(Landroid/app/Service;ILandroid/app/Notification;ILjava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaNotificationManager;->startedInForeground:Z

    .line 371
    return-void
.end method

.method private stopForeground(Z)V
    .locals 2
    .param p1, "removeNotifications"    # Z

    .line 376
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->mediaSessionService:Landroidx/media3/session/MediaSessionService;

    invoke-static {v0, p1}, Landroidx/media3/session/MediaNotificationManager$Api24;->stopForeground(Landroidx/media3/session/MediaSessionService;Z)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->mediaSessionService:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionService;->stopForeground(Z)V

    .line 381
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/session/MediaNotificationManager;->startedInForeground:Z

    .line 382
    return-void
.end method

.method private updateNotificationInternal(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;Z)V
    .locals 4
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "mediaNotification"    # Landroidx/media3/session/MediaNotification;
    .param p3, "startInForegroundRequired"    # Z

    .line 213
    nop

    .line 215
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 216
    .local v0, "fwkToken":Landroid/media/session/MediaSession$Token;
    iget-object v1, p2, Landroidx/media3/session/MediaNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.mediaSession"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 217
    iput-object p2, p0, Landroidx/media3/session/MediaNotificationManager;->mediaNotification:Landroidx/media3/session/MediaNotification;

    .line 218
    if-eqz p3, :cond_0

    .line 219
    invoke-direct {p0, p2}, Landroidx/media3/session/MediaNotificationManager;->startForeground(Landroidx/media3/session/MediaNotification;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->notificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    iget v2, p2, Landroidx/media3/session/MediaNotification;->notificationId:I

    iget-object v3, p2, Landroidx/media3/session/MediaNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 225
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaNotificationManager;->maybeStopForegroundService(Z)V

    .line 227
    :goto_0
    return-void
.end method


# virtual methods
.method public addSession(Landroidx/media3/session/MediaSession;)V
    .locals 5
    .param p1, "session"    # Landroidx/media3/session/MediaSession;

    .line 87
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->controllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;

    iget-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->mediaSessionService:Landroidx/media3/session/MediaSessionService;

    invoke-direct {v0, v1, p1}, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;-><init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaSession;)V

    .line 91
    .local v0, "listener":Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v1, "connectionHints":Landroid/os/Bundle;
    const-string v2, "androidx.media3.session.MediaNotificationManager"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    new-instance v2, Landroidx/media3/session/MediaController$Builder;

    iget-object v3, p0, Landroidx/media3/session/MediaNotificationManager;->mediaSessionService:Landroidx/media3/session/MediaSessionService;

    .line 94
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/media3/session/MediaController$Builder;-><init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;)V

    .line 95
    invoke-virtual {v2, v1}, Landroidx/media3/session/MediaController$Builder;->setConnectionHints(Landroid/os/Bundle;)Landroidx/media3/session/MediaController$Builder;

    move-result-object v2

    .line 96
    invoke-virtual {v2, v0}, Landroidx/media3/session/MediaController$Builder;->setListener(Landroidx/media3/session/MediaController$Listener;)Landroidx/media3/session/MediaController$Builder;

    move-result-object v2

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaController$Builder;->setApplicationLooper(Landroid/os/Looper;)Landroidx/media3/session/MediaController$Builder;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Landroidx/media3/session/MediaController$Builder;->buildAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 99
    .local v2, "controllerFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/MediaController;>;"
    iget-object v3, p0, Landroidx/media3/session/MediaNotificationManager;->controllerMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v3, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v2, v0, p1}, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaNotificationManager;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;Landroidx/media3/session/MediaSession;)V

    iget-object v4, p0, Landroidx/media3/session/MediaNotificationManager;->mainExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 115
    return-void
.end method

.method public isStartedInForeground()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Landroidx/media3/session/MediaNotificationManager;->startedInForeground:Z

    return v0
.end method

.method synthetic lambda$addSession$1$androidx-media3-session-MediaNotificationManager(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;Landroidx/media3/session/MediaSession;)V
    .locals 3
    .param p1, "controllerFuture"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p2, "listener"    # Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;
    .param p3, "session"    # Landroidx/media3/session/MediaSession;

    .line 103
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaController;

    .line 104
    .local v0, "controller":Landroidx/media3/session/MediaController;
    invoke-direct {p0, p3}, Landroidx/media3/session/MediaNotificationManager;->shouldShowNotification(Landroidx/media3/session/MediaSession;)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->onConnected(Z)V

    .line 105
    invoke-virtual {v0, p2}, Landroidx/media3/session/MediaController;->addListener(Landroidx/media3/common/Player$Listener;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "controller":Landroidx/media3/session/MediaController;
    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->mediaSessionService:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {v1, p3}, Landroidx/media3/session/MediaSessionService;->removeSession(Landroidx/media3/session/MediaSession;)V

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method synthetic lambda$onCustomAction$2$androidx-media3-session-MediaNotificationManager(Landroidx/media3/session/MediaController;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaController"    # Landroidx/media3/session/MediaController;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaNotificationManager;->sendCustomCommandIfCommandIsAvailable(Landroidx/media3/session/MediaController;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$onCustomAction$3$androidx-media3-session-MediaNotificationManager(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/MediaController;)V
    .locals 2
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "mediaController"    # Landroidx/media3/session/MediaController;

    .line 133
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/session/MediaNotification$Provider;->handleCustomCommand(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p4, p2, p3}, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaController;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 137
    :cond_0
    return-void
.end method

.method synthetic lambda$updateNotification$4$androidx-media3-session-MediaNotificationManager(ILandroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;)V
    .locals 0
    .param p1, "notificationSequence"    # I
    .param p2, "session"    # Landroidx/media3/session/MediaSession;
    .param p3, "notification"    # Landroidx/media3/session/MediaNotification;

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaNotificationManager;->onNotificationUpdated(ILandroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;)V

    return-void
.end method

.method synthetic lambda$updateNotification$5$androidx-media3-session-MediaNotificationManager(ILandroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;)V
    .locals 2
    .param p1, "notificationSequence"    # I
    .param p2, "session"    # Landroidx/media3/session/MediaSession;
    .param p3, "notification"    # Landroidx/media3/session/MediaNotification;

    .line 168
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaNotificationManager;ILandroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$updateNotification$6$androidx-media3-session-MediaNotificationManager(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;Z)V
    .locals 0
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "mediaNotification"    # Landroidx/media3/session/MediaNotification;
    .param p3, "startInForegroundRequired"    # Z

    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaNotificationManager;->updateNotificationInternal(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;Z)V

    return-void
.end method

.method synthetic lambda$updateNotification$7$androidx-media3-session-MediaNotificationManager(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaNotification$Provider$Callback;Z)V
    .locals 3
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "mediaButtonPreferences"    # Lcom/google/common/collect/ImmutableList;
    .param p3, "callback"    # Landroidx/media3/session/MediaNotification$Provider$Callback;
    .param p4, "startInForegroundRequired"    # Z

    .line 173
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    iget-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->actionFactory:Landroidx/media3/session/MediaNotification$ActionFactory;

    .line 174
    invoke-interface {v0, p1, p2, v1, p3}, Landroidx/media3/session/MediaNotification$Provider;->createNotification(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaNotification$ActionFactory;Landroidx/media3/session/MediaNotification$Provider$Callback;)Landroidx/media3/session/MediaNotification;

    move-result-object v0

    .line 176
    .local v0, "mediaNotification":Landroidx/media3/session/MediaNotification;
    iget-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0, p4}, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public onCustomAction(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 125
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaNotificationManager;->getConnectedControllerForSession(Landroidx/media3/session/MediaSession;)Landroidx/media3/session/MediaController;

    move-result-object v6

    .line 126
    .local v6, "mediaController":Landroidx/media3/session/MediaController;
    if-nez v6, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    new-instance v7, Landroid/os/Handler;

    .line 131
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/MediaController;)V

    .line 130
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method

.method public removeSession(Landroidx/media3/session/MediaSession;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSession;

    .line 118
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->controllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 119
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/MediaController;>;"
    if-eqz v0, :cond_0

    .line 120
    invoke-static {v0}, Landroidx/media3/session/MediaController;->releaseFuture(Ljava/util/concurrent/Future;)V

    .line 122
    :cond_0
    return-void
.end method

.method shouldRunInForeground(Landroidx/media3/session/MediaSession;Z)Z
    .locals 3
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "startInForegroundWhenPaused"    # Z

    .line 189
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaNotificationManager;->getConnectedControllerForSession(Landroidx/media3/session/MediaSession;)Landroidx/media3/session/MediaController;

    move-result-object v0

    .line 190
    .local v0, "controller":Landroidx/media3/session/MediaController;
    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getPlayWhenReady()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_2

    .line 192
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 193
    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1
.end method

.method public updateNotification(Landroidx/media3/session/MediaSession;Z)V
    .locals 11
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "startInForegroundRequired"    # Z

    .line 147
    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->mediaSessionService:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionService;->isSessionAdded(Landroidx/media3/session/MediaSession;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaNotificationManager;->shouldShowNotification(Landroidx/media3/session/MediaSession;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 152
    :cond_0
    iget v0, p0, Landroidx/media3/session/MediaNotificationManager;->totalNotificationCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/session/MediaNotificationManager;->totalNotificationCount:I

    .line 153
    .local v0, "notificationSequence":I
    const/4 v1, 0x0

    .line 154
    .local v1, "mediaNotificationController":Landroidx/media3/session/MediaController;
    iget-object v2, p0, Landroidx/media3/session/MediaNotificationManager;->controllerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 155
    .local v2, "controller":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/MediaController;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    :try_start_0
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaController;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v3

    .line 163
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v1}, Landroidx/media3/session/MediaController;->getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    .line 165
    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v7, v3

    :goto_1
    nop

    .line 166
    .local v7, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    new-instance v8, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0, v0, p1}, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/session/MediaNotificationManager;ILandroidx/media3/session/MediaSession;)V

    .line 170
    .local v8, "callback":Landroidx/media3/session/MediaNotification$Provider$Callback;
    new-instance v3, Landroid/os/Handler;

    .line 171
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v4

    invoke-interface {v4}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda6;

    move-object v4, v10

    move-object v5, p0

    move-object v6, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaNotification$Provider$Callback;Z)V

    .line 170
    invoke-static {v3, v10}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 181
    return-void

    .line 148
    .end local v0    # "notificationSequence":I
    .end local v1    # "mediaNotificationController":Landroidx/media3/session/MediaController;
    .end local v2    # "controller":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/MediaController;>;"
    .end local v7    # "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .end local v8    # "callback":Landroidx/media3/session/MediaNotification$Provider$Callback;
    :cond_3
    :goto_2
    invoke-direct {p0, v1}, Landroidx/media3/session/MediaNotificationManager;->maybeStopForegroundService(Z)V

    .line 149
    return-void
.end method
