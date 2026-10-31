.class public abstract Landroidx/media3/common/SimpleBasePlayer;
.super Landroidx/media3/common/BasePlayer;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/SimpleBasePlayer$State;,
        Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;,
        Landroidx/media3/common/SimpleBasePlayer$MediaItemData;,
        Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;,
        Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;,
        Landroidx/media3/common/SimpleBasePlayer$PeriodData;
    }
.end annotation


# static fields
.field private static final POSITION_DISCONTINUITY_THRESHOLD_MS:J = 0x3e8L


# instance fields
.field private final applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final applicationLooper:Landroid/os/Looper;

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingOperations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private released:Z

.field private state:Landroidx/media3/common/SimpleBasePlayer$State;


# direct methods
.method public static synthetic $r8$lambda$FFq8QvDrngTZgwNelLGa_12THc4(Landroidx/media3/common/SimpleBasePlayer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "applicationLooper"    # Landroid/os/Looper;

    .line 2127
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/SimpleBasePlayer;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V

    .line 2128
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V
    .locals 2
    .param p1, "applicationLooper"    # Landroid/os/Looper;
    .param p2, "clock"    # Landroidx/media3/common/util/Clock;

    .line 2137
    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;-><init>()V

    .line 2138
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    .line 2139
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 2140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 2141
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 2143
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda38;-><init>(Landroidx/media3/common/SimpleBasePlayer;)V

    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    .line 2148
    .local v0, "listenerSet":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<Landroidx/media3/common/Player$Listener;>;"
    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2149
    return-void
.end method

.method static synthetic access$1100(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Timeline;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroidx/media3/common/Timeline$Window;
    .param p5, "x4"    # Landroidx/media3/common/Timeline$Period;

    .line 98
    invoke-static/range {p0 .. p5}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Tracks;)Landroidx/media3/common/MediaMetadata;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/MediaItem;
    .param p1, "x1"    # Landroidx/media3/common/Tracks;

    .line 98
    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->getCombinedMediaMetadata(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Tracks;)Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Landroidx/media3/common/SimpleBasePlayer$State;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 98
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v0

    return v0
.end method

.method private static buildMutablePlaylistFromState(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Ljava/util/List;
    .locals 3
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            "Landroidx/media3/common/Timeline$Period;",
            "Landroidx/media3/common/Timeline$Window;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation

    .line 4215
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    instance-of v0, v0, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    if-eqz v0, :cond_0

    .line 4216
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    check-cast v1, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    invoke-static {v1}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;->access$000(Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 4218
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4219
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/SimpleBasePlayer$MediaItemData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4220
    invoke-static {p0, v1, p1, p2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->access$4700(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4222
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static buildStateForNewPosition(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$State;JLandroidx/media3/common/Timeline;IJZLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 18
    .param p0, "stateBuilder"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .param p1, "oldState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "oldPositionMs"    # J
    .param p4, "newTimeline"    # Landroidx/media3/common/Timeline;
    .param p5, "newIndex"    # I
    .param p6, "newPositionMs"    # J
    .param p8, "keepAds"    # Z
    .param p9, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 4126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p9

    move-wide/from16 v5, p2

    invoke-static {v5, v6, v1, v4}, Landroidx/media3/common/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v5

    .line 4127
    .end local p2    # "oldPositionMs":J
    .local v5, "oldPositionMs":J
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_1

    if-eq v3, v8, :cond_0

    .line 4128
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 4129
    :cond_0
    const/4 v3, 0x0

    .line 4130
    .end local p5    # "newIndex":I
    .local v3, "newIndex":I
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .end local p6    # "newPositionMs":J
    .local v9, "newPositionMs":J
    goto :goto_0

    .line 4132
    .end local v3    # "newIndex":I
    .end local v9    # "newPositionMs":J
    .restart local p5    # "newIndex":I
    .restart local p6    # "newPositionMs":J
    :cond_1
    move-wide/from16 v9, p6

    .end local p5    # "newIndex":I
    .end local p6    # "newPositionMs":J
    .restart local v3    # "newIndex":I
    .restart local v9    # "newPositionMs":J
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v9, v11

    if-nez v7, :cond_2

    .line 4133
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v9

    .line 4135
    :cond_2
    iget-object v7, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v7, :cond_4

    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v11

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v12

    .line 4136
    .local v7, "oldOrNewPlaylistEmpty":Z
    :goto_2
    if-nez v7, :cond_5

    iget-object v13, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 4140
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v14

    invoke-virtual {v13, v14, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v13

    iget-object v13, v13, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 4142
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v14

    iget-object v14, v14, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    move v13, v12

    goto :goto_3

    :cond_5
    move v13, v11

    .line 4144
    .local v13, "mediaItemChanged":Z
    :goto_3
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_6

    .line 4145
    sget-object v11, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    invoke-virtual {v0, v2, v11, v15}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Tracks;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_5

    .line 4146
    :cond_6
    instance-of v14, v2, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    if-eqz v14, :cond_7

    .line 4147
    move-object v11, v2

    check-cast v11, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    invoke-static {v11}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;->access$000(Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;)Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    .line 4148
    .local v11, "mediaItemData":Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    iget-object v12, v11, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    iget-object v14, v11, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0, v2, v12, v14}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Tracks;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 4149
    .end local v11    # "mediaItemData":Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    goto :goto_5

    .line 4150
    :cond_7
    if-nez v7, :cond_8

    if-nez v13, :cond_8

    move v11, v12

    .line 4151
    .local v11, "keepTracksAndMetadata":Z
    :cond_8
    nop

    .line 4153
    if-eqz v11, :cond_9

    iget-object v12, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    goto :goto_4

    :cond_9
    sget-object v12, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    .line 4154
    :goto_4
    if-eqz v11, :cond_a

    iget-object v15, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    .line 4151
    :cond_a
    invoke-virtual {v0, v2, v12, v15}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Tracks;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 4156
    .end local v11    # "keepTracksAndMetadata":Z
    :goto_5
    if-nez v7, :cond_e

    if-nez v13, :cond_e

    cmp-long v11, v9, v5

    if-gez v11, :cond_b

    move-wide v14, v9

    goto/16 :goto_6

    .line 4164
    :cond_b
    cmp-long v11, v9, v5

    if-nez v11, :cond_d

    .line 4166
    invoke-virtual {v0, v3}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 4167
    iget v11, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-eq v11, v8, :cond_c

    if-eqz p8, :cond_c

    .line 4168
    iget-object v8, v1, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 4170
    invoke-interface {v8}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v11

    iget-object v8, v1, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v8}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v14

    sub-long/2addr v11, v14

    .line 4169
    invoke-static {v11, v12}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v8

    .line 4168
    invoke-virtual {v0, v8}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-wide v14, v9

    goto :goto_7

    .line 4172
    :cond_c
    nop

    .line 4173
    invoke-virtual {v0, v8, v8}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v8

    .line 4176
    invoke-static {v1, v4}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v11

    sub-long/2addr v11, v5

    .line 4175
    invoke-static {v11, v12}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v11

    .line 4174
    invoke-virtual {v8, v11}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-wide v14, v9

    goto :goto_7

    .line 4180
    :cond_d
    nop

    .line 4181
    invoke-static {v1, v4}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v11

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 4182
    .local v11, "contentBufferedDurationMs":J
    iget-object v14, v1, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 4183
    invoke-interface {v14}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v14

    sub-long v16, v9, v5

    sub-long v14, v14, v16

    move-wide/from16 p2, v9

    .end local v9    # "newPositionMs":J
    .local p2, "newPositionMs":J
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 4184
    .local v8, "totalBufferedDurationMs":J
    nop

    .line 4185
    invoke-virtual {v0, v3}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v14

    .line 4186
    const/4 v10, -0x1

    invoke-virtual {v14, v10, v10}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v10

    .line 4187
    move-wide/from16 v14, p2

    .end local p2    # "newPositionMs":J
    .local v14, "newPositionMs":J
    invoke-virtual {v10, v14, v15}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v10

    .line 4188
    invoke-static {v11, v12}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 4189
    invoke-static {v8, v9}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_7

    .line 4156
    .end local v8    # "totalBufferedDurationMs":J
    .end local v11    # "contentBufferedDurationMs":J
    .end local v14    # "newPositionMs":J
    .restart local v9    # "newPositionMs":J
    :cond_e
    move-wide v14, v9

    .line 4158
    .end local v9    # "newPositionMs":J
    .restart local v14    # "newPositionMs":J
    :goto_6
    nop

    .line 4159
    invoke-virtual {v0, v3}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 4160
    const/4 v8, -0x1

    invoke-virtual {v1, v8, v8}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 4161
    invoke-virtual {v1, v14, v15}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 4162
    invoke-static {v14, v15}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    sget-object v8, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 4163
    invoke-virtual {v1, v8}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 4191
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1
.end method

.method private clearVideoOutput(Ljava/lang/Object;)V
    .locals 3
    .param p1, "videoOutput"    # Ljava/lang/Object;

    .line 2832
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2834
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2835
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2836
    return-void

    .line 2838
    :cond_0
    nop

    .line 2839
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleClearVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda47;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda47;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2838
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2841
    return-void
.end method

.method private static getCombinedMediaMetadata(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Tracks;)Landroidx/media3/common/MediaMetadata;
    .locals 8
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "tracks"    # Landroidx/media3/common/Tracks;

    .line 4195
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    .line 4196
    .local v0, "metadataBuilder":Landroidx/media3/common/MediaMetadata$Builder;
    invoke-virtual {p1}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 4197
    .local v1, "trackGroupCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4198
    invoke-virtual {p1}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Tracks$Group;

    .line 4199
    .local v3, "group":Landroidx/media3/common/Tracks$Group;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v5, v3, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v4, v5, :cond_1

    .line 4200
    invoke-virtual {v3, v4}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4201
    invoke-virtual {v3, v4}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v5

    .line 4202
    .local v5, "format":Landroidx/media3/common/Format;
    iget-object v6, v5, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v6, :cond_0

    .line 4203
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    iget-object v7, v5, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v7}, Landroidx/media3/common/Metadata;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 4204
    iget-object v7, v5, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v7, v6}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v7

    invoke-interface {v7, v0}, Landroidx/media3/common/Metadata$Entry;->populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V

    .line 4203
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4199
    .end local v5    # "format":Landroidx/media3/common/Format;
    .end local v6    # "k":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4197
    .end local v3    # "group":Landroidx/media3/common/Tracks$Group;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4210
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaMetadata$Builder;->populate(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    return-object v2
.end method

.method private static getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 3796
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 3797
    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    .line 3796
    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 3792
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3785
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3786
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    return v0

    .line 3788
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 7
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 3816
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v6

    .line 3817
    .local v6, "currentMediaItemIndex":I
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3818
    return v6

    .line 3820
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3823
    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v2

    .line 3820
    move v1, v6

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v0

    return v0
.end method

.method private static getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)J
    .locals 4
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "currentPeriodUid"    # Ljava/lang/Object;
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 3919
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3920
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    goto :goto_0

    .line 3922
    :cond_0
    nop

    .line 3921
    invoke-static {p0, p3}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3922
    invoke-virtual {v2, p1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3919
    :goto_0
    return-wide v0
.end method

.method private static getMediaItemIndexInNewPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)I
    .locals 4
    .param p0, "oldTimeline"    # Landroidx/media3/common/Timeline;
    .param p1, "newTimeline"    # Landroidx/media3/common/Timeline;
    .param p2, "oldMediaItemIndex"    # I
    .param p3, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p4, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 4040
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 4041
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    move v1, p2

    :cond_0
    return v1

    .line 4043
    :cond_1
    invoke-virtual {p0, p2, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 4044
    .local v0, "oldFirstPeriodIndex":I
    nop

    .line 4045
    const/4 v2, 0x1

    invoke-virtual {p0, v0, p3, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4046
    .local v2, "oldFirstPeriodUid":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 4047
    return v1

    .line 4049
    :cond_2
    invoke-virtual {p1, v2, p3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    return v1
.end method

.method private static getMediaItemTransitionReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;IZLandroidx/media3/common/Timeline$Window;)I
    .locals 11
    .param p0, "previousState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "positionDiscontinuityReason"    # I
    .param p3, "isRepeatingCurrentItem"    # Z
    .param p4, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 3984
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3985
    .local v0, "previousTimeline":Landroidx/media3/common/Timeline;
    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3986
    .local v1, "newTimeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3987
    return v3

    .line 3988
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    const/4 v5, 0x3

    if-eq v2, v4, :cond_1

    .line 3989
    return v5

    .line 3991
    :cond_1
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3992
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v4

    invoke-virtual {v2, v4, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3994
    .local v2, "previousWindowUid":Ljava/lang/Object;
    iget-object v4, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3995
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v6

    invoke-virtual {v4, v6, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3996
    .local v4, "newWindowUid":Ljava/lang/Object;
    instance-of v6, v2, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-eqz v6, :cond_2

    instance-of v6, v4, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-nez v6, :cond_2

    .line 3998
    return v3

    .line 4000
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v6, :cond_5

    .line 4001
    if-nez p2, :cond_3

    .line 4002
    return v8

    .line 4003
    :cond_3
    if-ne p2, v8, :cond_4

    .line 4004
    return v7

    .line 4006
    :cond_4
    return v5

    .line 4011
    :cond_5
    if-nez p2, :cond_7

    .line 4012
    invoke-static {p0, p4}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v5

    .line 4013
    invoke-static {p1, p4}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v9

    cmp-long v5, v5, v9

    if-gtz v5, :cond_6

    iget-boolean v5, p1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    if-eqz v5, :cond_7

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v9

    if-nez v5, :cond_7

    if-eqz p3, :cond_7

    .line 4017
    :cond_6
    const/4 v3, 0x0

    return v3

    .line 4020
    :cond_7
    if-ne p2, v8, :cond_8

    if-eqz p3, :cond_8

    .line 4021
    return v7

    .line 4023
    :cond_8
    return v3
.end method

.method private static getPeriodIndexFromWindowPosition(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 6
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "windowIndex"    # I
    .param p2, "windowPositionMs"    # J
    .param p4, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p5, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 3834
    nop

    .line 3835
    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3836
    .local v0, "periodUid":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private static getPeriodOrAdDurationMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J
    .locals 4
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "currentPeriodUid"    # Ljava/lang/Object;
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 3927
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3929
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3930
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    goto :goto_0

    .line 3931
    :cond_0
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    invoke-virtual {p2, v0, v1}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    :goto_0
    nop

    .line 3932
    .local v0, "periodOrAdDurationUs":J
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getPositionDiscontinuityReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 20
    .param p0, "previousState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "forceSeekDiscontinuity"    # Z
    .param p3, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p4, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 3862
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-boolean v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    if-eqz v4, :cond_0

    .line 3864
    iget v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    return v4

    .line 3866
    :cond_0
    if-eqz p2, :cond_1

    .line 3867
    const/4 v4, 0x1

    return v4

    .line 3869
    :cond_1
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    .line 3871
    return v5

    .line 3873
    :cond_2
    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_3

    .line 3875
    return v6

    .line 3877
    :cond_3
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3879
    invoke-static {v0, v2, v3}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v7

    .line 3878
    invoke-virtual {v4, v7}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    .line 3880
    .local v4, "previousPeriodUid":Ljava/lang/Object;
    iget-object v7, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3881
    invoke-static {v1, v2, v3}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v7

    .line 3882
    .local v7, "newPeriodUid":Ljava/lang/Object;
    instance-of v8, v4, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-eqz v8, :cond_4

    instance-of v8, v7, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-nez v8, :cond_4

    .line 3884
    return v5

    .line 3886
    :cond_4
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_8

    iget v8, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v12, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v8, v12, :cond_8

    iget v8, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iget v12, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    if-eq v8, v12, :cond_5

    goto :goto_1

    .line 3904
    :cond_5
    nop

    .line 3905
    invoke-static {v0, v4, v3, v2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v12

    .line 3906
    .local v12, "previousPositionMs":J
    invoke-static {v1, v7, v3, v2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v14

    .line 3907
    .local v14, "newPositionMs":J
    sub-long v16, v12, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    cmp-long v6, v16, v18

    if-gez v6, :cond_6

    .line 3908
    return v5

    .line 3911
    :cond_6
    invoke-static {v0, v4, v3}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodOrAdDurationMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v5

    .line 3912
    .local v5, "previousDurationMs":J
    cmp-long v8, v5, v10

    if-eqz v8, :cond_7

    cmp-long v8, v12, v5

    if-ltz v8, :cond_7

    .line 3913
    goto :goto_0

    .line 3914
    :cond_7
    const/4 v9, 0x5

    .line 3912
    :goto_0
    return v9

    .line 3890
    .end local v5    # "previousDurationMs":J
    .end local v12    # "previousPositionMs":J
    .end local v14    # "newPositionMs":J
    :cond_8
    :goto_1
    iget-object v8, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v8, v4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v5, :cond_9

    .line 3892
    return v6

    .line 3895
    :cond_9
    nop

    .line 3896
    invoke-static {v0, v4, v3, v2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v5

    .line 3897
    .local v5, "previousPositionMs":J
    invoke-static {v0, v4, v3}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodOrAdDurationMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v12

    .line 3898
    .local v12, "previousDurationMs":J
    cmp-long v8, v12, v10

    if-eqz v8, :cond_a

    cmp-long v8, v5, v12

    if-ltz v8, :cond_a

    .line 3899
    goto :goto_2

    .line 3900
    :cond_a
    const/4 v9, 0x3

    .line 3898
    :goto_2
    return v9
.end method

.method private static getPositionInfo(Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Player$PositionInfo;
    .locals 26
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "useDiscontinuityPosition"    # Z
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 3940
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 3941
    .local v3, "windowUid":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 3942
    .local v4, "periodUid":Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v15

    .line 3943
    .local v15, "mediaItemIndex":I
    const/4 v5, -0x1

    .line 3944
    .local v5, "periodIndex":I
    const/4 v6, 0x0

    .line 3945
    .local v6, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v7, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3946
    invoke-static {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v5

    .line 3947
    iget-object v7, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v2, v8}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    iget-object v4, v7, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 3948
    iget-object v7, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v7, v15, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    iget-object v3, v7, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3949
    iget-object v6, v1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_0

    .line 3945
    :cond_0
    move/from16 v17, v5

    move-object/from16 v18, v6

    .line 3953
    .end local v5    # "periodIndex":I
    .end local v6    # "mediaItem":Landroidx/media3/common/MediaItem;
    .local v17, "periodIndex":I
    .local v18, "mediaItem":Landroidx/media3/common/MediaItem;
    :goto_0
    const/4 v5, -0x1

    if-eqz p1, :cond_2

    .line 3954
    iget-wide v6, v0, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    .line 3956
    .local v6, "positionMs":J
    iget v8, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v8, v5, :cond_1

    .line 3957
    move-wide v8, v6

    goto :goto_1

    .line 3958
    :cond_1
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v8

    :goto_1
    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    .local v8, "contentPositionMs":J
    goto :goto_3

    .line 3960
    .end local v6    # "positionMs":J
    .end local v8    # "contentPositionMs":J
    :cond_2
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v8

    .line 3962
    .restart local v8    # "contentPositionMs":J
    iget v6, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-eq v6, v5, :cond_3

    .line 3963
    iget-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v5}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v5

    goto :goto_2

    .line 3964
    :cond_3
    move-wide v5, v8

    :goto_2
    move-wide v6, v5

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    .line 3966
    .end local v8    # "contentPositionMs":J
    .local v19, "positionMs":J
    .local v21, "contentPositionMs":J
    :goto_3
    new-instance v23, Landroidx/media3/common/Player$PositionInfo;

    iget v13, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v14, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    move-object/from16 v5, v23

    move-object v6, v3

    move v7, v15

    move-object/from16 v8, v18

    move-object v9, v4

    move/from16 v10, v17

    move-wide/from16 v11, v19

    move/from16 v16, v13

    move/from16 v24, v14

    move-wide/from16 v13, v21

    move/from16 v25, v15

    .end local v15    # "mediaItemIndex":I
    .local v25, "mediaItemIndex":I
    move/from16 v15, v16

    move/from16 v16, v24

    invoke-direct/range {v5 .. v16}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v23
.end method

.method private static getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J
    .locals 2
    .param p0, "positionMs"    # J
    .param p2, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p3, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 3802
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 3803
    return-wide p0

    .line 3805
    :cond_0
    iget-object v0, p2, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3806
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3808
    :cond_1
    iget-object v0, p2, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3810
    invoke-static {p2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    .line 3811
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    .line 3808
    return-wide v0
.end method

.method private static getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 21
    .param p0, "oldState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "window"    # Landroidx/media3/common/Timeline$Window;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Landroidx/media3/common/Timeline$Period;",
            "Landroidx/media3/common/Timeline$Window;",
            ")",
            "Landroidx/media3/common/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 4057
    .local p1, "newPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/SimpleBasePlayer$MediaItemData;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v13

    .line 4058
    .local v13, "stateBuilder":Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    move-object/from16 v14, p1

    invoke-direct {v0, v14}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;-><init>(Ljava/util/List;)V

    move-object v15, v0

    .line 4059
    .local v15, "newTimeline":Landroidx/media3/common/Timeline;
    iget-object v9, v10, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 4060
    .local v9, "oldTimeline":Landroidx/media3/common/Timeline;
    iget-object v0, v10, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v16

    .line 4061
    .local v16, "oldPositionMs":J
    invoke-static/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v8

    .line 4062
    .local v8, "oldIndex":I
    nop

    .line 4063
    invoke-static {v9, v15, v8, v11, v12}, Landroidx/media3/common/SimpleBasePlayer;->getMediaItemIndexInNewPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)I

    move-result v0

    .line 4064
    .local v0, "newIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v6, v16

    .line 4066
    .local v6, "newPositionMs":J
    :goto_0
    add-int/lit8 v2, v8, 0x1

    move v5, v0

    .end local v0    # "newIndex":I
    .local v2, "i":I
    .local v5, "newIndex":I
    :goto_1
    if-ne v5, v1, :cond_1

    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 4068
    nop

    .line 4069
    invoke-static {v9, v15, v2, v11, v12}, Landroidx/media3/common/SimpleBasePlayer;->getMediaItemIndexInNewPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)I

    move-result v5

    .line 4066
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4073
    .end local v2    # "i":I
    :cond_1
    iget v0, v10, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v5, v1, :cond_2

    .line 4074
    const/4 v0, 0x4

    invoke-virtual {v13, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 4076
    :cond_2
    const/16 v18, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move-wide/from16 v2, v16

    move-object v4, v15

    move/from16 v19, v5

    .end local v5    # "newIndex":I
    .local v19, "newIndex":I
    move/from16 v20, v8

    .end local v8    # "oldIndex":I
    .local v20, "oldIndex":I
    move/from16 v8, v18

    move-object/from16 v18, v9

    .end local v9    # "oldTimeline":Landroidx/media3/common/Timeline;
    .local v18, "oldTimeline":Landroidx/media3/common/Timeline;
    move-object/from16 v9, p3

    invoke-static/range {v0 .. v9}, Landroidx/media3/common/SimpleBasePlayer;->buildStateForNewPosition(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$State;JLandroidx/media3/common/Timeline;IJZLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method private static getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 16
    .param p0, "oldState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "newIndex"    # I
    .param p3, "newPositionMs"    # J
    .param p5, "window"    # Landroidx/media3/common/Timeline$Window;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;IJ",
            "Landroidx/media3/common/Timeline$Window;",
            ")",
            "Landroidx/media3/common/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 4093
    .local p1, "newPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/SimpleBasePlayer$MediaItemData;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v13

    .line 4095
    .local v13, "stateBuilder":Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    if-nez v11, :cond_0

    iget-object v0, v10, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    invoke-direct {v0, v11}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;-><init>(Ljava/util/List;)V

    :goto_0
    move-object v4, v0

    .line 4096
    .local v4, "newTimeline":Landroidx/media3/common/Timeline;
    iget v0, v10, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 4097
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-eq v12, v0, :cond_1

    .line 4098
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-lt v12, v0, :cond_1

    goto :goto_1

    .line 4101
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v13, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_2

    .line 4099
    :cond_2
    :goto_1
    const/4 v0, 0x4

    invoke-virtual {v13, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 4104
    :cond_3
    :goto_2
    iget-object v0, v10, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v14

    .line 4105
    .local v14, "oldPositionMs":J
    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-wide v2, v14

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v9}, Landroidx/media3/common/SimpleBasePlayer;->buildStateForNewPosition(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$State;JLandroidx/media3/common/Timeline;IJZLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method private static getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Landroidx/media3/common/util/Size;
    .locals 4
    .param p0, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 4027
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4028
    sget-object v0, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    return-object v0

    .line 4030
    :cond_0
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 4031
    .local v0, "surfaceFrame":Landroid/graphics/Rect;
    new-instance v1, Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/util/Size;-><init>(II)V

    return-object v1
.end method

.method private static getTimelineChangeReason(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;)I
    .locals 6
    .param p0, "previousTimeline"    # Landroidx/media3/common/Timeline;
    .param p1, "newTimeline"    # Landroidx/media3/common/Timeline;
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 3841
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 3842
    return v2

    .line 3844
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    .line 3845
    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3846
    .local v1, "previousUid":Ljava/lang/Object;
    invoke-virtual {p1, v0, p2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3847
    .local v4, "newUid":Ljava/lang/Object;
    instance-of v5, v1, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-eqz v5, :cond_1

    instance-of v5, v4, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3849
    .local v3, "resolvedAutoGeneratedPlaceholder":Z
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v3, :cond_2

    .line 3850
    return v2

    .line 3844
    .end local v1    # "previousUid":Ljava/lang/Object;
    .end local v3    # "resolvedAutoGeneratedPlaceholder":Z
    .end local v4    # "newUid":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3853
    .end local v0    # "i":I
    :cond_3
    return v3
.end method

.method private static isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3779
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$clearVideoOutput$21(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2840
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decreaseDeviceVolume$26(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 3
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2959
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decreaseDeviceVolume$27(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 3
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2973
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleReplaceMediaItems$31(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .param p0, "removeFuture"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "unused"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3432
    return-object p0
.end method

.method static synthetic lambda$increaseDeviceVolume$24(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2926
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$increaseDeviceVolume$25(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2940
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$prepare$7(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2379
    nop

    .line 2380
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2381
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2382
    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2383
    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    .line 2379
    return-object v0
.end method

.method static synthetic lambda$release$13(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2550
    return-object p0
.end method

.method static synthetic lambda$setAudioAttributes$30(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 3018
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDeviceMuted$28(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "muted"    # Z

    .line 2991
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsDeviceMuted(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDeviceMuted$29(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "muted"    # Z

    .line 3004
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsDeviceMuted(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDeviceVolume$22(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "volume"    # I

    .line 2894
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDeviceVolume$23(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "volume"    # I

    .line 2907
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setPlayWhenReady$1(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "playWhenReady"    # Z

    .line 2186
    nop

    .line 2187
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2188
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlayWhenReady(ZI)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2189
    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    .line 2186
    return-object v0
.end method

.method static synthetic lambda$setPlaybackParameters$11(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 2510
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setPlaylistMetadata$15(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 2615
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setRepeatMode$8(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "repeatMode"    # I

    .line 2416
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setRepeatMode(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setShuffleModeEnabled$9(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "shuffleModeEnabled"    # Z

    .line 2437
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setShuffleModeEnabled(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setTrackSelectionParameters$14(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 2589
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setVideoSurface$17(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2740
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setVideoSurfaceHolder$18(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 2758
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Landroidx/media3/common/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setVideoSurfaceView$19(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceView;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 2776
    nop

    .line 2777
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2778
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/SimpleBasePlayer;->getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Landroidx/media3/common/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2779
    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    .line 2776
    return-object v0
.end method

.method static synthetic lambda$setVideoTextureView$20(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "surfaceSize"    # Landroidx/media3/common/util/Size;

    .line 2803
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setVolume$16(Landroidx/media3/common/SimpleBasePlayer$State;F)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "volume"    # F

    .line 2716
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setVolume(F)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$updateStateAndInformListeners$32(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "timelineChangeReason"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3534
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-interface {p2, v0, p1}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$33(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "positionDiscontinuityReason"    # I
    .param p1, "previousPositionInfo"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "positionInfo"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3548
    invoke-interface {p3, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    .line 3549
    invoke-interface {p3, p1, p2, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    .line 3551
    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$34(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "mediaItemTransitionReason"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3562
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$35(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3567
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$36(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3571
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/PlaybackException;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$37(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3578
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$38(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3583
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$39(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3588
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$40(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3594
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onLoadingChanged(Z)V

    .line 3595
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    .line 3596
    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$41(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3602
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$42(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3607
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$43(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3614
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$44(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3621
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$45(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3626
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z

    move-result v0

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$46(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3631
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$47(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3636
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$48(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3641
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$49(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3646
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$50(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3651
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$51(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3657
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$52(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3662
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$53(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3667
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$54(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3672
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$55(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3677
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$56(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3686
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 3687
    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v1}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v1

    .line 3686
    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$57(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3691
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$58(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3698
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$59(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3704
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iget-object v0, v0, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    .line 3705
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onCues(Landroidx/media3/common/text/CueGroup;)V

    .line 3706
    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$60(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3711
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onMetadata(Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$61(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 3716
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method private postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 3771
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3772
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3774
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 3776
    :goto_0
    return-void
.end method

.method private setMediaItemsInternal(Ljava/util/List;IJ)V
    .locals 10
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

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 2220
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2222
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2223
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2225
    :cond_2
    return-void

    .line 2227
    :cond_3
    nop

    .line 2228
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->handleSetMediaItems(Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v9, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda28;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda28;-><init>(Landroidx/media3/common/SimpleBasePlayer;Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)V

    .line 2227
    invoke-direct {p0, v1, v9}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2237
    return-void
.end method

.method private shouldHandleCommand(I)Z
    .locals 1
    .param p1, "commandCode"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3497
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0, p1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V
    .locals 16
    .param p1, "newState"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "forceSeekDiscontinuity"    # Z
    .param p3, "isRepeatingCurrentItem"    # Z
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3504
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3507
    .local v2, "previousState":Landroidx/media3/common/SimpleBasePlayer$State;
    iput-object v1, v0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3508
    iget-boolean v3, v1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-boolean v3, v1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-eqz v3, :cond_1

    .line 3510
    :cond_0
    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3512
    invoke-virtual {v3}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3513
    invoke-virtual {v3}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->clearPositionDiscontinuity()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3514
    invoke-virtual {v3, v4}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setNewlyRenderedFirstFrame(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3515
    invoke-virtual {v3}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3518
    :cond_1
    iget-boolean v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iget-boolean v5, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    const/4 v6, 0x1

    if-eq v3, v5, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v4

    .line 3519
    .local v3, "playWhenReadyChanged":Z
    :goto_0
    iget v5, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    iget v7, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    if-eq v5, v7, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v4

    .line 3520
    .local v5, "playbackStateChanged":Z
    :goto_1
    iget-object v7, v0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 3521
    move/from16 v9, p2

    invoke-static {v2, v1, v9, v7, v8}, Landroidx/media3/common/SimpleBasePlayer;->getPositionDiscontinuityReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v7

    .line 3523
    .local v7, "positionDiscontinuityReason":I
    iget-object v8, v2, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iget-object v10, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v8, v10}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v6

    .line 3524
    .local v8, "timelineChanged":Z
    iget-object v10, v0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 3525
    move/from16 v11, p3

    invoke-static {v2, v1, v7, v11, v10}, Landroidx/media3/common/SimpleBasePlayer;->getMediaItemTransitionReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;IZLandroidx/media3/common/Timeline$Window;)I

    move-result v10

    .line 3528
    .local v10, "mediaItemTransitionReason":I
    if-eqz v8, :cond_4

    .line 3530
    iget-object v12, v2, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iget-object v13, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iget-object v14, v0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 3531
    invoke-static {v12, v13, v14}, Landroidx/media3/common/SimpleBasePlayer;->getTimelineChangeReason(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;)I

    move-result v12

    .line 3532
    .local v12, "timelineChangeReason":I
    iget-object v13, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v14, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda33;

    invoke-direct {v14, v1, v12}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda33;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    invoke-virtual {v13, v4, v14}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3536
    .end local v12    # "timelineChangeReason":I
    :cond_4
    const/4 v12, -0x1

    if-eq v7, v12, :cond_5

    .line 3537
    iget-object v13, v0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v14, v0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 3538
    invoke-static {v2, v4, v13, v14}, Landroidx/media3/common/SimpleBasePlayer;->getPositionInfo(Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v4

    .line 3539
    .local v4, "previousPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    iget-boolean v13, v1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iget-object v14, v0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v15, v0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 3540
    invoke-static {v1, v13, v14, v15}, Landroidx/media3/common/SimpleBasePlayer;->getPositionInfo(Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v13

    .line 3545
    .local v13, "positionInfo":Landroidx/media3/common/Player$PositionInfo;
    iget-object v14, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v15, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda5;

    invoke-direct {v15, v7, v4, v13}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda5;-><init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    const/16 v6, 0xb

    invoke-virtual {v14, v6, v15}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3553
    .end local v4    # "previousPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    .end local v13    # "positionInfo":Landroidx/media3/common/Player$PositionInfo;
    :cond_5
    if-eq v10, v12, :cond_7

    .line 3556
    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3557
    const/4 v4, 0x0

    goto :goto_2

    .line 3559
    :cond_6
    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3558
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v6

    iget-object v13, v0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v4, v6, v13}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    :goto_2
    nop

    .line 3560
    .local v4, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v6, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v13, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda17;

    invoke-direct {v13, v4, v10}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/common/MediaItem;I)V

    const/4 v14, 0x1

    invoke-virtual {v6, v14, v13}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3564
    .end local v4    # "mediaItem":Landroidx/media3/common/MediaItem;
    :cond_7
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    invoke-static {v4, v6}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3565
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda19;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v13, 0xa

    invoke-virtual {v4, v13, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3568
    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    if-eqz v4, :cond_8

    .line 3569
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda20;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-virtual {v4, v13, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3574
    :cond_8
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {v4, v6}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3575
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda21;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v13, 0x13

    invoke-virtual {v4, v13, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3580
    :cond_9
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v4, v6}, Landroidx/media3/common/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3581
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda23;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v13, 0x2

    invoke-virtual {v4, v13, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3585
    :cond_a
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v4, v6}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3586
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda24;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v13, 0xe

    invoke-virtual {v4, v13, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3590
    :cond_b
    iget-boolean v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    iget-boolean v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    if-eq v4, v6, :cond_c

    .line 3591
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda25;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v13, 0x3

    invoke-virtual {v4, v13, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3598
    :cond_c
    if-nez v3, :cond_d

    if-eqz v5, :cond_e

    .line 3599
    :cond_d
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda26;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3604
    :cond_e
    if-eqz v5, :cond_f

    .line 3605
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda44;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda44;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v12, 0x4

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3609
    :cond_f
    if-nez v3, :cond_10

    iget v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iget v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    if-eq v4, v6, :cond_11

    .line 3611
    :cond_10
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda55;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda55;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v12, 0x5

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3617
    :cond_11
    iget v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iget v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-eq v4, v6, :cond_12

    .line 3618
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda61;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda61;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v12, 0x6

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3623
    :cond_12
    invoke-static {v2}, Landroidx/media3/common/SimpleBasePlayer;->isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z

    move-result v4

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer;->isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z

    move-result v6

    if-eq v4, v6, :cond_13

    .line 3624
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda62;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda62;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v12, 0x7

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3628
    :cond_13
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v4, v6}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3629
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda63;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda63;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0xc

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3633
    :cond_14
    iget v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    iget v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    if-eq v4, v6, :cond_15

    .line 3634
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda64;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda64;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x8

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3638
    :cond_15
    iget-boolean v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iget-boolean v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    if-eq v4, v6, :cond_16

    .line 3639
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x9

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3643
    :cond_16
    iget-wide v12, v2, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iget-wide v14, v1, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    cmp-long v4, v12, v14

    if-eqz v4, :cond_17

    .line 3644
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x10

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3648
    :cond_17
    iget-wide v12, v2, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iget-wide v14, v1, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    cmp-long v4, v12, v14

    if-eqz v4, :cond_18

    .line 3649
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda3;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x11

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3653
    :cond_18
    iget-wide v12, v2, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iget-wide v14, v1, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    cmp-long v4, v12, v14

    if-eqz v4, :cond_19

    .line 3654
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda4;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x12

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3659
    :cond_19
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v4, v6}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 3660
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda6;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x14

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3664
    :cond_1a
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {v4, v6}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 3665
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda7;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x19

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3669
    :cond_1b
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {v4, v6}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 3670
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda8;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x1d

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3674
    :cond_1c
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v4, v6}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 3675
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda9;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0xf

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3679
    :cond_1d
    iget-boolean v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-eqz v4, :cond_1e

    .line 3680
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda10;

    invoke-direct {v6}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda10;-><init>()V

    const/16 v12, 0x1a

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3682
    :cond_1e
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 3683
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda12;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x18

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3689
    :cond_1f
    iget v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    iget v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_20

    .line 3690
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda13;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x16

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3693
    :cond_20
    iget v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iget v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    if-ne v4, v6, :cond_21

    iget-boolean v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    iget-boolean v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    if-eq v4, v6, :cond_22

    .line 3695
    :cond_21
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda14;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x1e

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3700
    :cond_22
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 3701
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda15;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x1b

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3708
    :cond_23
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v4, v6}, Landroidx/media3/common/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iget-wide v12, v4, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v12, v14

    if-eqz v4, :cond_24

    .line 3710
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0x1c

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3713
    :cond_24
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v4, v6}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 3714
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda18;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v12, 0xd

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3718
    :cond_25
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v4}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 3719
    return-void
.end method

.method private updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3733
    .local p1, "pendingOperation":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .local p2, "placeholderStateSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/common/SimpleBasePlayer$State;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V

    .line 3738
    return-void
.end method

.method private updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V
    .locals 3
    .param p3, "forceSeekDiscontinuity"    # Z
    .param p4, "isRepeatingCurrentItem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3746
    .local p1, "pendingOperation":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .local p2, "placeholderStateSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/common/SimpleBasePlayer$State;>;"
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3747
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    goto :goto_0

    .line 3749
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3750
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3751
    .local v0, "suggestedPlaceholderState":Landroidx/media3/common/SimpleBasePlayer$State;
    nop

    .line 3752
    invoke-virtual {p0, v0}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderState(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    .line 3751
    invoke-direct {p0, v1, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    .line 3755
    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda30;-><init>(Landroidx/media3/common/SimpleBasePlayer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda31;-><init>(Landroidx/media3/common/SimpleBasePlayer;)V

    invoke-interface {p1, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 3768
    .end local v0    # "suggestedPlaceholderState":Landroidx/media3/common/SimpleBasePlayer$State;
    :goto_0
    return-void
.end method

.method private verifyApplicationThreadAndInitState()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3723
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThread()V

    .line 3724
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    if-nez v0, :cond_0

    .line 3726
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3728
    :cond_0
    return-void
.end method


# virtual methods
.method public final addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2154
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 2155
    return-void
.end method

.method public final addMediaItems(ILjava/util/List;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 2241
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2242
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2244
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2245
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    .line 2246
    .local v1, "playlistSize":I
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2249
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2250
    .local v2, "correctedIndex":I
    nop

    .line 2251
    invoke-virtual {p0, v2, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda34;

    invoke-direct {v4, p0, v0, p2, v2}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda34;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)V

    .line 2250
    invoke-direct {p0, v3, v4}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2271
    return-void

    .line 2247
    .end local v2    # "correctedIndex":I
    :cond_2
    :goto_1
    return-void
.end method

.method public final clearVideoSurface()V
    .locals 1

    .line 2808
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    .line 2809
    return-void
.end method

.method public final clearVideoSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2813
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    .line 2814
    return-void
.end method

.method public final clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 2818
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    .line 2819
    return-void
.end method

.method public final clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 2823
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    .line 2824
    return-void
.end method

.method public final clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 2828
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    .line 2829
    return-void
.end method

.method public final decreaseDeviceVolume()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2950
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2952
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2953
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2954
    return-void

    .line 2956
    :cond_0
    nop

    .line 2957
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleDecreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2956
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2960
    return-void
.end method

.method public final decreaseDeviceVolume(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 2964
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2966
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2967
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2968
    return-void

    .line 2970
    :cond_0
    nop

    .line 2971
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleDecreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda57;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda57;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2970
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2974
    return-void
.end method

.method public final getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 2166
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 2702
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2703
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method public final getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 2171
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2172
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    return-object v0
.end method

.method public final getBufferedPosition()J
    .locals 4

    .line 2656
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2657
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v2, v2, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 2659
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPosition()J

    move-result-wide v0

    .line 2657
    :goto_0
    return-wide v0
.end method

.method public final getContentBufferedPosition()J
    .locals 4

    .line 2694
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2695
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 2696
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 2697
    invoke-static {v2, v3}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v2

    .line 2695
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentPosition()J
    .locals 2

    .line 2688
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2689
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentAdGroupIndex()I
    .locals 1

    .line 2676
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2677
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    return v0
.end method

.method public final getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 2682
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2683
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    return v0
.end method

.method public final getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 2857
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2858
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    return-object v0
.end method

.method public final getCurrentMediaItemIndex()I
    .locals 1

    .line 2632
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2633
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    invoke-static {v0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v0

    return v0
.end method

.method public final getCurrentPeriodIndex()I
    .locals 3

    .line 2626
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2627
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v0

    return v0
.end method

.method public final getCurrentPosition()J
    .locals 2

    .line 2650
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2651
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 2620
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2621
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public final getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 2568
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2569
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method public final getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    .line 2863
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2864
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object v0
.end method

.method public final getDeviceVolume()I
    .locals 1

    .line 2869
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2870
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    return v0
.end method

.method public final getDuration()J
    .locals 4

    .line 2638
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2639
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2640
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2641
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v1, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v2, v2, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    .line 2642
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    .line 2643
    .local v0, "adDurationUs":J
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    return-wide v2

    .line 2645
    .end local v0    # "adDurationUs":J
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxSeekToPreviousPosition()J
    .locals 2

    .line 2495
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2496
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-wide v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method public final getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 2594
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2595
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method protected getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .locals 3
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 3085
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;-><init>(Landroidx/media3/common/SimpleBasePlayer$1;)V

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;-><init>(Ljava/lang/Object;)V

    .line 3086
    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v0

    .line 3087
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsDynamic(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v0

    .line 3088
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsPlaceholder(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v0

    .line 3089
    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v0

    .line 3085
    return-object v0
.end method

.method protected getPlaceholderState(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0
    .param p1, "suggestedPlaceholderState"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3069
    return-object p1
.end method

.method public final getPlayWhenReady()Z
    .locals 1

    .line 2194
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2195
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    return v0
.end method

.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 2515
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2516
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public final getPlaybackState()I
    .locals 1

    .line 2389
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2390
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    return v0
.end method

.method public final getPlaybackSuppressionReason()I
    .locals 1

    .line 2395
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2396
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    return v0
.end method

.method public final getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    .line 2402
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2403
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    return-object v0
.end method

.method public final getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 2600
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2601
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method public final getRepeatMode()I
    .locals 1

    .line 2422
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2423
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    return v0
.end method

.method public final getSeekBackIncrement()J
    .locals 2

    .line 2483
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2484
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-wide v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public final getSeekForwardIncrement()J
    .locals 2

    .line 2489
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2490
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-wide v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public final getShuffleModeEnabled()Z
    .locals 1

    .line 2442
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2443
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    return v0
.end method

.method protected abstract getState()Landroidx/media3/common/SimpleBasePlayer$State;
.end method

.method public final getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 1

    .line 2851
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2852
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    return-object v0
.end method

.method public final getTotalBufferedDuration()J
    .locals 2

    .line 2664
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2665
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 2574
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2575
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-object v0
.end method

.method public final getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 1

    .line 2845
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2846
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    return-object v0
.end method

.method public final getVolume()F
    .locals 1

    .line 2721
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2722
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    return v0
.end method

.method protected handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3391
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleClearVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "videoOutput"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_VIDEO_SURFACE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleDecreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleIncreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleMoveMediaItems(III)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3411
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handlePrepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_PREPARE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleRelease()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_RELEASE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleRemoveMediaItems(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3449
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleReplaceMediaItems(IILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3430
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-virtual {p0, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3431
    .local v0, "addFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleRemoveMediaItems(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 3432
    .local v1, "removeFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda53;

    invoke-direct {v2, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda53;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2
.end method

.method protected handleSeek(IJI)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J
    .param p4, "seekCommand"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle one of the COMMAND_SEEK_*"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/AudioAttributes;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_AUDIO_ATTRIBUTES"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetDeviceMuted(ZI)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetDeviceVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "deviceVolume"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_DEVICE_VOLUME or COMMAND_SET_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetMediaItems(Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3375
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_MEDIA_ITEM(S)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetPlayWhenReady(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_PLAY_PAUSE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/PlaybackParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_SPEED_AND_PITCH"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_PLAYLIST_METADATA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_REPEAT_MODE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetShuffleModeEnabled(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "shuffleModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_SHUFFLE_MODE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/TrackSelectionParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_TRACK_SELECTION_PARAMETERS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "videoOutput"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_VIDEO_SURFACE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleSetVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_SET_VOLUME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleStop()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing implementation to handle COMMAND_STOP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final increaseDeviceVolume()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2917
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2919
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2920
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2921
    return-void

    .line 2923
    :cond_0
    nop

    .line 2924
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleIncreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda49;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda49;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2923
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2927
    return-void
.end method

.method public final increaseDeviceVolume(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 2931
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2933
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2934
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2935
    return-void

    .line 2937
    :cond_0
    nop

    .line 2938
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleIncreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda32;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda32;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2937
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2941
    return-void
.end method

.method protected final invalidateState()V
    .locals 2

    .line 3031
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 3032
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3035
    :cond_0
    nop

    .line 3036
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    .line 3035
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    .line 3037
    return-void

    .line 3033
    :cond_1
    :goto_0
    return-void
.end method

.method public final isDeviceMuted()Z
    .locals 1

    .line 2875
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2876
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 2448
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2449
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    return v0
.end method

.method public final isPlayingAd()Z
    .locals 2

    .line 2670
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2671
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$addMediaItems$3$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 8
    .param p1, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "mediaItems"    # Ljava/util/List;
    .param p3, "correctedIndex"    # I

    .line 2253
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 2254
    invoke-static {p1, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->buildMutablePlaylistFromState(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Ljava/util/List;

    move-result-object v0

    .line 2255
    .local v0, "placeholderPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/SimpleBasePlayer$MediaItemData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2256
    add-int v2, v1, p3

    .line 2257
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0, v3}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v3

    .line 2256
    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2259
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2260
    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1

    .line 2263
    :cond_1
    iget v4, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2267
    invoke-interface {v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 2263
    move-object v2, p1

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$moveMediaItems$4$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/SimpleBasePlayer$State;III)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 3
    .param p1, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "fromIndex"    # I
    .param p3, "correctedToIndex"    # I
    .param p4, "correctedNewIndex"    # I

    .line 2294
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 2295
    invoke-static {p1, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->buildMutablePlaylistFromState(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Ljava/util/List;

    move-result-object v0

    .line 2296
    .local v0, "placeholderPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/SimpleBasePlayer$MediaItemData;>;"
    invoke-static {v0, p2, p3, p4}, Landroidx/media3/common/util/Util;->moveItems(Ljava/util/List;III)V

    .line 2297
    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$new$0$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;
    .param p2, "flags"    # Landroidx/media3/common/FlagSet;

    .line 2147
    new-instance v0, Landroidx/media3/common/Player$Events;

    invoke-direct {v0, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method synthetic lambda$removeMediaItems$6$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/SimpleBasePlayer$State;II)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 3
    .param p1, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "fromIndex"    # I
    .param p3, "correctedToIndex"    # I

    .line 2361
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 2362
    invoke-static {p1, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->buildMutablePlaylistFromState(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Ljava/util/List;

    move-result-object v0

    .line 2363
    .local v0, "placeholderPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/SimpleBasePlayer$MediaItemData;>;"
    invoke-static {v0, p2, p3}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    .line 2364
    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$replaceMediaItems$5$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 8
    .param p1, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "mediaItems"    # Ljava/util/List;
    .param p3, "correctedToIndex"    # I
    .param p4, "fromIndex"    # I

    .line 2314
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 2315
    invoke-static {p1, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->buildMutablePlaylistFromState(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Ljava/util/List;

    move-result-object v0

    .line 2316
    .local v0, "placeholderPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/SimpleBasePlayer$MediaItemData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2317
    add-int v2, v1, p3

    .line 2318
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0, v3}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v3

    .line 2317
    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2321
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2322
    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    .local v1, "updatedState":Landroidx/media3/common/SimpleBasePlayer$State;
    goto :goto_1

    .line 2325
    .end local v1    # "updatedState":Landroidx/media3/common/SimpleBasePlayer$State;
    :cond_1
    iget v4, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2330
    invoke-interface {v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 2326
    move-object v2, p1

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    .line 2333
    .restart local v1    # "updatedState":Landroidx/media3/common/SimpleBasePlayer$State;
    :goto_1
    if-ge p4, p3, :cond_2

    .line 2334
    invoke-static {v0, p4, p3}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    .line 2335
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v1, v0, v2, v3}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v2

    return-object v2

    .line 2337
    :cond_2
    return-object v1
.end method

.method synthetic lambda$seekTo$10$androidx-media3-common-SimpleBasePlayer(ZLandroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 6
    .param p1, "ignoreSeekForPlaceholderState"    # Z
    .param p2, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p3, "mediaItemIndex"    # I
    .param p4, "positionMs"    # J

    .line 2473
    if-eqz p1, :cond_0

    .line 2474
    move-object v0, p2

    goto :goto_0

    .line 2475
    :cond_0
    const/4 v1, 0x0

    iget-object v5, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    move-object v0, p2

    move v2, p3

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    .line 2473
    :goto_0
    return-object v0
.end method

.method synthetic lambda$setMediaItemsInternal$2$androidx-media3-common-SimpleBasePlayer(Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 7
    .param p1, "mediaItems"    # Ljava/util/List;
    .param p2, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p3, "startIndex"    # I
    .param p4, "startPositionMs"    # J

    .line 2230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2231
    .local v0, "placeholderPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/SimpleBasePlayer$MediaItemData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2232
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2234
    .end local v1    # "i":I
    :cond_0
    iget-object v6, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    move-object v1, p2

    move-object v2, v0

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v1 .. v6}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$stop$12$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 3
    .param p1, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2530
    nop

    .line 2531
    invoke-virtual {p1}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2532
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2533
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 2535
    invoke-static {p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    .line 2534
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2536
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setAdBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2537
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2538
    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    .line 2530
    return-object v0
.end method

.method synthetic lambda$updateStateForPendingOperation$62$androidx-media3-common-SimpleBasePlayer(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .param p1, "pendingOperation"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3757
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3758
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3759
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    if-nez v0, :cond_0

    .line 3760
    nop

    .line 3761
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    .line 3760
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    .line 3765
    :cond_0
    return-void
.end method

.method public final moveMediaItems(III)V
    .locals 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I

    .line 2275
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2276
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2278
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2279
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v7

    .line 2280
    .local v7, "playlistSize":I
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v7, :cond_4

    if-lt p1, v7, :cond_1

    goto :goto_2

    .line 2285
    :cond_1
    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2286
    .local v8, "correctedToIndex":I
    sub-int v1, v8, p1

    sub-int v1, v7, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2287
    .local v9, "correctedNewIndex":I
    if-eq p1, v8, :cond_3

    if-ne v9, p1, :cond_2

    goto :goto_1

    .line 2290
    :cond_2
    nop

    .line 2291
    invoke-virtual {p0, p1, v8, v9}, Landroidx/media3/common/SimpleBasePlayer;->handleMoveMediaItems(III)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v10

    new-instance v11, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda48;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda48;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;III)V

    .line 2290
    invoke-direct {p0, v10, v11}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2299
    return-void

    .line 2288
    :cond_3
    :goto_1
    return-void

    .line 2283
    .end local v8    # "correctedToIndex":I
    .end local v9    # "correctedNewIndex":I
    :cond_4
    :goto_2
    return-void
.end method

.method public final prepare()V
    .locals 3

    .line 2370
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2372
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2373
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2374
    return-void

    .line 2376
    :cond_0
    nop

    .line 2377
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->handlePrepare()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda56;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda56;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2376
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2384
    return-void
.end method

.method public final release()V
    .locals 4

    .line 2543
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2545
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2546
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2547
    return-void

    .line 2549
    :cond_0
    nop

    .line 2550
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->handleRelease()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda43;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda43;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2549
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2551
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    .line 2552
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->release()V

    .line 2554
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2556
    invoke-virtual {v2}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v2

    .line 2557
    invoke-virtual {v2, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2558
    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 2560
    invoke-static {v0, v2}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    .line 2559
    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2561
    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setAdBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 2562
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 2563
    invoke-virtual {v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2564
    return-void
.end method

.method public final removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2159
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2160
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    .line 2161
    return-void
.end method

.method public final removeMediaItems(II)V
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 2344
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2345
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2347
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2348
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    .line 2349
    .local v1, "playlistSize":I
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-lt p1, v1, :cond_1

    goto :goto_1

    .line 2354
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2355
    .local v2, "correctedToIndex":I
    if-ne p1, v2, :cond_2

    .line 2356
    return-void

    .line 2358
    :cond_2
    nop

    .line 2359
    invoke-virtual {p0, p1, v2}, Landroidx/media3/common/SimpleBasePlayer;->handleRemoveMediaItems(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda52;

    invoke-direct {v4, p0, v0, p1, v2}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda52;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;II)V

    .line 2358
    invoke-direct {p0, v3, v4}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2366
    return-void

    .line 2352
    .end local v2    # "correctedToIndex":I
    :cond_3
    :goto_1
    return-void
.end method

.method public final replaceMediaItems(IILjava/util/List;)V
    .locals 11
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

    .line 2303
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2304
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2305
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2306
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v7

    .line 2307
    .local v7, "playlistSize":I
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-le p1, v7, :cond_1

    goto :goto_1

    .line 2310
    :cond_1
    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2311
    .local v8, "correctedToIndex":I
    nop

    .line 2312
    invoke-virtual {p0, p1, v8, p3}, Landroidx/media3/common/SimpleBasePlayer;->handleReplaceMediaItems(IILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v9

    new-instance v10, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda27;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p3

    move v5, v8

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)V

    .line 2311
    invoke-direct {p0, v9, v10}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2340
    return-void

    .line 2308
    .end local v8    # "correctedToIndex":I
    :cond_2
    :goto_1
    return-void
.end method

.method public final seekTo(IJIZ)V
    .locals 16
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J
    .param p4, "seekCommand"    # I
    .param p5, "isRepeatingCurrentItem"    # Z

    .line 2459
    move-object/from16 v7, p0

    move/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2460
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    if-ltz v8, :cond_0

    goto :goto_0

    :cond_0
    move v1, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v10

    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2462
    iget-object v11, v7, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2463
    .local v11, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    move/from16 v12, p4

    invoke-direct {v7, v12}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2464
    return-void

    .line 2466
    :cond_2
    if-eq v8, v0, :cond_4

    .line 2468
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v11, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 2469
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v11, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-lt v8, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v9

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v10

    :goto_3
    move v13, v0

    .line 2470
    .local v13, "ignoreSeekForPlaceholderState":Z
    nop

    .line 2471
    invoke-virtual/range {p0 .. p4}, Landroidx/media3/common/SimpleBasePlayer;->handleSeek(IJI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v14

    new-instance v15, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda51;

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v13

    move-object v3, v11

    move/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda51;-><init>(Landroidx/media3/common/SimpleBasePlayer;ZLandroidx/media3/common/SimpleBasePlayer$State;IJ)V

    if-nez v13, :cond_5

    move v9, v10

    .line 2470
    :cond_5
    move/from16 v0, p5

    invoke-direct {v7, v14, v15, v9, v0}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V

    .line 2479
    return-void
.end method

.method public final setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 3
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z

    .line 3009
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 3011
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3012
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x23

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3013
    return-void

    .line 3015
    :cond_0
    nop

    .line 3016
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleSetAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda50;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda50;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/AudioAttributes;)V

    .line 3015
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 3019
    return-void
.end method

.method public final setDeviceMuted(Z)V
    .locals 3
    .param p1, "muted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2983
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2985
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2986
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2987
    return-void

    .line 2989
    :cond_0
    nop

    .line 2990
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceMuted(ZI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda46;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda46;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    .line 2989
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2992
    return-void
.end method

.method public final setDeviceMuted(ZI)V
    .locals 3
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 2996
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2998
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2999
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3000
    return-void

    .line 3002
    :cond_0
    nop

    .line 3003
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceMuted(ZI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda59;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda59;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    .line 3002
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 3005
    return-void
.end method

.method public final setDeviceVolume(I)V
    .locals 3
    .param p1, "volume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2886
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2888
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2889
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2890
    return-void

    .line 2892
    :cond_0
    nop

    .line 2893
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    .line 2892
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2895
    return-void
.end method

.method public final setDeviceVolume(II)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "flags"    # I

    .line 2899
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2901
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2902
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x21

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2903
    return-void

    .line 2905
    :cond_0
    nop

    .line 2906
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda36;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda36;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    .line 2905
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2908
    return-void
.end method

.method public final setMediaItems(Ljava/util/List;IJ)V
    .locals 1
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

    .line 2209
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2210
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2211
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    .line 2212
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p3

    .line 2214
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->setMediaItemsInternal(Ljava/util/List;IJ)V

    .line 2215
    return-void
.end method

.method public final setMediaItems(Ljava/util/List;Z)V
    .locals 3
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 2200
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2201
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    .line 2202
    .local v0, "startIndex":I
    :goto_0
    if-eqz p2, :cond_1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, v1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v1

    .line 2203
    .local v1, "startPositionMs":J
    :goto_1
    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->setMediaItemsInternal(Ljava/util/List;IJ)V

    .line 2204
    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 3
    .param p1, "playWhenReady"    # Z

    .line 2177
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2179
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2180
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2181
    return-void

    .line 2183
    :cond_0
    nop

    .line 2184
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetPlayWhenReady(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    .line 2183
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2190
    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 3
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 2501
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2503
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2504
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2505
    return-void

    .line 2507
    :cond_0
    nop

    .line 2508
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda58;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda58;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/PlaybackParameters;)V

    .line 2507
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2511
    return-void
.end method

.method public final setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 3
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 2606
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2608
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2609
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2610
    return-void

    .line 2612
    :cond_0
    nop

    .line 2613
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda39;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda39;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/MediaMetadata;)V

    .line 2612
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2616
    return-void
.end method

.method public final setRepeatMode(I)V
    .locals 3
    .param p1, "repeatMode"    # I

    .line 2408
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2410
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2411
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2412
    return-void

    .line 2414
    :cond_0
    nop

    .line 2415
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda40;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda40;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    .line 2414
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2417
    return-void
.end method

.method public final setShuffleModeEnabled(Z)V
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 2428
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2430
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2431
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2432
    return-void

    .line 2434
    :cond_0
    nop

    .line 2435
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetShuffleModeEnabled(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda35;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda35;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    .line 2434
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2438
    return-void
.end method

.method public final setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 2580
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2582
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2583
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2584
    return-void

    .line 2586
    :cond_0
    nop

    .line 2587
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda60;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda60;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)V

    .line 2586
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2590
    return-void
.end method

.method public final setVideoSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2727
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2729
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2730
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2731
    return-void

    .line 2733
    :cond_0
    if-nez p1, :cond_1

    .line 2734
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    .line 2735
    return-void

    .line 2737
    :cond_1
    nop

    .line 2738
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda29;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda29;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2737
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2741
    return-void
.end method

.method public final setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 2745
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2747
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2748
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2749
    return-void

    .line 2751
    :cond_0
    if-nez p1, :cond_1

    .line 2752
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    .line 2753
    return-void

    .line 2755
    :cond_1
    nop

    .line 2756
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda42;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda42;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)V

    .line 2755
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2759
    return-void
.end method

.method public final setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 3
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 2763
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2765
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2766
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2767
    return-void

    .line 2769
    :cond_0
    if-nez p1, :cond_1

    .line 2770
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    .line 2771
    return-void

    .line 2773
    :cond_1
    nop

    .line 2774
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda45;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda45;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceView;)V

    .line 2773
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2780
    return-void
.end method

.method public final setVideoTextureView(Landroid/view/TextureView;)V
    .locals 4
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 2784
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2786
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2787
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2788
    return-void

    .line 2790
    :cond_0
    if-nez p1, :cond_1

    .line 2791
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    .line 2792
    return-void

    .line 2795
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2796
    new-instance v1, Landroidx/media3/common/util/Size;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/util/Size;-><init>(II)V

    .local v1, "surfaceSize":Landroidx/media3/common/util/Size;
    goto :goto_0

    .line 2798
    .end local v1    # "surfaceSize":Landroidx/media3/common/util/Size;
    :cond_2
    sget-object v1, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    .line 2800
    .restart local v1    # "surfaceSize":Landroidx/media3/common/util/Size;
    :goto_0
    nop

    .line 2801
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda22;

    invoke-direct {v3, v0, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/util/Size;)V

    .line 2800
    invoke-direct {p0, v2, v3}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2804
    return-void
.end method

.method public final setVolume(F)V
    .locals 3
    .param p1, "volume"    # F

    .line 2708
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2710
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2711
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2712
    return-void

    .line 2714
    :cond_0
    nop

    .line 2715
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda41;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda41;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;F)V

    .line 2714
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2717
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 2521
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2523
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2524
    .local v0, "state":Landroidx/media3/common/SimpleBasePlayer$State;
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2525
    return-void

    .line 2527
    :cond_0
    nop

    .line 2528
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->handleStop()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;

    invoke-direct {v2, p0, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2527
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    .line 2539
    return-void
.end method

.method protected final verifyApplicationThread()V
    .locals 2

    .line 3484
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3493
    return-void

    .line 3485
    :cond_0
    nop

    .line 3490
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 3486
    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\n"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3491
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
