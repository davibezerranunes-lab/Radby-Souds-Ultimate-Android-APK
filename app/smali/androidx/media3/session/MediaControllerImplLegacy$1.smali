.class Landroidx/media3/session/MediaControllerImplLegacy$1;
.super Landroid/os/ResultReceiver;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaControllerImplLegacy;->sendCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaControllerImplLegacy;

.field final synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/os/Handler;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/session/MediaControllerImplLegacy;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 600
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$1;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy$1;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 603
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$1;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Landroidx/media3/session/SessionResult;

    .line 605
    if-nez p2, :cond_0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-direct {v1, p1, v2}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    .line 603
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 606
    return-void
.end method
