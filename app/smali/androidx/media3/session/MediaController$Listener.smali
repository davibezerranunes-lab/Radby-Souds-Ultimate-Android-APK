.class public interface abstract Landroidx/media3/session/MediaController$Listener;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onAvailableSessionCommandsChanged(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommands;)V
    .locals 0
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .param p2, "commands"    # Landroidx/media3/session/SessionCommands;

    .line 455
    return-void
.end method

.method public onCustomCommand(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaController;",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 475
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V
    .locals 0
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaController;",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 427
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    return-void
.end method

.method public onDisconnected(Landroidx/media3/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroidx/media3/session/MediaController;

    .line 387
    return-void
.end method

.method public onError(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionError;)V
    .locals 0
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .param p2, "sessionError"    # Landroidx/media3/session/SessionError;

    .line 516
    return-void
.end method

.method public onExtrasChanged(Landroidx/media3/session/MediaController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 484
    return-void
.end method

.method public onMediaButtonPreferencesChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V
    .locals 0
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaController;",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 446
    .local p2, "mediaButtonPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    return-void
.end method

.method public onSessionActivityChanged(Landroidx/media3/session/MediaController;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .param p2, "sessionActivity"    # Landroid/app/PendingIntent;

    .line 495
    return-void
.end method

.method public onSetCustomLayout(Landroidx/media3/session/MediaController;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaController;",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 406
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
