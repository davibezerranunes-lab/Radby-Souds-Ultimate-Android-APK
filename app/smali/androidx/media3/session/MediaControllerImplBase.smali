.class Landroidx/media3/session/MediaControllerImplBase;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media3/session/MediaController$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;,
        Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;,
        Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;,
        Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;,
        Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    }
.end annotation


# static fields
.field private static final RELEASE_TIMEOUT_MS:J = 0x7530L

.field public static final TAG:Ljava/lang/String; = "MCImplBase"


# instance fields
.field private commandButtonsForMediaItemsMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private connectedToken:Landroidx/media3/session/SessionToken;

.field private final connectionHints:Landroid/os/Bundle;

.field private final context:Landroid/content/Context;

.field protected final controllerStub:Landroidx/media3/session/MediaControllerStub;

.field private currentPositionMs:J

.field private customLayoutOriginal:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final flushCommandQueueHandler:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

.field private iSession:Landroidx/media3/session/IMediaSession;

.field private final instance:Landroidx/media3/session/MediaController;

.field private intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

.field private lastSetPlayWhenReadyCalledTimeMs:J

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaButtonPreferencesOriginal:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private pendingBundlingExclusions:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

.field private final pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPlayerInfo:Landroidx/media3/session/PlayerInfo;

.field private platformController:Landroid/media/session/MediaController;

.field private playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

.field private playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

.field private playerInfo:Landroidx/media3/session/PlayerInfo;

.field private released:Z

.field private resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field protected final sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

.field private serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

.field private sessionActivity:Landroid/app/PendingIntent;

.field private sessionCommands:Landroidx/media3/session/SessionCommands;

.field private sessionExtras:Landroid/os/Bundle;

.field private final surfaceCallback:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

.field private surfaceSize:Landroidx/media3/common/util/Size;

.field private final token:Landroidx/media3/session/SessionToken;

.field private videoSurface:Landroid/view/Surface;

.field private videoSurfaceHolder:Landroid/view/SurfaceHolder;

.field private videoTextureView:Landroid/view/TextureView;


