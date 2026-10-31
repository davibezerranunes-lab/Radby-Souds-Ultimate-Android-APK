.class Landroidx/media3/session/MediaBrowserImplLegacy$2;
.super Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaBrowserImplLegacy;->search(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaBrowserImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaBrowserImplLegacy;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 295
    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$2;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onError$1$androidx-media3-session-MediaBrowserImplLegacy$2(Ljava/lang/String;Landroidx/media3/session/MediaBrowser$Listener;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "listener"    # Landroidx/media3/session/MediaBrowser$Listener;

    .line 320
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$2;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p2, v0, p1, v1, v2}, Landroidx/media3/session/MediaBrowser$Listener;->onSearchResultChanged(Landroidx/media3/session/MediaBrowser;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 321
    return-void
.end method

.method synthetic lambda$onSearchResult$0$androidx-media3-session-MediaBrowserImplLegacy$2(Ljava/lang/String;Ljava/util/List;Landroidx/media3/session/MediaBrowser$Listener;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "items"    # Ljava/util/List;
    .param p3, "listener"    # Landroidx/media3/session/MediaBrowser$Listener;

    .line 307
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$2;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p3, v0, p1, v1, v2}, Landroidx/media3/session/MediaBrowser$Listener;->onSearchResultChanged(Landroidx/media3/session/MediaBrowser;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 308
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 313
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$2;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaBrowserImplLegacy$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaBrowserImplLegacy$2$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy$2;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->notifyBrowserListener(Landroidx/media3/common/util/Consumer;)V

    .line 322
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
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

    .line 299
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$2;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaBrowserImplLegacy$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3}, Landroidx/media3/session/MediaBrowserImplLegacy$2$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy$2;Ljava/lang/String;Ljava/util/List;)V

    .line 300
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->notifyBrowserListener(Landroidx/media3/common/util/Consumer;)V

    .line 309
    return-void
.end method
