.class Landroidx/media3/session/MediaControllerStub;
.super Landroidx/media3/session/IMediaController$Stub;
.source "MediaControllerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaControllerStub$ControllerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaControllerStub"

.field public static final VERSION_INT:I = 0x7


# instance fields
.field private final controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaControllerImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 47
    invoke-direct {p0}, Landroidx/media3/session/IMediaController$Stub;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    .line 49
    return-void
.end method

.method private dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/media3/session/MediaControllerImplBase;",
            ">(",
            "Landroidx/media3/session/MediaControllerStub$ControllerTask<",
            "TT;>;)V"
        }
    .end annotation

    .line 384
    .local p1, "task":Landroidx/media3/session/MediaControllerStub$ControllerTask;, "Landroidx/media3/session/MediaControllerStub$ControllerTask<TT;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 386
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaControllerImplBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .local v2, "controller":Landroidx/media3/session/MediaControllerImplBase;
    if-nez v2, :cond_0

    .line 402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    return-void

    .line 390
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    .line 391
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2, p1}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    nop

    .end local v2    # "controller":Landroidx/media3/session/MediaControllerImplBase;
    .end local v3    # "handler":Landroid/os/Handler;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    nop

    .line 404
    return-void

    .line 402
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    throw v2
.end method

.method private getSessionInterfaceVersion()I
    .locals 3

    .line 408
    iget-object v0, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaControllerImplBase;

    .line 409
    .local v0, "controller":Landroidx/media3/session/MediaControllerImplBase;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 410
    return v1

    .line 412
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->getConnectedToken()Landroidx/media3/session/SessionToken;

    move-result-object v2

    .line 413
    .local v2, "connectedToken":Landroidx/media3/session/SessionToken;
    if-nez v2, :cond_1

    .line 415
    return v1

    .line 417
    :cond_1
    invoke-virtual {v2}, Landroidx/media3/session/SessionToken;->getInterfaceVersion()I

    move-result v1

    return v1
.end method