# direct methods
.method public static synthetic $r8$lambda$-WF1qFjMxuv51T5OXo06NXKwNo8(Landroidx/media3/common/MediaItem;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Landroidx/media3/session/MediaController;
    .param p3, "token"    # Landroidx/media3/session/SessionToken;
    .param p4, "connectionHints"    # Landroid/os/Bundle;
    .param p5, "applicationLooper"    # Landroid/os/Looper;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    sget-object v0, Landroidx/media3/session/PlayerInfo;->DEFAULT:Landroidx/media3/session/PlayerInfo;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 156
    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 157
    sget-object v0, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 158
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayoutOriginal:Lcom/google/common/collect/ImmutableList;

    .line 159
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->mediaButtonPreferencesOriginal:Lcom/google/common/collect/ImmutableList;

    .line 160
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 161
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->commandButtonsForMediaItemsMap:Lcom/google/common/collect/ImmutableMap;

    .line 162
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 163
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 164
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 165
    invoke-static {v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->createIntersectedCommandsEnsuringCommandReleaseAvailable(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 167
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    sget-object v1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda91;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda91;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {v0, p5, v1, v2}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 174
    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->instance:Landroidx/media3/session/MediaController;

    .line 175
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v0, "token must not be null"

    invoke-static {p3, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    .line 178
    new-instance v0, Landroidx/media3/session/SequencedFutureManager;

    invoke-direct {v0}, Landroidx/media3/session/SequencedFutureManager;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 179
    new-instance v0, Landroidx/media3/session/MediaControllerStub;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerStub;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 180
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    .line 181
    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    .line 182
    iput-object p4, p0, Landroidx/media3/session/MediaControllerImplBase;->connectionHints:Landroid/os/Bundle;

    .line 183
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda92;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda92;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 188
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/MediaControllerImplBase$1;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceCallback:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    .line 189
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionExtras:Landroid/os/Bundle;

    .line 191
    nop

    .line 192
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    goto :goto_0

    .line 194
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    invoke-direct {v1, p0, p4}, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Bundle;)V

    :goto_0
    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    .line 195
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    invoke-direct {v0, p0, p5}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->flushCommandQueueHandler:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    .line 196
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    .line 197
    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->lastSetPlayWhenReadyCalledTimeMs:J

    .line 198
    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/session/MediaControllerImplBase;)Landroidx/media3/session/IMediaSession;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 104
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/session/MediaControllerImplBase;)Landroidx/media3/session/SessionToken;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 104
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/session/MediaControllerImplBase;)Landroidx/media3/session/MediaController;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 104
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->instance:Landroidx/media3/session/MediaController;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/session/MediaControllerImplBase;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 104
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/media3/session/MediaControllerImplBase;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 104
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$602(Landroidx/media3/session/MediaControllerImplBase;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 104
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$700(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase;
    .param p1, "x1"    # Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;

    .line 104
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/session/MediaControllerImplBase;II)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 104
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$900(Landroidx/media3/session/MediaControllerImplBase;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 104
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method private addMediaItemsInternal(ILjava/util/List;)V
    .locals 15
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 997
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    move-object v6, p0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    return-void

    .line 1000
    :cond_0
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    .line 1008
    return-void

    .line 1011
    :cond_1
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    move/from16 v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1012
    .end local p1    # "index":I
    .local v14, "index":I
    iget-object v7, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1014
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v10

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getContentPosition()J

    move-result-wide v12

    .line 1013
    move v8, v14

    move-object/from16 v9, p2

    invoke-static/range {v7 .. v13}, Landroidx/media3/session/MediaControllerImplBase;->maskPlayerInfoForAddedItems(Landroidx/media3/session/PlayerInfo;ILjava/util/List;JJ)Landroidx/media3/session/PlayerInfo;

    move-result-object v7

    .line 1018
    .local v7, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 1019
    .local v5, "mediaItemTransitionReason":Ljava/lang/Integer;
    nop

    .line 1021
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1019
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1025
    return-void
.end method

.method private clearSurfacesAndCallbacks()V
    .locals 3

    .line 2579
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2580
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2581
    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    .line 2583
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 2584
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceCallback:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2585
    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2587
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 2588
    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    .line 2590
    :cond_2
    return-void
.end method

.method private static convertRepeatModeForNavigation(I)I
    .locals 1
    .param p0, "repeatMode"    # I

    .line 3023
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private static createIntersectedCommandsEnsuringCommandReleaseAvailable(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;
    .locals 3
    .param p0, "commandFromSession"    # Landroidx/media3/common/Player$Commands;
    .param p1, "commandsFromPlayer"    # Landroidx/media3/common/Player$Commands;

    .line 3341
    invoke-static {p0, p1}, Landroidx/media3/session/MediaUtils;->intersect(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v0

    .line 3343
    .local v0, "intersectedCommands":Landroidx/media3/common/Player$Commands;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3344
    move-object v1, v0

    goto :goto_0

    .line 3345
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands;->buildUpon()Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v1

    .line 3343
    :goto_0
    return-object v1
.end method

.method private static createMaskingTimeline(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Timeline;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Timeline$Window;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Timeline$Period;",
            ">;)",
            "Landroidx/media3/common/Timeline;"
        }
    .end annotation

    .line 2050
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    .local p1, "periods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    new-instance v0, Landroidx/media3/common/Timeline$RemotableTimeline;

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 2051
    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 2052
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 2053
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Landroidx/media3/session/MediaUtils;->generateUnshuffledIndices(I)[I

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/Timeline$RemotableTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V

    .line 2050
    return-object v0
.end method

.method private static createNewPeriod(I)Landroidx/media3/common/Timeline$Period;
    .locals 10
    .param p0, "windowIndex"    # I

    .line 3271
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    sget-object v8, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    .line 3272
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    move v3, p0

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    .line 3271
    return-object v0
.end method

.method private static createNewWindow(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/Timeline$Window;
    .locals 21
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;

    move-object/from16 v2, p0

    .line 3252
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    move-object v0, v1

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 3254
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3253
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, -0x1

    const/16 v18, -0x1

    const-wide/16 v19, 0x0

    invoke-virtual/range {v0 .. v20}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    .line 3252
    return-object v0
.end method

.method private dispatchRemoteSessionTask(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "task"    # Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
    .param p3, "addToPendingMaskingOperations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/IMediaSession;",
            "Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 380
    if-eqz p1, :cond_1

    .line 381
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    new-instance v1, Landroidx/media3/session/SessionResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 382
    invoke-virtual {v0, v1}, Landroidx/media3/session/SequencedFutureManager;->createSequencedFuture(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    move-result-object v0

    .line 384
    .local v0, "result":Landroidx/media3/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media3/session/SequencedFutureManager$SequencedFuture<Landroidx/media3/session/SessionResult;>;"
    invoke-virtual {v0}, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->getSequenceNumber()I

    move-result v1

    .line 385
    .local v1, "sequenceNumber":I
    if-eqz p3, :cond_0

    .line 386
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_0
    :try_start_0
    invoke-interface {p2, p1, v1}, Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;->run(Landroidx/media3/session/IMediaSession;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_0

    .line 390
    :catch_0
    move-exception v2

    .line 391
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MCImplBase"

    const-string v4, "Cannot connect to the service or the session is gone"

    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    new-instance v4, Landroidx/media3/session/SessionResult;

    const/16 v5, -0x64

    invoke-direct {v4, v5}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroidx/media3/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V

    .line 396
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0

    .line 401
    .end local v0    # "result":Landroidx/media3/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media3/session/SequencedFutureManager$SequencedFuture<Landroidx/media3/session/SessionResult;>;"
    .end local v1    # "sequenceNumber":I
    :cond_1
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x4

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V
    .locals 2
    .param p1, "task"    # Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;

    .line 327
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->flushCommandQueueHandler:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->sendFlushCommandQueueMessage()V

    .line 328
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTask(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 329
    return-void
.end method

.method private dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V
    .locals 6
    .param p1, "task"    # Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;

    .line 332
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->flushCommandQueueHandler:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->sendFlushCommandQueueMessage()V

    .line 333
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    .line 334
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTask(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 336
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v0, v1, v2}, Landroidx/media3/session/LegacyConversions;->getFutureResult(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    instance-of v2, v0, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    if-eqz v2, :cond_0

    .line 342
    move-object v2, v0

    check-cast v2, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    .line 343
    invoke-virtual {v2}, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->getSequenceNumber()I

    move-result v2

    .line 344
    .local v2, "sequenceNumber":I
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 345
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    new-instance v4, Landroidx/media3/session/SessionResult;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroidx/media3/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V

    .line 347
    .end local v2    # "sequenceNumber":I
    :cond_0
    const-string v2, "MCImplBase"

    const-string v3, "Synchronous command takes too long on the session side."

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    return-void

    .line 337
    :catch_1
    move-exception v1

    .line 339
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private dispatchRemoteSessionTaskWithSessionCommand(ILandroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "commandCode"    # I
    .param p2, "task"    # Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithSessionCommandInternal(ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private dispatchRemoteSessionTaskWithSessionCommand(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "sessionCommand"    # Landroidx/media3/session/SessionCommand;
    .param p2, "task"    # Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/SessionCommand;",
            "Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithSessionCommandInternal(ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private dispatchRemoteSessionTaskWithSessionCommandInternal(ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "commandCode"    # I
    .param p2, "sessionCommand"    # Landroidx/media3/session/SessionCommand;
    .param p3, "task"    # Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/session/SessionCommand;",
            "Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 368
    nop

    .line 369
    if-eqz p2, :cond_0

    .line 370
    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaControllerImplBase;->getSessionInterfaceWithSessionCommandIfAble(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/IMediaSession;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->getSessionInterfaceWithSessionCommandIfAble(I)Landroidx/media3/session/IMediaSession;

    move-result-object v0

    :goto_0
    nop

    .line 368
    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTask(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentMediaItemIndexInternal(Landroidx/media3/session/PlayerInfo;)I
    .locals 2
    .param p0, "playerInfo"    # Landroidx/media3/session/PlayerInfo;

    .line 3169
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3170
    const/4 v0, 0x0

    goto :goto_0

    .line 3171
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 3169
    :goto_0
    return v0
.end method

.method private static getNewPeriodIndexWithoutRemovedPeriods(Landroidx/media3/common/Timeline;III)I
    .locals 5
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "oldPeriodIndex"    # I
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 3238
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 3239
    return p1

    .line 3241
    :cond_0
    move v0, p1

    .line 3242
    .local v0, "newPeriodIndex":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 3243
    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 3244
    .local v2, "window":Landroidx/media3/common/Timeline$Window;
    invoke-virtual {p0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 3245
    iget v3, v2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    iget v4, v2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 3246
    .local v3, "size":I
    sub-int/2addr v0, v3

    .line 3242
    .end local v2    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v3    # "size":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3248
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getPeriodInfo(Landroidx/media3/common/Timeline;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    .locals 7
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionMs"    # J

    .line 3131
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3132
    const/4 v0, 0x0

    return-object v0

    .line 3134
    :cond_0
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 3135
    .local v0, "window":Landroidx/media3/common/Timeline$Window;
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 3136
    .local v3, "period":Landroidx/media3/common/Timeline$Period;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-lt p2, v1, :cond_2

    .line 3139
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getShuffleModeEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    .line 3140
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p3

    .line 3142
    :cond_2
    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    move-object v1, p1

    move-object v2, v0

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->getPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    move-result-object v1

    return-object v1
.end method

.method private static getPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    .locals 4
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "windowIndex"    # I
    .param p4, "windowPositionUs"    # J

    .line 3148
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    invoke-static {p3, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 3149
    invoke-virtual {p0, p3, p1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 3150
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    .line 3151
    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p4

    .line 3152
    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 3153
    const/4 v0, 0x0

    return-object v0

    .line 3156
    :cond_0
    iget v0, p1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 3157
    .local v0, "periodIndex":I
    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3158
    :goto_0
    iget v1, p1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ge v0, v1, :cond_1

    iget-wide v1, p2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v1, v1, p4

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 3160
    invoke-virtual {p0, v1, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v1, v1, p4

    if-gtz v1, :cond_1

    .line 3161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3163
    :cond_1
    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3164
    iget-wide v1, p2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    sub-long v1, p4, v1

    .line 3165
    .local v1, "periodPositionUs":J
    new-instance v3, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    invoke-direct {v3, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;-><init>(IJ)V

    return-object v3
.end method

.method private static getPeriodWithNewWindowIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/common/Timeline$Period;
    .locals 1
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "periodIndex"    # I
    .param p2, "windowIndex"    # I

    .line 3230
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 3231
    .local v0, "period":Landroidx/media3/common/Timeline$Period;
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3232
    iput p2, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 3233
    return-object v0
.end method

.method private isPlayerCommandAvailable(I)Z
    .locals 2
    .param p1, "command"    # I

    .line 3027
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0, p1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Controller isn\'t allowed to call command= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCImplBase"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    const/4 v0, 0x0

    return v0

    .line 3031
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$maybeNotifySurfaceSizeChanged$104(IILandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2597
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$100(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2504
    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$101(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2509
    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$102(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2515
    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$103(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2522
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$77(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "timelineChangeReason"    # Ljava/lang/Integer;
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2375
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$78(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 3
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "positionDiscontinuityReason"    # Ljava/lang/Integer;
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2381
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 2384
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2381
    invoke-interface {p2, v0, v1, v2}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$79(Landroidx/media3/common/MediaItem;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "currentMediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "mediaItemTransitionReason"    # Ljava/lang/Integer;
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2390
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, p0, v0}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$80(Landroidx/media3/common/PlaybackException;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "newPlayerError"    # Landroidx/media3/common/PlaybackException;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2400
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$81(Landroidx/media3/common/PlaybackException;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "newPlayerError"    # Landroidx/media3/common/PlaybackException;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2404
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$82(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2410
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$83(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2415
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$84(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2420
    iget-boolean v0, p0, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$85(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2425
    iget v0, p0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$86(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "playWhenReadyChangeReason"    # Ljava/lang/Integer;
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2431
    iget-boolean v0, p0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    .line 2432
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2431
    invoke-interface {p2, v0, v1}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$87(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2438
    iget v0, p0, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$88(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2443
    iget-boolean v0, p0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$89(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2448
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$90(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2454
    iget v0, p0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$91(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2459
    iget-boolean v0, p0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$92(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2464
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$93(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2469
    iget v0, p0, Landroidx/media3/session/PlayerInfo;->volume:F

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$94(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2474
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$95(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2479
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object v0, v0, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$96(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2481
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onCues(Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$97(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2486
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$98(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2493
    iget v0, p0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    iget-boolean v1, p0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$99(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2499
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method static synthetic lambda$setAudioAttributes$68(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1826
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$setPlaybackParameters$16(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 688
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$setPlaybackSpeed$18(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "newPlaybackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 713
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$setPlaylistMetadata$29(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 918
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$setRepeatMode$46(ILandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "repeatMode"    # I
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1561
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$setShuffleModeEnabled$48(ZLandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "shuffleModeEnabled"    # Z
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1585
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setTrackSelectionParameters$76(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2023
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$setVolume$50(FLandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "volume"    # F
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1613
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$stop$3(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 269
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method private static maskPlayerInfoForAddedItems(Landroidx/media3/session/PlayerInfo;ILjava/util/List;JJ)Landroidx/media3/session/PlayerInfo;
    .locals 18
    .param p0, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "index"    # I
    .param p3, "currentPositionMs"    # J
    .param p5, "currentContentPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/PlayerInfo;",
            "I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;JJ)",
            "Landroidx/media3/session/PlayerInfo;"
        }
    .end annotation

    .line 1044
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    move-object/from16 v9, p0

    move/from16 v10, p1

    iget-object v11, v9, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1045
    .local v11, "oldTimeline":Landroidx/media3/common/Timeline;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 1046
    .local v12, "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 1047
    .local v13, "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1048
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v11, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1050
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1051
    add-int v1, v0, v10

    move-object/from16 v14, p2

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/MediaItem;

    invoke-static {v2}, Landroidx/media3/session/MediaControllerImplBase;->createNewWindow(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v14, p2

    .line 1053
    .end local v0    # "i":I
    invoke-static {v11, v12, v13}, Landroidx/media3/session/MediaControllerImplBase;->rebuildPeriods(Landroidx/media3/common/Timeline;Ljava/util/List;Ljava/util/List;)V

    .line 1054
    invoke-static {v12, v13}, Landroidx/media3/session/MediaControllerImplBase;->createMaskingTimeline(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Timeline;

    move-result-object v15

    .line 1058
    .local v15, "newTimeline":Landroidx/media3/common/Timeline;
    iget-object v0, v9, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    const/4 v0, 0x0

    .line 1060
    .local v0, "newMediaItemIndex":I
    const/4 v1, 0x0

    move/from16 v16, v0

    move/from16 v17, v1

    .local v1, "newPeriodIndex":I
    goto :goto_4

    .line 1063
    .end local v0    # "newMediaItemIndex":I
    .end local v1    # "newPeriodIndex":I
    :cond_2
    iget-object v0, v9, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-lt v0, v10, :cond_3

    .line 1064
    iget-object v0, v9, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 1065
    :cond_3
    iget-object v0, v9, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    :goto_2
    nop

    .line 1067
    .restart local v0    # "newMediaItemIndex":I
    iget-object v1, v9, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    if-lt v1, v10, :cond_4

    .line 1068
    iget-object v1, v9, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    .line 1069
    :cond_4
    iget-object v1, v9, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    :goto_3
    move/from16 v16, v0

    move/from16 v17, v1

    .line 1071
    .end local v0    # "newMediaItemIndex":I
    .local v16, "newMediaItemIndex":I
    .local v17, "newPeriodIndex":I
    :goto_4
    const/4 v8, 0x5

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;IIJJI)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    return-object v0
.end method

.method private static maskPlayerInfoForRemovedItems(Landroidx/media3/session/PlayerInfo;IIZJJ)Landroidx/media3/session/PlayerInfo;
    .locals 54
    .param p0, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "isReplacingItems"    # Z
    .param p4, "currentPositionMs"    # J
    .param p6, "currentContentPositionMs"    # J

    .line 1174
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    iget-object v12, v9, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1175
    .local v12, "oldTimeline":Landroidx/media3/common/Timeline;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 1176
    .local v13, "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 1177
    .local v14, "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v12}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1178
    if-lt v0, v10, :cond_0

    if-lt v0, v11, :cond_1

    .line 1179
    :cond_0
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v12, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1182
    .end local v0    # "i":I
    :cond_2
    invoke-static {v12, v13, v14}, Landroidx/media3/session/MediaControllerImplBase;->rebuildPeriods(Landroidx/media3/common/Timeline;Ljava/util/List;Ljava/util/List;)V

    .line 1183
    invoke-static {v13, v14}, Landroidx/media3/session/MediaControllerImplBase;->createMaskingTimeline(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Timeline;

    move-result-object v15

    .line 1185
    .local v15, "newTimeline":Landroidx/media3/common/Timeline;
    invoke-static/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndexInternal(Landroidx/media3/session/PlayerInfo;)I

    move-result v8

    .line 1186
    .local v8, "oldMediaItemIndex":I
    move v6, v8

    .line 1187
    .local v6, "newMediaItemIndex":I
    iget-object v0, v9, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v7, v0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 1188
    .local v7, "oldPeriodIndex":I
    move/from16 v16, v7

    .line 1189
    .local v16, "newPeriodIndex":I
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    move-object v5, v0

    .line 1190
    .local v5, "window":Landroidx/media3/common/Timeline$Window;
    const/16 v17, 0x0

    const/4 v4, 0x1

    if-lt v8, v10, :cond_3

    if-ge v8, v11, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move/from16 v0, v17

    :goto_1
    move/from16 v18, v0

    .line 1191
    .local v18, "currentItemRemoved":Z
    invoke-virtual {v15}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    .line 1192
    const/4 v6, -0x1

    .line 1193
    const/16 v16, 0x0

    move-object v4, v5

    move-object/from16 v19, v13

    move v13, v3

    goto :goto_3

    .line 1195
    :cond_4
    if-eqz v18, :cond_7

    .line 1196
    iget v0, v9, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    iget-boolean v1, v9, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    .line 1197
    move v2, v8

    move-object/from16 v19, v13

    move v13, v3

    .end local v13    # "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    .local v19, "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    move-object v3, v12

    move/from16 v4, p1

    move-object/from16 v20, v5

    .end local v5    # "window":Landroidx/media3/common/Timeline$Window;
    .local v20, "window":Landroidx/media3/common/Timeline$Window;
    move/from16 v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->resolveSubsequentMediaItemIndex(IZILandroidx/media3/common/Timeline;II)I

    move-result v0

    .line 1204
    .local v0, "oldNextMediaItemIndex":I
    if-ne v0, v13, :cond_5

    .line 1205
    iget-boolean v1, v9, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    invoke-virtual {v15, v1}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move v6, v1

    .end local v6    # "newMediaItemIndex":I
    .local v1, "newMediaItemIndex":I
    goto :goto_2

    .line 1206
    .end local v1    # "newMediaItemIndex":I
    .restart local v6    # "newMediaItemIndex":I
    :cond_5
    if-lt v0, v11, :cond_6

    .line 1207
    sub-int v1, v11, v10

    sub-int v1, v0, v1

    move v6, v1

    .end local v6    # "newMediaItemIndex":I
    .restart local v1    # "newMediaItemIndex":I
    goto :goto_2

    .line 1209
    .end local v1    # "newMediaItemIndex":I
    .restart local v6    # "newMediaItemIndex":I
    :cond_6
    move v1, v0

    move v6, v1

    .line 1211
    :goto_2
    move-object/from16 v4, v20

    .end local v20    # "window":Landroidx/media3/common/Timeline$Window;
    .local v4, "window":Landroidx/media3/common/Timeline$Window;
    invoke-virtual {v15, v6, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget v0, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 1212
    .end local v16    # "newPeriodIndex":I
    .local v0, "newPeriodIndex":I
    move/from16 v16, v0

    goto :goto_3

    .end local v0    # "newPeriodIndex":I
    .end local v4    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v19    # "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    .restart local v5    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v13    # "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    .restart local v16    # "newPeriodIndex":I
    :cond_7
    move-object v4, v5

    move-object/from16 v19, v13

    move v13, v3

    .end local v5    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v13    # "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    .restart local v4    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v19    # "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    if-lt v8, v11, :cond_8

    .line 1213
    sub-int v0, v11, v10

    sub-int/2addr v6, v0

    .line 1214
    nop

    .line 1215
    invoke-static {v12, v7, v10, v11}, Landroidx/media3/session/MediaControllerImplBase;->getNewPeriodIndexWithoutRemovedPeriods(Landroidx/media3/common/Timeline;III)I

    move-result v16

    .line 1220
    :cond_8
    :goto_3
    const/4 v5, 0x4

    if-eqz v18, :cond_b

    .line 1222
    if-ne v6, v13, :cond_9

    .line 1223
    sget-object v0, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    .line 1224
    .local v0, "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->DEFAULT:Landroidx/media3/session/SessionPositionInfo;

    .line 1225
    invoke-static {v9, v15, v0, v1, v5}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    move-object/from16 v32, v4

    move v13, v5

    move/from16 v33, v7

    move/from16 v35, v8

    move-object/from16 v34, v14

    move v14, v6

    .local v1, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    goto/16 :goto_4

    .line 1231
    .end local v0    # "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    .end local v1    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    :cond_9
    if-eqz p3, :cond_a

    .line 1232
    nop

    .line 1233
    const/4 v13, 0x4

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v6

    move/from16 v3, v16

    move-object/from16 v32, v4

    .end local v4    # "window":Landroidx/media3/common/Timeline$Window;
    .local v32, "window":Landroidx/media3/common/Timeline$Window;
    move-wide/from16 v4, p4

    move/from16 v33, v7

    move-object/from16 v34, v14

    move v14, v6

    .end local v6    # "newMediaItemIndex":I
    .end local v7    # "oldPeriodIndex":I
    .local v14, "newMediaItemIndex":I
    .local v33, "oldPeriodIndex":I
    .local v34, "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    move-wide/from16 v6, p6

    move/from16 v35, v8

    .end local v8    # "oldMediaItemIndex":I
    .local v35, "oldMediaItemIndex":I
    move v8, v13

    invoke-static/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;IIJJI)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    const/4 v13, 0x4

    .restart local v1    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    goto :goto_4

    .line 1242
    .end local v1    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v32    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v33    # "oldPeriodIndex":I
    .end local v34    # "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    .end local v35    # "oldMediaItemIndex":I
    .restart local v4    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v6    # "newMediaItemIndex":I
    .restart local v7    # "oldPeriodIndex":I
    .restart local v8    # "oldMediaItemIndex":I
    .local v14, "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    :cond_a
    move-object/from16 v32, v4

    move/from16 v33, v7

    move/from16 v35, v8

    move-object/from16 v34, v14

    move v14, v6

    .end local v4    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v6    # "newMediaItemIndex":I
    .end local v7    # "oldPeriodIndex":I
    .end local v8    # "oldMediaItemIndex":I
    .local v14, "newMediaItemIndex":I
    .restart local v32    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v33    # "oldPeriodIndex":I
    .restart local v34    # "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    .restart local v35    # "oldMediaItemIndex":I
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v15, v14, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    .line 1243
    .local v0, "newWindow":Landroidx/media3/common/Timeline$Window;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v1

    .local v1, "defaultPositionMs":J
    move-wide/from16 v43, v1

    move-wide/from16 v52, v1

    .line 1244
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    .local v3, "durationMs":J
    move-wide/from16 v50, v3

    move-wide/from16 v41, v3

    .line 1245
    new-instance v5, Landroidx/media3/common/Player$PositionInfo;

    iget-object v6, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v5

    move/from16 v22, v14

    move-object/from16 v23, v6

    move/from16 v25, v16

    move-wide/from16 v26, v1

    move-wide/from16 v28, v1

    invoke-direct/range {v20 .. v31}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .local v5, "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    move-object/from16 v37, v5

    .line 1256
    new-instance v6, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v36, v6

    .line 1264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v39

    .line 1267
    invoke-static {v1, v2, v3, v4}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v45

    const-wide/16 v46, 0x0

    const-wide v48, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v38, 0x0

    invoke-direct/range {v36 .. v53}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 1257
    const/4 v13, 0x4

    invoke-static {v9, v15, v5, v6, v13}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v6

    move-object v1, v6

    .line 1275
    .end local v0    # "newWindow":Landroidx/media3/common/Timeline$Window;
    .end local v3    # "durationMs":J
    .end local v5    # "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    .local v1, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    :goto_4
    goto :goto_5

    .line 1276
    .end local v1    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v32    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v33    # "oldPeriodIndex":I
    .end local v34    # "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    .end local v35    # "oldMediaItemIndex":I
    .restart local v4    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v6    # "newMediaItemIndex":I
    .restart local v7    # "oldPeriodIndex":I
    .restart local v8    # "oldMediaItemIndex":I
    .local v14, "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    :cond_b
    move-object/from16 v32, v4

    move v13, v5

    move/from16 v33, v7

    move/from16 v35, v8

    move-object/from16 v34, v14

    move v14, v6

    .line 1277
    .end local v4    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v6    # "newMediaItemIndex":I
    .end local v7    # "oldPeriodIndex":I
    .end local v8    # "oldMediaItemIndex":I
    .local v14, "newMediaItemIndex":I
    .restart local v32    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v33    # "oldPeriodIndex":I
    .restart local v34    # "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    .restart local v35    # "oldMediaItemIndex":I
    const/4 v8, 0x4

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v14

    move/from16 v3, v16

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;IIJJI)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 1288
    .restart local v1    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    :goto_5
    iget v0, v1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    iget v0, v1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq v0, v13, :cond_d

    if-ge v10, v11, :cond_d

    .line 1292
    invoke-virtual {v12}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-ne v11, v0, :cond_c

    move/from16 v0, v35

    .end local v35    # "oldMediaItemIndex":I
    .local v0, "oldMediaItemIndex":I
    if-lt v0, v10, :cond_e

    move/from16 v17, v2

    goto :goto_7

    .end local v0    # "oldMediaItemIndex":I
    .restart local v35    # "oldMediaItemIndex":I
    :cond_c
    move/from16 v0, v35

    .end local v35    # "oldMediaItemIndex":I
    .restart local v0    # "oldMediaItemIndex":I
    goto :goto_6

    .line 1288
    .end local v0    # "oldMediaItemIndex":I
    .restart local v35    # "oldMediaItemIndex":I
    :cond_d
    move/from16 v0, v35

    .line 1292
    .end local v35    # "oldMediaItemIndex":I
    .restart local v0    # "oldMediaItemIndex":I
    :cond_e
    :goto_6
    nop

    :goto_7
    move/from16 v2, v17

    .line 1294
    .local v2, "transitionsToEnded":Z
    if-eqz v2, :cond_f

    .line 1295
    nop

    .line 1296
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 1299
    :cond_f
    return-object v1
.end method

.method private maskPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)Landroidx/media3/session/PlayerInfo;
    .locals 47
    .param p1, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
    .param p3, "periodInfo"    # Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    .line 3036
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v2, v2, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 3037
    .local v2, "oldPeriodIndex":I
    invoke-static/range {p3 .. p3}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$100(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)I

    move-result v15

    .line 3038
    .local v15, "newPeriodIndex":I
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move-object v14, v3

    .line 3039
    .local v14, "oldPeriod":Landroidx/media3/common/Timeline$Period;
    invoke-virtual {v1, v2, v14}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3040
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move-object v13, v3

    .line 3041
    .local v13, "newPeriod":Landroidx/media3/common/Timeline$Period;
    invoke-virtual {v1, v15, v13}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3042
    const/4 v3, 0x0

    const/4 v11, 0x1

    if-eq v2, v15, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    move/from16 v16, v4

    .line 3043
    .local v16, "playingPeriodChanged":Z
    invoke-static/range {p3 .. p3}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J

    move-result-wide v17

    .line 3044
    .local v17, "newPositionUs":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    invoke-virtual {v14}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    sub-long v19, v4, v6

    .line 3046
    .local v19, "oldPositionUs":J
    if-nez v16, :cond_1

    cmp-long v4, v17, v19

    if-nez v4, :cond_1

    .line 3048
    return-object v0

    .line 3051
    :cond_1
    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v4, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v4, v4, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    move v3, v11

    :cond_2
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 3053
    new-instance v21, Landroidx/media3/common/Player$PositionInfo;

    iget v5, v14, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v6, v3, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-wide v3, v14, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v3, v3, v19

    .line 3060
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v3, v14, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v3, v3, v19

    .line 3061
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v22

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, v21

    move v8, v2

    move-wide/from16 v11, v22

    move-object/from16 v26, v13

    .end local v13    # "newPeriod":Landroidx/media3/common/Timeline$Period;
    .local v26, "newPeriod":Landroidx/media3/common/Timeline$Period;
    move/from16 v13, v24

    move-object/from16 v22, v14

    .end local v14    # "oldPeriod":Landroidx/media3/common/Timeline$Period;
    .local v22, "oldPeriod":Landroidx/media3/common/Timeline$Period;
    move/from16 v14, v25

    invoke-direct/range {v3 .. v14}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    move-object/from16 v14, v21

    .line 3065
    .local v14, "oldPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    move-object/from16 v13, v26

    .end local v26    # "newPeriod":Landroidx/media3/common/Timeline$Period;
    .restart local v13    # "newPeriod":Landroidx/media3/common/Timeline$Period;
    invoke-virtual {v1, v15, v13}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3066
    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    move-object v11, v3

    .line 3067
    .local v11, "newWindow":Landroidx/media3/common/Timeline$Window;
    iget v3, v13, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v1, v3, v11}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 3068
    new-instance v21, Landroidx/media3/common/Player$PositionInfo;

    iget v5, v13, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v6, v11, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-wide v3, v13, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v3, v3, v17

    .line 3075
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v3, v13, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v3, v3, v17

    .line 3076
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v23

    const/16 v26, -0x1

    const/4 v4, 0x0

    move-object/from16 v3, v21

    move v8, v15

    move-object/from16 v27, v11

    .end local v11    # "newWindow":Landroidx/media3/common/Timeline$Window;
    .local v27, "newWindow":Landroidx/media3/common/Timeline$Window;
    move-wide/from16 v11, v23

    move-object/from16 v28, v13

    .end local v13    # "newPeriod":Landroidx/media3/common/Timeline$Period;
    .local v28, "newPeriod":Landroidx/media3/common/Timeline$Period;
    move/from16 v13, v25

    move-object v1, v14

    .end local v14    # "oldPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    .local v1, "oldPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    move/from16 v14, v26

    invoke-direct/range {v3 .. v14}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 3079
    .local v3, "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    nop

    .line 3080
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Landroidx/media3/session/PlayerInfo;->copyWithPositionInfos(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 3083
    .end local p1    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .local v0, "playerInfo":Landroidx/media3/session/PlayerInfo;
    if-nez v16, :cond_4

    cmp-long v4, v17, v19

    if-gez v4, :cond_3

    goto :goto_1

    .line 3104
    :cond_3
    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    .line 3107
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    sub-long v6, v17, v19

    sub-long/2addr v4, v6

    .line 3105
    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3109
    .local v4, "maskedTotalBufferedDurationUs":J
    add-long v6, v17, v4

    .line 3111
    .local v6, "maskedBufferedPositionUs":J
    new-instance v8, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v29, v8

    .line 3116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    .line 3117
    invoke-virtual/range {v27 .. v27}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v34

    .line 3118
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v36

    .line 3120
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    invoke-virtual/range {v27 .. v27}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v11

    .line 3119
    invoke-static {v9, v10, v11, v12}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v38

    .line 3121
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v39

    .line 3124
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v45

    const/16 v31, 0x0

    const-wide v41, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v43, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v30, v3

    invoke-direct/range {v29 .. v46}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 3112
    invoke-virtual {v0, v8}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    move-object/from16 v5, v28

    goto :goto_2

    .line 3085
    .end local v4    # "maskedTotalBufferedDurationUs":J
    .end local v6    # "maskedBufferedPositionUs":J
    :cond_4
    :goto_1
    new-instance v4, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v29, v4

    .line 3090
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    .line 3091
    invoke-virtual/range {v27 .. v27}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v34

    move-object/from16 v5, v28

    .end local v28    # "newPeriod":Landroidx/media3/common/Timeline$Period;
    .local v5, "newPeriod":Landroidx/media3/common/Timeline$Period;
    iget-wide v6, v5, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v6, v6, v17

    .line 3092
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v36

    iget-wide v6, v5, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v6, v6, v17

    .line 3094
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 3096
    invoke-virtual/range {v27 .. v27}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v8

    .line 3093
    invoke-static {v6, v7, v8, v9}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v38

    iget-wide v6, v5, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v6, v6, v17

    .line 3100
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v45

    const/16 v31, 0x0

    const-wide/16 v39, 0x0

    const-wide v41, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v43, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v30, v3

    invoke-direct/range {v29 .. v46}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 3086
    invoke-virtual {v0, v4}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 3126
    :goto_2
    return-object v0
.end method

.method private static maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;IIJJI)Landroidx/media3/session/PlayerInfo;
    .locals 34
    .param p0, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "newMediaItemIndex"    # I
    .param p3, "newPeriodIndex"    # I
    .param p4, "newPositionMs"    # J
    .param p6, "newContentPositionMs"    # J
    .param p8, "discontinuityReason"    # I

    .line 3182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v14, Landroidx/media3/common/Player$PositionInfo;

    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 3186
    move/from16 v15, p2

    invoke-virtual {v1, v15, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget-object v5, v2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v12, v2, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v13, v2, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, v14

    move/from16 v4, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .local v2, "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    move-object/from16 v17, v2

    .line 3193
    new-instance v3, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v16, v3

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v4, v4, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    move/from16 v18, v4

    .line 3200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    move-wide/from16 v21, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    move-wide/from16 v23, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget v4, v4, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    move/from16 v25, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    move-wide/from16 v26, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    move-wide/from16 v28, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    move-wide/from16 v30, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    move-wide/from16 v32, v4

    invoke-direct/range {v16 .. v33}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 3193
    move/from16 v4, p8

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    return-object v3
.end method

.method private static maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;
    .locals 2
    .param p0, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "newPositionInfo"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "newSessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;
    .param p4, "discontinuityReason"    # I

    .line 3217
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    .line 3219
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 3220
    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerInfo$Builder;->setOldPositionInfo(Landroidx/media3/common/Player$PositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    .line 3221
    invoke-virtual {v0, p2}, Landroidx/media3/session/PlayerInfo$Builder;->setNewPositionInfo(Landroidx/media3/common/Player$PositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    .line 3222
    invoke-virtual {v0, p3}, Landroidx/media3/session/PlayerInfo$Builder;->setSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    .line 3223
    invoke-virtual {v0, p4}, Landroidx/media3/session/PlayerInfo$Builder;->setDiscontinuityReason(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    .line 3224
    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    .line 3225
    return-object p0
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2593
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 2594
    :cond_0
    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 2595
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda2;-><init>(II)V

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2599
    :cond_1
    return-void
.end method

.method private moveMediaItemsInternal(III)V
    .locals 25
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I

    .line 2176
    move-object/from16 v6, p0

    move/from16 v7, p1

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v8, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2177
    .local v8, "oldTimeline":Landroidx/media3/common/Timeline;
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v9

    .line 2178
    .local v9, "playlistSize":I
    move/from16 v0, p2

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2179
    .end local p2    # "toIndex":I
    .local v10, "toIndex":I
    sub-int v0, v10, v7

    sub-int v0, v9, v0

    move/from16 v1, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2180
    .end local p3    # "newIndex":I
    .local v11, "newIndex":I
    if-ge v7, v9, :cond_6

    if-eq v7, v10, :cond_6

    if-ne v7, v11, :cond_0

    goto/16 :goto_3

    .line 2184
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 2185
    .local v12, "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 2187
    .local v13, "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_1

    .line 2188
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v8, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2190
    .end local v0    # "i":I
    :cond_1
    invoke-static {v12, v7, v10, v11}, Landroidx/media3/common/util/Util;->moveItems(Ljava/util/List;III)V

    .line 2191
    invoke-static {v8, v12, v13}, Landroidx/media3/session/MediaControllerImplBase;->rebuildPeriods(Landroidx/media3/common/Timeline;Ljava/util/List;Ljava/util/List;)V

    .line 2192
    invoke-static {v12, v13}, Landroidx/media3/session/MediaControllerImplBase;->createMaskingTimeline(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Timeline;

    move-result-object v5

    .line 2194
    .local v5, "newTimeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2195
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v4

    .line 2196
    .local v4, "oldWindowIndex":I
    move v0, v4

    .line 2197
    .local v0, "newWindowIndex":I
    if-lt v4, v7, :cond_2

    if-ge v4, v10, :cond_2

    .line 2199
    sub-int v1, v4, v7

    add-int v0, v1, v11

    move v3, v0

    goto :goto_1

    .line 2201
    :cond_2
    if-gt v10, v4, :cond_3

    if-le v11, v4, :cond_3

    .line 2203
    sub-int v1, v10, v7

    sub-int v0, v4, v1

    move v3, v0

    goto :goto_1

    .line 2204
    :cond_3
    if-le v10, v4, :cond_4

    if-gt v11, v4, :cond_4

    .line 2206
    sub-int v1, v10, v7

    add-int v0, v4, v1

    move v3, v0

    goto :goto_1

    .line 2209
    :cond_4
    move v3, v0

    .end local v0    # "newWindowIndex":I
    .local v3, "newWindowIndex":I
    :goto_1
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    move-object v2, v0

    .line 2210
    .local v2, "window":Landroidx/media3/common/Timeline$Window;
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 2211
    .local v1, "oldPeriodIndex":I
    nop

    .line 2212
    invoke-virtual {v8, v4, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    sub-int v23, v1, v0

    .line 2213
    .local v23, "deltaFromFirstPeriodIndex":I
    nop

    .line 2214
    invoke-virtual {v5, v3, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    add-int v24, v0, v23

    .line 2216
    .local v24, "newPeriodIndex":I
    iget-object v14, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2222
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v18

    .line 2223
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getContentPosition()J

    move-result-wide v20

    .line 2217
    const/16 v22, 0x5

    move-object v15, v5

    move/from16 v16, v3

    move/from16 v17, v24

    invoke-static/range {v14 .. v22}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;IIJJI)Landroidx/media3/session/PlayerInfo;

    move-result-object v14

    .line 2226
    .local v14, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    nop

    .line 2228
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 2226
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v19, v1

    .end local v1    # "oldPeriodIndex":I
    .local v19, "oldPeriodIndex":I
    move-object v1, v14

    move-object/from16 v20, v2

    .end local v2    # "window":Landroidx/media3/common/Timeline$Window;
    .local v20, "window":Landroidx/media3/common/Timeline$Window;
    move-object v2, v15

    move v15, v3

    .end local v3    # "newWindowIndex":I
    .local v15, "newWindowIndex":I
    move-object/from16 v3, v16

    move/from16 v16, v4

    .end local v4    # "oldWindowIndex":I
    .local v16, "oldWindowIndex":I
    move-object/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "newTimeline":Landroidx/media3/common/Timeline;
    .local v17, "newTimeline":Landroidx/media3/common/Timeline;
    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_2

    .line 2194
    .end local v14    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v15    # "newWindowIndex":I
    .end local v16    # "oldWindowIndex":I
    .end local v17    # "newTimeline":Landroidx/media3/common/Timeline;
    .end local v19    # "oldPeriodIndex":I
    .end local v20    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v23    # "deltaFromFirstPeriodIndex":I
    .end local v24    # "newPeriodIndex":I
    .restart local v5    # "newTimeline":Landroidx/media3/common/Timeline;
    :cond_5
    move-object/from16 v17, v5

    .line 2233
    .end local v5    # "newTimeline":Landroidx/media3/common/Timeline;
    .restart local v17    # "newTimeline":Landroidx/media3/common/Timeline;
    :goto_2
    return-void

    .line 2181
    .end local v12    # "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    .end local v13    # "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    .end local v17    # "newTimeline":Landroidx/media3/common/Timeline;
    :cond_6
    :goto_3
    return-void
.end method

.method private notifyPlayerInfoListenersWithReasons(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "oldPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p2, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p3, "timelineChangeReason"    # Ljava/lang/Integer;
    .param p4, "playWhenReadyChangeReason"    # Ljava/lang/Integer;
    .param p5, "positionDiscontinuityReason"    # Ljava/lang/Integer;
    .param p6, "mediaItemTransitionReason"    # Ljava/lang/Integer;

    .line 2372
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2373
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda42;

    invoke-direct {v2, p2, p3}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda42;-><init>(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;)V

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2377
    :cond_0
    if-eqz p5, :cond_1

    .line 2378
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda54;

    invoke-direct {v2, p2, p5}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda54;-><init>(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2386
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    .line 2387
    .local v1, "currentMediaItem":Landroidx/media3/common/MediaItem;
    const/4 v2, 0x1

    if-eqz p6, :cond_2

    .line 2388
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda62;

    invoke-direct {v4, v1, p6}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda62;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/Integer;)V

    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2392
    :cond_2
    iget-object v3, p1, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 2393
    .local v3, "oldPlayerError":Landroidx/media3/common/PlaybackException;
    iget-object v4, p2, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 2394
    .local v4, "newPlayerError":Landroidx/media3/common/PlaybackException;
    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_3

    .line 2396
    invoke-virtual {v3, v4}, Landroidx/media3/common/PlaybackException;->errorInfoEquals(Landroidx/media3/common/PlaybackException;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    .line 2397
    .local v0, "errorsMatch":Z
    :goto_1
    if-nez v0, :cond_5

    .line 2398
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda63;

    invoke-direct {v5, v4}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda63;-><init>(Landroidx/media3/common/PlaybackException;)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2401
    if-eqz v4, :cond_5

    .line 2402
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda65;

    invoke-direct {v5, v4}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda65;-><init>(Landroidx/media3/common/PlaybackException;)V

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2407
    :cond_5
    iget-object v2, p1, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    iget-object v5, p2, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v2, v5}, Landroidx/media3/common/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2408
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda66;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda66;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2412
    :cond_6
    iget-object v2, p1, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v5, p2, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2, v5}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2413
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda67;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda67;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0xe

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2417
    :cond_7
    iget-boolean v2, p1, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    iget-boolean v5, p2, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    if-eq v2, v5, :cond_8

    .line 2418
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda68;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda68;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2422
    :cond_8
    iget v2, p1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    iget v5, p2, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq v2, v5, :cond_9

    .line 2423
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 v6, 0x4

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2427
    :cond_9
    if-eqz p4, :cond_a

    .line 2428
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda70;

    invoke-direct {v5, p2, p4}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda70;-><init>(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;)V

    const/4 v6, 0x5

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2434
    :cond_a
    iget v2, p1, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    iget v5, p2, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    if-eq v2, v5, :cond_b

    .line 2435
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda44;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda44;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 v6, 0x6

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2440
    :cond_b
    iget-boolean v2, p1, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    iget-boolean v5, p2, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    if-eq v2, v5, :cond_c

    .line 2441
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda45;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda45;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 v6, 0x7

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2445
    :cond_c
    iget-object v2, p1, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v5, p2, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v2, v5}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2446
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda46;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda46;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0xc

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2451
    :cond_d
    iget v2, p1, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    iget v5, p2, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    if-eq v2, v5, :cond_e

    .line 2452
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda47;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda47;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x8

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2456
    :cond_e
    iget-boolean v2, p1, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    iget-boolean v5, p2, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    if-eq v2, v5, :cond_f

    .line 2457
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda48;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda48;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x9

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2461
    :cond_f
    iget-object v2, p1, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v5, p2, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2, v5}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2462
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda49;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda49;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0xf

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2466
    :cond_10
    iget v2, p1, Landroidx/media3/session/PlayerInfo;->volume:F

    iget v5, p2, Landroidx/media3/session/PlayerInfo;->volume:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_11

    .line 2467
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda50;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda50;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x16

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2471
    :cond_11
    iget-object v2, p1, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v5, p2, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v2, v5}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2472
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda51;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda51;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x14

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2476
    :cond_12
    iget-object v2, p1, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object v2, v2, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    iget-object v5, p2, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object v5, v5, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2477
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda52;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda52;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x1b

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2480
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda53;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda53;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2483
    :cond_13
    iget-object v2, p1, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget-object v5, p2, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {v2, v5}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2484
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda55;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda55;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x1d

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2488
    :cond_14
    iget v2, p1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    iget v5, p2, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    if-ne v2, v5, :cond_15

    iget-boolean v2, p1, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    iget-boolean v5, p2, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    if-eq v2, v5, :cond_16

    .line 2490
    :cond_15
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda56;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda56;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x1e

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2496
    :cond_16
    iget-object v2, p1, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    iget-object v5, p2, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {v2, v5}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2497
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda57;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda57;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x19

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2501
    :cond_17
    iget-wide v5, p1, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    iget-wide v7, p2, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_18

    .line 2502
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda58;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda58;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x10

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2506
    :cond_18
    iget-wide v5, p1, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    iget-wide v7, p2, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_19

    .line 2507
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda59;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda59;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x11

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2511
    :cond_19
    iget-wide v5, p1, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    iget-wide v7, p2, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1a

    .line 2512
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda60;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda60;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x12

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2518
    :cond_1a
    iget-object v2, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v5, p2, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {v2, v5}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2519
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda61;

    invoke-direct {v5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda61;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 v6, 0x13

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2524
    :cond_1b
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 2525
    return-void
.end method

.method private static rebuildPeriods(Landroidx/media3/common/Timeline;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p0, "oldTimeline"    # Landroidx/media3/common/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Timeline$Window;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Timeline$Period;",
            ">;)V"
        }
    .end annotation

    .line 3284
    .local p1, "newWindows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    .local p2, "newPeriods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3285
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Timeline$Window;

    .line 3286
    .local v1, "window":Landroidx/media3/common/Timeline$Window;
    iget v2, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 3287
    .local v2, "firstPeriodIndex":I
    iget v3, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 3288
    .local v3, "lastPeriodIndex":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 3293
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 3294
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int v5, v3, v2

    add-int/2addr v4, v5

    iput v4, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 3295
    move v4, v2

    .local v4, "j":I
    :goto_1
    if-gt v4, v3, :cond_2

    .line 3296
    nop

    .line 3297
    invoke-static {p0, v4, v0}, Landroidx/media3/session/MediaControllerImplBase;->getPeriodWithNewWindowIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/common/Timeline$Period;

    move-result-object v5

    .line 3296
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3295
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3289
    .end local v4    # "j":I
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 3290
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 3291
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->createNewPeriod(I)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3284
    .end local v1    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v2    # "firstPeriodIndex":I
    .end local v3    # "lastPeriodIndex":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3301
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private removeMediaItemsInternal(II)V
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 1120
    move-object/from16 v6, p0

    move/from16 v15, p1

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v5

    .line 1121
    .local v5, "playlistSize":I
    move/from16 v0, p2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1122
    .end local p2    # "toIndex":I
    .local v4, "toIndex":I
    if-ge v15, v5, :cond_5

    if-eq v15, v4, :cond_5

    if-nez v5, :cond_0

    move v11, v4

    move v9, v5

    goto/16 :goto_4

    .line 1125
    :cond_0
    nop

    .line 1126
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    if-ge v0, v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move/from16 v16, v0

    .line 1127
    .local v16, "wasCurrentItemRemoved":Z
    iget-object v7, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1133
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v11

    .line 1134
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getContentPosition()J

    move-result-wide v13

    .line 1128
    const/4 v10, 0x0

    move/from16 v8, p1

    move v9, v4

    invoke-static/range {v7 .. v14}, Landroidx/media3/session/MediaControllerImplBase;->maskPlayerInfoForRemovedItems(Landroidx/media3/session/PlayerInfo;IIZJJ)Landroidx/media3/session/PlayerInfo;

    move-result-object v7

    .line 1135
    .local v7, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-lt v0, v15, :cond_2

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-ge v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v8, v1

    .line 1138
    .local v8, "didMediaItemTransitionHappen":Z
    nop

    .line 1140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1142
    const/4 v0, 0x0

    if-eqz v16, :cond_3

    .line 1143
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v9, v1

    goto :goto_2

    .line 1144
    :cond_3
    move-object v9, v0

    .line 1145
    :goto_2
    if-eqz v8, :cond_4

    .line 1146
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v10, v0

    goto :goto_3

    .line 1147
    :cond_4
    move-object v10, v0

    .line 1138
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v11, v4

    .end local v4    # "toIndex":I
    .local v11, "toIndex":I
    move-object v4, v9

    move v9, v5

    .end local v5    # "playlistSize":I
    .local v9, "playlistSize":I
    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1148
    return-void

    .line 1122
    .end local v7    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v8    # "didMediaItemTransitionHappen":Z
    .end local v9    # "playlistSize":I
    .end local v11    # "toIndex":I
    .end local v16    # "wasCurrentItemRemoved":Z
    .restart local v4    # "toIndex":I
    .restart local v5    # "playlistSize":I
    :cond_5
    move v11, v4

    move v9, v5

    .line 1123
    .end local v4    # "toIndex":I
    .end local v5    # "playlistSize":I
    .restart local v9    # "playlistSize":I
    .restart local v11    # "toIndex":I
    :goto_4
    return-void
.end method

.method private replaceMediaItemsInternal(IILjava/util/List;)V
    .locals 23
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1377
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    move-object/from16 v6, p0

    move/from16 v15, p1

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v13

    .line 1378
    .local v13, "playlistSize":I
    if-le v15, v13, :cond_0

    .line 1379
    return-void

    .line 1381
    :cond_0
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    .line 1389
    return-void

    .line 1391
    :cond_1
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1392
    .end local p2    # "toIndex":I
    .local v5, "toIndex":I
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1394
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v19

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getContentPosition()J

    move-result-wide v21

    .line 1393
    move-object/from16 v16, v0

    move/from16 v17, v5

    move-object/from16 v18, p3

    invoke-static/range {v16 .. v22}, Landroidx/media3/session/MediaControllerImplBase;->maskPlayerInfoForAddedItems(Landroidx/media3/session/PlayerInfo;ILjava/util/List;JJ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 1395
    .local v0, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    nop

    .line 1401
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v11

    .line 1402
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getContentPosition()J

    move-result-wide v1

    .line 1396
    const/4 v10, 0x1

    move-object v7, v0

    move/from16 v8, p1

    move v9, v5

    move/from16 v16, v13

    .end local v13    # "playlistSize":I
    .local v16, "playlistSize":I
    move-wide v13, v1

    invoke-static/range {v7 .. v14}, Landroidx/media3/session/MediaControllerImplBase;->maskPlayerInfoForRemovedItems(Landroidx/media3/session/PlayerInfo;IIZJJ)Landroidx/media3/session/PlayerInfo;

    move-result-object v7

    .line 1403
    .end local v0    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .local v7, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    const/4 v1, 0x0

    if-lt v0, v15, :cond_2

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-ge v0, v5, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    move v8, v0

    .line 1406
    .local v8, "wasCurrentItemReplaced":Z
    nop

    .line 1408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1410
    const/4 v0, 0x0

    if-eqz v8, :cond_3

    .line 1411
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    .line 1412
    :cond_3
    move-object v4, v0

    .line 1413
    :goto_1
    if-eqz v8, :cond_4

    .line 1414
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    .line 1415
    :cond_4
    move-object v9, v0

    .line 1406
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v10, v5

    .end local v5    # "toIndex":I
    .local v10, "toIndex":I
    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1416
    return-void
.end method

.method private requestConnectToService()Z
    .locals 5

    .line 2529
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 2530
    const/16 v0, 0x1001

    goto :goto_0

    .line 2531
    :cond_0
    move v0, v2

    :goto_0
    nop

    .line 2534
    .local v0, "flags":I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "androidx.media3.session.MediaSessionService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2535
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v3}, Landroidx/media3/session/SessionToken;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v4}, Landroidx/media3/session/SessionToken;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2551
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    invoke-virtual {v3, v1, v4, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 2552
    .local v3, "result":Z
    if-nez v3, :cond_1

    .line 2553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MCImplBase"

    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    const/4 v2, 0x0

    return v2

    .line 2556
    :cond_1
    return v2
.end method

.method private requestConnectToSession(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "connectionHints"    # Landroid/os/Bundle;

    .line 2560
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    .line 2561
    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getBinder()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroidx/media3/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaSession;

    move-result-object v0

    .line 2562
    .local v0, "iSession":Landroidx/media3/session/IMediaSession;
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {v1}, Landroidx/media3/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v1

    .line 2563
    .local v1, "seq":I
    new-instance v2, Landroidx/media3/session/ConnectionRequest;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    .line 2565
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2566
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->instance:Landroidx/media3/session/MediaController;

    .line 2568
    invoke-virtual {v5}, Landroidx/media3/session/MediaController;->getMaxCommandsForMediaItems()I

    move-result v5

    invoke-direct {v2, v3, v4, p1, v5}, Landroidx/media3/session/ConnectionRequest;-><init>(Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 2570
    .local v2, "request":Landroidx/media3/session/ConnectionRequest;
    :try_start_0
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {v2}, Landroidx/media3/session/ConnectionRequest;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v0, v3, v1, v4}, Landroidx/media3/session/IMediaSession;->connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2574
    nop

    .line 2575
    const/4 v3, 0x1

    return v3

    .line 2571
    :catch_0
    move-exception v3

    .line 2572
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "MCImplBase"

    const-string v5, "Failed to call connection request."

    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2573
    const/4 v4, 0x0

    return v4
.end method

.method private static resolveMediaButtonPreferences(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p2, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p3, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 3334
    .local p0, "mediaButtonPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .local p1, "customLayout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 3333
    :goto_0
    invoke-static {v0, p2, p3}, Landroidx/media3/session/CommandButton;->copyWithUnavailableButtonsDisabled(Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static resolveSubsequentMediaItemIndex(IZILandroidx/media3/common/Timeline;II)I
    .locals 4
    .param p0, "repeatMode"    # I
    .param p1, "shuffleModeEnabled"    # Z
    .param p2, "oldMediaItemIndex"    # I
    .param p3, "oldTimeline"    # Landroidx/media3/common/Timeline;
    .param p4, "fromIndex"    # I
    .param p5, "toIndex"    # I

    .line 3310
    const/4 v0, -0x1

    .line 3311
    .local v0, "newMediaItemIndex":I
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    .line 3312
    .local v1, "maxIterations":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3313
    nop

    .line 3314
    invoke-virtual {p3, p2, p0, p1}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result p2

    .line 3315
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 3317
    goto :goto_2

    .line 3319
    :cond_0
    if-lt p2, p4, :cond_2

    if-lt p2, p5, :cond_1

    goto :goto_1

    .line 3312
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3320
    :cond_2
    :goto_1
    move v0, p2

    .line 3321
    nop

    .line 3324
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v0
.end method

.method private seekToInternal(IJ)V
    .locals 46
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .line 2246
    move-object/from16 v6, p0

    move/from16 v5, p1

    move-wide/from16 v3, p2

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2247
    .local v2, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-ge v5, v0, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2248
    :cond_1
    return-void

    .line 2253
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getPlaybackState()I

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_3

    move v0, v15

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    .line 2254
    .local v0, "newPlaybackState":I
    :goto_0
    iget-object v7, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v8, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v8, v8, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 2255
    invoke-virtual {v7, v0, v8}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v13

    .line 2256
    .local v13, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    invoke-direct {v6, v2, v5, v3, v4}, Landroidx/media3/session/MediaControllerImplBase;->getPeriodInfo(Landroidx/media3/common/Timeline;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    move-result-object v14

    .line 2257
    .local v14, "periodInfo":Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    if-nez v14, :cond_8

    .line 2259
    new-instance v19, Landroidx/media3/common/Player$PositionInfo;

    .line 2266
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v20

    const-wide/16 v22, 0x0

    if-nez v7, :cond_4

    move-wide/from16 v16, v22

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v3

    .line 2267
    :goto_1
    cmp-long v7, v3, v20

    if-nez v7, :cond_5

    move-wide/from16 v24, v22

    goto :goto_2

    :cond_5
    move-wide/from16 v24, v3

    :goto_2
    const/16 v18, -0x1

    const/16 v26, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, v19

    move/from16 v9, p1

    move/from16 v12, p1

    move-object v1, v13

    move-object/from16 v27, v14

    .end local v13    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v14    # "periodInfo":Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    .local v1, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .local v27, "periodInfo":Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    move-wide/from16 v13, v16

    move-wide/from16 v15, v24

    move/from16 v17, v18

    move/from16 v18, v26

    invoke-direct/range {v7 .. v18}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 2270
    .local v7, "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    iget-object v8, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v9, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v9, v9, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    new-instance v10, Landroidx/media3/session/SessionPositionInfo;

    iget-object v11, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v11, v11, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v11, v11, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    .line 2278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v31

    iget-object v12, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v12, v12, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v12, v12, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    .line 2280
    cmp-long v14, v3, v20

    if-nez v14, :cond_6

    move-wide/from16 v35, v22

    goto :goto_3

    :cond_6
    move-wide/from16 v35, v3

    :goto_3
    iget-object v14, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v14, v14, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v14, v14, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    move/from16 v16, v0

    .end local v0    # "newPlaybackState":I
    .local v16, "newPlaybackState":I
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v17, v1

    .end local v1    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .local v17, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    .line 2285
    cmp-long v18, v3, v20

    if-nez v18, :cond_7

    move-wide/from16 v44, v22

    goto :goto_4

    :cond_7
    move-wide/from16 v44, v3

    :goto_4
    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    move-object/from16 v28, v10

    move-object/from16 v29, v7

    move/from16 v30, v11

    move-wide/from16 v33, v12

    move-wide/from16 v40, v14

    move-wide/from16 v42, v0

    invoke-direct/range {v28 .. v45}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 2271
    const/4 v0, 0x1

    invoke-static {v8, v9, v7, v10, v0}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 2287
    .end local v7    # "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    .end local v17    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .restart local v1    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    move-object v8, v1

    move-object/from16 v7, v27

    goto :goto_5

    .line 2288
    .end local v1    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v16    # "newPlaybackState":I
    .end local v27    # "periodInfo":Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    .restart local v0    # "newPlaybackState":I
    .restart local v13    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .restart local v14    # "periodInfo":Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    :cond_8
    move/from16 v16, v0

    move-object/from16 v17, v13

    move-object/from16 v27, v14

    move v0, v15

    .end local v0    # "newPlaybackState":I
    .end local v13    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v14    # "periodInfo":Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    .restart local v16    # "newPlaybackState":I
    .restart local v17    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .restart local v27    # "periodInfo":Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    move-object/from16 v1, v17

    move-object/from16 v7, v27

    .end local v17    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v27    # "periodInfo":Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    .restart local v1    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .local v7, "periodInfo":Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    invoke-direct {v6, v1, v2, v7}, Landroidx/media3/session/MediaControllerImplBase;->maskPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    move-object v8, v1

    .line 2290
    .end local v1    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .local v8, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    :goto_5
    iget-object v1, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2291
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_9

    iget-object v1, v8, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iget-object v9, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v9, v9, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v9, v9, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v9, v9, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-eq v1, v9, :cond_9

    move v1, v0

    goto :goto_6

    :cond_9
    move v1, v15

    :goto_6
    move v9, v1

    .line 2294
    .local v9, "mediaItemTransition":Z
    if-nez v9, :cond_a

    iget-object v1, v8, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v10, v1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v1, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v12, v1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    cmp-long v1, v10, v12

    if-eqz v1, :cond_b

    :cond_a
    move v15, v0

    :cond_b
    move v10, v15

    .line 2298
    .local v10, "positionDiscontinuity":Z
    if-nez v10, :cond_c

    .line 2299
    return-void

    .line 2301
    :cond_c
    nop

    .line 2305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 2306
    if-eqz v9, :cond_d

    .line 2307
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v12, v0

    goto :goto_7

    .line 2308
    :cond_d
    const/4 v0, 0x0

    move-object v12, v0

    .line 2301
    :goto_7
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v15, v16

    .end local v16    # "newPlaybackState":I
    .local v15, "newPlaybackState":I
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v16, v2

    .end local v2    # "timeline":Landroidx/media3/common/Timeline;
    .local v16, "timeline":Landroidx/media3/common/Timeline;
    move-object v2, v13

    move-object v3, v14

    move-object v4, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2309
    return-void
.end method

.method private seekToInternalByOffset(J)V
    .locals 6
    .param p1, "offsetMs"    # J

    .line 2236
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 2237
    .local v0, "positionMs":J
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDuration()J

    move-result-wide v2

    .line 2238
    .local v2, "durationMs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 2239
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2241
    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2242
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v4

    invoke-direct {p0, v4, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    .line 2243
    return-void
.end method

.method private sendControllerResult(ILandroidx/media3/session/SessionResult;)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media3/session/SessionResult;

    .line 2704
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    .line 2705
    .local v0, "iSession":Landroidx/media3/session/IMediaSession;
    if-nez v0, :cond_0

    .line 2706
    return-void

    .line 2709
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p2}, Landroidx/media3/session/SessionResult;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/session/IMediaSession;->onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2712
    goto :goto_0

    .line 2710
    :catch_0
    move-exception v1

    .line 2711
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MCImplBase"

    const-string v3, "Error in sending"

    invoke-static {v2, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2713
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private sendControllerResultWhenReady(ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;)V"
        }
    .end annotation

    .line 2716
    .local p2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda90;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda90;-><init>(Landroidx/media3/session/MediaControllerImplBase;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    .line 2730
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2716
    invoke-interface {p2, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2731
    return-void
.end method

.method private setMediaItemsInternal(Ljava/util/List;IJZ)V
    .locals 45
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .param p5, "resetToDefaultPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJZ)V"
        }
    .end annotation

    .line 2061
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 2062
    .local v8, "windows":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Window;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 2063
    .local v9, "periods":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline$Period;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2064
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/MediaItem;

    invoke-static {v2, v1}, Landroidx/media3/session/LegacyConversions;->convertToWindow(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2065
    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->convertToPeriod(I)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2063
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2068
    .end local v1    # "i":I
    :cond_0
    invoke-static {v8, v9}, Landroidx/media3/session/MediaControllerImplBase;->createMaskingTimeline(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Timeline;

    move-result-object v10

    .line 2069
    .local v10, "newTimeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-wide/from16 v2, p3

    goto :goto_1

    .line 2070
    :cond_1
    new-instance v1, Landroidx/media3/common/IllegalSeekPositionException;

    move-wide/from16 v2, p3

    invoke-direct {v1, v10, v0, v2, v3}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Landroidx/media3/common/Timeline;IJ)V

    throw v1

    .line 2069
    :cond_2
    move-wide/from16 v2, p3

    .line 2073
    :goto_1
    const/4 v1, 0x0

    .line 2074
    .local v1, "correctedStartIndex":Z
    const/4 v4, -0x1

    if-eqz p5, :cond_3

    .line 2075
    iget-object v5, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    invoke-virtual {v10, v5}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    .line 2076
    .end local p2    # "startIndex":I
    .local v0, "startIndex":I
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move v5, v0

    move/from16 v23, v1

    .end local p3    # "startPositionMs":J
    .local v2, "startPositionMs":J
    goto :goto_2

    .line 2077
    .end local v0    # "startIndex":I
    .end local v2    # "startPositionMs":J
    .restart local p2    # "startIndex":I
    .restart local p3    # "startPositionMs":J
    :cond_3
    if-ne v0, v4, :cond_5

    .line 2078
    iget-object v5, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v5, v5, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v5, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v5, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 2079
    .end local p2    # "startIndex":I
    .restart local v0    # "startIndex":I
    iget-object v5, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v5, v5, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v5, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v2, v5, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    .line 2080
    .end local p3    # "startPositionMs":J
    .restart local v2    # "startPositionMs":J
    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v5

    if-lt v0, v5, :cond_4

    .line 2081
    const/4 v1, 0x1

    .line 2082
    iget-object v5, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    invoke-virtual {v10, v5}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    .line 2083
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move v5, v0

    move/from16 v23, v1

    goto :goto_2

    .line 2088
    :cond_4
    move v5, v0

    move/from16 v23, v1

    goto :goto_2

    .line 2077
    .end local v0    # "startIndex":I
    .end local v2    # "startPositionMs":J
    .restart local p2    # "startIndex":I
    .restart local p3    # "startPositionMs":J
    :cond_5
    move v5, v0

    move/from16 v23, v1

    .line 2088
    .end local v1    # "correctedStartIndex":Z
    .end local p2    # "startIndex":I
    .end local p3    # "startPositionMs":J
    .restart local v2    # "startPositionMs":J
    .local v5, "startIndex":I
    .local v23, "correctedStartIndex":Z
    :goto_2
    invoke-direct {v6, v10, v5, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->getPeriodInfo(Landroidx/media3/common/Timeline;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    move-result-object v24

    .line 2089
    .local v24, "periodInfo":Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    if-nez v24, :cond_a

    .line 2091
    new-instance v26, Landroidx/media3/common/Player$PositionInfo;

    .line 2098
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v2, v0

    const-wide/16 v27, 0x0

    if-nez v11, :cond_6

    move-wide/from16 v17, v27

    goto :goto_3

    :cond_6
    move-wide/from16 v17, v2

    .line 2099
    :goto_3
    cmp-long v11, v2, v0

    if-nez v11, :cond_7

    move-wide/from16 v19, v27

    goto :goto_4

    :cond_7
    move-wide/from16 v19, v2

    :goto_4
    const/16 v21, -0x1

    const/16 v22, -0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, v26

    move v13, v5

    move/from16 v16, v5

    invoke-direct/range {v11 .. v22}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 2102
    .local v26, "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    new-instance v11, Landroidx/media3/session/SessionPositionInfo;

    .line 2106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 2108
    cmp-long v14, v2, v0

    if-nez v14, :cond_8

    move-wide/from16 v32, v27

    goto :goto_5

    :cond_8
    move-wide/from16 v32, v2

    .line 2113
    :goto_5
    cmp-long v0, v2, v0

    if-nez v0, :cond_9

    .line 2114
    move-wide/from16 v41, v27

    goto :goto_6

    .line 2115
    :cond_9
    move-wide/from16 v41, v2

    :goto_6
    const/16 v27, 0x0

    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const-wide v37, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v39, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v25, v11

    move-wide/from16 v28, v12

    invoke-direct/range {v25 .. v42}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object v0, v11

    move-object/from16 v12, v26

    .local v0, "newSessionPositionInfo":Landroidx/media3/session/SessionPositionInfo;
    goto :goto_7

    .line 2117
    .end local v0    # "newSessionPositionInfo":Landroidx/media3/session/SessionPositionInfo;
    .end local v26    # "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    :cond_a
    new-instance v28, Landroidx/media3/common/Player$PositionInfo;

    .line 2121
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/media3/common/MediaItem;

    .line 2123
    invoke-static/range {v24 .. v24}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$100(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)I

    move-result v16

    .line 2124
    invoke-static/range {v24 .. v24}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v17

    .line 2125
    invoke-static/range {v24 .. v24}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v19

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, v28

    move v13, v5

    invoke-direct/range {v11 .. v22}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 2128
    .local v28, "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    new-instance v0, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v27, v0

    .line 2132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    .line 2134
    invoke-static/range {v24 .. v24}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v34

    .line 2139
    invoke-static/range {v24 .. v24}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v43

    const/16 v29, 0x0

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const-wide v39, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v41, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v27 .. v44}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object v11, v0

    move-object/from16 v12, v28

    .line 2141
    .end local v28    # "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    .local v11, "newSessionPositionInfo":Landroidx/media3/session/SessionPositionInfo;
    .local v12, "newPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    :goto_7
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2142
    const/4 v1, 0x4

    invoke-static {v0, v10, v12, v11, v1}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 2150
    .local v0, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget v13, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    .line 2151
    .local v13, "maskingPlaybackState":I
    if-eq v5, v4, :cond_d

    iget v4, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v14, 0x1

    if-eq v4, v14, :cond_d

    .line 2152
    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v23, :cond_b

    goto :goto_8

    .line 2156
    :cond_b
    const/4 v13, 0x2

    goto :goto_9

    .line 2154
    :cond_c
    :goto_8
    const/4 v13, 0x4

    .line 2159
    :cond_d
    :goto_9
    iget-object v4, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 2160
    invoke-virtual {v0, v13, v4}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v14

    .line 2162
    .end local v0    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .local v14, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    nop

    .line 2164
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2166
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_e

    .line 2167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_a

    .line 2168
    :cond_e
    move-object/from16 v16, v15

    .line 2170
    :goto_a
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2169
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v14, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2170
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_b

    .line 2172
    :cond_f
    goto :goto_c

    .line 2171
    :cond_10
    :goto_b
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v15, v0

    .line 2162
    :goto_c
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide/from16 v18, v2

    .end local v2    # "startPositionMs":J
    .local v18, "startPositionMs":J
    move-object v2, v4

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    move/from16 v16, v5

    .end local v5    # "startIndex":I
    .local v16, "startIndex":I
    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2173
    return-void
.end method

.method private setPlayWhenReady(ZI)V
    .locals 9
    .param p1, "playWhenReady"    # Z
    .param p2, "playWhenReadyChangeReason"    # I

    .line 2315
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPlaybackSuppressionReason()I

    move-result v0

    .line 2316
    .local v0, "maskedSuppressionReason":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2317
    const/4 v0, 0x0

    .line 2319
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v1, v1, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v1, v1, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    if-ne v1, v0, :cond_1

    .line 2321
    return-void

    .line 2325
    :cond_1
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v3, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    iget-wide v5, p0, Landroidx/media3/session/MediaControllerImplBase;->lastSetPlayWhenReadyCalledTimeMs:J

    .line 2330
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/MediaController;->getTimeDiffMs()J

    move-result-wide v7

    .line 2326
    invoke-static/range {v2 .. v8}, Landroidx/media3/session/MediaUtils;->getUpdatedCurrentPositionMs(Landroidx/media3/session/PlayerInfo;JJJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    .line 2331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/session/MediaControllerImplBase;->lastSetPlayWhenReadyCalledTimeMs:J

    .line 2332
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2333
    invoke-virtual {v1, p1, p2, v0}, Landroidx/media3/session/PlayerInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 2335
    .local v1, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    nop

    .line 2338
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2335
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2341
    return-void
.end method

.method private updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p2, "timelineChangeReason"    # Ljava/lang/Integer;
    .param p3, "playWhenReadyChangeReason"    # Ljava/lang/Integer;
    .param p4, "positionDiscontinuityReason"    # Ljava/lang/Integer;
    .param p5, "mediaItemTransitionReason"    # Ljava/lang/Integer;

    .line 2351
    iget-object v7, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2352
    .local v7, "oldPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2354
    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->notifyPlayerInfoListenersWithReasons(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2361
    return-void
.end method

.method private updateSessionPositionInfoIfNeeded(Landroidx/media3/session/SessionPositionInfo;)V
    .locals 4
    .param p1, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;

    .line 3008
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    iget-wide v2, p1, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 3010
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    invoke-static {p1, v0}, Landroidx/media3/session/MediaUtils;->areSessionPositionInfosInSamePeriodOrAd(Landroidx/media3/session/SessionPositionInfo;Landroidx/media3/session/SessionPositionInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3015
    return-void

    .line 3017
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 3019
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 227
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 945
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    return-void

    .line 948
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 950
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/session/MediaControllerImplBase;ILandroidx/media3/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 955
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->addMediaItemsInternal(ILjava/util/List;)V

    .line 956
    return-void
.end method

.method public addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 930
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    return-void

    .line 934
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda64;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda64;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 939
    nop

    .line 940
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 939
    invoke-direct {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->addMediaItemsInternal(ILjava/util/List;)V

    .line 941
    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 978
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    return-void

    .line 981
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 983
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda95;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda95;-><init>(Landroidx/media3/session/MediaControllerImplBase;ILjava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 993
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->addMediaItemsInternal(ILjava/util/List;)V

    .line 994
    return-void
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 960
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    return-void

    .line 964
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 973
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplBase;->addMediaItemsInternal(ILjava/util/List;)V

    .line 974
    return-void
.end method

.method public clearMediaItems()V
    .locals 2

    .line 1109
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    return-void

    .line 1113
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda88;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda88;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1116
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->removeMediaItemsInternal(II)V

    .line 1117
    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 1843
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1844
    return-void

    .line 1847
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearSurfacesAndCallbacks()V

    .line 1848
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda30;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1850
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    .line 1851
    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1855
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1856
    return-void

    .line 1859
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 1862
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurface()V

    .line 1863
    return-void

    .line 1860
    :cond_2
    :goto_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 1914
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1915
    return-void

    .line 1918
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 1921
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurface()V

    .line 1922
    return-void

    .line 1919
    :cond_2
    :goto_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 1936
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1937
    return-void

    .line 1940
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1941
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1942
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 1978
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1979
    return-void

    .line 1982
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 1985
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurface()V

    .line 1986
    return-void

    .line 1983
    :cond_2
    :goto_0
    return-void
.end method

.method public connect()V
    .locals 4

    .line 207
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    .line 210
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->connectionHints:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->requestConnectToSession(Landroid/os/Bundle;)Z

    move-result v0

    .local v0, "connectionRequested":Z
    goto :goto_0

    .line 212
    .end local v0    # "connectionRequested":Z
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->connectionHints:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    .line 213
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->requestConnectToService()Z

    move-result v0

    .line 215
    .restart local v0    # "connectionRequested":Z
    :goto_0
    if-nez v0, :cond_1

    .line 216
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda43;

    invoke-direct {v3, v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda43;-><init>(Landroidx/media3/session/MediaController;)V

    invoke-virtual {v1, v3}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    .line 218
    :cond_1
    return-void
.end method

.method public decreaseDeviceVolume()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1734
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1735
    return-void

    .line 1738
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1741
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    add-int/lit8 v0, v0, -0x1

    .line 1742
    .local v0, "newDeviceVolume":I
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-lt v0, v1, :cond_1

    .line 1743
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v1, v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1744
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1747
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1749
    :cond_1
    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 1753
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1754
    return-void

    .line 1757
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1760
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    add-int/lit8 v0, v0, -0x1

    .line 1761
    .local v0, "newDeviceVolume":I
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-lt v0, v1, :cond_1

    .line 1762
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v1, v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1763
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1766
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1768
    :cond_1
    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 720
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method public getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 1995
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    return-object v0
.end method

.method public getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;
    .locals 1

    .line 2030
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    return-object v0
.end method

.method public getBinder()Landroidx/media3/session/IMediaController;
    .locals 1

    .line 2046
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    return-object v0
.end method

.method public getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;
    .locals 1

    .line 2041
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 627
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget v0, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 622
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    return-wide v0
.end method

.method public getCommandButtonsForMediaItem(Landroidx/media3/common/MediaItem;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    .line 758
    .local v0, "supportedActions":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;

    move-result-object v1

    .line 759
    .local v1, "availableSessionCommands":Landroidx/media3/session/SessionCommands;
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 760
    .local v2, "commandButtonsForMediaItem":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/session/CommandButton;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 761
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->commandButtonsForMediaItemsMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/session/CommandButton;

    .line 762
    .local v4, "commandButton":Landroidx/media3/session/CommandButton;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    .line 764
    invoke-virtual {v1, v5}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 765
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 760
    .end local v4    # "commandButton":Landroidx/media3/session/CommandButton;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 768
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method public getConnectedToken()Landroidx/media3/session/SessionToken;
    .locals 1

    .line 309
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->connectedToken:Landroidx/media3/session/SessionToken;

    return-object v0
.end method

.method public getConnectionHints()Landroid/os/Bundle;
    .locals 1

    .line 222
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->connectionHints:Landroid/os/Bundle;

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 655
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    .line 642
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 647
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v0, v0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 650
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v0, v0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 2035
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 665
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 670
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    return v0
.end method

.method public getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 1592
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    return-object v0
.end method

.method public getCurrentLiveOffset()J
    .locals 2

    .line 637
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    return-wide v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 1425
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndexInternal(Landroidx/media3/session/PlayerInfo;)I

    move-result v0

    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 1420
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 7

    .line 611
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v1, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    iget-wide v3, p0, Landroidx/media3/session/MediaControllerImplBase;->lastSetPlayWhenReadyCalledTimeMs:J

    .line 616
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/session/MediaController;->getTimeDiffMs()J

    move-result-wide v5

    .line 612
    invoke-static/range {v0 .. v6}, Landroidx/media3/session/MediaUtils;->getUpdatedCurrentPositionMs(Landroidx/media3/session/PlayerInfo;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    .line 617
    iget-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 778
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 2000
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method public getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    .line 1620
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 1625
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 606
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    return-wide v0
.end method

.method getInstance()Landroidx/media3/session/MediaController;
    .locals 1

    .line 201
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->instance:Landroidx/media3/session/MediaController;

    return-object v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 1516
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method public getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 1990
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method public getNextMediaItemIndex()I
    .locals 4

    .line 1442
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    const/4 v0, -0x1

    goto :goto_0

    .line 1444
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1445
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v2, v2, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    .line 1446
    invoke-static {v2}, Landroidx/media3/session/MediaControllerImplBase;->convertRepeatModeForNavigation(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    .line 1444
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    .line 1442
    :goto_0
    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 573
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 695
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 591
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 579
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    return v0
.end method

.method public getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    .line 585
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 925
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 4

    .line 1431
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    const/4 v0, -0x1

    goto :goto_0

    .line 1433
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1434
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v2, v2, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    .line 1435
    invoke-static {v2}, Landroidx/media3/session/MediaControllerImplBase;->convertRepeatModeForNavigation(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    .line 1433
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    .line 1431
    :goto_0
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1544
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 520
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 537
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 747
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionActivity:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSessionExtras()Landroid/os/Bundle;
    .locals 1

    .line 773
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getSessionInterfaceWithSessionCommandIfAble(I)Landroidx/media3/session/IMediaSession;
    .locals 2
    .param p1, "commandCode"    # I

    .line 2605
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2606
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v0, p1}, Landroidx/media3/session/SessionCommands;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Controller isn\'t allowed to call command, commandCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCImplBase"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    const/4 v0, 0x0

    return-object v0

    .line 2610
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    return-object v0
.end method

.method getSessionInterfaceWithSessionCommandIfAble(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/IMediaSession;
    .locals 2
    .param p1, "command"    # Landroidx/media3/session/SessionCommand;

    .line 2616
    iget v0, p1, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2617
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v0, p1}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Controller isn\'t allowed to call custom session command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCImplBase"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    const/4 v0, 0x0

    return-object v0

    .line 2621
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1568
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    return v0
.end method

.method public getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 1

    .line 1838
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceSize:Landroidx/media3/common/util/Size;

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 632
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    return-wide v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 2005
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-object v0
.end method

.method public getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 1

    .line 1833
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 1597
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->volume:F

    return v0
.end method

.method public hasNextMediaItem()Z
    .locals 2

    .line 1457
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPreviousMediaItem()Z
    .locals 2

    .line 1452
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1689
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1690
    return-void

    .line 1693
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda98;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda98;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1696
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    add-int/lit8 v0, v0, 0x1

    .line 1697
    .local v0, "newDeviceVolume":I
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    .line 1698
    .local v1, "maxVolume":I
    if-eqz v1, :cond_1

    if-gt v0, v1, :cond_2

    .line 1699
    :cond_1
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v2, v0, v3}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1700
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda99;

    invoke-direct {v3, p0, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda99;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 v4, 0x1e

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1703
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1705
    :cond_2
    return-void
.end method

.method public increaseDeviceVolume(I)V
    .locals 5
    .param p1, "flags"    # I

    .line 1709
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1710
    return-void

    .line 1713
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda103;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda103;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1716
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    add-int/lit8 v0, v0, 0x1

    .line 1717
    .local v0, "newDeviceVolume":I
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    .line 1718
    .local v1, "maxVolume":I
    if-eqz v1, :cond_1

    if-gt v0, v1, :cond_2

    .line 1719
    :cond_1
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v2, v0, v3}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1720
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda104;

    invoke-direct {v3, p0, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda104;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 v4, 0x1e

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1723
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1725
    :cond_2
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 1630
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 601
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 596
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 660
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v0, v0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    return v0
.end method

.method isReleased()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplBase;->released:Z

    return v0
.end method

.method synthetic lambda$addMediaItem$30$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/MediaItem;Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 936
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 937
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object v1

    .line 936
    invoke-interface {p2, v0, p3, v1}, Landroidx/media3/session/IMediaSession;->addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$addMediaItem$31$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/MediaItem;Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 953
    invoke-virtual {p2}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object v1

    .line 952
    invoke-interface {p3, v0, p4, p1, v1}, Landroidx/media3/session/IMediaSession;->addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$addMediaItems$32$androidx-media3-session-MediaControllerImplBase(Ljava/util/List;Landroidx/media3/session/IMediaSession;I)V
    .locals 3
    .param p1, "mediaItems"    # Ljava/util/List;
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    new-instance v1, Landroidx/media3/common/BundleListRetriever;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;

    invoke-direct {v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;-><init>()V

    .line 970
    invoke-static {p1, v2}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 966
    invoke-interface {p2, v0, p3, v1}, Landroidx/media3/session/IMediaSession;->addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    return-void
.end method

.method synthetic lambda$addMediaItems$33$androidx-media3-session-MediaControllerImplBase(ILjava/util/List;Landroidx/media3/session/IMediaSession;I)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "mediaItems"    # Ljava/util/List;
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 985
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    new-instance v1, Landroidx/media3/common/BundleListRetriever;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;

    invoke-direct {v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;-><init>()V

    .line 990
    invoke-static {p2, v2}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 985
    invoke-interface {p3, v0, p4, p1, v1}, Landroidx/media3/session/IMediaSession;->addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V

    return-void
.end method

.method synthetic lambda$clearMediaItems$36$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->clearMediaItems(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$clearVideoSurface$69$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1849
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$decreaseDeviceVolume$59$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1739
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$decreaseDeviceVolume$60$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "newDeviceVolume"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1746
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$decreaseDeviceVolume$61$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1758
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$decreaseDeviceVolume$62$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "newDeviceVolume"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1765
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$increaseDeviceVolume$55$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1694
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$increaseDeviceVolume$56$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "newDeviceVolume"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1702
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$increaseDeviceVolume$57$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1714
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$increaseDeviceVolume$58$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "newDeviceVolume"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1722
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$moveMediaItem$37$androidx-media3-session-MediaControllerImplBase(IILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->moveMediaItem(Landroidx/media3/session/IMediaController;III)V

    return-void
.end method

.method synthetic lambda$moveMediaItems$38$androidx-media3-session-MediaControllerImplBase(IIILandroidx/media3/session/IMediaSession;I)V
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I
    .param p4, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1325
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    move-object v0, p4

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V

    return-void
.end method

.method synthetic lambda$new$0$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;
    .param p2, "flags"    # Landroidx/media3/common/FlagSet;

    .line 171
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/Player$Events;

    invoke-direct {v1, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method synthetic lambda$new$1$androidx-media3-session-MediaControllerImplBase()V
    .locals 3

    .line 185
    nop

    .line 186
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda43;

    invoke-direct {v2, v1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda43;-><init>(Landroidx/media3/session/MediaController;)V

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method synthetic lambda$onAvailableCommandsChangedFromPlayer$111$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2905
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method synthetic lambda$onAvailableCommandsChangedFromPlayer$112$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/MediaController$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 2911
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 2912
    nop

    .line 2913
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2912
    invoke-interface {p1, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onMediaButtonPreferencesChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 2914
    return-void
.end method

.method synthetic lambda$onAvailableCommandsChangedFromSession$108$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2859
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method synthetic lambda$onAvailableCommandsChangedFromSession$109$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/SessionCommands;Landroidx/media3/session/MediaController$Listener;)V
    .locals 1
    .param p1, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p2, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 2865
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onAvailableSessionCommandsChanged(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommands;)V

    return-void
.end method

.method synthetic lambda$onAvailableCommandsChangedFromSession$110$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/MediaController$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 2871
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 2872
    nop

    .line 2873
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2872
    invoke-interface {p1, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onMediaButtonPreferencesChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 2874
    return-void
.end method

.method synthetic lambda$onCustomCommand$107$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;ILandroidx/media3/session/MediaController$Listener;)V
    .locals 2
    .param p1, "command"    # Landroidx/media3/session/SessionCommand;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "seq"    # I
    .param p4, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 2740
    nop

    .line 2742
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-interface {p4, v0, p1, p2}, Landroidx/media3/session/MediaController$Listener;->onCustomCommand(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2741
    const-string v1, "ControllerCallback#onCustomCommand() must not return null"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2744
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    invoke-direct {p0, p3, v0}, Landroidx/media3/session/MediaControllerImplBase;->sendControllerResultWhenReady(ILcom/google/common/util/concurrent/ListenableFuture;)V

    .line 2745
    return-void
.end method

.method synthetic lambda$onError$117$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/SessionError;Landroidx/media3/session/MediaController$Listener;)V
    .locals 1
    .param p1, "sessionError"    # Landroidx/media3/session/SessionError;
    .param p2, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 2999
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onError(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionError;)V

    return-void
.end method

.method synthetic lambda$onExtrasChanged$115$androidx-media3-session-MediaControllerImplBase(Landroid/os/Bundle;Landroidx/media3/session/MediaController$Listener;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 2981
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onExtrasChanged(Landroidx/media3/session/MediaController;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$onSetCustomLayout$113$androidx-media3-session-MediaControllerImplBase(ZILandroidx/media3/session/MediaController$Listener;)V
    .locals 3
    .param p1, "mediaButtonPreferencesChanged"    # Z
    .param p2, "seq"    # I
    .param p3, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 2932
    nop

    .line 2934
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p3, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onSetCustomLayout(Landroidx/media3/session/MediaController;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2933
    const-string v1, "MediaController.Listener#onSetCustomLayout() must not return null"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2936
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    if-eqz p1, :cond_0

    .line 2937
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p3, v1, v2}, Landroidx/media3/session/MediaController$Listener;->onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 2938
    nop

    .line 2939
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2938
    invoke-interface {p3, v1, v2}, Landroidx/media3/session/MediaController$Listener;->onMediaButtonPreferencesChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 2941
    :cond_0
    invoke-direct {p0, p2, v0}, Landroidx/media3/session/MediaControllerImplBase;->sendControllerResultWhenReady(ILcom/google/common/util/concurrent/ListenableFuture;)V

    .line 2942
    return-void
.end method

.method synthetic lambda$onSetMediaButtonPreferences$114$androidx-media3-session-MediaControllerImplBase(ZILandroidx/media3/session/MediaController$Listener;)V
    .locals 3
    .param p1, "mediaButtonPreferencesChanged"    # Z
    .param p2, "seq"    # I
    .param p3, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 2962
    nop

    .line 2964
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p3, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onSetCustomLayout(Landroidx/media3/session/MediaController;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2963
    const-string v1, "MediaController.Listener#onSetCustomLayout() must not return null"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2966
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    if-eqz p1, :cond_0

    .line 2967
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p3, v1, v2}, Landroidx/media3/session/MediaController$Listener;->onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 2968
    nop

    .line 2969
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2968
    invoke-interface {p3, v1, v2}, Landroidx/media3/session/MediaController$Listener;->onMediaButtonPreferencesChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 2971
    :cond_0
    invoke-direct {p0, p2, v0}, Landroidx/media3/session/MediaControllerImplBase;->sendControllerResultWhenReady(ILcom/google/common/util/concurrent/ListenableFuture;)V

    .line 2972
    return-void
.end method

.method synthetic lambda$onSetSessionActivity$116$androidx-media3-session-MediaControllerImplBase(Landroid/app/PendingIntent;Landroidx/media3/session/MediaController$Listener;)V
    .locals 1
    .param p1, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 2991
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onSessionActivityChanged(Landroidx/media3/session/MediaController;Landroid/app/PendingIntent;)V

    return-void
.end method

.method synthetic lambda$pause$6$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->pause(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$play$5$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->play(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$prepare$7$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->prepare(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$release$4$androidx-media3-session-MediaControllerImplBase()V
    .locals 2

    .line 298
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    .line 302
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerStub;->destroy()V

    .line 303
    return-void
.end method

.method synthetic lambda$removeMediaItem$34$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->removeMediaItem(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$removeMediaItems$35$androidx-media3-session-MediaControllerImplBase(IILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->removeMediaItems(Landroidx/media3/session/IMediaController;III)V

    return-void
.end method

.method synthetic lambda$replaceMediaItem$39$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/MediaItem;Landroidx/media3/session/IMediaSession;I)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1339
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->connectedToken:Landroidx/media3/session/SessionToken;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getInterfaceVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1340
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1341
    invoke-virtual {p2}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object v1

    .line 1340
    invoke-interface {p3, v0, p4, p1, v1}, Landroidx/media3/session/IMediaSession;->replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 1343
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    add-int/lit8 v1, p1, 0x1

    .line 1344
    invoke-virtual {p2}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object v2

    .line 1343
    invoke-interface {p3, v0, p4, v1, v2}, Landroidx/media3/session/IMediaSession;->addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    .line 1345
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p3, v0, p4, p1}, Landroidx/media3/session/IMediaSession;->removeMediaItem(Landroidx/media3/session/IMediaController;II)V

    .line 1347
    :goto_0
    return-void
.end method

.method synthetic lambda$replaceMediaItems$40$androidx-media3-session-MediaControllerImplBase(Ljava/util/List;IILandroidx/media3/session/IMediaSession;I)V
    .locals 8
    .param p1, "mediaItems"    # Ljava/util/List;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1361
    new-instance v0, Landroidx/media3/common/BundleListRetriever;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;

    invoke-direct {v1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;-><init>()V

    .line 1363
    invoke-static {p1, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 1365
    .local v0, "mediaItemsBundleBinder":Landroid/os/IBinder;
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->connectedToken:Landroidx/media3/session/SessionToken;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/SessionToken;

    invoke-virtual {v1}, Landroidx/media3/session/SessionToken;->getInterfaceVersion()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 1366
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    move-object v2, p4

    move v4, p5

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroidx/media3/session/IMediaSession;->replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V

    goto :goto_0

    .line 1369
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p4, v1, p5, p3, v0}, Landroidx/media3/session/IMediaSession;->addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V

    .line 1370
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p4, v1, p5, p2, p3}, Landroidx/media3/session/IMediaSession;->removeMediaItems(Landroidx/media3/session/IMediaController;III)V

    .line 1372
    :goto_0
    return-void
.end method

.method synthetic lambda$seekBack$12$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekBack(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekForward$13$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekForward(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekTo$10$androidx-media3-session-MediaControllerImplBase(JLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "positionMs"    # J
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->seekTo(Landroidx/media3/session/IMediaController;IJ)V

    return-void
.end method

.method synthetic lambda$seekTo$11$androidx-media3-session-MediaControllerImplBase(IJLandroidx/media3/session/IMediaSession;I)V
    .locals 6
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J
    .param p4, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    move-object v0, p4

    move v2, p5

    move v3, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V

    return-void
.end method

.method synthetic lambda$seekToDefaultPosition$8$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekToDefaultPosition$9$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "mediaItemIndex"    # I
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$seekToNext$44$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1526
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekToNext(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekToNextMediaItem$42$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekToPrevious$43$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekToPrevious(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekToPreviousMediaItem$41$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$sendControllerResultWhenReady$106$androidx-media3-session-MediaControllerImplBase(Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 3
    .param p1, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p2, "seq"    # I

    .line 2720
    const-string v0, "MCImplBase"

    :try_start_0
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/SessionResult;

    const-string v2, "SessionResult must not be null"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/SessionResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .local v0, "result":Landroidx/media3/session/SessionResult;
    goto :goto_1

    .line 2724
    .end local v0    # "result":Landroidx/media3/session/SessionResult;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2725
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "Session operation failed"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2726
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .restart local v0    # "result":Landroidx/media3/session/SessionResult;
    goto :goto_2

    .line 2721
    .end local v0    # "result":Landroidx/media3/session/SessionResult;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 2722
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    const-string v2, "Session operation cancelled"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2723
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 2727
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    .restart local v0    # "result":Landroidx/media3/session/SessionResult;
    :goto_1
    nop

    .line 2728
    :goto_2
    invoke-direct {p0, p2, v0}, Landroidx/media3/session/MediaControllerImplBase;->sendControllerResult(ILandroidx/media3/session/SessionResult;)V

    .line 2729
    return-void
.end method

.method synthetic lambda$sendCustomCommand$21$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "command"    # Landroidx/media3/session/SessionCommand;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 742
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p1}, Landroidx/media3/session/SessionCommand;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p3, v0, p4, v1, p2}, Landroidx/media3/session/IMediaSession;->onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setAudioAttributes$67$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/AudioAttributes;ZLandroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1819
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1820
    invoke-virtual {p1}, Landroidx/media3/common/AudioAttributes;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1819
    invoke-interface {p3, v0, p4, v1, p2}, Landroidx/media3/session/IMediaSession;->setAudioAttributes(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method synthetic lambda$setDeviceMuted$63$androidx-media3-session-MediaControllerImplBase(ZLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "muted"    # Z
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1782
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V

    return-void
.end method

.method synthetic lambda$setDeviceMuted$64$androidx-media3-session-MediaControllerImplBase(ZLandroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "muted"    # Z
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1788
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    invoke-interface {p2, v0, p1}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$setDeviceMuted$65$androidx-media3-session-MediaControllerImplBase(ZILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "muted"    # Z
    .param p2, "flags"    # I
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1800
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V

    return-void
.end method

.method synthetic lambda$setDeviceMuted$66$androidx-media3-session-MediaControllerImplBase(ZLandroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "muted"    # Z
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1806
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    invoke-interface {p2, v0, p1}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$setDeviceVolume$51$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1645
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setDeviceVolume(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$setDeviceVolume$52$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1655
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$setDeviceVolume$53$androidx-media3-session-MediaControllerImplBase(IILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "flags"    # I
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1667
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V

    return-void
.end method

.method synthetic lambda$setDeviceVolume$54$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1677
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$setFutureResult$105$androidx-media3-session-MediaControllerImplBase(I)V
    .locals 2
    .param p1, "seq"    # I

    .line 2637
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$setMediaItem$22$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/MediaItem;Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 790
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object v1

    .line 789
    invoke-interface {p2, v0, p3, v1}, Landroidx/media3/session/IMediaSession;->setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setMediaItem$23$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/MediaItem;JLandroidx/media3/session/IMediaSession;I)V
    .locals 6
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "startPositionMs"    # J
    .param p4, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 810
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object v3

    .line 807
    move-object v0, p4

    move v2, p5

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V

    return-void
.end method

.method synthetic lambda$setMediaItem$24$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/MediaItem;ZLandroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "resetPosition"    # Z
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 829
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object v1

    .line 828
    invoke-interface {p3, v0, p4, v1, p2}, Landroidx/media3/session/IMediaSession;->setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method synthetic lambda$setMediaItems$25$androidx-media3-session-MediaControllerImplBase(Ljava/util/List;Landroidx/media3/session/IMediaSession;I)V
    .locals 3
    .param p1, "mediaItems"    # Ljava/util/List;
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    new-instance v1, Landroidx/media3/common/BundleListRetriever;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;

    invoke-direct {v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;-><init>()V

    .line 850
    invoke-static {p1, v2}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 846
    invoke-interface {p2, v0, p3, v1}, Landroidx/media3/session/IMediaSession;->setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    return-void
.end method

.method synthetic lambda$setMediaItems$26$androidx-media3-session-MediaControllerImplBase(Ljava/util/List;ZLandroidx/media3/session/IMediaSession;I)V
    .locals 3
    .param p1, "mediaItems"    # Ljava/util/List;
    .param p2, "resetPosition"    # Z
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 868
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    new-instance v1, Landroidx/media3/common/BundleListRetriever;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;

    invoke-direct {v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;-><init>()V

    .line 872
    invoke-static {p1, v2}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 868
    invoke-interface {p3, v0, p4, v1, p2}, Landroidx/media3/session/IMediaSession;->setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    return-void
.end method

.method synthetic lambda$setMediaItems$27$androidx-media3-session-MediaControllerImplBase(Ljava/util/List;IJLandroidx/media3/session/IMediaSession;I)V
    .locals 7
    .param p1, "mediaItems"    # Ljava/util/List;
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .param p5, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p6, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    new-instance v3, Landroidx/media3/common/BundleListRetriever;

    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda119;-><init>()V

    .line 895
    invoke-static {p1, v0}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 891
    move-object v0, p5

    move v2, p6

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/IMediaSession;->setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V

    return-void
.end method

.method synthetic lambda$setPlayWhenReady$14$androidx-media3-session-MediaControllerImplBase(ZLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V

    return-void
.end method

.method synthetic lambda$setPlaybackParameters$15$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p1}, Landroidx/media3/common/PlaybackParameters;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p2, v0, p3, v1}, Landroidx/media3/session/IMediaSession;->setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setPlaybackSpeed$17$androidx-media3-session-MediaControllerImplBase(FLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "speed"    # F
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V

    return-void
.end method

.method synthetic lambda$setPlaylistMetadata$28$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/MediaMetadata;Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 912
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p1}, Landroidx/media3/common/MediaMetadata;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p2, v0, p3, v1}, Landroidx/media3/session/IMediaSession;->setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setRating$19$androidx-media3-session-MediaControllerImplBase(Ljava/lang/String;Landroidx/media3/common/Rating;Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "rating"    # Landroidx/media3/common/Rating;
    .param p3, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p4, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p2}, Landroidx/media3/common/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p3, v0, p4, p1, v1}, Landroidx/media3/session/IMediaSession;->setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setRating$20$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/Rating;Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "rating"    # Landroidx/media3/common/Rating;
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 735
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p1}, Landroidx/media3/common/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p2, v0, p3, v1}, Landroidx/media3/session/IMediaSession;->setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setRepeatMode$45$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "repeatMode"    # I
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1554
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setRepeatMode(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$setShuffleModeEnabled$47$androidx-media3-session-MediaControllerImplBase(ZLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1578
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V

    return-void
.end method

.method synthetic lambda$setTrackSelectionParameters$75$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2016
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p2, v0, p3, v1}, Landroidx/media3/session/IMediaSession;->setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setVideoSurface$70$androidx-media3-session-MediaControllerImplBase(Landroid/view/Surface;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1874
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$setVideoSurfaceHolder$71$androidx-media3-session-MediaControllerImplBase(Landroid/view/Surface;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1901
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$setVideoSurfaceHolder$72$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1907
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$setVideoTextureView$73$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$setVideoTextureView$74$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1971
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    invoke-interface {p1, v0, p2, v1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$setVolume$49$androidx-media3-session-MediaControllerImplBase(FLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "volume"    # F
    .param p2, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1607
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setVolume(Landroidx/media3/session/IMediaController;IF)V

    return-void
.end method

.method synthetic lambda$stop$2$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->stop(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method public moveMediaItem(II)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .line 1304
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    return-void

    .line 1307
    :cond_0
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1309
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1312
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplBase;->moveMediaItemsInternal(III)V

    .line 1314
    return-void
.end method

.method public moveMediaItems(III)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I

    .line 1318
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    return-void

    .line 1321
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    if-ltz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1323
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda80;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda80;-><init>(Landroidx/media3/session/MediaControllerImplBase;III)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1327
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->moveMediaItemsInternal(III)V

    .line 1328
    return-void
.end method

.method notifyPeriodicSessionPositionInfoChanged(Landroidx/media3/session/SessionPositionInfo;)V
    .locals 1
    .param p1, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;

    .line 2625
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2626
    return-void

    .line 2628
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->updateSessionPositionInfoIfNeeded(Landroidx/media3/session/SessionPositionInfo;)V

    .line 2629
    return-void
.end method

.method onAvailableCommandsChangedFromPlayer(Landroidx/media3/common/Player$Commands;)V
    .locals 8
    .param p1, "commandsFromPlayer"    # Landroidx/media3/common/Player$Commands;

    .line 2879
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2880
    return-void

    .line 2882
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2883
    return-void

    .line 2885
    :cond_1
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 2886
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2887
    .local v0, "prevIntersectedPlayerCommands":Landroidx/media3/common/Player$Commands;
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 2888
    invoke-static {v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->createIntersectedCommandsEnsuringCommandReleaseAvailable(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2890
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2891
    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2892
    .local v1, "intersectedPlayerCommandsChanged":Z
    const/4 v2, 0x0

    .line 2893
    .local v2, "mediaButtonPreferencesChanged":Z
    if-eqz v1, :cond_2

    .line 2894
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2895
    .local v3, "oldMediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->mediaButtonPreferencesOriginal:Lcom/google/common/collect/ImmutableList;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayoutOriginal:Lcom/google/common/collect/ImmutableList;

    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v7, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2896
    invoke-static {v4, v5, v6, v7}, Landroidx/media3/session/MediaControllerImplBase;->resolveMediaButtonPreferences(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2901
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2902
    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 2903
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda118;

    invoke-direct {v5, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda118;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    const/16 v6, 0xd

    invoke-virtual {v4, v6, v5}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2907
    .end local v3    # "oldMediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    :cond_2
    if-eqz v2, :cond_3

    .line 2908
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v3

    new-instance v4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    .line 2909
    invoke-virtual {v3, v4}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 2916
    :cond_3
    return-void
.end method

.method onAvailableCommandsChangedFromSession(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 8
    .param p1, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p2, "playerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 2825
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2826
    return-void

    .line 2828
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    invoke-static {v0, p2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2829
    .local v0, "playerCommandsChanged":Z
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-static {v1, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2830
    .local v1, "sessionCommandsChanged":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 2831
    return-void

    .line 2833
    :cond_1
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2834
    const/4 v2, 0x0

    .line 2835
    .local v2, "intersectedPlayerCommandsChanged":Z
    if-eqz v0, :cond_2

    .line 2836
    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 2837
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2838
    .local v3, "prevIntersectedPlayerCommands":Landroidx/media3/common/Player$Commands;
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 2839
    invoke-static {v4, v5}, Landroidx/media3/session/MediaControllerImplBase;->createIntersectedCommandsEnsuringCommandReleaseAvailable(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2841
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2842
    invoke-static {v4, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 2844
    .end local v3    # "prevIntersectedPlayerCommands":Landroidx/media3/common/Player$Commands;
    :cond_2
    const/4 v3, 0x0

    .line 2845
    .local v3, "mediaButtonPreferencesChanged":Z
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 2846
    :cond_3
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2847
    .local v4, "oldMediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->mediaButtonPreferencesOriginal:Lcom/google/common/collect/ImmutableList;

    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayoutOriginal:Lcom/google/common/collect/ImmutableList;

    iget-object v7, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2848
    invoke-static {v5, v6, p1, v7}, Landroidx/media3/session/MediaControllerImplBase;->resolveMediaButtonPreferences(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2853
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2854
    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 2856
    .end local v4    # "oldMediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    :cond_4
    if-eqz v2, :cond_5

    .line 2857
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda115;

    invoke-direct {v5, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda115;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    const/16 v6, 0xd

    invoke-virtual {v4, v6, v5}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2861
    :cond_5
    if-eqz v1, :cond_6

    .line 2862
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v4

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda116;

    invoke-direct {v5, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda116;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/SessionCommands;)V

    .line 2863
    invoke-virtual {v4, v5}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 2867
    :cond_6
    if-eqz v3, :cond_7

    .line 2868
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v4

    new-instance v5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda117;

    invoke-direct {v5, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda117;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    .line 2869
    invoke-virtual {v4, v5}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 2876
    :cond_7
    return-void
.end method

.method onConnected(Landroidx/media3/session/ConnectionState;)V
    .locals 12
    .param p1, "result"    # Landroidx/media3/session/ConnectionState;

    .line 2641
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    if-eqz v0, :cond_0

    .line 2642
    const-string v0, "MCImplBase"

    const-string v1, "Cannot be notified about the connection result many times. Probably a bug or malicious app."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->release()V

    .line 2647
    return-void

    .line 2649
    :cond_0
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->sessionBinder:Landroidx/media3/session/IMediaSession;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    .line 2650
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->sessionActivity:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionActivity:Landroid/app/PendingIntent;

    .line 2651
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->sessionCommands:Landroidx/media3/session/SessionCommands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2652
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 2653
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 2654
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 2655
    invoke-static {v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->createIntersectedCommandsEnsuringCommandReleaseAvailable(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2657
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->customLayout:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayoutOriginal:Lcom/google/common/collect/ImmutableList;

    .line 2658
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->mediaButtonPreferencesOriginal:Lcom/google/common/collect/ImmutableList;

    .line 2659
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->mediaButtonPreferencesOriginal:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayoutOriginal:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2660
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->resolveMediaButtonPreferences(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2665
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 2667
    .local v0, "commandButtonsForMediaItems":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Landroidx/media3/session/CommandButton;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Landroidx/media3/session/ConnectionState;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2668
    iget-object v2, p1, Landroidx/media3/session/ConnectionState;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/CommandButton;

    .line 2669
    .local v2, "commandButton":Landroidx/media3/session/CommandButton;
    iget-object v3, v2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v3, v3, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v3, :cond_1

    .line 2671
    iget-object v3, v2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget-object v3, v3, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 2667
    .end local v2    # "commandButton":Landroidx/media3/session/CommandButton;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2674
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->commandButtonsForMediaItemsMap:Lcom/google/common/collect/ImmutableMap;

    .line 2675
    iget-object v1, p1, Landroidx/media3/session/ConnectionState;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2677
    iget-object v1, p1, Landroidx/media3/session/ConnectionState;->platformToken:Landroid/media/session/MediaSession$Token;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v1}, Landroidx/media3/session/SessionToken;->getPlatformToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Landroidx/media3/session/ConnectionState;->platformToken:Landroid/media/session/MediaSession$Token;

    .line 2678
    .local v1, "platformToken":Landroid/media/session/MediaSession$Token;
    :goto_1
    if-eqz v1, :cond_4

    .line 2679
    new-instance v2, Landroid/media/session/MediaController;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->platformController:Landroid/media/session/MediaController;

    .line 2684
    :cond_4
    :try_start_0
    iget-object v2, p1, Landroidx/media3/session/ConnectionState;->sessionBinder:Landroidx/media3/session/IMediaSession;

    invoke-interface {v2}, Landroidx/media3/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2688
    nop

    .line 2689
    new-instance v11, Landroidx/media3/session/SessionToken;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    .line 2691
    invoke-virtual {v2}, Landroidx/media3/session/SessionToken;->getUid()I

    move-result v3

    iget v5, p1, Landroidx/media3/session/ConnectionState;->libraryVersion:I

    iget v6, p1, Landroidx/media3/session/ConnectionState;->sessionInterfaceVersion:I

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    .line 2695
    invoke-virtual {v2}, Landroidx/media3/session/SessionToken;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Landroidx/media3/session/ConnectionState;->sessionBinder:Landroidx/media3/session/IMediaSession;

    iget-object v9, p1, Landroidx/media3/session/ConnectionState;->tokenExtras:Landroid/os/Bundle;

    const/4 v4, 0x0

    move-object v2, v11

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Landroidx/media3/session/SessionToken;-><init>(IIIILjava/lang/String;Landroidx/media3/session/IMediaSession;Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)V

    iput-object v11, p0, Landroidx/media3/session/MediaControllerImplBase;->connectedToken:Landroidx/media3/session/SessionToken;

    .line 2699
    iget-object v2, p1, Landroidx/media3/session/ConnectionState;->sessionExtras:Landroid/os/Bundle;

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionExtras:Landroid/os/Bundle;

    .line 2700
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/MediaController;->notifyAccepted()V

    .line 2701
    return-void

    .line 2685
    :catch_0
    move-exception v2

    .line 2686
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/session/MediaController;->release()V

    .line 2687
    return-void
.end method

.method onCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 2734
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2735
    return-void

    .line 2737
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda94;

    invoke-direct {v1, p0, p2, p3, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda94;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;I)V

    .line 2738
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 2746
    return-void
.end method

.method public onError(ILandroidx/media3/session/SessionError;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "sessionError"    # Landroidx/media3/session/SessionError;

    .line 2995
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2996
    return-void

    .line 2998
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda114;

    invoke-direct {v1, p0, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda114;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/SessionError;)V

    .line 2999
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 3000
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2976
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2977
    return-void

    .line 2979
    :cond_0
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionExtras:Landroid/os/Bundle;

    .line 2980
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda71;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda71;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Bundle;)V

    .line 2981
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 2982
    return-void
.end method

.method onPlayerInfoChanged(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V
    .locals 10
    .param p1, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p2, "bundlingExclusions"    # Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    .line 2749
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2750
    return-void

    .line 2752
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingPlayerInfo:Landroidx/media3/session/PlayerInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingBundlingExclusions:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    if-eqz v0, :cond_1

    .line 2753
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingPlayerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingBundlingExclusions:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2754
    invoke-static {v0, v1, p1, p2, v2}, Landroidx/media3/session/MediaUtils;->mergePlayerInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/common/Player$Commands;)Landroid/util/Pair;

    move-result-object v0

    .line 2760
    .local v0, "mergedPlayerInfoUpdate":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, Landroidx/media3/session/PlayerInfo;

    .line 2761
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p2, v1

    check-cast p2, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    .line 2763
    .end local v0    # "mergedPlayerInfoUpdate":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;>;"
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingPlayerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2764
    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingBundlingExclusions:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    .line 2765
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2767
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingPlayerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2768
    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingBundlingExclusions:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    .line 2769
    return-void

    .line 2771
    :cond_2
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2774
    .local v1, "oldPlayerInfo":Landroidx/media3/session/PlayerInfo;
    sget-object v2, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->NONE:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2775
    invoke-static {v1, v2, p1, p2, v3}, Landroidx/media3/session/MediaUtils;->mergePlayerInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/common/Player$Commands;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/session/PlayerInfo;

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2782
    iget-object v9, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2787
    .local v9, "finalPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v3, p1, Landroidx/media3/session/PlayerInfo;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Player$PositionInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v3, p1, Landroidx/media3/session/PlayerInfo;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 2788
    invoke-virtual {v2, v3}, Landroidx/media3/common/Player$PositionInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 2790
    :cond_3
    move-object v7, v0

    goto :goto_1

    .line 2789
    :cond_4
    :goto_0
    iget v2, v9, Landroidx/media3/session/PlayerInfo;->discontinuityReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v7, v2

    .line 2790
    :goto_1
    nop

    .line 2795
    .local v7, "positionDiscontinuityReason":Ljava/lang/Integer;
    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-virtual {v9}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2796
    iget v2, v9, Landroidx/media3/session/PlayerInfo;->mediaItemTransitionReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    .line 2797
    :cond_5
    move-object v8, v0

    :goto_2
    nop

    .line 2802
    .local v8, "mediaItemTransitionReason":Ljava/lang/Integer;
    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, v9, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2803
    iget v2, v9, Landroidx/media3/session/PlayerInfo;->timelineChangeReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v5, v2

    goto :goto_3

    .line 2804
    :cond_6
    move-object v5, v0

    :goto_3
    nop

    .line 2810
    .local v5, "timelineChangeReason":Ljava/lang/Integer;
    iget v2, v1, Landroidx/media3/session/PlayerInfo;->playWhenReadyChangeReason:I

    iget v3, v9, Landroidx/media3/session/PlayerInfo;->playWhenReadyChangeReason:I

    if-ne v2, v3, :cond_8

    iget-boolean v2, v1, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    iget-boolean v3, v9, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eq v2, v3, :cond_7

    goto :goto_4

    .line 2812
    :cond_7
    move-object v6, v0

    goto :goto_5

    .line 2811
    :cond_8
    :goto_4
    iget v0, v9, Landroidx/media3/session/PlayerInfo;->playWhenReadyChangeReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    .line 2812
    :goto_5
    nop

    .line 2814
    .local v6, "playWhenReadyChangeReason":Ljava/lang/Integer;
    move-object v2, p0

    move-object v3, v1

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->notifyPlayerInfoListenersWithReasons(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2821
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 3

    .line 3003
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda10;-><init>()V

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3005
    return-void
.end method

.method onSetCustomLayout(ILjava/util/List;)V
    .locals 4
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 2919
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2920
    return-void

    .line 2922
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2923
    .local v0, "oldMediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayoutOriginal:Lcom/google/common/collect/ImmutableList;

    .line 2924
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->mediaButtonPreferencesOriginal:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2925
    invoke-static {v1, p2, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->resolveMediaButtonPreferences(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2927
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2928
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2929
    .local v1, "mediaButtonPreferencesChanged":Z
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda100;

    invoke-direct {v3, p0, v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda100;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    .line 2930
    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 2943
    return-void
.end method

.method onSetMediaButtonPreferences(ILjava/util/List;)V
    .locals 4
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 2946
    .local p2, "mediaButtonPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2947
    return-void

    .line 2949
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2950
    .local v0, "oldMediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->mediaButtonPreferencesOriginal:Lcom/google/common/collect/ImmutableList;

    .line 2951
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayoutOriginal:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2952
    invoke-static {p2, v1, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->resolveMediaButtonPreferences(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2957
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->resolvedMediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2958
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2959
    .local v1, "mediaButtonPreferencesChanged":Z
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda83;

    invoke-direct {v3, p0, v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda83;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    .line 2960
    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 2973
    return-void
.end method

.method public onSetSessionActivity(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "sessionActivity"    # Landroid/app/PendingIntent;

    .line 2985
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2986
    return-void

    .line 2988
    :cond_0
    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionActivity:Landroid/app/PendingIntent;

    .line 2989
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda89;

    invoke-direct {v1, p0, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda89;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/app/PendingIntent;)V

    .line 2990
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 2992
    return-void
.end method

.method public pause()V
    .locals 2

    .line 432
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    return-void

    .line 436
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda96;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda96;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 439
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroidx/media3/session/MediaControllerImplBase;->setPlayWhenReady(ZI)V

    .line 440
    return-void
.end method

.method public play()V
    .locals 4

    .line 407
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    const-string v0, "MCImplBase"

    const-string v1, "Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void

    .line 416
    :cond_0
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->platformController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->platformController:Landroid/media/session/MediaController;

    .line 420
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    .line 421
    const-string v2, "androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 424
    :cond_1
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda105;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda105;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 427
    invoke-direct {p0, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->setPlayWhenReady(ZI)V

    .line 428
    return-void
.end method

.method public prepare()V
    .locals 9

    .line 444
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    return-void

    .line 448
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda109;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda109;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 451
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v1, v1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 452
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 454
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    .line 453
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 457
    .local v0, "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 464
    .end local v0    # "newPlayerInfo":Landroidx/media3/session/PlayerInfo;
    :cond_2
    return-void
.end method

.method public release()V
    .locals 5

    .line 277
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    .line 278
    .local v0, "iSession":Landroidx/media3/session/IMediaSession;
    iget-boolean v1, p0, Landroidx/media3/session/MediaControllerImplBase;->released:Z

    if-eqz v1, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/session/MediaControllerImplBase;->released:Z

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->connectedToken:Landroidx/media3/session/SessionToken;

    .line 283
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->flushCommandQueueHandler:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    invoke-virtual {v2}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->release()V

    .line 284
    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    .line 285
    if-eqz v0, :cond_1

    .line 286
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {v1}, Landroidx/media3/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v1

    .line 288
    .local v1, "seq":I
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 289
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {v0, v2, v1}, Landroidx/media3/session/IMediaSession;->release(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v2

    .line 294
    .end local v1    # "seq":I
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->release()V

    .line 295
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda77;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda77;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v3, v4, v2}, Landroidx/media3/session/SequencedFutureManager;->lazyRelease(JLjava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 232
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public removeMediaItem(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1083
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    return-void

    .line 1086
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1088
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda84;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda84;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1091
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->removeMediaItemsInternal(II)V

    .line 1092
    return-void
.end method

.method public removeMediaItems(II)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 1096
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    return-void

    .line 1099
    :cond_0
    if-ltz p1, :cond_1

    if-lt p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1101
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda41;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1104
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->removeMediaItemsInternal(II)V

    .line 1105
    return-void
.end method

.method public replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 1332
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1333
    return-void

    .line 1335
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1337
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/session/MediaControllerImplBase;ILandroidx/media3/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1348
    add-int/lit8 v0, p1, 0x1

    .line 1349
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1348
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->replaceMediaItemsInternal(IILjava/util/List;)V

    .line 1350
    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1354
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1355
    return-void

    .line 1357
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1359
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda108;

    invoke-direct {v0, p0, p3, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda108;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;II)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1373
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->replaceMediaItemsInternal(IILjava/util/List;)V

    .line 1374
    return-void
.end method

.method public seekBack()V
    .locals 2

    .line 525
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    return-void

    .line 529
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda93;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda93;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 532
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getSeekBackIncrement()J

    move-result-wide v0

    neg-long v0, v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternalByOffset(J)V

    .line 533
    return-void
.end method

.method public seekForward()V
    .locals 2

    .line 542
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    return-void

    .line 546
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda31;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 549
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getSeekForwardIncrement()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternalByOffset(J)V

    .line 550
    return-void
.end method

.method public seekTo(IJ)V
    .locals 1
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 506
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    return-void

    .line 509
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 511
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda102;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda102;-><init>(Landroidx/media3/session/MediaControllerImplBase;IJ)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 515
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    .line 516
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .line 494
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    return-void

    .line 498
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda29;-><init>(Landroidx/media3/session/MediaControllerImplBase;J)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 501
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    .line 502
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 3

    .line 468
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    return-void

    .line 472
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda40;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 475
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    .line 476
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 2
    .param p1, "mediaItemIndex"    # I

    .line 480
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    return-void

    .line 483
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 485
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 489
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    .line 490
    return-void
.end method

.method public seekToNext()V
    .locals 5

    .line 1521
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    return-void

    .line 1525
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda97;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda97;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1528
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1529
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1532
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->hasNextMediaItem()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_2

    .line 1533
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getNextMediaItemIndex()I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    goto :goto_0

    .line 1535
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v1

    new-instance v4, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v0, v1, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    .line 1536
    .local v1, "window":Landroidx/media3/common/Timeline$Window;
    iget-boolean v4, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1537
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v4

    invoke-direct {p0, v4, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    .line 1540
    .end local v1    # "window":Landroidx/media3/common/Timeline$Window;
    :cond_3
    :goto_0
    return-void

    .line 1530
    :cond_4
    :goto_1
    return-void
.end method

.method public seekToNextMediaItem()V
    .locals 3

    .line 1476
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1477
    return-void

    .line 1480
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1483
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1484
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getNextMediaItemIndex()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    .line 1486
    :cond_1
    return-void
.end method

.method public seekToPrevious()V
    .locals 10

    .line 1490
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    return-void

    .line 1494
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda85;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda85;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1497
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1498
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1501
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->hasPreviousMediaItem()Z

    move-result v1

    .line 1502
    .local v1, "hasPreviousMediaItem":Z
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v2

    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    .line 1503
    .local v2, "window":Landroidx/media3/common/Timeline$Window;
    iget-boolean v3, v2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1504
    if-eqz v1, :cond_4

    .line 1505
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPreviousMediaItemIndex()I

    move-result v3

    invoke-direct {p0, v3, v4, v5}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    goto :goto_0

    .line 1507
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v6

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getMaxSeekToPreviousPosition()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3

    .line 1508
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPreviousMediaItemIndex()I

    move-result v3

    invoke-direct {p0, v3, v4, v5}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    goto :goto_0

    .line 1510
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    .line 1512
    :cond_4
    :goto_0
    return-void

    .line 1499
    .end local v1    # "hasPreviousMediaItem":Z
    .end local v2    # "window":Landroidx/media3/common/Timeline$Window;
    :cond_5
    :goto_1
    return-void
.end method

.method public seekToPreviousMediaItem()V
    .locals 3

    .line 1462
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1463
    return-void

    .line 1466
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda75;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda75;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1469
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1470
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPreviousMediaItemIndex()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    .line 1472
    :cond_1
    return-void
.end method

.method public sendCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "command"    # Landroidx/media3/session/SessionCommand;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 740
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda39;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithSessionCommand(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 3
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z

    .line 1813
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1814
    return-void

    .line 1817
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/AudioAttributes;Z)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1822
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1823
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1824
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/common/AudioAttributes;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1827
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1829
    :cond_1
    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 3
    .param p1, "muted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1777
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1778
    return-void

    .line 1781
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda110;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda110;-><init>(Landroidx/media3/session/MediaControllerImplBase;Z)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1784
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    if-eq v0, p1, :cond_1

    .line 1785
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v1, v1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    invoke-virtual {v0, v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1786
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda111;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda111;-><init>(Landroidx/media3/session/MediaControllerImplBase;Z)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1789
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1791
    :cond_1
    return-void
.end method

.method public setDeviceMuted(ZI)V
    .locals 3
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 1795
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1796
    return-void

    .line 1799
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda78;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda78;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1802
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    if-eq v0, p1, :cond_1

    .line 1803
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v1, v1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    invoke-virtual {v0, v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1804
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda79;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda79;-><init>(Landroidx/media3/session/MediaControllerImplBase;Z)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1807
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1809
    :cond_1
    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 4
    .param p1, "volume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1640
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1641
    return-void

    .line 1644
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1647
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    .line 1648
    .local v0, "deviceInfo":Landroidx/media3/common/DeviceInfo;
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v1, v1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    if-eq v1, p1, :cond_2

    iget v1, v0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-gt v1, p1, :cond_2

    iget v1, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-eqz v1, :cond_1

    iget v1, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-gt p1, v1, :cond_2

    .line 1651
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v1, p1, v2}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1653
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1656
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1658
    :cond_2
    return-void
.end method

.method public setDeviceVolume(II)V
    .locals 4
    .param p1, "volume"    # I
    .param p2, "flags"    # I

    .line 1662
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1663
    return-void

    .line 1666
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda72;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda72;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1669
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    .line 1670
    .local v0, "deviceInfo":Landroidx/media3/common/DeviceInfo;
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v1, v1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    if-eq v1, p1, :cond_2

    iget v1, v0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-gt v1, p1, :cond_2

    iget v1, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-eqz v1, :cond_1

    iget v1, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-gt p1, v1, :cond_2

    .line 1673
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v1, p1, v2}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1675
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda73;

    invoke-direct {v2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda73;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1678
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1680
    :cond_2
    return-void
.end method

.method setFutureResult(ILjava/lang/Object;)V
    .locals 2
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .line 2636
    .local p2, "futureResult":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V

    .line 2637
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda101;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda101;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    .line 2638
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 7
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 783
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    return-void

    .line 787
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda35;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 792
    nop

    .line 793
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 792
    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    .line 797
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 7
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "startPositionMs"    # J

    .line 801
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    return-void

    .line 805
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda86;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda86;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;J)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 813
    nop

    .line 814
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 813
    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    .line 818
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 7
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "resetPosition"    # Z

    .line 822
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    return-void

    .line 826
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;Z)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 831
    nop

    .line 832
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 831
    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    .line 836
    return-void
.end method

.method public setMediaItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 840
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    return-void

    .line 844
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda32;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 853
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    const/4 v3, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    .line 858
    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 7
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 885
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    return-void

    .line 889
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda22;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;IJ)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 900
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    .line 902
    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 7
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 862
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    return-void

    .line 866
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda87;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda87;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;Z)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 876
    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    .line 881
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2
    .param p1, "playWhenReady"    # Z

    .line 554
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 555
    if-eqz p1, :cond_0

    .line 556
    const-string v0, "MCImplBase"

    const-string v1, "Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_0
    return-void

    .line 565
    :cond_1
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaControllerImplBase;Z)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 568
    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->setPlayWhenReady(ZI)V

    .line 569
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 3
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 675
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    return-void

    .line 679
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/PlaybackParameters;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 683
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 684
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 686
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda28;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda28;-><init>(Landroidx/media3/common/PlaybackParameters;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 689
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 691
    :cond_1
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 4
    .param p1, "speed"    # F

    .line 700
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    return-void

    .line 704
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda74;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda74;-><init>(Landroidx/media3/session/MediaControllerImplBase;F)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 707
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->withSpeed(F)Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    .line 709
    .local v0, "newPlaybackParameters":Landroidx/media3/common/PlaybackParameters;
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v1, v0}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 711
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda76;

    invoke-direct {v2, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda76;-><init>(Landroidx/media3/common/PlaybackParameters;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 714
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 716
    .end local v0    # "newPlaybackParameters":Landroidx/media3/common/PlaybackParameters;
    :cond_1
    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 3
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 906
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    return-void

    .line 910
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda33;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaMetadata;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 914
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 915
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 916
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda34;-><init>(Landroidx/media3/common/MediaMetadata;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 919
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 921
    :cond_1
    return-void
.end method

.method public setRating(Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "rating"    # Landroidx/media3/common/Rating;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 733
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/Rating;)V

    const v1, 0x9c4a

    invoke-direct {p0, v1, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithSessionCommand(ILandroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setRating(Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "rating"    # Landroidx/media3/common/Rating;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 725
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/lang/String;Landroidx/media3/common/Rating;)V

    const v1, 0x9c4a

    invoke-direct {p0, v1, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithSessionCommand(ILandroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatMode(I)V
    .locals 3
    .param p1, "repeatMode"    # I

    .line 1549
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1550
    return-void

    .line 1553
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1556
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    if-eq v0, p1, :cond_1

    .line 1557
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithRepeatMode(I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1559
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;-><init>(I)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1562
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1564
    :cond_1
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 1573
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1574
    return-void

    .line 1577
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda81;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda81;-><init>(Landroidx/media3/session/MediaControllerImplBase;Z)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1580
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1581
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithShuffleModeEnabled(Z)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1583
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda82;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda82;-><init>(Z)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1586
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1588
    :cond_1
    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 2010
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2011
    return-void

    .line 2014
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/TrackSelectionParameters;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 2018
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    if-eq p1, v0, :cond_1

    .line 2019
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2021
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/common/TrackSelectionParameters;)V

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2024
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 2026
    :cond_1
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1867
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1868
    return-void

    .line 1871
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearSurfacesAndCallbacks()V

    .line 1872
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    .line 1873
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1875
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1876
    .local v0, "newSurfaceSize":I
    :goto_0
    invoke-direct {p0, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    .line 1877
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 1881
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1882
    return-void

    .line 1885
    :cond_0
    if-nez p1, :cond_1

    .line 1886
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurface()V

    .line 1887
    return-void

    .line 1890
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    if-ne v0, p1, :cond_2

    .line 1891
    return-void

    .line 1893
    :cond_2
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearSurfacesAndCallbacks()V

    .line 1894
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1895
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceCallback:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1897
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1898
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1899
    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    .line 1900
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda37;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/view/Surface;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1902
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 1903
    .local v1, "surfaceSize":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    .line 1904
    .end local v1    # "surfaceSize":Landroid/graphics/Rect;
    goto :goto_0

    .line 1905
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    .line 1906
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda38;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1908
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    .line 1910
    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 1926
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1927
    return-void

    .line 1930
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1931
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1932
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 3
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 1946
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1947
    return-void

    .line 1950
    :cond_0
    if-nez p1, :cond_1

    .line 1951
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurface()V

    .line 1952
    return-void

    .line 1955
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    if-ne v0, p1, :cond_2

    .line 1956
    return-void

    .line 1959
    :cond_2
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearSurfacesAndCallbacks()V

    .line 1960
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    .line 1961
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceCallback:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1963
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 1964
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_3

    .line 1965
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1967
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    .line 1969
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    .line 1970
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1972
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    .line 1974
    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 3
    .param p1, "volume"    # F

    .line 1602
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1603
    return-void

    .line 1606
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda112;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda112;-><init>(Landroidx/media3/session/MediaControllerImplBase;F)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1609
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithVolume(F)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1611
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda113;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda113;-><init>(F)V

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1614
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1616
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 21

    .line 237
    move-object/from16 v0, p0

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    return-void

    .line 241
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda106;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda106;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 244
    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    new-instance v12, Landroidx/media3/session/SessionPositionInfo;

    move-object v2, v12

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v4, v4, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v7, v7, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v7, v7, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    iget-object v9, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v9, v9, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v9, v9, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v9, v9, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v11, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v11, v11, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v11, v11, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v13, v11, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v11, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v11, v11, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v20, v12

    iget-wide v11, v11, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    .line 252
    invoke-static {v13, v14, v11, v12}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v11

    iget-object v12, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v12, v12, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v14, v12, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    iget-object v12, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v12, v12, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v12, v12, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    move-wide/from16 v16, v12

    iget-object v12, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v12, v12, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v12, v12, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v12, v12, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    move-wide/from16 v18, v12

    const-wide/16 v12, 0x0

    move-object/from16 v0, v20

    invoke-direct/range {v2 .. v19}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 245
    invoke-virtual {v1, v0}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 263
    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 264
    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v1, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 265
    invoke-virtual {v0, v2, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 267
    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda107;

    invoke-direct {v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda107;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 270
    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 272
    :cond_1
    return-void
.end method
