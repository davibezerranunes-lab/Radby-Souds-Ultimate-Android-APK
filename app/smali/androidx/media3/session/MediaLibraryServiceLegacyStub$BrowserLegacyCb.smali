.class final Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;
.super Ljava/lang/Object;
.source "MediaLibraryServiceLegacyStub.java"

# interfaces
.implements Landroidx/media3/session/MediaSession$ControllerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaLibraryServiceLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrowserLegacyCb"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

.field private final searchRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p2, "remoteUserInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    .line 599
    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->lock:Ljava/lang/Object;

    .line 602
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->searchRequests:Ljava/util/List;

    .line 605
    iput-object p2, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    .line 606
    return-void
.end method

.method static synthetic access$400(Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;
    .param p1, "x1"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    .line 591
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->registerSearchRequest(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    return-void
.end method

.method private registerSearchRequest(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 9
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 678
    .local p4, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->searchRequests:Ljava/util/List;

    new-instance v8, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;

    .line 680
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getRemoteUserInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v4

    move-object v2, v8

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    .line 679
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 691
    if-ne p0, p1, :cond_0

    .line 692
    const/4 v0, 0x1

    return v0

    .line 694
    :cond_0
    instance-of v0, p1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    if-nez v0, :cond_1

    .line 695
    const/4 v0, 0x0

    return v0

    .line 697
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    .line 698
    .local v0, "other":Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    iget-object v2, v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 686
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method synthetic lambda$onSearchResultChanged$0$androidx-media3-session-MediaLibraryServiceLegacyStub$BrowserLegacyCb(Ljava/util/List;)V
    .locals 11
    .param p1, "searchRequests"    # Ljava/util/List;

    .line 641
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 642
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;

    .line 643
    .local v1, "request":Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;
    const/4 v2, 0x0

    .line 644
    .local v2, "page":I
    const v3, 0x7fffffff

    .line 645
    .local v3, "pageSize":I
    iget-object v4, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 647
    :try_start_0
    iget-object v4, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->extras:Landroid/os/Bundle;

    iget-object v5, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    invoke-static {v5}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->access$100(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)Landroidx/media3/session/MediaLibrarySessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 648
    iget-object v4, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->extras:Landroid/os/Bundle;

    const-string v5, "android.media.browse.extra.PAGE"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 649
    iget-object v4, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->extras:Landroid/os/Bundle;

    const-string v5, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 653
    goto :goto_1

    .line 650
    :catch_0
    move-exception v4

    .line 651
    .local v4, "e":Landroid/os/BadParcelableException;
    iget-object v5, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->result:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 652
    return-void

    .line 655
    .end local v4    # "e":Landroid/os/BadParcelableException;
    :cond_0
    :goto_1
    if-ltz v2, :cond_1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 656
    :cond_1
    const/4 v2, 0x0

    .line 657
    const v3, 0x7fffffff

    .line 660
    :cond_2
    iget-object v4, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    .line 662
    invoke-static {v4}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->access$100(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)Landroidx/media3/session/MediaLibrarySessionImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->extras:Landroid/os/Bundle;

    .line 661
    invoke-static {v4, v5}, Landroidx/media3/session/LegacyConversions;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v10

    .line 663
    .local v10, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    iget-object v4, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    .line 664
    invoke-static {v4}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->access$100(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)Landroidx/media3/session/MediaLibrarySessionImpl;

    move-result-object v4

    iget-object v5, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v6, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->query:Ljava/lang/String;

    move v7, v2

    move v8, v3

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetSearchResultOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 666
    .local v4, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;>;"
    iget-object v5, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    .line 667
    invoke-static {v5}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->access$200(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 668
    .local v5, "mediaItemsFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    iget-object v6, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->result:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    invoke-static {v6, v5}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->access$300(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 641
    .end local v1    # "request":Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;
    .end local v2    # "page":I
    .end local v3    # "pageSize":I
    .end local v4    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;>;>;"
    .end local v5    # "mediaItemsFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    .end local v10    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public onChildrenChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    if-eqz p4, :cond_0

    iget-object v0, p4, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 613
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    iget-object v2, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    if-eqz v0, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_1
    invoke-virtual {v1, v2, p2, v3}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->notifyChildrenChanged(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 614
    return-void
.end method

.method public onSearchResultChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 6
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v0, "searchRequests":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;>;"
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->searchRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 627
    iget-object v3, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->searchRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;

    .line 628
    .local v3, "iter":Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;
    iget-object v4, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    iget-object v5, v3, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->query:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v4, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->searchRequests:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 626
    .end local v3    # "iter":Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 633
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 634
    monitor-exit v1

    return-void

    .line 636
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    .line 639
    invoke-static {v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->access$100(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)Landroidx/media3/session/MediaLibrarySessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;Ljava/util/List;)V

    .line 638
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 671
    return-void

    .line 636
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
