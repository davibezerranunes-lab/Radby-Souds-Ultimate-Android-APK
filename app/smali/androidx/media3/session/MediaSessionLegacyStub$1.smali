.class Landroidx/media3/session/MediaSessionLegacyStub$1;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaSessionLegacyStub;

.field final synthetic val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

.field final synthetic val$play:Z


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Z)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/session/MediaSessionLegacyStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 848
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-boolean p3, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->val$play:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$androidx-media3-session-MediaSessionLegacyStub$1(Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;ZLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 7
    .param p1, "mediaItemsWithStartPosition"    # Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;
    .param p2, "play"    # Z
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 856
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 857
    .local v0, "player":Landroidx/media3/session/PlayerWrapper;
    invoke-static {v0, p1}, Landroidx/media3/session/MediaUtils;->setMediaItemsWithStartIndexAndPosition(Landroidx/media3/common/Player;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    .line 859
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackState()I

    move-result v1

    .line 860
    .local v1, "playbackState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 861
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->prepareIfCommandAvailable()V

    goto :goto_0

    .line 862
    :cond_0
    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 863
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPositionIfCommandAvailable()V

    .line 865
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 866
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->playIfCommandAvailable()V

    .line 868
    :cond_2
    iget-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v3}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/16 v5, 0x1f

    const/4 v6, 0x2

    filled-new-array {v5, v6}, [I

    move-result-object v5

    .line 871
    invoke-virtual {v4, v5}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    .line 872
    invoke-virtual {v4, v2, p2}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v2

    .line 873
    invoke-virtual {v2}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v2

    .line 868
    invoke-virtual {v3, p3, v2}, Landroidx/media3/session/MediaSessionImpl;->onPlayerInteractionFinishedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player$Commands;)V

    .line 874
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 880
    return-void
.end method

.method public onSuccess(Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V
    .locals 6
    .param p1, "mediaItemsWithStartPosition"    # Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    .line 851
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 852
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 853
    invoke-static {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-boolean v3, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->val$play:Z

    iget-object v4, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    new-instance v5, Landroidx/media3/session/MediaSessionLegacyStub$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1, v3, v4}, Landroidx/media3/session/MediaSessionLegacyStub$1$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$1;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;ZLandroidx/media3/session/MediaSession$ControllerInfo;)V

    invoke-virtual {v1, v2, v5}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 851
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 875
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 848
    check-cast p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$1;->onSuccess(Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    return-void
.end method
