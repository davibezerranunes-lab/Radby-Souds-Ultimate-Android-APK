.class Landroidx/media3/session/MediaBrowserImplLegacy$4;
.super Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaBrowserImplLegacy;->sendCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

.field final synthetic val$settable:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 375
    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$4;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    iput-object p2, p0, Landroidx/media3/session/MediaBrowserImplLegacy$4;->val$settable:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 386
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 387
    .local v0, "mergedBundles":Landroid/os/Bundle;
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 388
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$4;->val$settable:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Landroidx/media3/session/SessionResult;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method public onResult(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "resultData"    # Landroid/os/Bundle;

    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 380
    .local v0, "mergedBundles":Landroid/os/Bundle;
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 381
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$4;->val$settable:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Landroidx/media3/session/SessionResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 382
    return-void
.end method
