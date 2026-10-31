.class Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;
.super Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaBrowserImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribeCallback"
.end annotation


# instance fields
.field private final future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private receivedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriptionOptions:Landroid/os/Bundle;

.field private final subscriptionParentId:Ljava/lang/String;

.field final synthetic this$0:Landroidx/media3/session/MediaBrowserImplLegacy;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaBrowserImplLegacy;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p2, "subscriptionParentId"    # Ljava/lang/String;
    .param p3, "subscriptionOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 521
    .local p4, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroidx/media3/session/LibraryResult<Ljava/lang/Void;>;>;"
    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 522
    iput-object p2, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionParentId:Ljava/lang/String;

    .line 523
    iput-object p3, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionOptions:Landroid/os/Bundle;

    .line 524
    iput-object p4, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 525
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;

    .line 510
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->receivedChildren:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;
    .param p1, "x1"    # Ljava/util/List;

    .line 510
    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->receivedChildren:Ljava/util/List;

    return-object p1
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

    .line 573
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "MB2ImplLegacy"

    const-string v1, "SubscribeCallback.onChildrenLoaded(): Ignoring empty parentId"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    .line 578
    .local v0, "browserCompat":Landroidx/media3/session/legacy/MediaBrowserCompat;
    if-nez v0, :cond_1

    .line 580
    return-void

    .line 582
    :cond_1
    if-nez p2, :cond_2

    .line 588
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionParentId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionOptions:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 589
    return-void

    .line 592
    :cond_2
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    iget-object v1, v1, Landroidx/media3/session/MediaBrowserImplLegacy;->context:Landroid/content/Context;

    .line 594
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->getNotifyChildrenChangedOptions()Landroid/os/Bundle;

    move-result-object v2

    .line 593
    invoke-static {v1, v2}, Landroidx/media3/session/LegacyConversions;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v1

    .line 595
    .local v1, "params":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    iput-object p2, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->receivedChildren:Ljava/util/List;

    .line 596
    iget-object v2, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-virtual {v2}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, v1}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;Ljava/lang/String;Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 597
    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaBrowser;->notifyBrowserListener(Landroidx/media3/common/util/Consumer;)V

    .line 601
    iget-object v2, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {}, Landroidx/media3/session/LibraryResult;->ofVoid()Landroidx/media3/session/LibraryResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 602
    return-void
.end method

.method private onErrorInternal(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 552
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 558
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->notifyBrowserListener(Landroidx/media3/common/util/Consumer;)V

    .line 568
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, -0x1

    invoke-static {v1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 569
    return-void
.end method


# virtual methods
.method public canServeGetChildrenRequest(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "pageIndex"    # I

    .line 614
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionParentId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->receivedChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionOptions:Landroid/os/Bundle;

    .line 617
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 614
    :goto_0
    return v1
.end method

.method synthetic lambda$onChildrenLoadedInternal$1$androidx-media3-session-MediaBrowserImplLegacy$SubscribeCallback(Ljava/lang/String;Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaBrowser$Listener;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "children"    # Ljava/util/List;
    .param p3, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p4, "listener"    # Landroidx/media3/session/MediaBrowser$Listener;

    .line 599
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4, v0, p1, v1, p3}, Landroidx/media3/session/MediaBrowser$Listener;->onChildrenChanged(Landroidx/media3/session/MediaBrowser;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 600
    return-void
.end method

.method synthetic lambda$onErrorInternal$0$androidx-media3-session-MediaBrowserImplLegacy$SubscribeCallback(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/MediaBrowser$Listener;)V
    .locals 3
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "listener"    # Landroidx/media3/session/MediaBrowser$Listener;

    .line 560
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 561
    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {v1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    .line 564
    invoke-virtual {v1, p2}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->build()Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v1

    .line 560
    const v2, 0x7fffffff

    invoke-interface {p3, v0, p1, v2, v1}, Landroidx/media3/session/MediaBrowser$Listener;->onChildrenChanged(Landroidx/media3/session/MediaBrowser;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    .line 540
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionParentId:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->onChildrenLoadedInternal(Ljava/lang/String;Ljava/util/List;)V

    .line 541
    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
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

    .line 548
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionParentId:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->onChildrenLoadedInternal(Ljava/lang/String;Ljava/util/List;)V

    .line 549
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;

    .line 529
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionParentId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionOptions:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 530
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 534
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionParentId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->subscriptionOptions:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->onErrorInternal(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 535
    return-void
.end method
