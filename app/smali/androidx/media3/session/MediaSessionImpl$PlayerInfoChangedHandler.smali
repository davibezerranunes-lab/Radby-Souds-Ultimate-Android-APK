.class Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;
.super Landroid/os/Handler;
.source "MediaSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerInfoChangedHandler"
.end annotation


# static fields
.field private static final MSG_PLAYER_INFO_CHANGED:I = 0x1


# instance fields
.field private excludeTimeline:Z

.field private excludeTracks:Z

.field final synthetic this$0:Landroidx/media3/session/MediaSessionImpl;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1930
    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    .line 1931
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1932
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->excludeTimeline:Z

    .line 1933
    iput-boolean p1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->excludeTracks:Z

    .line 1934
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1938
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1939
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    .line 1940
    invoke-static {v2}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    .line 1941
    invoke-virtual {v3}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    .line 1942
    invoke-virtual {v4}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->createSessionPositionInfoForBundling()Landroidx/media3/session/SessionPositionInfo;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    .line 1943
    invoke-static {v5}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v5

    iget v5, v5, Landroidx/media3/session/PlayerInfo;->timelineChangeReason:I

    .line 1940
    invoke-virtual {v2, v3, v4, v5}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndSessionPositionInfo(Landroidx/media3/common/Timeline;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1939
    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1944
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->this$0:Landroidx/media3/session/MediaSessionImpl;

    invoke-static {v2}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->excludeTimeline:Z

    iget-boolean v4, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->excludeTracks:Z

    invoke-static {v0, v2, v3, v4}, Landroidx/media3/session/MediaSessionImpl;->access$900(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;ZZ)V

    .line 1945
    iput-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->excludeTimeline:Z

    .line 1946
    iput-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->excludeTracks:Z

    .line 1950
    return-void

    .line 1948
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasPendingPlayerInfoChangedUpdate()Z
    .locals 1

    .line 1953
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public sendPlayerInfoChangedMessage(ZZ)V
    .locals 3
    .param p1, "excludeTimeline"    # Z
    .param p2, "excludeTracks"    # Z

    .line 1957
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->excludeTimeline:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->excludeTimeline:Z

    .line 1958
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->excludeTracks:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->excludeTracks:Z

    .line 1959
    invoke-virtual {p0, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1960
    invoke-virtual {p0, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendEmptyMessage(I)Z

    .line 1962
    :cond_2
    return-void
.end method
