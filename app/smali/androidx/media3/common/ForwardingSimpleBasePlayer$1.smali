.class Landroidx/media3/common/ForwardingSimpleBasePlayer$1;
.super Ljava/lang/Object;
.source "ForwardingSimpleBasePlayer.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/common/ForwardingSimpleBasePlayer;-><init>(Landroidx/media3/common/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

.field final synthetic val$player:Landroidx/media3/common/Player;


# direct methods
.method constructor <init>(Landroidx/media3/common/ForwardingSimpleBasePlayer;Landroidx/media3/common/Player;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/common/ForwardingSimpleBasePlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    iput-object p2, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->val$player:Landroidx/media3/common/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 1
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/common/Player$Events;

    .line 121
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-virtual {v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->invalidateState()V

    .line 122
    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 86
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {v0, p1}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$002(Landroidx/media3/common/ForwardingSimpleBasePlayer;Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 87
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 92
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {v0, p2}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$102(Landroidx/media3/common/ForwardingSimpleBasePlayer;I)I

    .line 93
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 5
    .param p1, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 100
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {v0, p3}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$202(Landroidx/media3/common/ForwardingSimpleBasePlayer;I)I

    .line 101
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    iget-wide v1, p2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    invoke-static {v0, v1, v2}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$302(Landroidx/media3/common/ForwardingSimpleBasePlayer;J)J

    .line 108
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$400(Landroidx/media3/common/ForwardingSimpleBasePlayer;)Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    move-result-object v0

    iget-wide v1, p1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-wide v3, p1, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->setConstant(JJ)V

    .line 110
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    new-instance v1, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    iget-object v2, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->val$player:Landroidx/media3/common/Player;

    invoke-direct {v1, v2}, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;-><init>(Landroidx/media3/common/Player;)V

    invoke-static {v0, v1}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$402(Landroidx/media3/common/ForwardingSimpleBasePlayer;Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;)Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    .line 111
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 115
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$502(Landroidx/media3/common/ForwardingSimpleBasePlayer;Z)Z

    .line 116
    return-void
.end method
