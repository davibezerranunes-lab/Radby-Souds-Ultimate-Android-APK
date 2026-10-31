.class Landroidx/media3/session/MediaBrowserImplLegacy$3;
.super Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaBrowserImplLegacy;->getSearchResult(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

.field final synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 347
    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$3;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    iput-object p2, p0, Landroidx/media3/session/MediaBrowserImplLegacy$3;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extrasSent"    # Landroid/os/Bundle;

    .line 359
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$3;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, -0x1

    invoke-static {v1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extrasSent"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$3;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 353
    invoke-static {p3}, Landroidx/media3/session/LegacyConversions;->convertBrowserItemListToMediaItemList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 352
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/session/LibraryResult;->ofItemList(Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object v1

    .line 351
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 355
    return-void
.end method