.method static synthetic lambda$dispatchControllerTaskOnHandler$16(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/MediaControllerStub$ControllerTask;)V
    .locals 1
    .param p0, "controller"    # Landroidx/media3/session/MediaControllerImplBase;
    .param p1, "task"    # Landroidx/media3/session/MediaControllerStub$ControllerTask;

    .line 394
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    return-void

    .line 398
    :cond_0
    move-object v0, p0

    .line 399
    .local v0, "castedController":Landroidx/media3/session/MediaControllerImplBase;, "TT;"
    invoke-interface {p1, v0}, Landroidx/media3/session/MediaControllerStub$ControllerTask;->run(Landroidx/media3/session/MediaControllerImplBase;)V

    .line 400
    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChangedFromPlayer$7(Landroidx/media3/common/Player$Commands;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "commandsFromPlayer"    # Landroidx/media3/common/Player$Commands;
    .param p1, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 195
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->onAvailableCommandsChangedFromPlayer(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChangedFromSession$6(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p1, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .param p2, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 179
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onAvailableCommandsChangedFromSession(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onChildrenChanged$15(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaBrowserImplBase;)V
    .locals 0
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "itemCount"    # I
    .param p2, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p3, "browser"    # Landroidx/media3/session/MediaBrowserImplBase;

    .line 361
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplBase;->notifyChildrenChanged(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method static synthetic lambda$onConnected$0(Landroidx/media3/session/ConnectionState;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "connectionState"    # Landroidx/media3/session/ConnectionState;
    .param p1, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 100
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->onConnected(Landroidx/media3/session/ConnectionState;)V

    return-void
.end method

.method static synthetic lambda$onCustomCommand$8(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "seq"    # I
    .param p1, "command"    # Landroidx/media3/session/SessionCommand;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 211
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->onCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$1(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 3
    .param p0, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 107
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda43;

    invoke-direct {v2, v1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda43;-><init>(Landroidx/media3/session/MediaController;)V

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onError$13(ILandroidx/media3/session/SessionError;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "seq"    # I
    .param p1, "error"    # Landroidx/media3/session/SessionError;
    .param p2, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 304
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onError(ILandroidx/media3/session/SessionError;)V

    return-void
.end method

.method static synthetic lambda$onExtrasChanged$12(Landroid/os/Bundle;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 292
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$onPeriodicSessionPositionInfoChanged$10(Landroidx/media3/session/SessionPositionInfo;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;
    .param p1, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 239
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->notifyPeriodicSessionPositionInfoChanged(Landroidx/media3/session/SessionPositionInfo;)V

    return-void
.end method

.method static synthetic lambda$onPlayerInfoChangedWithExclusions$11(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "bundlingExclusions"    # Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    .param p2, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 283
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onPlayerInfoChanged(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V

    return-void
.end method

.method static synthetic lambda$onSearchResultChanged$14(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaBrowserImplBase;)V
    .locals 0
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "itemCount"    # I
    .param p2, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p3, "browser"    # Landroidx/media3/session/MediaBrowserImplBase;

    .line 337
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplBase;->notifySearchResultChanged(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method static synthetic lambda$onSessionActivityChanged$9(ILandroid/app/PendingIntent;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "seq"    # I
    .param p1, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p2, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 222
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onSetSessionActivity(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic lambda$onSetCustomLayout$2(ILandroid/os/Bundle;)Landroidx/media3/session/CommandButton;
    .locals 1
    .param p0, "sessionInterfaceVersion"    # I
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 124
    invoke-static {p1, p0}, Landroidx/media3/session/CommandButton;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/session/CommandButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onSetCustomLayout$3(ILjava/util/List;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "seq"    # I
    .param p1, "layout"    # Ljava/util/List;
    .param p2, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 130
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onSetCustomLayout(ILjava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onSetMediaButtonPreferences$4(ILandroid/os/Bundle;)Landroidx/media3/session/CommandButton;
    .locals 1
    .param p0, "sessionInterfaceVersion"    # I
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 147
    invoke-static {p1, p0}, Landroidx/media3/session/CommandButton;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/session/CommandButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onSetMediaButtonPreferences$5(ILcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "seq"    # I
    .param p1, "mediaButtonPreferences"    # Lcom/google/common/collect/ImmutableList;
    .param p2, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 154
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onSetMediaButtonPreferences(ILjava/util/List;)V

    return-void
.end method

.method private setControllerFutureResult(ILjava/lang/Object;)V
    .locals 3
    .param p1, "sequenceNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .line 370
    .local p2, "futureResult":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 372
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaControllerImplBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .local v2, "controller":Landroidx/media3/session/MediaControllerImplBase;
    if-nez v2, :cond_0

    .line 378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    return-void

    .line 376
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->setFutureResult(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    .end local v2    # "controller":Landroidx/media3/session/MediaControllerImplBase;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    nop

    .line 380
    return-void

    .line 378
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    throw v2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 365
    iget-object v0, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 366
    return-void
.end method

.method public onAvailableCommandsChangedFromPlayer(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "commandsBundle"    # Landroid/os/Bundle;

    .line 184
    if-nez p2, :cond_0

    .line 185
    return-void

    .line 189
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/common/Player$Commands;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v0, "commandsFromPlayer":Landroidx/media3/common/Player$Commands;
    nop

    .line 194
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/common/Player$Commands;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 196
    return-void

    .line 190
    .end local v0    # "commandsFromPlayer":Landroidx/media3/common/Player$Commands;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for Commands"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    return-void
.end method

.method public onAvailableCommandsChangedFromSession(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "sessionCommandsBundle"    # Landroid/os/Bundle;
    .param p3, "playerCommandsBundle"    # Landroid/os/Bundle;

    .line 160
    const-string v0, "MediaControllerStub"

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionCommands;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommands;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    .local v1, "sessionCommands":Landroidx/media3/session/SessionCommands;
    nop

    .line 172
    :try_start_1
    invoke-static {p3}, Landroidx/media3/common/Player$Commands;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    .local v0, "playerCommands":Landroidx/media3/common/Player$Commands;
    nop

    .line 177
    new-instance v2, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    invoke-direct {p0, v2}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 180
    return-void

    .line 173
    .end local v0    # "playerCommands":Landroidx/media3/common/Player$Commands;
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Ignoring malformed Bundle for Commands"

    invoke-static {v0, v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    return-void

    .line 166
    .end local v1    # "sessionCommands":Landroidx/media3/session/SessionCommands;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for SessionCommands"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    return-void

    .line 161
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onChildrenChanged(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 343
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaControllerStub"

    if-eqz v0, :cond_0

    .line 344
    const-string v0, "onChildrenChanged(): Ignoring empty parentId"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void

    .line 347
    :cond_0
    if-gez p3, :cond_1

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChildrenChanged(): Ignoring negative itemCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void

    .line 354
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

    .line 358
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 359
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda14;

    invoke-direct {v1, p2, p3, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 362
    return-void

    .line 355
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    return-void
.end method

.method public onConnected(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "connectionResultBundle"    # Landroid/os/Bundle;

    .line 89
    if-nez p2, :cond_0

    .line 90
    return-void

    .line 94
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/ConnectionState;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v0, "connectionState":Landroidx/media3/session/ConnectionState;
    nop

    .line 100
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/ConnectionState;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 101
    return-void

    .line 95
    .end local v0    # "connectionState":Landroidx/media3/session/ConnectionState;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Malformed Bundle for ConnectionResult. Disconnected from the session."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerStub;->onDisconnected(I)V

    .line 98
    return-void
.end method

.method public onCustomCommand(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "commandBundle"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 200
    const-string v0, "MediaControllerStub"

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionCommand;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .local v0, "command":Landroidx/media3/session/SessionCommand;
    nop

    .line 211
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, v0, p3}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda16;-><init>(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 212
    return-void

    .line 207
    .end local v0    # "command":Landroidx/media3/session/SessionCommand;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for SessionCommand"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    return-void

    .line 201
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    const-string v1, "Ignoring custom command with null args."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public onDisconnected(I)V
    .locals 1
    .param p1, "seq"    # I

    .line 105
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda13;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 108
    return-void
.end method

.method public onError(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "sessionError"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionError;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionError;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .local v0, "error":Landroidx/media3/session/SessionError;
    nop

    .line 304
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda10;-><init>(ILandroidx/media3/session/SessionError;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 305
    return-void

    .line 300
    .end local v0    # "error":Landroidx/media3/session/SessionError;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for SessionError"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    return-void
.end method

.method public onExtrasChanged(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 288
    if-nez p2, :cond_0

    .line 289
    const-string v0, "MediaControllerStub"

    const-string v1, "Ignoring null Bundle for extras"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void

    .line 292
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda17;

    invoke-direct {v0, p2}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda17;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 293
    return-void
.end method

.method public onLibraryResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "sequenceNum"    # I
    .param p2, "libraryResultBundle"    # Landroid/os/Bundle;

    .line 71
    if-nez p2, :cond_0

    .line 72
    return-void

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/LibraryResult;->fromUnknownBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v0, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    nop

    .line 84
    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerStub;->setControllerFutureResult(ILjava/lang/Object;)V

    .line 85
    return-void

    .line 77
    .end local v0    # "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for LibraryResult"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onPeriodicSessionPositionInfoChanged(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "sessionPositionInfoBundle"    # Landroid/os/Bundle;

    .line 228
    if-nez p2, :cond_0

    .line 229
    return-void

    .line 233
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionPositionInfo;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .local v0, "sessionPositionInfo":Landroidx/media3/session/SessionPositionInfo;
    nop

    .line 238
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/SessionPositionInfo;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 240
    return-void

    .line 234
    .end local v0    # "sessionPositionInfo":Landroidx/media3/session/SessionPositionInfo;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for SessionPositionInfo"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    return-void
.end method

.method public onPlayerInfoChanged(ILandroid/os/Bundle;Z)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "playerInfoBundle"    # Landroid/os/Bundle;
    .param p3, "isTimelineExcluded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    new-instance v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    .line 253
    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 249
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/session/MediaControllerStub;->onPlayerInfoChangedWithExclusions(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 254
    return-void
.end method

.method public onPlayerInfoChangedWithExclusions(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "playerInfoBundle"    # Landroid/os/Bundle;
    .param p3, "playerInfoExclusions"    # Landroid/os/Bundle;

    .line 260
    const-string v0, "MediaControllerStub"

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerStub;->getSessionInterfaceVersion()I

    move-result v1

    .line 266
    .local v1, "sessionInterfaceVersion":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 268
    return-void

    .line 270
    :cond_1
    invoke-static {p2, v1}, Landroidx/media3/session/PlayerInfo;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 274
    .local v1, "playerInfo":Landroidx/media3/session/PlayerInfo;
    nop

    .line 277
    :try_start_1
    invoke-static {p3}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .local v0, "bundlingExclusions":Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    nop

    .line 282
    new-instance v2, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V

    invoke-direct {p0, v2}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 284
    return-void

    .line 278
    .end local v0    # "bundlingExclusions":Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Ignoring malformed Bundle for BundlingExclusions"

    invoke-static {v0, v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    return-void

    .line 271
    .end local v1    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for PlayerInfo"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    return-void

    .line 261
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-void
.end method

.method public onRenderedFirstFrame(I)V
    .locals 1
    .param p1, "seq"    # I

    .line 309
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda11;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 310
    return-void
.end method

.method public onSearchResultChanged(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "libraryParamsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 319
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaControllerStub"

    if-eqz v0, :cond_0

    .line 320
    const-string/jumbo v0, "onSearchResultChanged(): Ignoring empty query"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void

    .line 323
    :cond_0
    if-gez p3, :cond_1

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSearchResultChanged(): Ignoring negative itemCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void

    .line 330
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

    .line 334
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 335
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p3, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 338
    return-void

    .line 331
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    return-void
.end method

.method public onSessionActivityChanged(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "sessionActivity"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    if-nez p2, :cond_0

    .line 218
    const-string v0, "MediaControllerStub"

    const-string v1, "Ignoring null session activity intent"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void

    .line 221
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda15;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 223
    return-void
.end method

.method public onSessionResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "sequenceNum"    # I
    .param p2, "sessionResultBundle"    # Landroid/os/Bundle;

    .line 53
    if-nez p2, :cond_0

    .line 54
    return-void

    .line 58
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionResult;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "result":Landroidx/media3/session/SessionResult;
    nop

    .line 66
    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerStub;->setControllerFutureResult(ILjava/lang/Object;)V

    .line 67
    return-void

    .line 59
    .end local v0    # "result":Landroidx/media3/session/SessionResult;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for SessionResult"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public onSetCustomLayout(ILjava/util/List;)V
    .locals 3
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p2, "commandButtonBundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez p2, :cond_0

    .line 113
    return-void

    .line 117
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerStub;->getSessionInterfaceVersion()I

    move-result v0

    .line 118
    .local v0, "sessionInterfaceVersion":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 120
    return-void

    .line 122
    :cond_1
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;-><init>(I)V

    .line 123
    invoke-static {v1, p2}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 129
    .local v0, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    nop

    .line 130
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda4;-><init>(ILjava/util/List;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 131
    return-void

    .line 126
    .end local v0    # "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for CommandButton"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method

.method public onSetMediaButtonPreferences(ILjava/util/List;)V
    .locals 3
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p2, "commandButtonBundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez p2, :cond_0

    .line 136
    return-void

    .line 140
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerStub;->getSessionInterfaceVersion()I

    move-result v0

    .line 141
    .local v0, "sessionInterfaceVersion":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 143
    return-void

    .line 145
    :cond_1
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda0;-><init>(I)V

    .line 146
    invoke-static {v1, p2}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 152
    .local v0, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    nop

    .line 153
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda9;-><init>(ILcom/google/common/collect/ImmutableList;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 155
    return-void

    .line 149
    .end local v0    # "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for CommandButton"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    return-void
.end method
