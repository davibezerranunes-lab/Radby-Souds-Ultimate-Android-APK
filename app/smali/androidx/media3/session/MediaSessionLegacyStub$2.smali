.class Landroidx/media3/session/MediaSessionLegacyStub$2;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaSessionLegacyStub;->handleOnAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/util/List<",
        "Landroidx/media3/common/MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaSessionLegacyStub;

.field final synthetic val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/session/MediaSessionLegacyStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 905
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput p3, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$androidx-media3-session-MediaSessionLegacyStub$2(ILjava/util/List;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "mediaItems"    # Ljava/util/List;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 913
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 914
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(Ljava/util/List;)V

    goto :goto_0

    .line 916
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(ILjava/util/List;)V

    .line 918
    :goto_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 921
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v1

    .line 922
    invoke-virtual {v1}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v1

    .line 918
    invoke-virtual {v0, p3, v1}, Landroidx/media3/session/MediaSessionImpl;->onPlayerInteractionFinishedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player$Commands;)V

    .line 923
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 929
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 905
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 908
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 909
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 910
    invoke-static {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v3, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->val$index:I

    iget-object v4, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    new-instance v5, Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3, p1, v4}, Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$2;ILjava/util/List;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    invoke-virtual {v1, v2, v5}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 908
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 924
    return-void
.end method
