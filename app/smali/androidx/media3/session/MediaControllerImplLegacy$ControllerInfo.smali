.class Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
.super Ljava/lang/Object;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControllerInfo"
.end annotation


# instance fields
.field public final availablePlayerCommands:Landroidx/media3/common/Player$Commands;

.field public final availableSessionCommands:Landroidx/media3/session/SessionCommands;

.field public final mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field public final playerInfo:Landroidx/media3/session/PlayerInfo;

.field public final sessionError:Landroidx/media3/session/SessionError;

.field public final sessionExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2641
    sget-object v0, Landroidx/media3/session/PlayerInfo;->DEFAULT:Landroidx/media3/session/PlayerInfo;

    sget-object v1, Landroidx/media3/session/QueueTimeline;->DEFAULT:Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2642
    sget-object v0, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2643
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2644
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2645
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    .line 2646
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionError:Landroidx/media3/session/SessionError;

    .line 2647
    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V
    .locals 1
    .param p1, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p2, "availableSessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p3, "availablePlayerCommands"    # Landroidx/media3/common/Player$Commands;
    .param p5, "sessionExtras"    # Landroid/os/Bundle;
    .param p6, "sessionError"    # Landroidx/media3/session/SessionError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/PlayerInfo;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/session/SessionError;",
            ")V"
        }
    .end annotation

    .line 2655
    .local p4, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2656
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2657
    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2658
    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2659
    iput-object p4, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2660
    if-nez p5, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object v0, p5

    :goto_0
    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    .line 2661
    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionError:Landroidx/media3/session/SessionError;

    .line 2662
    return-void
.end method
