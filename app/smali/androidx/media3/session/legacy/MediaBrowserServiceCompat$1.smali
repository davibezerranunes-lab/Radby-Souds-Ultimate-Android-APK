.class Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;
.super Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
        "Ljava/util/List<",
        "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/legacy/MediaBrowserServiceCompat;

.field final synthetic val$connection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

.field final synthetic val$notifyChildrenChangedOptions:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$subscribeOptions:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat;
    .param p2, "debug"    # Ljava/lang/Object;

    .line 1811
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->this$0:Landroidx/media3/session/legacy/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    iput-object p4, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    iput-object p5, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$subscribeOptions:Landroid/os/Bundle;

    iput-object p6, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$notifyChildrenChangedOptions:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 0

    .line 1811
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->onResultSent(Ljava/util/List;)V

    return-void
.end method

.method onResultSent(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1814
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->this$0:Landroidx/media3/session/legacy/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, v1, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    const-string v2, "MBServiceCompat"

    if-eq v0, v1, :cond_1

    .line 1815
    sget-boolean v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not sending onLoadChildren result for connection that has been disconnected. pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, v1, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_0
    return-void

    .line 1828
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1829
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->this$0:Landroidx/media3/session/legacy/MediaBrowserServiceCompat;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$subscribeOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1830
    :cond_2
    move-object v0, p1

    :goto_0
    nop

    .line 1832
    .local v0, "filteredList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, v1, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$subscribeOptions:Landroid/os/Bundle;

    iget-object v5, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$notifyChildrenChangedOptions:Landroid/os/Bundle;

    invoke-interface {v1, v3, v0, v4, v5}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;->onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    goto :goto_1

    .line 1834
    :catch_0
    move-exception v1

    .line 1836
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onLoadChildren() failed for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v4, v4, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
