.class final Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;
.super Ljava/lang/Object;
.source "ConnectedControllersManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/ConnectedControllersManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectedControllerRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final commandQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;",
            ">;"
        }
    .end annotation
.end field

.field public commandQueueIsFlushing:Z

.field public commandQueuePlayerCommands:Landroidx/media3/common/Player$Commands;

.field public final controllerKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public playerCommands:Landroidx/media3/common/Player$Commands;

.field public final sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

.field public sessionCommands:Landroidx/media3/session/SessionCommands;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/media3/session/SequencedFutureManager;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 1
    .param p2, "sequencedFutureManager"    # Landroidx/media3/session/SequencedFutureManager;
    .param p3, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p4, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media3/session/SequencedFutureManager;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            ")V"
        }
    .end annotation

    .line 326
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->controllerKey:Ljava/lang/Object;

    .line 328
    iput-object p2, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 329
    iput-object p3, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 330
    iput-object p4, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    .line 331
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueue:Ljava/util/Deque;

    .line 332
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueuePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 333
    return-void
.end method
