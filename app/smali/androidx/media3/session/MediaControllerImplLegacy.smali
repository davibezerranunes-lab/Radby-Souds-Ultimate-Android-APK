.class Landroidx/media3/session/MediaControllerImplLegacy;
.super Ljava/lang/Object;
.source "MediaControllerImplLegacy.java"

# interfaces
.implements Landroidx/media3/session/MediaController$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;,
        Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;,
        Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;,
        Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;
    }
.end annotation


# static fields
.field private static final AGGREGATES_CALLBACKS_WITHIN_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "MCImplLegacy"


# instance fields
.field private final bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

.field private browserCompat:Landroidx/media3/session/legacy/MediaBrowserCompat;

.field private final commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private connected:Z

.field private final connectionHints:Landroid/os/Bundle;

.field final context:Landroid/content/Context;

.field private controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

.field private final controllerCompatCallback:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

.field private controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

.field private currentPositionMs:J

.field private final instance:Landroidx/media3/session/MediaController;

.field private lastSetPlayWhenReadyCalledTimeMs:J

.field private legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingLegacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

.field private released:Z

.field private final token:Landroidx/media3/session/SessionToken;


# direct methods
.method public static synthetic $r8$lambda$mCEi04OcFi8gu0FD463twzV2nG8(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Landroidx/media3/session/MediaController;
    .param p3, "token"    # Landroidx/media3/session/SessionToken;
    .param p4, "connectionHints"    # Landroid/os/Bundle;
    .param p5, "applicationLooper"    # Landroid/os/Looper;
    .param p6, "bitmapLoader"    # Landroidx/media3/common/util/BitmapLoader;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 126
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->pendingLegacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 127
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 128
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    sget-object v1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    invoke-direct {v0, p5, v1, v2}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 135
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->context:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->instance:Landroidx/media3/session/MediaController;

    .line 137
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    invoke-direct {v0, p0, p5}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompatCallback:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    .line 138
    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->token:Landroidx/media3/session/SessionToken;

    .line 139
    iput-object p4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connectionHints:Landroid/os/Bundle;

    .line 140
    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 141
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->currentPositionMs:J

    .line 142
    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->lastSetPlayWhenReadyCalledTimeMs:J

    .line 144
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 145
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplLegacy;
    .param p1, "x1"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 91
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->connectToSession(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/session/MediaControllerImplLegacy;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplLegacy;

    .line 91
    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    return v0
.end method

.method static synthetic access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplLegacy;

    .line 91
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->pendingLegacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    return-object v0
.end method

.method static synthetic access$202(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplLegacy;
    .param p1, "x1"    # Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 91
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->pendingLegacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    return-object p1
.end method

.method static synthetic access$300(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/legacy/MediaControllerCompat;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplLegacy;

    .line 91
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 91
    invoke-static {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->convertToSafePlaybackStateCompat(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/session/MediaControllerImplLegacy;ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplLegacy;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 91
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->handleNewLegacyParameters(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    return-void
.end method

.method static synthetic access$600(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .line 91
    invoke-static {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->convertToNonNullQueueItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplLegacy;

    .line 91
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    return-object v0
.end method

.method static synthetic access$702(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplLegacy;
    .param p1, "x1"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 91
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    return-object p1
.end method

.method static synthetic access$800(Ljava/util/concurrent/Future;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/Future;

    .line 91
    invoke-static {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->ignoreFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private addQueueItems(Ljava/util/List;I)V
    .locals 9
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;I)V"
        }
    .end annotation

    .line 1515
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1516
    .local v0, "bitmapFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;>;"
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1517
    .local v3, "resultCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v7, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda20;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;I)V

    .line 1526
    .local v1, "handleBitmapFuturesTask":Ljava/lang/Runnable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1527
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem;

    .line 1528
    .local v4, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v5, v4, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1529
    .local v5, "metadata":Landroidx/media3/common/MediaMetadata;
    iget-object v6, v5, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez v6, :cond_0

    .line 1530
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1531
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1533
    :cond_0
    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    iget-object v7, v5, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-interface {v6, v7}, Landroidx/media3/common/util/BitmapLoader;->decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 1534
    .local v6, "bitmapFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1535
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda21;

    invoke-direct {v8, v7}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda21;-><init>(Landroid/os/Handler;)V

    invoke-interface {v6, v1, v8}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1526
    .end local v4    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local v5    # "metadata":Landroidx/media3/common/MediaMetadata;
    .end local v6    # "bitmapFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1538
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private static buildNewControllerInfo(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Ljava/lang/String;JZIJLjava/lang/String;Landroid/content/Context;)Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .locals 81
    .param p0, "initialUpdate"    # Z
    .param p1, "oldLegacyPlayerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .param p2, "oldControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p3, "newLegacyPlayerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .param p4, "sessionPackageName"    # Ljava/lang/String;
    .param p5, "sessionFlags"    # J
    .param p7, "isSessionReady"    # Z
    .param p8, "ratingType"    # I
    .param p9, "timeDiffMs"    # J
    .param p11, "routingControllerId"    # Ljava/lang/String;
    .param p12, "context"    # Landroid/content/Context;

    .line 2003
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move-wide/from16 v6, p9

    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v8, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    if-eq v0, v8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 2005
    .local v8, "isQueueChanged":Z
    if-eqz v8, :cond_1

    .line 2006
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-static {v0}, Landroidx/media3/session/QueueTimeline;->create(Ljava/util/List;)Landroidx/media3/session/QueueTimeline;

    move-result-object v0

    goto :goto_1

    .line 2007
    :cond_1
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v0, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v0}, Landroidx/media3/session/QueueTimeline;->copy()Landroidx/media3/session/QueueTimeline;

    move-result-object v0

    :goto_1
    nop

    .line 2009
    .local v0, "currentTimeline":Landroidx/media3/session/QueueTimeline;
    iget-object v11, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v12, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    if-ne v11, v12, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v11, 0x1

    .line 2012
    .local v11, "isMetadataCompatChanged":Z
    :goto_3
    iget-object v12, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    invoke-static {v12}, Landroidx/media3/session/MediaControllerImplLegacy;->getActiveQueueId(Landroidx/media3/session/legacy/PlaybackStateCompat;)J

    move-result-wide v12

    .line 2013
    .local v12, "oldActiveQueueId":J
    iget-object v14, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    invoke-static {v14}, Landroidx/media3/session/MediaControllerImplLegacy;->getActiveQueueId(Landroidx/media3/session/legacy/PlaybackStateCompat;)J

    move-result-wide v14

    .line 2014
    .local v14, "newActiveQueueId":J
    cmp-long v16, v12, v14

    if-nez v16, :cond_5

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/16 v16, 0x1

    .line 2015
    .local v16, "isCurrentActiveQueueIdChanged":Z
    :goto_5
    iget-object v10, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2016
    invoke-static {v10}, Landroidx/media3/session/LegacyConversions;->convertToDurationMs(Landroidx/media3/session/legacy/MediaMetadataCompat;)J

    move-result-wide v9

    .line 2017
    .local v9, "durationMs":J
    move-wide/from16 v54, v12

    .end local v12    # "oldActiveQueueId":J
    .local v54, "oldActiveQueueId":J
    const-string v12, "MCImplLegacy"

    if-nez v11, :cond_7

    if-nez v16, :cond_7

    if-eqz v8, :cond_6

    move/from16 v56, v8

    goto :goto_6

    .line 2071
    :cond_6
    iget-object v13, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v13, v13, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v13, v13, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v13, v13, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 2073
    .local v13, "currentMediaItemIndex":I
    move/from16 v56, v8

    .end local v8    # "isQueueChanged":Z
    .local v56, "isQueueChanged":Z
    iget-object v8, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v8, v8, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    move/from16 v59, v11

    move-wide/from16 v57, v14

    move-object v15, v8

    move-object v8, v0

    .local v8, "mediaMetadata":Landroidx/media3/common/MediaMetadata;
    goto/16 :goto_b

    .line 2017
    .end local v13    # "currentMediaItemIndex":I
    .end local v56    # "isQueueChanged":Z
    .local v8, "isQueueChanged":Z
    :cond_7
    move/from16 v56, v8

    .line 2018
    .end local v8    # "isQueueChanged":Z
    .restart local v56    # "isQueueChanged":Z
    :goto_6
    iget-object v8, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-static {v8, v14, v15}, Landroidx/media3/session/MediaControllerImplLegacy;->findQueueItemIndex(Ljava/util/List;J)I

    move-result v8

    .line 2019
    .local v8, "currentMediaItemIndex":I
    iget-object v13, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    .line 2020
    .local v13, "hasMediaMetadataCompat":Z
    :goto_7
    move-wide/from16 v57, v14

    .end local v14    # "newActiveQueueId":J
    .local v57, "newActiveQueueId":J
    const/4 v14, -0x1

    if-eqz v13, :cond_9

    if-eqz v11, :cond_9

    .line 2021
    iget-object v15, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2022
    invoke-static {v15, v5}, Landroidx/media3/session/LegacyConversions;->convertToMediaMetadata(Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object v15

    .local v15, "mediaMetadata":Landroidx/media3/common/MediaMetadata;
    goto :goto_9

    .line 2024
    .end local v15    # "mediaMetadata":Landroidx/media3/common/MediaMetadata;
    :cond_9
    if-nez v13, :cond_b

    if-eqz v16, :cond_b

    .line 2026
    if-ne v8, v14, :cond_a

    .line 2027
    sget-object v15, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    goto :goto_8

    .line 2028
    :cond_a
    iget-object v15, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    .line 2029
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    invoke-virtual {v15}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v15

    .line 2028
    invoke-static {v15, v5}, Landroidx/media3/session/LegacyConversions;->convertToMediaMetadata(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object v15

    :goto_8
    nop

    .restart local v15    # "mediaMetadata":Landroidx/media3/common/MediaMetadata;
    goto :goto_9

    .line 2032
    .end local v15    # "mediaMetadata":Landroidx/media3/common/MediaMetadata;
    :cond_b
    iget-object v15, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v15, v15, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 2034
    .restart local v15    # "mediaMetadata":Landroidx/media3/common/MediaMetadata;
    :goto_9
    if-ne v8, v14, :cond_d

    if-eqz v11, :cond_d

    .line 2035
    if-eqz v13, :cond_c

    .line 2036
    const-string v14, "Adding a fake MediaItem at the end of the list because there\'s no QueueItem with the active queue id and current Timeline should have currently playing MediaItem."

    invoke-static {v12, v14}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v14, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2042
    invoke-static {v14, v5}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;

    move-result-object v14

    .line 2044
    .local v14, "fakeMediaItem":Landroidx/media3/common/MediaItem;
    invoke-virtual {v0, v14, v9, v10}, Landroidx/media3/session/QueueTimeline;->copyWithFakeMediaItem(Landroidx/media3/common/MediaItem;J)Landroidx/media3/session/QueueTimeline;

    move-result-object v0

    .line 2045
    invoke-virtual {v0}, Landroidx/media3/session/QueueTimeline;->getWindowCount()I

    move-result v19

    const/16 v18, 0x1

    add-int/lit8 v19, v19, -0x1

    .line 2046
    .end local v8    # "currentMediaItemIndex":I
    .end local v14    # "fakeMediaItem":Landroidx/media3/common/MediaItem;
    .local v19, "currentMediaItemIndex":I
    move/from16 v59, v11

    move/from16 v13, v19

    goto :goto_a

    .line 2047
    .end local v19    # "currentMediaItemIndex":I
    .restart local v8    # "currentMediaItemIndex":I
    :cond_c
    invoke-virtual {v0}, Landroidx/media3/session/QueueTimeline;->copyWithClearedFakeMediaItem()Landroidx/media3/session/QueueTimeline;

    move-result-object v0

    .line 2051
    const/4 v8, 0x0

    move v13, v8

    move/from16 v59, v11

    goto :goto_a

    .line 2053
    :cond_d
    if-eq v8, v14, :cond_f

    .line 2054
    invoke-virtual {v0}, Landroidx/media3/session/QueueTimeline;->copyWithClearedFakeMediaItem()Landroidx/media3/session/QueueTimeline;

    move-result-object v0

    .line 2055
    if-eqz v13, :cond_e

    .line 2056
    nop

    .line 2058
    invoke-virtual {v0, v8}, Landroidx/media3/session/QueueTimeline;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object v14

    invoke-static {v14}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/common/MediaItem;

    iget-object v14, v14, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    move/from16 v59, v11

    .end local v11    # "isMetadataCompatChanged":Z
    .local v59, "isMetadataCompatChanged":Z
    iget-object v11, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2057
    invoke-static {v14, v11, v5}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Ljava/lang/String;Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;

    move-result-object v11

    .line 2061
    .local v11, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 2062
    invoke-virtual {v0, v8, v11, v9, v10}, Landroidx/media3/session/QueueTimeline;->copyWithNewMediaItem(ILandroidx/media3/common/MediaItem;J)Landroidx/media3/session/QueueTimeline;

    move-result-object v0

    .line 2064
    .end local v11    # "mediaItem":Landroidx/media3/common/MediaItem;
    move v13, v8

    goto :goto_a

    .line 2055
    .end local v59    # "isMetadataCompatChanged":Z
    .local v11, "isMetadataCompatChanged":Z
    :cond_e
    move/from16 v59, v11

    .end local v11    # "isMetadataCompatChanged":Z
    .restart local v59    # "isMetadataCompatChanged":Z
    move v13, v8

    goto :goto_a

    .line 2068
    .end local v59    # "isMetadataCompatChanged":Z
    .restart local v11    # "isMetadataCompatChanged":Z
    :cond_f
    move/from16 v59, v11

    .end local v11    # "isMetadataCompatChanged":Z
    .restart local v59    # "isMetadataCompatChanged":Z
    const/4 v8, 0x0

    move v13, v8

    .line 2070
    .end local v8    # "currentMediaItemIndex":I
    .local v13, "currentMediaItemIndex":I
    :goto_a
    move-object v8, v0

    .line 2077
    .end local v0    # "currentTimeline":Landroidx/media3/session/QueueTimeline;
    .local v8, "currentTimeline":Landroidx/media3/session/QueueTimeline;
    :goto_b
    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget-object v11, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    if-ne v0, v11, :cond_10

    .line 2078
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    move-object/from16 v21, v0

    goto :goto_c

    .line 2079
    :cond_10
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToMediaMetadata(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    move-object/from16 v21, v0

    :goto_c
    nop

    .line 2080
    .local v21, "playlistMetadata":Landroidx/media3/common/MediaMetadata;
    iget v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToRepeatMode(I)I

    move-result v11

    .line 2081
    .local v11, "repeatMode":I
    iget v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    .line 2082
    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToShuffleModeEnabled(I)Z

    move-result v14

    .line 2083
    .local v14, "shuffleModeEnabled":Z
    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v1, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    if-eq v0, v1, :cond_11

    .line 2084
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2085
    invoke-static {v0, v4}, Landroidx/media3/session/LegacyConversions;->convertToSessionCommands(Landroidx/media3/session/legacy/PlaybackStateCompat;Z)Landroidx/media3/session/SessionCommands;

    move-result-object v0

    .line 2087
    .local v0, "availableSessionCommands":Landroidx/media3/session/SessionCommands;
    iget-object v1, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2088
    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->convertToMediaButtonPreferences(Landroidx/media3/session/legacy/PlaybackStateCompat;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v60, v1

    move-object v1, v0

    .local v1, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    goto :goto_d

    .line 2091
    .end local v0    # "availableSessionCommands":Landroidx/media3/session/SessionCommands;
    .end local v1    # "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    :cond_11
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2092
    .restart local v0    # "availableSessionCommands":Landroidx/media3/session/SessionCommands;
    iget-object v1, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v60, v1

    move-object v1, v0

    .line 2098
    .end local v0    # "availableSessionCommands":Landroidx/media3/session/SessionCommands;
    .local v1, "availableSessionCommands":Landroidx/media3/session/SessionCommands;
    .local v60, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    :goto_d
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    if-eqz v0, :cond_12

    .line 2099
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->getVolumeControl()I

    move-result v0

    goto :goto_e

    .line 2100
    :cond_12
    const/4 v0, 0x0

    :goto_e
    move/from16 v17, v0

    .line 2101
    .local v17, "volumeControlType":I
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2102
    move-wide/from16 v61, v9

    move/from16 v5, v17

    move-wide/from16 v9, p5

    .end local v9    # "durationMs":J
    .end local v17    # "volumeControlType":I
    .local v5, "volumeControlType":I
    .local v61, "durationMs":J
    invoke-static {v0, v5, v9, v10, v4}, Landroidx/media3/session/LegacyConversions;->convertToPlayerCommands(Landroidx/media3/session/legacy/PlaybackStateCompat;IJZ)Landroidx/media3/common/Player$Commands;

    move-result-object v17

    .line 2108
    .local v17, "availablePlayerCommands":Landroidx/media3/common/Player$Commands;
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2109
    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackException(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/common/PlaybackException;

    move-result-object v63

    .line 2110
    .local v63, "playerError":Landroidx/media3/common/PlaybackException;
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2111
    move-object/from16 v4, p12

    invoke-static {v0, v4}, Landroidx/media3/session/LegacyConversions;->convertToSessionError(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroid/content/Context;)Landroidx/media3/session/SessionError;

    move-result-object v64

    .line 2113
    .local v64, "sessionError":Landroidx/media3/session/SessionError;
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v4, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2114
    invoke-static {v0, v4, v6, v7}, Landroidx/media3/session/LegacyConversions;->convertToCurrentPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v65

    .line 2118
    .local v65, "currentPositionMs":J
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v4, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2119
    invoke-static {v0, v4, v6, v7}, Landroidx/media3/session/LegacyConversions;->convertToBufferedPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v67

    .line 2123
    .local v67, "bufferedPositionMs":J
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v4, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2124
    invoke-static {v0, v4, v6, v7}, Landroidx/media3/session/LegacyConversions;->convertToBufferedPercentage(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)I

    move-result v4

    .line 2128
    .local v4, "bufferedPercentage":I
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    move/from16 v69, v5

    .end local v5    # "volumeControlType":I
    .local v69, "volumeControlType":I
    iget-object v5, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2129
    invoke-static {v0, v5, v6, v7}, Landroidx/media3/session/LegacyConversions;->convertToTotalBufferedDurationMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v70

    .line 2133
    .local v70, "totalBufferedDurationMs":J
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2134
    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToIsPlayingAd(Landroidx/media3/session/legacy/MediaMetadataCompat;)Z

    move-result v5

    .line 2135
    .local v5, "isPlayingAd":Z
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2136
    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackParameters(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v72

    .line 2137
    .local v72, "playbackParameters":Landroidx/media3/common/PlaybackParameters;
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 2138
    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToAudioAttributes(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)Landroidx/media3/common/AudioAttributes;

    move-result-object v73

    .line 2139
    .local v73, "audioAttributes":Landroidx/media3/common/AudioAttributes;
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2140
    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToPlayWhenReady(Landroidx/media3/session/legacy/PlaybackStateCompat;)Z

    move-result v74

    .line 2143
    .local v74, "playWhenReady":Z
    :try_start_0
    iget-object v0, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v9, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2144
    invoke-static {v0, v9, v6, v7}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)I

    move-result v0
    :try_end_0
    .catch Landroidx/media3/session/LegacyConversions$ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2155
    .local v0, "playbackState":I
    move-object/from16 v10, p4

    goto :goto_f

    .line 2148
    .end local v0    # "playbackState":I
    :catch_0
    move-exception v0

    .line 2149
    .local v0, "e":Landroidx/media3/session/LegacyConversions$ConversionException;
    iget-object v9, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2153
    invoke-virtual {v9}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v10, p4

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 2151
    move-object/from16 v18, v0

    .end local v0    # "e":Landroidx/media3/session/LegacyConversions$ConversionException;
    .local v18, "e":Landroidx/media3/session/LegacyConversions$ConversionException;
    const-string v0, "Received invalid playback state %s from package %s. Keeping the previous state."

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2149
    invoke-static {v12, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    .line 2156
    .end local v18    # "e":Landroidx/media3/session/LegacyConversions$ConversionException;
    .local v0, "playbackState":I
    :goto_f
    iget-object v9, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2157
    invoke-static {v9}, Landroidx/media3/session/LegacyConversions;->convertToIsPlaying(Landroidx/media3/session/legacy/PlaybackStateCompat;)Z

    move-result v9

    .local v9, "isPlaying":Z
    move/from16 v44, v9

    .line 2158
    iget-object v12, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 2159
    move-object/from16 v6, p11

    invoke-static {v12, v6}, Landroidx/media3/session/LegacyConversions;->convertToDeviceInfo(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Ljava/lang/String;)Landroidx/media3/common/DeviceInfo;

    move-result-object v7

    .local v7, "deviceInfo":Landroidx/media3/common/DeviceInfo;
    move-object/from16 v45, v7

    .line 2161
    iget-object v12, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 2162
    invoke-static {v12}, Landroidx/media3/session/LegacyConversions;->convertToDeviceVolume(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)I

    move-result v12

    .local v12, "deviceVolume":I
    move/from16 v46, v12

    .line 2163
    iget-object v6, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 2164
    invoke-static {v6}, Landroidx/media3/session/LegacyConversions;->convertToIsDeviceMuted(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)Z

    move-result v6

    .local v6, "deviceMuted":Z
    move/from16 v47, v6

    .line 2165
    move/from16 v75, v6

    .end local v6    # "deviceMuted":Z
    .local v75, "deviceMuted":Z
    iget-object v6, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    move-object/from16 v76, v7

    .end local v7    # "deviceInfo":Landroidx/media3/common/DeviceInfo;
    .local v76, "deviceInfo":Landroidx/media3/common/DeviceInfo;
    iget-wide v6, v6, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    .local v6, "seekBackIncrementMs":J
    move-wide/from16 v48, v6

    .line 2166
    move-wide/from16 v77, v6

    .end local v6    # "seekBackIncrementMs":J
    .local v77, "seekBackIncrementMs":J
    iget-object v6, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v6, v6, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    .local v6, "seekForwardIncrementMs":J
    move-wide/from16 v50, v6

    .line 2167
    move-wide/from16 v79, v6

    .end local v6    # "seekForwardIncrementMs":J
    .local v79, "seekForwardIncrementMs":J
    iget-object v6, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v6, v6, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    .local v6, "maxSeekToPreviousPositionMs":J
    move-wide/from16 v52, v6

    .line 2169
    iget-object v2, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    move-object/from16 v27, v2

    move-object/from16 v18, v8

    move-object/from16 v19, v15

    move/from16 v20, v13

    move/from16 v22, v11

    move/from16 v23, v14

    move-object/from16 v24, v1

    move-object/from16 v25, v17

    move-object/from16 v26, v60

    move-object/from16 v28, v63

    move-object/from16 v29, v64

    move-wide/from16 v30, v61

    move-wide/from16 v32, v65

    move-wide/from16 v34, v67

    move/from16 v36, v4

    move-wide/from16 v37, v70

    move/from16 v39, v5

    move-object/from16 v40, v72

    move-object/from16 v41, v73

    move/from16 v42, v74

    move/from16 v43, v0

    invoke-static/range {v18 .. v53}, Landroidx/media3/session/MediaControllerImplLegacy;->createControllerInfo(Landroidx/media3/session/QueueTimeline;Landroidx/media3/common/MediaMetadata;ILandroidx/media3/common/MediaMetadata;IZLandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/common/PlaybackException;Landroidx/media3/session/SessionError;JJJIJZLandroidx/media3/common/PlaybackParameters;Landroidx/media3/common/AudioAttributes;ZIZLandroidx/media3/common/DeviceInfo;IZJJJ)Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    move-result-object v2

    return-object v2
.end method

.method private static calculateCurrentItemIndexAfterAddItems(III)I
    .locals 1
    .param p0, "currentItemIndex"    # I
    .param p1, "addToIndex"    # I
    .param p2, "addItemsSize"    # I

    .line 2324
    if-ge p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    add-int v0, p0, p2

    :goto_0
    return v0
.end method

.method private static calculateCurrentItemIndexAfterRemoveItems(III)I
    .locals 2
    .param p0, "currentItemIndex"    # I
    .param p1, "removeFromIndex"    # I
    .param p2, "removeToIndex"    # I

    .line 2330
    sub-int v0, p2, p1

    .line 2331
    .local v0, "removeItemsSize":I
    if-ge p0, p1, :cond_0

    .line 2332
    return p0

    .line 2333
    :cond_0
    if-ge p0, p2, :cond_1

    .line 2334
    const/4 v1, -0x1

    return v1

    .line 2336
    :cond_1
    sub-int v1, p0, v0

    return v1
.end method

.method private static calculateDiscontinuityAndTransitionReason(Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;J)Landroid/util/Pair;
    .locals 20
    .param p0, "oldLegacyPlayerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .param p1, "oldControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p2, "newLegacyPlayerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .param p3, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p4, "timeDiffMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;",
            "Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;",
            "Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;",
            "Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v6, v6, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    .line 2221
    .local v6, "isOldTimelineEmpty":Z
    iget-object v7, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v7, v7, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    .line 2222
    .local v7, "isNewTimelineEmpty":Z
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 2224
    const/4 v8, 0x0

    .line 2225
    .local v8, "discontinuityReason":Ljava/lang/Integer;
    const/4 v9, 0x0

    .local v9, "mediaItemTransitionReason":Ljava/lang/Integer;
    goto/16 :goto_1

    .line 2226
    .end local v8    # "discontinuityReason":Ljava/lang/Integer;
    .end local v9    # "mediaItemTransitionReason":Ljava/lang/Integer;
    :cond_0
    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    if-nez v7, :cond_1

    .line 2228
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2229
    .local v9, "discontinuityReason":Ljava/lang/Integer;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v19, v9

    move-object v9, v8

    move-object/from16 v8, v19

    .local v8, "mediaItemTransitionReason":Ljava/lang/Integer;
    goto/16 :goto_1

    .line 2231
    .end local v8    # "mediaItemTransitionReason":Ljava/lang/Integer;
    .end local v9    # "discontinuityReason":Ljava/lang/Integer;
    :cond_1
    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2232
    invoke-virtual {v10}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/common/MediaItem;

    .line 2233
    .local v10, "oldCurrentMediaItem":Landroidx/media3/common/MediaItem;
    iget-object v11, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v11, v11, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v11, Landroidx/media3/session/QueueTimeline;

    .line 2234
    invoke-virtual {v11, v10}, Landroidx/media3/session/QueueTimeline;->contains(Landroidx/media3/common/MediaItem;)Z

    move-result v11

    .line 2235
    .local v11, "oldCurrentMediaItemExistsInNewTimeline":Z
    if-nez v11, :cond_2

    .line 2237
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2238
    .restart local v9    # "discontinuityReason":Ljava/lang/Integer;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v19, v9

    move-object v9, v8

    move-object/from16 v8, v19

    .restart local v8    # "mediaItemTransitionReason":Ljava/lang/Integer;
    goto :goto_1

    .line 2239
    .end local v8    # "mediaItemTransitionReason":Ljava/lang/Integer;
    .end local v9    # "discontinuityReason":Ljava/lang/Integer;
    :cond_2
    iget-object v8, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v8}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v12, 0x1

    if-eqz v8, :cond_5

    .line 2241
    iget-object v8, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v13, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2242
    invoke-static {v8, v13, v4, v5}, Landroidx/media3/session/LegacyConversions;->convertToCurrentPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v13

    .line 2246
    .local v13, "oldCurrentPosition":J
    iget-object v8, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v15, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2247
    invoke-static {v8, v15, v4, v5}, Landroidx/media3/session/LegacyConversions;->convertToCurrentPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v15

    .line 2251
    .local v15, "newCurrentPosition":J
    const-wide/16 v17, 0x0

    cmp-long v8, v15, v17

    if-nez v8, :cond_3

    iget-object v8, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v8, v8, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    if-ne v8, v12, :cond_3

    .line 2254
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2255
    .local v8, "discontinuityReason":Ljava/lang/Integer;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .local v9, "mediaItemTransitionReason":Ljava/lang/Integer;
    goto :goto_0

    .line 2256
    .end local v8    # "discontinuityReason":Ljava/lang/Integer;
    .end local v9    # "mediaItemTransitionReason":Ljava/lang/Integer;
    :cond_3
    sub-long v8, v13, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v17, 0x64

    cmp-long v8, v8, v17

    if-lez v8, :cond_4

    .line 2259
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2260
    .restart local v8    # "discontinuityReason":Ljava/lang/Integer;
    const/4 v9, 0x0

    .restart local v9    # "mediaItemTransitionReason":Ljava/lang/Integer;
    goto :goto_0

    .line 2262
    .end local v8    # "discontinuityReason":Ljava/lang/Integer;
    .end local v9    # "mediaItemTransitionReason":Ljava/lang/Integer;
    :cond_4
    const/4 v8, 0x0

    .line 2263
    .restart local v8    # "discontinuityReason":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 2265
    .end local v13    # "oldCurrentPosition":J
    .end local v15    # "newCurrentPosition":J
    .restart local v9    # "mediaItemTransitionReason":Ljava/lang/Integer;
    :goto_0
    goto :goto_1

    .line 2268
    .end local v8    # "discontinuityReason":Ljava/lang/Integer;
    .end local v9    # "mediaItemTransitionReason":Ljava/lang/Integer;
    :cond_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2269
    .restart local v8    # "discontinuityReason":Ljava/lang/Integer;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2272
    .end local v10    # "oldCurrentMediaItem":Landroidx/media3/common/MediaItem;
    .end local v11    # "oldCurrentMediaItemExistsInNewTimeline":Z
    .restart local v9    # "mediaItemTransitionReason":Ljava/lang/Integer;
    :goto_1
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    return-object v10
.end method

.method private connectToService()V
    .locals 2

    .line 1414
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    .line 1415
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    .line 1427
    return-void
.end method

.method private connectToSession(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V
    .locals 2
    .param p1, "sessionCompatToken"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1389
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    .line 1390
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    .line 1401
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    .line 1403
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1411
    return-void
.end method

.method private static convertToNonNullQueueItemList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 2277
    .local p0, "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/media3/session/MediaUtils;->removeNullElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static convertToSafePlaybackStateCompat(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 9
    .param p0, "state"    # Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2283
    if-nez p0, :cond_0

    .line 2284
    const/4 v0, 0x0

    return-object v0

    .line 2286
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 2287
    const-string v0, "MCImplLegacy"

    const-string v1, "Adjusting playback speed to 1.0f because negative playback speed isn\'t supported."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    new-instance v2, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v2, p0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    .line 2291
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v3

    .line 2292
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getPosition()J

    move-result-wide v4

    .line 2294
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v7

    .line 2290
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setState(IJFJ)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 2295
    invoke-virtual {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v0

    .line 2289
    return-object v0

    .line 2297
    :cond_1
    return-object p0
.end method

.method private static createControllerInfo(Landroidx/media3/session/QueueTimeline;Landroidx/media3/common/MediaMetadata;ILandroidx/media3/common/MediaMetadata;IZLandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/common/PlaybackException;Landroidx/media3/session/SessionError;JJJIJZLandroidx/media3/common/PlaybackParameters;Landroidx/media3/common/AudioAttributes;ZIZLandroidx/media3/common/DeviceInfo;IZJJJ)Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .locals 60
    .param p0, "currentTimeline"    # Landroidx/media3/session/QueueTimeline;
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p2, "currentMediaItemIndex"    # I
    .param p3, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p4, "repeatMode"    # I
    .param p5, "shuffleModeEnabled"    # Z
    .param p6, "availableSessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p7, "availablePlayerCommands"    # Landroidx/media3/common/Player$Commands;
    .param p9, "sessionExtras"    # Landroid/os/Bundle;
    .param p10, "playerError"    # Landroidx/media3/common/PlaybackException;
    .param p11, "sessionError"    # Landroidx/media3/session/SessionError;
    .param p12, "durationMs"    # J
    .param p14, "currentPositionMs"    # J
    .param p16, "bufferedPositionMs"    # J
    .param p18, "bufferedPercentage"    # I
    .param p19, "totalBufferedDurationMs"    # J
    .param p21, "isPlayingAd"    # Z
    .param p22, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .param p23, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p24, "playWhenReady"    # Z
    .param p25, "playbackState"    # I
    .param p26, "isPlaying"    # Z
    .param p27, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;
    .param p28, "deviceVolume"    # I
    .param p29, "deviceMuted"    # Z
    .param p30, "seekBackIncrementMs"    # J
    .param p32, "seekForwardIncrementMs"    # J
    .param p34, "maxSeekToPreviousPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/QueueTimeline;",
            "Landroidx/media3/common/MediaMetadata;",
            "I",
            "Landroidx/media3/common/MediaMetadata;",
            "IZ",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/common/PlaybackException;",
            "Landroidx/media3/session/SessionError;",
            "JJJIJZ",
            "Landroidx/media3/common/PlaybackParameters;",
            "Landroidx/media3/common/AudioAttributes;",
            "ZIZ",
            "Landroidx/media3/common/DeviceInfo;",
            "IZJJJ)",
            "Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;"
        }
    .end annotation

    .local p8, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    move/from16 v0, p2

    move-object/from16 v12, p0

    move-object/from16 v27, p1

    move-object/from16 v14, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v2, p10

    move-object/from16 v8, p22

    move-object/from16 v16, p23

    move/from16 v21, p24

    move/from16 v24, p25

    move/from16 v25, p26

    move-object/from16 v18, p27

    move/from16 v19, p28

    move/from16 v20, p29

    move-wide/from16 v28, p30

    move-wide/from16 v30, p32

    move-wide/from16 v32, p34

    move-wide/from16 v39, p12

    move-wide/from16 v48, p12

    move-wide/from16 v50, p16

    move-wide/from16 v41, p16

    move/from16 v43, p18

    move-wide/from16 v44, p19

    move/from16 v36, p21

    .line 2370
    move-object/from16 v15, p0

    invoke-virtual {v15, v0}, Landroidx/media3/session/QueueTimeline;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object v13

    .line 2371
    .local v13, "currentMediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 2372
    move-wide/from16 v6, p14

    move/from16 v3, p21

    invoke-static {v0, v13, v6, v7, v3}, Landroidx/media3/session/MediaControllerImplLegacy;->createPositionInfo(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v52

    .local v52, "positionInfo":Landroidx/media3/common/Player$PositionInfo;
    move-object/from16 v35, v52

    .line 2374
    new-instance v4, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v34, v4

    .line 2378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v37

    const-wide v46, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v34 .. v51}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 2387
    .local v4, "sessionPositionInfo":Landroidx/media3/session/SessionPositionInfo;
    new-instance v54, Landroidx/media3/session/PlayerInfo;

    move-object/from16 v1, v54

    sget-object v5, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    sget-object v11, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    move-object v6, v11

    sget-object v11, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    sget-object v17, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    sget-object v34, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    sget-object v35, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    const/4 v7, 0x0

    move v3, v7

    const/16 v22, 0x0

    move-object/from16 v36, v13

    .end local v13    # "currentMediaItem":Landroidx/media3/common/MediaItem;
    .local v36, "currentMediaItem":Landroidx/media3/common/MediaItem;
    move/from16 v13, v22

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v15, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v1 .. v35}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FLandroidx/media3/common/AudioAttributes;Landroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    .line 2421
    .local v54, "playerInfo":Landroidx/media3/session/PlayerInfo;
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    move-object/from16 v53, v1

    move-object/from16 v55, p6

    move-object/from16 v56, p7

    move-object/from16 v57, p8

    move-object/from16 v58, p9

    move-object/from16 v59, p11

    invoke-direct/range {v53 .. v59}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    return-object v1
.end method

.method private static createPositionInfo(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;
    .locals 13
    .param p0, "mediaItemIndex"    # I
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "currentPositionMs"    # J
    .param p4, "isPlayingAd"    # Z

    .line 2435
    new-instance v12, Landroidx/media3/common/Player$PositionInfo;

    .line 2443
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p4, :cond_0

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v1

    .line 2444
    :goto_0
    if-eqz p4, :cond_1

    move v11, v0

    goto :goto_1

    :cond_1
    move v11, v1

    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, v12

    move v2, p0

    move-object v3, p1

    move v5, p0

    move-wide v6, p2

    move-wide v8, p2

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 2435
    return-object v12
.end method

.method private static createSessionPositionInfo(Landroidx/media3/common/Player$PositionInfo;ZJJIJ)Landroidx/media3/session/SessionPositionInfo;
    .locals 19
    .param p0, "positionInfo"    # Landroidx/media3/common/Player$PositionInfo;
    .param p1, "isPlayingAd"    # Z
    .param p2, "durationMs"    # J
    .param p4, "bufferedPositionMs"    # J
    .param p6, "bufferedPercentage"    # I
    .param p7, "totalBufferedDurationMs"    # J

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v5, p2

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    .line 2454
    new-instance v18, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v0, v18

    .line 2457
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v17}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 2454
    return-object v18
.end method

.method private static findQueueItemIndex(Ljava/util/List;J)I
    .locals 4
    .param p1, "queueItemId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;J)I"
        }
    .end annotation

    .line 2311
    .local p0, "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    const/4 v0, -0x1

    if-eqz p0, :cond_3

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2314
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2315
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 2316
    return v1

    .line 2314
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2319
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 2312
    :cond_3
    :goto_1
    return v0
.end method

.method private static getActiveQueueId(Landroidx/media3/session/legacy/PlaybackStateCompat;)J
    .locals 2
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2305
    if-nez p0, :cond_0

    .line 2306
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2307
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getActiveQueueItemId()J

    move-result-wide v0

    .line 2305
    :goto_0
    return-wide v0
.end method

.method private static getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 2301
    if-nez p0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static getRoutingControllerId(Landroidx/media3/session/legacy/MediaControllerCompat;)Ljava/lang/String;
    .locals 3
    .param p0, "controllerCompat"    # Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1790
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1791
    return-object v2

    .line 1793
    :cond_0
    nop

    .line 1794
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getMediaController()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1796
    .local v0, "fwkController":Landroid/media/session/MediaController;
    nop

    .line 1797
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    .line 1798
    .local v1, "playbackInfo":Landroid/media/session/MediaController$PlaybackInfo;
    if-nez v1, :cond_1

    .line 1799
    return-object v2

    .line 1801
    :cond_1
    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleBitmapFuturesAllCompletedAndAddQueueItems(Ljava/util/List;Ljava/util/List;I)V
    .locals 6
    .param p3, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;I)V"
        }
    .end annotation

    .line 1544
    .local p1, "bitmapFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;>;"
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1545
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1546
    .local v1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .line 1547
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1549
    :try_start_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 1552
    goto :goto_2

    .line 1550
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 1551
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "MCImplLegacy"

    const-string v5, "Failed to get bitmap"

    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1554
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1555
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem;

    invoke-static {v4, v2}, Landroidx/media3/session/LegacyConversions;->convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v4

    add-int v5, p3, v0

    .line 1554
    invoke-virtual {v3, v4, v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    .line 1544
    .end local v1    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1558
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleNewLegacyParameters(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V
    .locals 25
    .param p1, "notifyConnected"    # Z
    .param p2, "newLegacyPlayerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1562
    move-object/from16 v6, p0

    iget-boolean v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->released:Z

    if-nez v0, :cond_1

    iget-boolean v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1566
    :cond_0
    iget-object v8, v6, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v9, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1572
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1573
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getFlags()J

    move-result-wide v12

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1574
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->isSessionReady()Z

    move-result v14

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1575
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getRatingType()I

    move-result v15

    .line 1576
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getTimeDiffMs()J

    move-result-wide v16

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1577
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getRoutingControllerId(Landroidx/media3/session/legacy/MediaControllerCompat;)Ljava/lang/String;

    move-result-object v18

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->context:Landroid/content/Context;

    .line 1567
    move/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v19, v0

    invoke-static/range {v7 .. v19}, Landroidx/media3/session/MediaControllerImplLegacy;->buildNewControllerInfo(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Ljava/lang/String;JZIJLjava/lang/String;Landroid/content/Context;)Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    move-result-object v7

    .line 1579
    .local v7, "newControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1585
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/MediaController;->getTimeDiffMs()J

    move-result-wide v23

    .line 1580
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, p2

    move-object/from16 v22, v7

    invoke-static/range {v19 .. v24}, Landroidx/media3/session/MediaControllerImplLegacy;->calculateDiscontinuityAndTransitionReason(Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;J)Landroid/util/Pair;

    move-result-object v8

    .line 1586
    .local v8, "reasons":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplLegacy;->updateControllerInfo(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1592
    return-void

    .line 1564
    .end local v7    # "newControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .end local v8    # "reasons":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private hasMedia()Z
    .locals 1

    .line 1434
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static ignoreFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 1806
    .local p0, "unused":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    return-void
.end method

.method private initializeLegacyPlaylist()V
    .locals 11

    .line 1438
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 1439
    .local v0, "window":Landroidx/media3/common/Timeline$Window;
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->hasMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1440
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v1, Landroidx/media3/session/QueueTimeline;

    .line 1442
    .local v1, "queueTimeline":Landroidx/media3/session/QueueTimeline;
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v3, v3, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 1443
    .local v3, "currentIndex":I
    invoke-virtual {v1, v3, v0}, Landroidx/media3/session/QueueTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1444
    .local v4, "currentMediaItem":Landroidx/media3/common/MediaItem;
    invoke-virtual {v1, v3}, Landroidx/media3/session/QueueTimeline;->getQueueId(I)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 1446
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eqz v5, :cond_1

    .line 1447
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->play()V

    goto/16 :goto_1

    .line 1449
    :cond_1
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->prepare()V

    goto/16 :goto_1

    .line 1451
    :cond_2
    iget-object v5, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    if-eqz v5, :cond_4

    .line 1452
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eqz v5, :cond_3

    .line 1453
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1454
    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    iget-object v9, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v9, v9, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1457
    invoke-static {v9}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1455
    invoke-virtual {v5, v6, v9}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1459
    :cond_3
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1460
    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    iget-object v9, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v9, v9, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1463
    invoke-static {v9}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1461
    invoke-virtual {v5, v6, v9}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1465
    :cond_4
    iget-object v5, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 1466
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eqz v5, :cond_5

    .line 1467
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1468
    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    iget-object v9, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v9, v9, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1471
    invoke-static {v9}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1469
    invoke-virtual {v5, v6, v9}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1473
    :cond_5
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1474
    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    iget-object v9, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v9, v9, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1477
    invoke-static {v9}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1475
    invoke-virtual {v5, v6, v9}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1480
    :cond_6
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eqz v5, :cond_7

    .line 1481
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1482
    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v9, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v9, v9, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1485
    invoke-static {v9}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1483
    invoke-virtual {v5, v6, v9}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1487
    :cond_7
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1488
    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v9, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v9, v9, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1491
    invoke-static {v9}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1489
    invoke-virtual {v5, v6, v9}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1495
    :goto_1
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v5, v5, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v5, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v5, v5, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-eqz v5, :cond_8

    .line 1496
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1497
    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v6, v6, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v6, v6, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v9, v6, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    .line 1498
    invoke-virtual {v5, v9, v10}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->seekTo(J)V

    .line 1501
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1502
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .local v5, "adjustedMediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v1}, Landroidx/media3/session/QueueTimeline;->getWindowCount()I

    move-result v9

    if-ge v6, v9, :cond_b

    .line 1504
    if-eq v6, v3, :cond_a

    invoke-virtual {v1, v6}, Landroidx/media3/session/QueueTimeline;->getQueueId(I)J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-eqz v9, :cond_9

    .line 1506
    goto :goto_3

    .line 1508
    :cond_9
    invoke-virtual {v1, v6, v0}, Landroidx/media3/session/QueueTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v9

    iget-object v9, v9, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    :cond_a
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1510
    .end local v6    # "i":I
    :cond_b
    invoke-direct {p0, v5, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->addQueueItems(Ljava/util/List;I)V

    .line 1512
    .end local v5    # "adjustedMediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    :cond_c
    return-void
.end method

.method private isPrepared()Z
    .locals 2

    .line 1430
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$updateControllerInfo$10(Landroidx/media3/common/PlaybackException;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "error"    # Landroidx/media3/common/PlaybackException;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1679
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$11(Landroidx/media3/common/PlaybackException;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "error"    # Landroidx/media3/common/PlaybackException;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1682
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$13(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1694
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$14(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1700
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$15(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1707
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$16(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1714
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$17(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1720
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$18(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1727
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$19(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1735
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$20(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1740
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$21(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1747
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v1, v1, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$22(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1756
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$6(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1648
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v1, v1, Landroidx/media3/session/PlayerInfo;->timelineChangeReason:I

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$7(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1656
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$8(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 3
    .param p0, "oldControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p2, "discontinuityReason"    # Ljava/lang/Integer;
    .param p3, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1662
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 1665
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1662
    invoke-interface {p3, v0, v1, v2}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$9(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p1, "mediaItemTransitionReason"    # Ljava/lang/Integer;
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1671
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1672
    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1671
    invoke-interface {p2, v0, v1}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method private seekToInternal(IJ)V
    .locals 33
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 305
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    const/4 v4, 0x1

    if-ltz v1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v6

    .line 307
    .local v6, "currentMediaItemIndex":I
    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v7, v7, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 308
    .local v7, "currentTimeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 309
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPlayingAd()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 310
    :cond_2
    return-void

    .line 312
    :cond_3
    move v8, v6

    .line 315
    .local v8, "newMediaItemIndex":I
    const/4 v9, 0x0

    .line 316
    .local v9, "mediaItemTransitionReason":Ljava/lang/Integer;
    const/4 v10, 0x2

    if-eq v1, v6, :cond_5

    .line 317
    iget-object v11, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v11, v11, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v11, v11, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v11, Landroidx/media3/session/QueueTimeline;

    .line 318
    .local v11, "queueTimeline":Landroidx/media3/session/QueueTimeline;
    invoke-virtual {v11, v1}, Landroidx/media3/session/QueueTimeline;->getQueueId(I)J

    move-result-wide v12

    .line 319
    .local v12, "queueId":J
    const-wide/16 v14, -0x1

    cmp-long v14, v12, v14

    if-eqz v14, :cond_4

    .line 320
    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v14}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->skipToQueueItem(J)V

    .line 321
    move/from16 v8, p1

    .line 322
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1

    .line 324
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot seek to new media item due to the missing queue Id at media item, mediaItemIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MCImplLegacy"

    invoke-static {v15, v14}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .end local v11    # "queueTimeline":Landroidx/media3/session/QueueTimeline;
    .end local v12    # "queueId":J
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentPosition()J

    move-result-wide v11

    .line 336
    .local v11, "currentPositionMs":J
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v2, v13

    if-nez v15, :cond_6

    .line 337
    move-wide v15, v11

    .line 338
    .local v15, "newPositionMs":J
    const/16 v17, 0x0

    move-wide v4, v15

    move-object/from16 v15, v17

    .local v17, "discontinuityReason":Ljava/lang/Integer;
    goto :goto_2

    .line 340
    .end local v15    # "newPositionMs":J
    .end local v17    # "discontinuityReason":Ljava/lang/Integer;
    :cond_6
    iget-object v15, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v15}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->seekTo(J)V

    .line 341
    move-wide/from16 v15, p2

    .line 342
    .restart local v15    # "newPositionMs":J
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-wide v4, v15

    move-object/from16 v15, v17

    .line 349
    .local v4, "newPositionMs":J
    .local v15, "discontinuityReason":Ljava/lang/Integer;
    :goto_2
    if-nez v9, :cond_9

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getBufferedPosition()J

    move-result-wide v13

    .line 352
    .local v13, "oldBufferedPositionMs":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDuration()J

    move-result-wide v18

    .line 354
    .local v18, "newDurationMs":J
    cmp-long v20, v4, v11

    if-gez v20, :cond_7

    .line 355
    move-wide/from16 v20, v4

    goto :goto_3

    .line 356
    :cond_7
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    :goto_3
    nop

    .line 358
    .local v20, "newBufferedPositionMs":J
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v18, v16

    if-nez v16, :cond_8

    .line 359
    move-wide/from16 v22, v11

    const/4 v10, 0x0

    goto :goto_4

    .line 360
    :cond_8
    const-wide/16 v16, 0x64

    mul-long v16, v16, v20

    move-wide/from16 v22, v11

    .end local v11    # "currentPositionMs":J
    .local v22, "currentPositionMs":J
    div-long v10, v16, v18

    long-to-int v10, v10

    :goto_4
    nop

    .line 361
    .local v10, "newBufferedPercentage":I
    sub-long v11, v20, v4

    .line 362
    .end local v13    # "oldBufferedPositionMs":J
    .local v11, "newTotalBufferedDurationMs":J
    goto :goto_5

    .line 363
    .end local v10    # "newBufferedPercentage":I
    .end local v18    # "newDurationMs":J
    .end local v20    # "newBufferedPositionMs":J
    .end local v22    # "currentPositionMs":J
    .local v11, "currentPositionMs":J
    :cond_9
    move-wide/from16 v22, v11

    .end local v11    # "currentPositionMs":J
    .restart local v22    # "currentPositionMs":J
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 364
    .restart local v18    # "newDurationMs":J
    const-wide/16 v20, 0x0

    .line 365
    .restart local v20    # "newBufferedPositionMs":J
    const/4 v10, 0x0

    .line 366
    .restart local v10    # "newBufferedPercentage":I
    const-wide/16 v11, 0x0

    .line 368
    .local v11, "newTotalBufferedDurationMs":J
    :goto_5
    nop

    .line 371
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 372
    new-instance v13, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v13}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v7, v8, v13}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v13

    iget-object v13, v13, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    goto :goto_6

    .line 373
    :cond_a
    const/4 v13, 0x0

    :goto_6
    nop

    .line 369
    const/4 v14, 0x0

    invoke-static {v8, v13, v4, v5, v14}, Landroidx/media3/session/MediaControllerImplLegacy;->createPositionInfo(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v13

    .line 376
    .local v13, "positionInfo":Landroidx/media3/common/Player$PositionInfo;
    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v14, v14, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 378
    const/16 v25, 0x0

    move-object/from16 v24, v13

    move-wide/from16 v26, v18

    move-wide/from16 v28, v20

    move/from16 v30, v10

    move-wide/from16 v31, v11

    invoke-static/range {v24 .. v32}, Landroidx/media3/session/MediaControllerImplLegacy;->createSessionPositionInfo(Landroidx/media3/common/Player$PositionInfo;ZJJIJ)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v1

    .line 377
    invoke-virtual {v14, v1}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 385
    .local v1, "maskedPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget v14, v1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v2, 0x1

    if-eq v14, v2, :cond_b

    .line 386
    nop

    .line 387
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 389
    :cond_b
    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v14, v14, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    move-wide/from16 v16, v4

    .end local v4    # "newPositionMs":J
    .local v16, "newPositionMs":J
    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/16 v30, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v14

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-direct/range {v24 .. v30}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 397
    .local v2, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    invoke-direct {v0, v2, v15, v9}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 399
    return-void
.end method

.method private updateControllerInfo(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "notifyConnected"    # Z
    .param p2, "newLegacyPlayerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .param p3, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p4, "discontinuityReason"    # Ljava/lang/Integer;
    .param p5, "mediaItemTransitionReason"    # Ljava/lang/Integer;

    .line 1618
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1619
    .local v0, "oldLegacyPlayerInfo":Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1620
    .local v1, "oldControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    if-eq v2, p2, :cond_0

    .line 1621
    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-direct {v2, p2}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1623
    :cond_0
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->pendingLegacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1624
    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1626
    if-eqz p1, :cond_2

    .line 1627
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/MediaController;->notifyAccepted()V

    .line 1628
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1630
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    .line 1631
    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 1642
    :cond_1
    return-void

    .line 1644
    :cond_2
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1645
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda8;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1652
    :cond_3
    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget-object v3, p2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1653
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda10;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1658
    :cond_4
    if-eqz p4, :cond_5

    .line 1659
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1, p3, p4}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;)V

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1667
    :cond_5
    if-eqz p5, :cond_6

    .line 1668
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda13;

    invoke-direct {v3, p3, p5}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1674
    :cond_6
    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v3, p2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    invoke-static {v2, v3}, Landroidx/media3/session/MediaUtils;->areEqualError(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/PlaybackStateCompat;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1676
    iget-object v2, p2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 1677
    invoke-static {v2}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackException(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/common/PlaybackException;

    move-result-object v2

    .line 1678
    .local v2, "error":Landroidx/media3/common/PlaybackException;
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda14;

    invoke-direct {v4, v2}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/common/PlaybackException;)V

    const/16 v5, 0xa

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1680
    if-eqz v2, :cond_7

    .line 1681
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda15;

    invoke-direct {v4, v2}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/common/PlaybackException;)V

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1685
    .end local v2    # "error":Landroidx/media3/common/PlaybackException;
    :cond_7
    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v3, p2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    if-eq v2, v3, :cond_8

    .line 1686
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    const/16 v4, 0xe

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1690
    :cond_8
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v2, v2, Landroidx/media3/session/PlayerInfo;->playbackState:I

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v3, v3, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq v2, v3, :cond_9

    .line 1691
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda17;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1696
    :cond_9
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eq v2, v3, :cond_a

    .line 1697
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda18;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1704
    :cond_a
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    if-eq v2, v3, :cond_b

    .line 1705
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda24;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/4 v4, 0x7

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1709
    :cond_b
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v2, v3}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1711
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda25;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 v4, 0xc

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1717
    :cond_c
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v2, v2, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v3, v3, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    if-eq v2, v3, :cond_d

    .line 1718
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda26;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1722
    :cond_d
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    if-eq v2, v3, :cond_e

    .line 1724
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1730
    :cond_e
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v2, v3}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1732
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda2;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1737
    :cond_f
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {v2, v3}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1738
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda3;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 v4, 0x1d

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1742
    :cond_10
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v2, v2, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v3, v3, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    if-ne v2, v3, :cond_11

    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    if-eq v2, v3, :cond_12

    .line 1744
    :cond_11
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda4;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 v4, 0x1e

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1751
    :cond_12
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1753
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda5;

    invoke-direct {v3, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1758
    :cond_13
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v2, v3}, Landroidx/media3/session/SessionCommands;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1760
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    .line 1761
    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 1766
    :cond_14
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1768
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    .line 1769
    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 1780
    :cond_15
    iget-object v2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionError:Landroidx/media3/session/SessionError;

    if-eqz v2, :cond_16

    .line 1781
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    .line 1782
    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 1785
    :cond_16
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1786
    return-void
.end method

.method private updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p2, "discontinuityReason"    # Ljava/lang/Integer;
    .param p3, "mediaItemTransitionReason"    # Ljava/lang/Integer;

    .line 1602
    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplLegacy;->updateControllerInfo(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1608
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 167
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 703
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->addMediaItems(ILjava/util/List;)V

    .line 704
    return-void
.end method

.method public addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 698
    const v0, 0x7fffffff

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->addMediaItems(ILjava/util/List;)V

    .line 699
    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 13
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 713
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 714
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    return-void

    .line 717
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v1, Landroidx/media3/session/QueueTimeline;

    .line 718
    .local v1, "queueTimeline":Landroidx/media3/session/QueueTimeline;
    invoke-virtual {v1}, Landroidx/media3/session/QueueTimeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 720
    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItems(Ljava/util/List;)V

    .line 721
    return-void

    .line 724
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 725
    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/QueueTimeline;->copyWithNewMediaItems(ILjava/util/List;)Landroidx/media3/session/QueueTimeline;

    move-result-object v2

    .line 726
    .local v2, "newQueueTimeline":Landroidx/media3/session/QueueTimeline;
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v3

    .line 727
    .local v3, "currentMediaItemIndex":I
    nop

    .line 728
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, p1, v4}, Landroidx/media3/session/MediaControllerImplLegacy;->calculateCurrentItemIndexAfterAddItems(III)I

    move-result v4

    .line 729
    .local v4, "newCurrentMediaItemIndex":I
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 730
    invoke-virtual {v5, v2, v4, v0}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndMediaItemIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 734
    .local v0, "maskedPlayerInfo":Landroidx/media3/session/PlayerInfo;
    new-instance v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v8, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v9, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v10, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v11, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v12, 0x0

    move-object v6, v5

    move-object v7, v0

    invoke-direct/range {v6 .. v12}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 742
    .local v5, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v6}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 747
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 748
    invoke-direct {p0, p2, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->addQueueItems(Ljava/util/List;I)V

    .line 750
    :cond_3
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

    .line 708
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->addMediaItems(ILjava/util/List;)V

    .line 709
    return-void
.end method

.method public clearMediaItems()V
    .locals 2

    .line 810
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->removeMediaItems(II)V

    .line 811
    return-void
.end method

.method public clearVideoSurface()V
    .locals 2

    .line 1032
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support clearing Surface"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1037
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support clearing Surface"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 1052
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support clearing SurfaceHolder"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 1062
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support clearing SurfaceView"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 2
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 1072
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support clearing TextureView"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    return-void
.end method

.method public connect()V
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getBinder()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->connectToSession(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->connectToService()V

    .line 158
    :goto_0
    return-void
.end method

.method public decreaseDeviceVolume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->decreaseDeviceVolume(I)V

    .line 1191
    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .locals 11
    .param p1, "flags"    # I

    .line 1195
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceVolume()I

    move-result v0

    .line 1196
    .local v0, "volume":I
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->minVolume:I

    .line 1198
    .local v1, "minVolume":I
    add-int/lit8 v2, v0, -0x1

    if-lt v2, v1, :cond_0

    .line 1199
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isDeviceMuted()Z

    move-result v2

    .line 1200
    .local v2, "isDeviceMuted":Z
    new-instance v10, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    add-int/lit8 v4, v0, -0x1

    .line 1202
    invoke-virtual {v3, v4, v2}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v8, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 1208
    .local v3, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v4}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1213
    .end local v2    # "isDeviceMuted":Z
    .end local v3    # "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    :cond_0
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, p1}, Landroidx/media3/session/legacy/MediaControllerCompat;->adjustVolume(II)V

    .line 1214
    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 526
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method public getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 1332
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    return-object v0
.end method

.method public getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;
    .locals 1

    .line 1350
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    return-object v0
.end method

.method public getBinder()Landroidx/media3/session/IMediaController;
    .locals 1

    .line 1367
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;
    .locals 1

    .line 1361
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->browserCompat:Landroidx/media3/session/legacy/MediaBrowserCompat;

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 473
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget v0, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 468
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    return-wide v0
.end method

.method public getCommandButtonsForMediaItem(Landroidx/media3/common/MediaItem;)Lcom/google/common/collect/ImmutableList;
    .locals 1
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

    .line 425
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getConnectedToken()Landroidx/media3/session/SessionToken;
    .locals 1

    .line 239
    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->token:Landroidx/media3/session/SessionToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getConnectionHints()Landroid/os/Bundle;
    .locals 1

    .line 162
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connectionHints:Landroid/os/Bundle;

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 499
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    .line 489
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 494
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1355
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 510
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 516
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 2

    .line 1077
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support getting Cue"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    sget-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    return-object v0
.end method

.method public getCurrentLiveOffset()J
    .locals 2

    .line 484
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 908
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 903
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 8

    .line 457
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->currentPositionMs:J

    iget-wide v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->lastSetPlayWhenReadyCalledTimeMs:J

    .line 462
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getTimeDiffMs()J

    move-result-wide v6

    .line 458
    invoke-static/range {v1 .. v7}, Landroidx/media3/session/MediaUtils;->getUpdatedCurrentPositionMs(Landroidx/media3/session/PlayerInfo;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->currentPositionMs:J

    .line 463
    iget-wide v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->currentPositionMs:J

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 614
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 1337
    sget-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method public getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    .line 1093
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 2

    .line 1098
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1099
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    return v0

    .line 1103
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getPlaybackInfo()Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToDeviceVolume(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)I

    move-result v0

    goto :goto_0

    .line 1105
    :cond_1
    const/4 v0, 0x0

    .line 1103
    :goto_0
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 452
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    return-wide v0
.end method

.method getInstance()Landroidx/media3/session/MediaController;
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->instance:Landroidx/media3/session/MediaController;

    return-object v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 957
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

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

    .line 436
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 2

    .line 1326
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 1327
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    if-nez v0, :cond_0

    sget-object v1, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    :goto_0
    return-object v1
.end method

.method public getNextMediaItemIndex()I
    .locals 1

    .line 918
    const/4 v0, -0x1

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1298
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 521
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1311
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 1305
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    .line 447
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 693
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 1

    .line 913
    const/4 v0, -0x1

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 963
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 403
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 414
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 431
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionExtras()Landroid/os/Bundle;
    .locals 1

    .line 441
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 991
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    return v0
.end method

.method public getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 2

    .line 1026
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support getting VideoSurfaceSize"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 478
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    return-wide v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 1342
    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    return-object v0
.end method

.method public getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 2

    .line 1020
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support getting VideoSize"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 1083
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasNextMediaItem()Z
    .locals 1

    .line 928
    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    return v0
.end method

.method public hasPreviousMediaItem()Z
    .locals 1

    .line 923
    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->increaseDeviceVolume(I)V

    .line 1159
    return-void
.end method

.method public increaseDeviceVolume(I)V
    .locals 11
    .param p1, "flags"    # I

    .line 1163
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceVolume()I

    move-result v0

    .line 1164
    .local v0, "volume":I
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    .line 1165
    .local v1, "maxVolume":I
    if-eqz v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    if-gt v2, v1, :cond_1

    .line 1166
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isDeviceMuted()Z

    move-result v2

    .line 1168
    .local v2, "isDeviceMuted":Z
    new-instance v10, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    add-int/lit8 v4, v0, 0x1

    .line 1170
    invoke-virtual {v3, v4, v2}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v8, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 1176
    .local v3, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v4}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1181
    .end local v2    # "isDeviceMuted":Z
    .end local v3    # "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    :cond_1
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroidx/media3/session/legacy/MediaControllerCompat;->adjustVolume(II)V

    .line 1182
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    return v0
.end method

.method public isDeviceMuted()Z
    .locals 2

    .line 1110
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1111
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    return v0

    .line 1115
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1116
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getPlaybackInfo()Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToIsDeviceMuted(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1115
    :goto_0
    return v1
.end method

.method public isLoading()Z
    .locals 1

    .line 1321
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1316
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 504
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v0, v0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    return v0
.end method

.method synthetic lambda$addQueueItems$4$androidx-media3-session-MediaControllerImplLegacy(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .param p1, "resultCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "mediaItems"    # Ljava/util/List;
    .param p3, "bitmapFutures"    # Ljava/util/List;
    .param p4, "startIndex"    # I

    .line 1519
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1520
    .local v0, "completedBitmapFutureCount":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1521
    invoke-direct {p0, p3, p2, p4}, Landroidx/media3/session/MediaControllerImplLegacy;->handleBitmapFuturesAllCompletedAndAddQueueItems(Ljava/util/List;Ljava/util/List;I)V

    .line 1524
    :cond_0
    return-void
.end method

.method synthetic lambda$connectToService$3$androidx-media3-session-MediaControllerImplLegacy()V
    .locals 5

    .line 1419
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserCompat;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->token:Landroidx/media3/session/SessionToken;

    .line 1422
    invoke-virtual {v2}, Landroidx/media3/session/SessionToken;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$1;)V

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->instance:Landroidx/media3/session/MediaController;

    .line 1424
    invoke-virtual {v4}, Landroidx/media3/session/MediaController;->getConnectionHints()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/session/legacy/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->browserCompat:Landroidx/media3/session/legacy/MediaBrowserCompat;

    .line 1425
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->browserCompat:Landroidx/media3/session/legacy/MediaBrowserCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->connect()V

    .line 1426
    return-void
.end method

.method synthetic lambda$connectToSession$1$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V
    .locals 3
    .param p1, "sessionCompatToken"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1392
    new-instance v0, Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/media3/session/legacy/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1396
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompatCallback:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    .line 1397
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    .line 1396
    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat;->registerCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    .line 1398
    return-void
.end method

.method synthetic lambda$connectToSession$2$androidx-media3-session-MediaControllerImplLegacy()V
    .locals 1

    .line 1405
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->isSessionReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->onConnected()V

    .line 1410
    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;
    .param p2, "flags"    # Landroidx/media3/common/FlagSet;

    .line 132
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/Player$Events;

    invoke-direct {v1, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method synthetic lambda$updateControllerInfo$12$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1688
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method synthetic lambda$updateControllerInfo$23$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaController$Listener;)V
    .locals 2
    .param p1, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p2, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 1763
    nop

    .line 1764
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 1763
    invoke-interface {p2, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onAvailableSessionCommandsChanged(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommands;)V

    return-void
.end method

.method synthetic lambda$updateControllerInfo$24$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaController$Listener;)V
    .locals 2
    .param p1, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p2, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 1771
    nop

    .line 1773
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 1772
    invoke-interface {p2, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onSetCustomLayout(Landroidx/media3/session/MediaController;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1771
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->ignoreFuture(Ljava/util/concurrent/Future;)V

    .line 1774
    nop

    .line 1775
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 1774
    invoke-interface {p2, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 1776
    nop

    .line 1777
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 1776
    invoke-interface {p2, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onMediaButtonPreferencesChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 1778
    return-void
.end method

.method synthetic lambda$updateControllerInfo$25$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaController$Listener;)V
    .locals 2
    .param p1, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p2, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 1783
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionError:Landroidx/media3/session/SessionError;

    invoke-interface {p2, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onError(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionError;)V

    return-void
.end method

.method synthetic lambda$updateControllerInfo$5$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaController$Listener;)V
    .locals 2
    .param p1, "newControllerInfo"    # Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .param p2, "listener"    # Landroidx/media3/session/MediaController$Listener;

    .line 1633
    nop

    .line 1635
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 1634
    invoke-interface {p2, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onSetCustomLayout(Landroidx/media3/session/MediaController;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1633
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->ignoreFuture(Ljava/util/concurrent/Future;)V

    .line 1636
    nop

    .line 1637
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 1636
    invoke-interface {p2, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 1638
    nop

    .line 1639
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 1638
    invoke-interface {p2, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onMediaButtonPreferencesChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 1640
    return-void
.end method

.method public moveMediaItem(II)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .line 815
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->moveMediaItems(III)V

    .line 816
    return-void
.end method

.method public moveMediaItems(III)V
    .locals 22
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I

    .line 820
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v1, :cond_0

    if-gt v1, v2, :cond_0

    if-ltz v3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 821
    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v6, v6, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v6, Landroidx/media3/session/QueueTimeline;

    .line 822
    .local v6, "queueTimeline":Landroidx/media3/session/QueueTimeline;
    invoke-virtual {v6}, Landroidx/media3/session/QueueTimeline;->getWindowCount()I

    move-result v7

    .line 823
    .local v7, "size":I
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 824
    .end local p2    # "toIndex":I
    .local v2, "toIndex":I
    sub-int v8, v2, v1

    .line 825
    .local v8, "moveItemsSize":I
    sub-int v9, v7, v8

    sub-int/2addr v9, v5

    .line 826
    .local v9, "lastItemIndexAfterRemove":I
    add-int/lit8 v5, v9, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 827
    .end local p3    # "newIndex":I
    .local v3, "newIndex":I
    if-ge v1, v7, :cond_5

    if-eq v1, v2, :cond_5

    if-ne v1, v3, :cond_1

    move-object/from16 v21, v6

    goto/16 :goto_3

    .line 831
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v5

    .line 832
    .local v5, "currentMediaItemIndex":I
    nop

    .line 833
    invoke-static {v5, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->calculateCurrentItemIndexAfterRemoveItems(III)I

    move-result v10

    .line 834
    .local v10, "currentMediaItemIndexAfterRemove":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 835
    nop

    .line 836
    invoke-static {v1, v4, v9}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v10

    .line 837
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Currently playing item will be removed and added back to mimic move. Assumes item at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " would be the new current item"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MCImplLegacy"

    invoke-static {v12, v11}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_2
    nop

    .line 845
    invoke-static {v10, v3, v8}, Landroidx/media3/session/MediaControllerImplLegacy;->calculateCurrentItemIndexAfterAddItems(III)I

    move-result v11

    .line 848
    .local v11, "newCurrentMediaItemIndex":I
    nop

    .line 849
    invoke-virtual {v6, v1, v2, v3}, Landroidx/media3/session/QueueTimeline;->copyWithMovedMediaItems(III)Landroidx/media3/session/QueueTimeline;

    move-result-object v12

    .line 850
    .local v12, "newQueueTimeline":Landroidx/media3/session/QueueTimeline;
    iget-object v13, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v13, v13, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 851
    invoke-virtual {v13, v12, v11, v4}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndMediaItemIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    .line 856
    .local v4, "maskedPlayerInfo":Landroidx/media3/session/PlayerInfo;
    new-instance v13, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v15, v14, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v14, v14, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    move/from16 p2, v5

    .end local v5    # "currentMediaItemIndex":I
    .local p2, "currentMediaItemIndex":I
    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v21, v6

    .end local v6    # "queueTimeline":Landroidx/media3/session/QueueTimeline;
    .local v21, "queueTimeline":Landroidx/media3/session/QueueTimeline;
    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/16 v20, 0x0

    move-object/from16 v17, v14

    move-object v14, v13

    move-object/from16 v16, v15

    move-object v15, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v20}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    move-object v5, v13

    .line 864
    .local v5, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v6}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 869
    invoke-direct/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 870
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .local v6, "moveItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    sub-int v14, v2, v1

    if-ge v13, v14, :cond_3

    .line 872
    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v14, v14, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v15, v0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v15, v15, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    invoke-virtual {v15}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/media3/session/legacy/MediaControllerCompat;->removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 871
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 875
    .end local v13    # "i":I
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    .line 876
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    .line 877
    .local v14, "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    iget-object v15, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v14}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v0

    add-int v1, v13, v3

    invoke-virtual {v15, v0, v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    .line 875
    .end local v14    # "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_2

    .line 880
    .end local v6    # "moveItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    .end local v13    # "i":I
    :cond_4
    return-void

    .line 827
    .end local v4    # "maskedPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v5    # "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .end local v10    # "currentMediaItemIndexAfterRemove":I
    .end local v11    # "newCurrentMediaItemIndex":I
    .end local v12    # "newQueueTimeline":Landroidx/media3/session/QueueTimeline;
    .end local v21    # "queueTimeline":Landroidx/media3/session/QueueTimeline;
    .end local p2    # "currentMediaItemIndex":I
    .local v6, "queueTimeline":Landroidx/media3/session/QueueTimeline;
    :cond_5
    move-object/from16 v21, v6

    .line 828
    .end local v6    # "queueTimeline":Landroidx/media3/session/QueueTimeline;
    .restart local v21    # "queueTimeline":Landroidx/media3/session/QueueTimeline;
    :goto_3
    return-void
.end method

.method onConnected()V
    .locals 11

    .line 1371
    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->released:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    .line 1375
    new-instance v10, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1377
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getPlaybackInfo()Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    move-result-object v2

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1378
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/MediaControllerImplLegacy;->convertToSafePlaybackStateCompat(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v3

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1379
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getMetadata()Landroidx/media3/session/legacy/MediaMetadataCompat;

    move-result-object v4

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1380
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getQueue()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/MediaControllerImplLegacy;->convertToNonNullQueueItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1381
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1382
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getRepeatMode()I

    move-result v7

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1383
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getShuffleMode()I

    move-result v8

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1384
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    .line 1385
    .local v1, "newLegacyPlayerInfo":Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    invoke-direct {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->handleNewLegacyParameters(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    .line 1386
    return-void

    .line 1372
    .end local v1    # "newLegacyPlayerInfo":Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->setPlayWhenReady(Z)V

    .line 255
    return-void
.end method

.method public play()V
    .locals 1

    .line 249
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->setPlayWhenReady(Z)V

    .line 250
    return-void
.end method

.method public prepare()V
    .locals 10

    .line 259
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 265
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    const/4 v2, 0x4

    goto :goto_0

    .line 267
    :cond_1
    const/4 v2, 0x2

    :goto_0
    nop

    .line 264
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 274
    .local v0, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    invoke-direct {p0, v0, v9, v9}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 279
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->hasMedia()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->initializeLegacyPlaylist()V

    .line 282
    :cond_2
    return-void
.end method

.method public release()V
    .locals 3

    .line 218
    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->released:Z

    if-eqz v0, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->released:Z

    .line 223
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->browserCompat:Landroidx/media3/session/legacy/MediaBrowserCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->browserCompat:Landroidx/media3/session/legacy/MediaBrowserCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->disconnect()V

    .line 225
    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->browserCompat:Landroidx/media3/session/legacy/MediaBrowserCompat;

    .line 227
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompatCallback:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    invoke-virtual {v0, v2}, Landroidx/media3/session/legacy/MediaControllerCompat;->unregisterCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V

    .line 229
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompatCallback:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->release()V

    .line 230
    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 232
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    .line 233
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->release()V

    .line 234
    return-void
.end method

.method public removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 172
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public removeMediaItem(I)V
    .locals 1
    .param p1, "index"    # I

    .line 754
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->removeMediaItems(II)V

    .line 755
    return-void
.end method

.method public removeMediaItems(II)V
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 759
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_0

    if-lt v2, v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v5

    .line 761
    .local v5, "windowCount":I
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 762
    .end local p2    # "toIndex":I
    .local v2, "toIndex":I
    if-ge v1, v5, :cond_4

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    .line 766
    :cond_1
    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v6, v6, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v6, Landroidx/media3/session/QueueTimeline;

    .line 767
    .local v6, "queueTimeline":Landroidx/media3/session/QueueTimeline;
    invoke-virtual {v6, v1, v2}, Landroidx/media3/session/QueueTimeline;->copyWithRemovedMediaItems(II)Landroidx/media3/session/QueueTimeline;

    move-result-object v7

    .line 768
    .local v7, "newQueueTimeline":Landroidx/media3/session/QueueTimeline;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v8

    .line 769
    .local v8, "currentMediaItemIndex":I
    nop

    .line 770
    invoke-static {v8, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->calculateCurrentItemIndexAfterRemoveItems(III)I

    move-result v9

    .line 771
    .local v9, "newCurrentMediaItemIndex":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 772
    nop

    .line 773
    invoke-virtual {v7}, Landroidx/media3/session/QueueTimeline;->getWindowCount()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-static {v1, v4, v10}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v9

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Currently playing item is removed. Assumes item at "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " is the new current item"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "MCImplLegacy"

    invoke-static {v10, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_2
    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 783
    invoke-virtual {v3, v7, v9, v4}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndMediaItemIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    .line 788
    .local v3, "maskedPlayerInfo":Landroidx/media3/session/PlayerInfo;
    new-instance v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v10, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v12, v10, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v10, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v13, v10, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v10, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v14, v10, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v15, v10, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/16 v16, 0x0

    move-object v10, v4

    move-object v11, v3

    invoke-direct/range {v10 .. v16}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 796
    .local v4, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v10, 0x0

    invoke-direct {v0, v4, v10, v10}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 801
    invoke-direct/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 802
    move/from16 v10, p1

    .local v10, "i":I
    :goto_1
    if-ge v10, v2, :cond_3

    iget-object v11, v0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v11, v11, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 803
    iget-object v11, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v12, v0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v12, v12, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    invoke-virtual {v12}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/media3/session/legacy/MediaControllerCompat;->removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 802
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 806
    .end local v10    # "i":I
    :cond_3
    return-void

    .line 763
    .end local v3    # "maskedPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v4    # "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .end local v6    # "queueTimeline":Landroidx/media3/session/QueueTimeline;
    .end local v7    # "newQueueTimeline":Landroidx/media3/session/QueueTimeline;
    .end local v8    # "currentMediaItemIndex":I
    .end local v9    # "newCurrentMediaItemIndex":I
    :cond_4
    :goto_2
    return-void
.end method

.method public replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 884
    add-int/lit8 v0, p1, 0x1

    .line 885
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 884
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->replaceMediaItems(IILjava/util/List;)V

    .line 886
    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .locals 2
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

    .line 890
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 891
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v0, Landroidx/media3/session/QueueTimeline;

    .line 892
    .local v0, "queueTimeline":Landroidx/media3/session/QueueTimeline;
    invoke-virtual {v0}, Landroidx/media3/session/QueueTimeline;->getWindowCount()I

    move-result v1

    .line 893
    .local v1, "size":I
    if-le p1, v1, :cond_1

    .line 894
    return-void

    .line 896
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 897
    invoke-virtual {p0, p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy;->addMediaItems(ILjava/util/List;)V

    .line 898
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->removeMediaItems(II)V

    .line 899
    return-void
.end method

.method public seekBack()V
    .locals 1

    .line 409
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->rewind()V

    .line 410
    return-void
.end method

.method public seekForward()V
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->fastForward()V

    .line 421
    return-void
.end method

.method public seekTo(IJ)V
    .locals 0
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 301
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy;->seekToInternal(IJ)V

    .line 302
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .line 296
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->seekToInternal(IJ)V

    .line 297
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 3

    .line 286
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->seekToInternal(IJ)V

    .line 287
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 2
    .param p1, "mediaItemIndex"    # I

    .line 291
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->seekToInternal(IJ)V

    .line 292
    return-void
.end method

.method public seekToNext()V
    .locals 1

    .line 952
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->skipToNext()V

    .line 953
    return-void
.end method

.method public seekToNextMediaItem()V
    .locals 1

    .line 940
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->skipToNext()V

    .line 941
    return-void
.end method

.method public seekToPrevious()V
    .locals 1

    .line 946
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->skipToPrevious()V

    .line 947
    return-void
.end method

.method public seekToPreviousMediaItem()V
    .locals 1

    .line 934
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->skipToPrevious()V

    .line 935
    return-void
.end method

.method public sendCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 594
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v0, p1}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 596
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 598
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 599
    .local v0, "result":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroidx/media3/session/SessionResult;>;"
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$1;

    .line 600
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Landroidx/media3/session/MediaControllerImplLegacy$1;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/os/Handler;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 608
    .local v1, "cb":Landroid/os/ResultReceiver;
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v3, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 609
    return-object v0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 2
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z

    .line 1255
    const-string v0, "MCImplLegacy"

    const-string v1, "Legacy session doesn\'t support setting audio attributes remotely"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 1
    .param p1, "muted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1222
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->setDeviceMuted(ZI)V

    .line 1223
    return-void
.end method

.method public setDeviceMuted(ZI)V
    .locals 10
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 1227
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1228
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support setting mute state at API level less than 23"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    return-void

    .line 1232
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isDeviceMuted()Z

    move-result v0

    .line 1233
    .local v0, "isMuted":Z
    if-eq p1, v0, :cond_1

    .line 1234
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceVolume()I

    move-result v1

    .line 1235
    .local v1, "volume":I
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1237
    invoke-virtual {v2, v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 1243
    .local v2, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1249
    .end local v1    # "volume":I
    .end local v2    # "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    :cond_1
    if-eqz p1, :cond_2

    const/16 v1, -0x64

    goto :goto_0

    :cond_2
    const/16 v1, 0x64

    .line 1250
    .local v1, "direction":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v2, v1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat;->adjustVolume(II)V

    .line 1251
    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 1
    .param p1, "volume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1125
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->setDeviceVolume(II)V

    .line 1126
    return-void
.end method

.method public setDeviceVolume(II)V
    .locals 12
    .param p1, "volume"    # I
    .param p2, "flags"    # I

    .line 1130
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    .line 1131
    .local v0, "deviceInfo":Landroidx/media3/common/DeviceInfo;
    iget v1, v0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    .line 1132
    .local v1, "minVolume":I
    iget v2, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    .line 1133
    .local v2, "maxVolume":I
    if-gt v1, p1, :cond_1

    if-eqz v2, :cond_0

    if-gt p1, v2, :cond_1

    .line 1134
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isDeviceMuted()Z

    move-result v3

    .line 1135
    .local v3, "isDeviceMuted":Z
    new-instance v11, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1137
    invoke-virtual {v4, p1, v3}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v5

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v8, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v9, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 1143
    .local v4, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1149
    .end local v3    # "isDeviceMuted":Z
    .end local v4    # "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    :cond_1
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v3, p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat;->setVolumeTo(II)V

    .line 1150
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 619
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItem(Landroidx/media3/common/MediaItem;J)V

    .line 620
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "startPositionMs"    # J

    .line 624
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItems(Ljava/util/List;IJ)V

    .line 625
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "resetPosition"    # Z

    .line 629
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 630
    return-void
.end method

.method public setMediaItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 634
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItems(Ljava/util/List;IJ)V

    .line 635
    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 18
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

    .line 644
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->clearMediaItems()V

    .line 646
    return-void

    .line 648
    :cond_0
    sget-object v1, Landroidx/media3/session/QueueTimeline;->DEFAULT:Landroidx/media3/session/QueueTimeline;

    .line 649
    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/QueueTimeline;->copyWithNewMediaItems(ILjava/util/List;)Landroidx/media3/session/QueueTimeline;

    move-result-object v1

    .line 650
    .local v1, "newQueueTimeline":Landroidx/media3/session/QueueTimeline;
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p3, v4

    if-nez v4, :cond_1

    .line 652
    const-wide/16 v4, 0x0

    .end local p3    # "startPositionMs":J
    .local v4, "startPositionMs":J
    goto :goto_0

    .line 650
    .end local v4    # "startPositionMs":J
    .restart local p3    # "startPositionMs":J
    :cond_1
    move-wide/from16 v4, p3

    .line 654
    .end local p3    # "startPositionMs":J
    .restart local v4    # "startPositionMs":J
    :goto_0
    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 660
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem;

    .line 658
    move/from16 v8, p2

    invoke-static {v8, v7, v4, v5, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->createPositionInfo(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v9

    .line 657
    const/4 v10, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v9 .. v17}, Landroidx/media3/session/MediaControllerImplLegacy;->createSessionPositionInfo(Landroidx/media3/common/Player$PositionInfo;ZJJIJ)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v7

    .line 655
    invoke-virtual {v6, v1, v7, v2}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndSessionPositionInfo(Landroidx/media3/common/Timeline;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 669
    .local v2, "maskedPlayerInfo":Landroidx/media3/session/PlayerInfo;
    new-instance v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v11, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v12, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v13, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v14, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v15, 0x0

    move-object v9, v6

    move-object v10, v2

    invoke-direct/range {v9 .. v15}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 677
    .local v6, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v7, 0x0

    invoke-direct {v0, v6, v7, v7}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 681
    invoke-direct/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 682
    invoke-direct/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->initializeLegacyPlaylist()V

    .line 684
    :cond_2
    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 0
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 639
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItems(Ljava/util/List;)V

    .line 640
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 9
    .param p1, "playWhenReady"    # Z

    .line 1260
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-ne v0, p1, :cond_0

    .line 1261
    return-void

    .line 1264
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->currentPositionMs:J

    iget-wide v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->lastSetPlayWhenReadyCalledTimeMs:J

    .line 1269
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getTimeDiffMs()J

    move-result-wide v6

    .line 1265
    invoke-static/range {v1 .. v7}, Landroidx/media3/session/MediaUtils;->getUpdatedCurrentPositionMs(Landroidx/media3/session/PlayerInfo;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->currentPositionMs:J

    .line 1270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->lastSetPlayWhenReadyCalledTimeMs:J

    .line 1271
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1273
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 1282
    .local v0, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1287
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->hasMedia()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1288
    if-eqz p1, :cond_1

    .line 1289
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->play()V

    goto :goto_0

    .line 1291
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->pause()V

    .line 1294
    :cond_2
    :goto_0
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 9
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 552
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    .line 553
    .local v0, "currentPlaybackParameters":Landroidx/media3/common/PlaybackParameters;
    invoke-virtual {p1, v0}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 556
    invoke-virtual {v2, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 562
    .local v1, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 568
    .end local v1    # "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v1

    iget v2, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->setPlaybackSpeed(F)V

    .line 569
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 9
    .param p1, "speed"    # F

    .line 573
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    .line 574
    .local v0, "currentPlaybackParameters":Landroidx/media3/common/PlaybackParameters;
    iget v1, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 575
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    new-instance v3, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v3, p1}, Landroidx/media3/common/PlaybackParameters;-><init>(F)V

    .line 577
    invoke-virtual {v2, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 583
    .local v1, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 589
    .end local v1    # "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->setPlaybackSpeed(F)V

    .line 590
    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 2
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 688
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support setting playlist metadata"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
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

    .line 544
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 545
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v0

    .line 546
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToRatingCompat(Landroidx/media3/common/Rating;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->setRating(Landroidx/media3/session/legacy/RatingCompat;)V

    .line 547
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setRating(Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
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

    .line 532
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 533
    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "currentMediaItemMediaId":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 536
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v1

    .line 537
    invoke-static {p2}, Landroidx/media3/session/LegacyConversions;->convertToRatingCompat(Landroidx/media3/common/Rating;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->setRating(Landroidx/media3/session/legacy/RatingCompat;)V

    .line 539
    :cond_0
    new-instance v1, Landroidx/media3/session/SessionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public setRepeatMode(I)V
    .locals 9
    .param p1, "repeatMode"    # I

    .line 968
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getRepeatMode()I

    move-result v0

    .line 969
    .local v0, "currentRepeatMode":I
    if-eq p1, v0, :cond_0

    .line 970
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 972
    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithRepeatMode(I)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 978
    .local v1, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 984
    .end local v1    # "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 985
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v1

    .line 986
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackStateCompatRepeatMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->setRepeatMode(I)V

    .line 987
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 9
    .param p1, "shuffleModeEnabled"    # Z

    .line 996
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getShuffleModeEnabled()Z

    move-result v0

    .line 997
    .local v0, "isCurrentShuffleModeEnabled":Z
    if-eq p1, v0, :cond_0

    .line 998
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1000
    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithShuffleModeEnabled(Z)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 1006
    .local v1, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1012
    .end local v1    # "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 1013
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v1

    .line 1015
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackStateCompatShuffleMode(Z)I

    move-result v2

    .line 1014
    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->setShuffleMode(I)V

    .line 1016
    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 1346
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1042
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support setting Surface"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 1047
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support setting SurfaceHolder"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 1057
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support setting SurfaceView"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 1067
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support setting TextureView"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .line 1088
    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support setting player volume"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    return-void
.end method

.method public stop()V
    .locals 13

    .line 177
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v5, v2, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v7, v2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v9, v2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v11, v2, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    .line 191
    invoke-static {v9, v10, v11, v12}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v9

    .line 182
    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Landroidx/media3/session/MediaControllerImplLegacy;->createSessionPositionInfo(Landroidx/media3/common/Player$PositionInfo;ZJJIJ)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v2

    .line 181
    invoke-virtual {v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 195
    .local v0, "maskedPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v2, v2, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq v2, v1, :cond_1

    .line 196
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 197
    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 200
    :cond_1
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->sessionExtras:Landroid/os/Bundle;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    .line 208
    .local v1, "maskedControllerInfo":Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 213
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaControllerCompat;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->stop()V

    .line 214
    return-void
.end method
