.class Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;
.super Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaBrowserImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetChildrenCallback"
.end annotation


# instance fields
.field private final future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final parentId:Ljava/lang/String;

.field final synthetic this$0:Landroidx/media3/session/MediaBrowserImplLegacy;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/String;)V
    .locals 0
    .param p3, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 627
    .local p2, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;>;"
    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 628
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 629
    iput-object p2, p0, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 630
    iput-object p3, p0, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->parentId:Ljava/lang/String;

    .line 631
    return-void
.end method

.method private onChildrenLoadedInternal(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 663
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    const-string v0, "MB2ImplLegacy"

    const-string v1, "GetChildrenCallback.onChildrenLoaded(): Ignoring empty parentId"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    .line 668
    .local v0, "browserCompat":Landroidx/media3/session/legacy/MediaBrowserCompat;
    if-nez v0, :cond_1

    .line 669
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const/16 v2, -0x64

    invoke-static {v2}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 670
    return-void

    .line 672
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;)V

    .line 674
    if-nez p2, :cond_2

    .line 676
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v2, -0x1

    invoke-static {v2}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    :cond_2
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 684
    invoke-static {p2}, Landroidx/media3/session/LegacyConversions;->convertBrowserItemListToMediaItemList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 683
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/media3/session/LibraryResult;->ofItemList(Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object v2

    .line 682
    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 687
    :goto_0
    return-void
.end method

.method private onErrorInternal()V
    .locals 2

    .line 658
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, -0x1

    invoke-static {v1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 659
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 646
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->onChildrenLoadedInternal(Ljava/lang/String;Ljava/util/List;)V

    .line 647
    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 654
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->onChildrenLoadedInternal(Ljava/lang/String;Ljava/util/List;)V

    .line 655
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;

    .line 635
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->onErrorInternal()V

    .line 636
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 640
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;->onErrorInternal()V

    .line 641
    return-void
.end method
