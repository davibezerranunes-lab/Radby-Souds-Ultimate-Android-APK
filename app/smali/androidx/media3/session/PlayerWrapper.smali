.class final Landroidx/media3/session/PlayerWrapper;
.super Landroidx/media3/common/ForwardingPlayer;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/PlayerWrapper$LegacyError;,
        Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;
    }
.end annotation


# instance fields
.field private availablePlayerCommands:Landroidx/media3/common/Player$Commands;

.field private availableSessionCommands:Landroidx/media3/session/SessionCommands;

.field private customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private legacyError:Landroidx/media3/session/PlayerWrapper$LegacyError;

.field private legacyExtras:Landroid/os/Bundle;

.field private mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private final playIfSuppressed:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/Player;ZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "playIfSuppressed"    # Z
    .param p5, "availableSessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p6, "availablePlayerCommands"    # Landroidx/media3/common/Player$Commands;
    .param p7, "legacyExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Player;",
            "Z",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 102
    .local p3, "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .local p4, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    invoke-direct {p0, p1}, Landroidx/media3/common/ForwardingPlayer;-><init>(Landroidx/media3/common/Player;)V

    .line 103
    iput-boolean p2, p0, Landroidx/media3/session/PlayerWrapper;->playIfSuppressed:Z

    .line 104
    iput-object p3, p0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 105
    iput-object p4, p0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 106
    iput-object p5, p0, Landroidx/media3/session/PlayerWrapper;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 107
    iput-object p6, p0, Landroidx/media3/session/PlayerWrapper;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 108
    iput-object p7, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    .line 109
    return-void
.end method

.method private static convertCommandToPlaybackStateActions(I)J
    .locals 2
    .param p0, "command"    # I

    .line 1277
    sparse-switch p0, :sswitch_data_0

    .line 1334
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1299
    :sswitch_0
    const-wide/32 v0, 0x3ac00

    return-wide v0

    .line 1306
    :sswitch_1
    const-wide/32 v0, 0x40000

    return-wide v0

    .line 1310
    :sswitch_2
    const-wide/32 v0, 0x280000

    return-wide v0

    .line 1308
    :sswitch_3
    const-wide/32 v0, 0x400000

    return-wide v0

    .line 1287
    :sswitch_4
    const-wide/16 v0, 0x40

    return-wide v0

    .line 1285
    :sswitch_5
    const-wide/16 v0, 0x8

    return-wide v0

    .line 1291
    :sswitch_6
    const-wide/16 v0, 0x1000

    return-wide v0

    .line 1294
    :sswitch_7
    const-wide/16 v0, 0x20

    return-wide v0

    .line 1297
    :sswitch_8
    const-wide/16 v0, 0x10

    return-wide v0

    .line 1289
    :sswitch_9
    const-wide/16 v0, 0x100

    return-wide v0

    .line 1313
    :sswitch_a
    const-wide/16 v0, 0x1

    return-wide v0

    .line 1283
    :sswitch_b
    const-wide/16 v0, 0x4000

    return-wide v0

    .line 1279
    :sswitch_c
    const-wide/16 v0, 0x206

    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x3 -> :sswitch_a
        0x5 -> :sswitch_9
        0x6 -> :sswitch_8
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private verifyApplicationThread()V
    .locals 2

    .line 1272
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1273
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 187
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 188
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 189
    return-void
.end method

.method public addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 510
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 511
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->addMediaItem(ILandroidx/media3/common/MediaItem;)V

    .line 512
    return-void
.end method

.method public addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 504
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 505
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->addMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 506
    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 523
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->addMediaItems(ILjava/util/List;)V

    .line 524
    return-void
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 516
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 517
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->addMediaItems(Ljava/util/List;)V

    .line 518
    return-void
.end method

.method public clearLegacyErrorStatus()V
    .locals 1

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyError:Landroidx/media3/session/PlayerWrapper$LegacyError;

    .line 183
    return-void
.end method

.method public clearMediaItems()V
    .locals 0

    .line 528
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 529
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->clearMediaItems()V

    .line 530
    return-void
.end method

.method public clearVideoSurface()V
    .locals 0

    .line 402
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 403
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurface()V

    .line 404
    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 408
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 409
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurface(Landroid/view/Surface;)V

    .line 410
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 426
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 427
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 428
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 438
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 439
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 440
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 450
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 451
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoTextureView(Landroid/view/TextureView;)V

    .line 452
    return-void
.end method

.method public createPlaybackStateCompat()Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 28

    .line 1017
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/session/PlayerWrapper;->legacyError:Landroidx/media3/session/PlayerWrapper$LegacyError;

    .line 1018
    .local v1, "legacyError":Landroidx/media3/session/PlayerWrapper$LegacyError;
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v4, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->isFatal:Z

    if-eqz v4, :cond_0

    .line 1019
    new-instance v4, Landroid/os/Bundle;

    iget-object v5, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->extras:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1020
    .local v4, "extras":Landroid/os/Bundle;
    iget-object v5, v0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1021
    new-instance v6, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v6}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>()V

    .line 1026
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1022
    const/4 v7, 0x7

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v12}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setState(IJFJ)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v5

    .line 1027
    invoke-virtual {v5, v2, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setActions(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v5

    .line 1028
    invoke-virtual {v5, v2, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v2

    .line 1029
    invoke-virtual {v2, v4}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v2

    iget v3, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->code:I

    iget-object v5, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->message:Ljava/lang/String;

    .line 1030
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v5}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v2

    iget-object v3, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->extras:Landroid/os/Bundle;

    .line 1031
    invoke-virtual {v2, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v2

    .line 1032
    invoke-virtual {v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v2

    .line 1021
    return-object v2

    .line 1034
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v4

    .line 1035
    .local v4, "playerError":Landroidx/media3/common/PlaybackException;
    iget-boolean v5, v0, Landroidx/media3/session/PlayerWrapper;->playIfSuppressed:Z

    .line 1036
    invoke-static {v0, v5}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackStateCompatState(Landroidx/media3/common/Player;Z)I

    move-result v5

    .line 1038
    .local v5, "state":I
    const-wide/16 v6, 0x80

    .line 1039
    .local v6, "actions":J
    iget-object v8, v0, Landroidx/media3/session/PlayerWrapper;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/media3/session/MediaUtils;->intersect(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v13

    .line 1040
    .local v13, "availableCommands":Landroidx/media3/common/Player$Commands;
    const/4 v8, 0x0

    move-wide v14, v6

    .end local v6    # "actions":J
    .local v8, "i":I
    .local v14, "actions":J
    :goto_0
    invoke-virtual {v13}, Landroidx/media3/common/Player$Commands;->size()I

    move-result v6

    if-ge v8, v6, :cond_1

    .line 1041
    invoke-virtual {v13, v8}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v6

    invoke-static {v6}, Landroidx/media3/session/PlayerWrapper;->convertCommandToPlaybackStateActions(I)J

    move-result-wide v6

    or-long/2addr v14, v6

    .line 1040
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1044
    .end local v8    # "i":I
    :cond_1
    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1045
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v6

    invoke-static {v6}, Landroidx/media3/session/LegacyConversions;->convertToQueueItemId(I)J

    move-result-wide v9

    goto :goto_1

    .line 1046
    :cond_2
    const-wide/16 v9, -0x1

    :goto_1
    move-wide v11, v9

    .line 1047
    .local v11, "queueItemId":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 1048
    .local v6, "playbackSpeed":F
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_3

    move v10, v6

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    move v10, v9

    .line 1049
    .local v10, "sessionPlaybackSpeed":F
    :goto_2
    new-instance v9, Landroid/os/Bundle;

    if-eqz v1, :cond_4

    iget-object v2, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->extras:Landroid/os/Bundle;

    invoke-direct {v9, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_4
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    :goto_3
    move-object v2, v9

    .line 1050
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, v0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1051
    const-string v3, "EXO_SPEED"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1052
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object v3

    .line 1053
    .local v3, "currentMediaItem":Landroidx/media3/common/MediaItem;
    if-eqz v3, :cond_5

    const-string v9, ""

    iget-object v7, v3, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1054
    const-string v7, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    iget-object v8, v3, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_5
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v20

    .line 1058
    .local v20, "canReadPositions":Z
    if-eqz v20, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v7

    move-wide v8, v7

    goto :goto_4

    :cond_6
    const-wide/16 v8, -0x1

    .line 1059
    .local v8, "compatPosition":J
    :goto_4
    if-eqz v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getBufferedPosition()J

    move-result-wide v16

    goto :goto_5

    :cond_7
    const-wide/16 v16, 0x0

    :goto_5
    move-wide/from16 v18, v16

    .line 1060
    .local v18, "compatBufferedPosition":J
    new-instance v7, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v7}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>()V

    .line 1062
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move/from16 v21, v6

    .end local v6    # "playbackSpeed":F
    .local v21, "playbackSpeed":F
    move-object v6, v7

    move v7, v5

    move-object/from16 v23, v3

    move-object/from16 v22, v4

    move-wide v3, v11

    .end local v4    # "playerError":Landroidx/media3/common/PlaybackException;
    .end local v11    # "queueItemId":J
    .local v3, "queueItemId":J
    .local v22, "playerError":Landroidx/media3/common/PlaybackException;
    .local v23, "currentMediaItem":Landroidx/media3/common/MediaItem;
    move-wide/from16 v11, v16

    invoke-virtual/range {v6 .. v12}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setState(IJFJ)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v6

    .line 1063
    invoke-virtual {v6, v14, v15}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setActions(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v6

    .line 1064
    invoke-virtual {v6, v3, v4}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setActiveQueueItemId(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v6

    .line 1065
    move-wide/from16 v11, v18

    .end local v18    # "compatBufferedPosition":J
    .local v11, "compatBufferedPosition":J
    invoke-virtual {v6, v11, v12}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v6

    .line 1066
    invoke-virtual {v6, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v6

    .line 1070
    .local v6, "builder":Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;
    iget-object v7, v0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    goto :goto_6

    :cond_8
    iget-object v7, v0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 1071
    .local v7, "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    :goto_6
    const/16 v16, 0x0

    move-object/from16 v17, v2

    move/from16 v2, v16

    .local v2, "i":I
    .local v17, "extras":Landroid/os/Bundle;
    :goto_7
    move-wide/from16 v18, v3

    .end local v3    # "queueItemId":J
    .local v18, "queueItemId":J
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 1072
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/CommandButton;

    .line 1073
    .local v3, "commandButton":Landroidx/media3/session/CommandButton;
    iget-object v4, v3, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    .line 1074
    .local v4, "sessionCommand":Landroidx/media3/session/SessionCommand;
    if-eqz v4, :cond_c

    move/from16 v16, v5

    .end local v5    # "state":I
    .local v16, "state":I
    iget-boolean v5, v3, Landroidx/media3/session/CommandButton;->isEnabled:Z

    if-eqz v5, :cond_b

    iget v5, v4, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v5, :cond_b

    iget-object v5, v0, Landroidx/media3/session/PlayerWrapper;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    move-object/from16 v24, v7

    .end local v7    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .local v24, "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    iget-object v7, v0, Landroidx/media3/session/PlayerWrapper;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 1077
    invoke-static {v3, v5, v7}, Landroidx/media3/session/CommandButton;->isButtonCommandAvailable(Landroidx/media3/session/CommandButton;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1079
    iget-object v5, v4, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    .line 1080
    .local v5, "actionExtras":Landroid/os/Bundle;
    iget v7, v3, Landroidx/media3/session/CommandButton;->icon:I

    if-eqz v7, :cond_9

    .line 1081
    new-instance v7, Landroid/os/Bundle;

    iget-object v0, v4, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v5, v7

    .line 1082
    const-string v0, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT"

    iget v7, v3, Landroidx/media3/session/CommandButton;->icon:I

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1085
    :cond_9
    new-instance v0, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;

    iget-object v7, v4, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    move-object/from16 v25, v4

    .end local v4    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .local v25, "sessionCommand":Landroidx/media3/session/SessionCommand;
    iget-object v4, v3, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    move-wide/from16 v26, v8

    .end local v8    # "compatPosition":J
    .local v26, "compatPosition":J
    iget v8, v3, Landroidx/media3/session/CommandButton;->iconResId:I

    invoke-direct {v0, v7, v4, v8}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1088
    invoke-virtual {v0, v5}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;

    move-result-object v0

    .line 1085
    invoke-virtual {v6, v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->addCustomAction(Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    goto :goto_8

    .line 1077
    .end local v5    # "actionExtras":Landroid/os/Bundle;
    .end local v25    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .end local v26    # "compatPosition":J
    .restart local v4    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .restart local v8    # "compatPosition":J
    :cond_a
    move-object/from16 v25, v4

    move-wide/from16 v26, v8

    .end local v4    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .end local v8    # "compatPosition":J
    .restart local v25    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .restart local v26    # "compatPosition":J
    goto :goto_8

    .line 1074
    .end local v24    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .end local v25    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .end local v26    # "compatPosition":J
    .restart local v4    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .restart local v7    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .restart local v8    # "compatPosition":J
    :cond_b
    move-object/from16 v25, v4

    move-object/from16 v24, v7

    move-wide/from16 v26, v8

    .end local v4    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .end local v7    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .end local v8    # "compatPosition":J
    .restart local v24    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .restart local v25    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .restart local v26    # "compatPosition":J
    goto :goto_8

    .end local v16    # "state":I
    .end local v24    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .end local v25    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .end local v26    # "compatPosition":J
    .restart local v4    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .local v5, "state":I
    .restart local v7    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .restart local v8    # "compatPosition":J
    :cond_c
    move-object/from16 v25, v4

    move/from16 v16, v5

    move-object/from16 v24, v7

    move-wide/from16 v26, v8

    .line 1071
    .end local v3    # "commandButton":Landroidx/media3/session/CommandButton;
    .end local v4    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .end local v5    # "state":I
    .end local v7    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .end local v8    # "compatPosition":J
    .restart local v16    # "state":I
    .restart local v24    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .restart local v26    # "compatPosition":J
    :goto_8
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v16

    move-wide/from16 v3, v18

    move-object/from16 v7, v24

    move-wide/from16 v8, v26

    goto :goto_7

    .end local v16    # "state":I
    .end local v24    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .end local v26    # "compatPosition":J
    .restart local v5    # "state":I
    .restart local v7    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .restart local v8    # "compatPosition":J
    :cond_d
    move/from16 v16, v5

    move-object/from16 v24, v7

    move-wide/from16 v26, v8

    .line 1092
    .end local v2    # "i":I
    .end local v5    # "state":I
    .end local v7    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .end local v8    # "compatPosition":J
    .restart local v16    # "state":I
    .restart local v24    # "buttonsForCustomActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    .restart local v26    # "compatPosition":J
    if-eqz v22, :cond_e

    .line 1093
    nop

    .line 1094
    invoke-static/range {v22 .. v22}, Landroidx/media3/session/LegacyConversions;->convertToLegacyErrorCode(Landroidx/media3/common/PlaybackException;)I

    move-result v0

    invoke-virtual/range {v22 .. v22}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-virtual {v6, v0, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    goto :goto_9

    .line 1095
    :cond_e
    if-eqz v1, :cond_f

    .line 1096
    iget v0, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->code:I

    iget-object v2, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->message:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    .line 1098
    :cond_f
    :goto_9
    invoke-virtual {v6}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public createPlayerInfoForBundling()Landroidx/media3/session/PlayerInfo;
    .locals 36

    .line 1237
    new-instance v35, Landroidx/media3/session/PlayerInfo;

    move-object/from16 v0, v35

    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v1

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createSessionPositionInfoForBundling()Landroidx/media3/session/SessionPositionInfo;

    move-result-object v3

    .line 1241
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v4

    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v5

    .line 1244
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v7

    .line 1245
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getRepeatMode()I

    move-result v8

    .line 1246
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getShuffleModeEnabled()Z

    move-result v9

    .line 1247
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v10

    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;

    move-result-object v11

    .line 1250
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaylistMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v13

    .line 1251
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getVolumeWithCommandCheck()F

    move-result v14

    .line 1252
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getAudioAttributesWithCommandCheck()Landroidx/media3/common/AudioAttributes;

    move-result-object v15

    .line 1253
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentCuesWithCommandCheck()Landroidx/media3/common/text/CueGroup;

    move-result-object v16

    .line 1254
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v17

    .line 1255
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceVolumeWithCommandCheck()I

    move-result v18

    .line 1256
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isDeviceMutedWithCommandCheck()Z

    move-result v19

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlayWhenReady()Z

    move-result v20

    .line 1259
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackSuppressionReason()I

    move-result v22

    .line 1260
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackState()I

    move-result v23

    .line 1261
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v24

    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isLoading()Z

    move-result v25

    .line 1263
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v26

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getSeekBackIncrement()J

    move-result-wide v27

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getSeekForwardIncrement()J

    move-result-wide v29

    .line 1266
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getMaxSeekToPreviousPosition()J

    move-result-wide v31

    .line 1267
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTracksWithCommandCheck()Landroidx/media3/common/Tracks;

    move-result-object v33

    .line 1268
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v34

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v0 .. v34}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FLandroidx/media3/common/AudioAttributes;Landroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    .line 1237
    return-object v35
.end method

.method public createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;
    .locals 15

    .line 1202
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    .line 1203
    .local v0, "canAccessCurrentMediaItem":Z
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v1

    .line 1204
    .local v1, "canAccessTimeline":Z
    new-instance v14, Landroidx/media3/common/Player$PositionInfo;

    .line 1206
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v3

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1207
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v5, v3

    .line 1209
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPeriodIndex()I

    move-result v2

    :cond_2
    move v7, v2

    .line 1210
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v8

    goto :goto_2

    :cond_3
    move-wide v8, v2

    .line 1211
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getContentPosition()J

    move-result-wide v2

    :cond_4
    move-wide v10, v2

    .line 1212
    const/4 v2, -0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentAdGroupIndex()I

    move-result v3

    move v12, v3

    goto :goto_3

    :cond_5
    move v12, v2

    .line 1213
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentAdIndexInAdGroup()I

    move-result v2

    :cond_6
    move v13, v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 1204
    return-object v14
.end method

.method public createSessionPositionInfoForBundling()Landroidx/media3/session/SessionPositionInfo;
    .locals 25

    .line 1222
    const/16 v0, 0x10

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    .line 1223
    .local v0, "canAccessCurrentMediaItem":Z
    new-instance v20, Landroidx/media3/session/SessionPositionInfo;

    .line 1224
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isPlayingAd()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1226
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1227
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getDuration()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    move-wide v9, v7

    .line 1228
    :goto_1
    const-wide/16 v11, 0x0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getBufferedPosition()J

    move-result-wide v13

    goto :goto_2

    :cond_2
    move-wide v13, v11

    .line 1229
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getBufferedPercentage()I

    move-result v2

    :cond_3
    move v15, v2

    .line 1230
    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getTotalBufferedDuration()J

    move-result-wide v16

    goto :goto_3

    :cond_4
    move-wide/from16 v16, v11

    .line 1231
    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentLiveOffset()J

    move-result-wide v18

    goto :goto_4

    :cond_5
    move-wide/from16 v18, v7

    .line 1232
    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getContentDuration()J

    move-result-wide v7

    :cond_6
    move-wide/from16 v21, v7

    .line 1233
    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getContentBufferedPosition()J

    move-result-wide v7

    move-wide/from16 v23, v7

    goto :goto_5

    :cond_7
    move-wide/from16 v23, v11

    :goto_5
    move-object/from16 v2, v20

    move-wide v7, v9

    move-wide v9, v13

    move v11, v15

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    move-wide/from16 v16, v21

    move-wide/from16 v18, v23

    invoke-direct/range {v2 .. v19}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 1223
    return-object v20
.end method

.method public createVolumeProviderCompat()Landroidx/media3/session/legacy/VolumeProviderCompat;
    .locals 14

    .line 1104
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    if-nez v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    return-object v0

    .line 1107
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    .line 1108
    .local v0, "availableCommands":Landroidx/media3/common/Player$Commands;
    const/4 v1, 0x0

    .line 1109
    .local v1, "volumeControlType":I
    const/16 v2, 0x1a

    const/16 v3, 0x22

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    const/4 v1, 0x1

    .line 1112
    const/16 v2, 0x19

    const/16 v3, 0x21

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1114
    const/4 v1, 0x2

    .line 1117
    :cond_1
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1118
    .local v8, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceVolumeWithCommandCheck()I

    move-result v10

    .line 1119
    .local v10, "currentVolume":I
    const/4 v11, 0x1

    .line 1120
    .local v11, "legacyVolumeFlag":I
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v12

    .line 1121
    .local v12, "deviceInfo":Landroidx/media3/common/DeviceInfo;
    new-instance v13, Landroidx/media3/session/PlayerWrapper$1;

    iget v5, v12, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    iget-object v7, v12, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    move-object v2, v13

    move-object v3, p0

    move v4, v1

    move v6, v10

    move v9, v11

    invoke-direct/range {v2 .. v9}, Landroidx/media3/session/PlayerWrapper$1;-><init>(Landroidx/media3/session/PlayerWrapper;IIILjava/lang/String;Landroid/os/Handler;I)V

    return-object v13
.end method

.method public decreaseDeviceVolume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 848
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 849
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->decreaseDeviceVolume()V

    .line 850
    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 854
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 855
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->decreaseDeviceVolume(I)V

    .line 856
    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 456
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 457
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributesWithCommandCheck()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 461
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_0
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    .line 461
    :goto_0
    return-object v0
.end method

.method public getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 931
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 932
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public getAvailablePlayerCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    return-object v0
.end method

.method public getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 336
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 337
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 330
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 331
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 366
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 367
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    .line 354
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 355
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 360
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 361
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 378
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 379
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 384
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 385
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 773
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 774
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCuesWithCommandCheck()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 778
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    :goto_0
    return-object v0
.end method

.method public getCurrentLiveOffset()J
    .locals 2

    .line 348
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 349
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentLiveOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 978
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 979
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 692
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 693
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 723
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 724
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 698
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 984
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 985
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 314
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 315
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 652
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 653
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;
    .locals 1

    .line 657
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    return-object v0

    .line 659
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    new-instance v0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;-><init>(Landroidx/media3/session/PlayerWrapper;)V

    return-object v0

    .line 662
    :cond_1
    sget-object v0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 967
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 968
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTracksWithCommandCheck()Landroidx/media3/common/Tracks;
    .locals 1

    .line 972
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    :goto_0
    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 718
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method getCustomLayout()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    .line 783
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 784
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 789
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 790
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getDeviceVolume()I

    move-result v0

    return v0
.end method

.method public getDeviceVolumeWithCommandCheck()I
    .locals 1

    .line 794
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceVolume()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 320
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 321
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationWithCommandCheck()J
    .locals 2

    .line 325
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public getLegacyError()Landroidx/media3/session/PlayerWrapper$LegacyError;
    .locals 1

    .line 174
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyError:Landroidx/media3/session/PlayerWrapper$LegacyError;

    return-object v0
.end method

.method public getLegacyExtras()Landroid/os/Bundle;
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 955
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 956
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getMediaItemAt(I)Landroidx/media3/common/MediaItem;
    .locals 1
    .param p1, "index"    # I

    .line 709
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 710
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 703
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 704
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 915
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 916
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 920
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    :goto_0
    return-object v0
.end method

.method public getNextMediaItemIndex()I
    .locals 1

    .line 751
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 752
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getNextWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 745
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 746
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getNextWindowIndex()I

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 883
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 884
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 390
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 391
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 897
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 898
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 890
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 891
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaybackSuppressionReason()I

    move-result v0

    return v0
.end method

.method public getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    .line 200
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 201
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 667
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 668
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 672
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    goto :goto_0

    .line 674
    :cond_0
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    .line 672
    :goto_0
    return-object v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 1

    .line 737
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 738
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 731
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 732
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPreviousWindowIndex()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 679
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 680
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 278
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 279
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 290
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 291
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 685
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 686
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 1

    .line 1012
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1013
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getSurfaceSize()Landroidx/media3/common/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 342
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 343
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 937
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 938
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 1

    .line 396
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 397
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 757
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 758
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getVolume()F

    move-result v0

    return v0
.end method

.method public getVolumeWithCommandCheck()F
    .locals 1

    .line 762
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getVolume()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 573
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNextMediaItem()Z
    .locals 1

    .line 592
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 593
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public hasNextWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 580
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 581
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasNextWindow()Z

    move-result v0

    return v0
.end method

.method public hasPreviousMediaItem()Z
    .locals 1

    .line 586
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 587
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 831
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 832
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->increaseDeviceVolume()V

    .line 833
    return-void
.end method

.method public increaseDeviceVolume(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 837
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 838
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->increaseDeviceVolume(I)V

    .line 839
    return-void
.end method

.method public isCommandAvailable(I)Z
    .locals 1
    .param p1, "command"    # I

    .line 925
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 926
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->isCommandAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemDynamic()Z
    .locals 1

    .line 990
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 991
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemLive()Z
    .locals 1

    .line 996
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 997
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemLiveWithCommandCheck()Z
    .locals 1

    .line 1001
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->isCurrentMediaItemLive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentMediaItemSeekable()Z
    .locals 1

    .line 1006
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1007
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 799
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 800
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isDeviceMuted()Z

    move-result v0

    return v0
.end method

.method public isDeviceMutedWithCommandCheck()Z
    .locals 1

    .line 804
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->isDeviceMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 909
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 910
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 903
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 904
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 372
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 373
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public moveMediaItem(II)V
    .locals 0
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .line 546
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 547
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->moveMediaItem(II)V

    .line 548
    return-void
.end method

.method public moveMediaItems(III)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I

    .line 552
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 553
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->moveMediaItems(III)V

    .line 554
    return-void
.end method

.method public next()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 601
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->next()V

    .line 602
    return-void
.end method

.method public pause()V
    .locals 0

    .line 218
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 219
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->pause()V

    .line 220
    return-void
.end method

.method public play()V
    .locals 0

    .line 206
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 207
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->play()V

    .line 208
    return-void
.end method

.method public playIfCommandAvailable()V
    .locals 1

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->play()V

    .line 214
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 0

    .line 224
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 225
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->prepare()V

    .line 226
    return-void
.end method

.method public prepareIfCommandAvailable()V
    .locals 1

    .line 229
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->prepare()V

    .line 232
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 242
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 243
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->release()V

    .line 244
    return-void
.end method

.method public removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 193
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 194
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 195
    return-void
.end method

.method public removeMediaItem(I)V
    .locals 0
    .param p1, "index"    # I

    .line 534
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 535
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->removeMediaItem(I)V

    .line 536
    return-void
.end method

.method public removeMediaItems(II)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 540
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 541
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->removeMediaItems(II)V

    .line 542
    return-void
.end method

.method public replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 558
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 559
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->replaceMediaItem(ILandroidx/media3/common/MediaItem;)V

    .line 560
    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .locals 0
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

    .line 564
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 565
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->replaceMediaItems(IILjava/util/List;)V

    .line 566
    return-void
.end method

.method public seekBack()V
    .locals 0

    .line 284
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 285
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekBack()V

    .line 286
    return-void
.end method

.method public seekForward()V
    .locals 0

    .line 296
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 297
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekForward()V

    .line 298
    return-void
.end method

.method public seekTo(IJ)V
    .locals 0
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 272
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 273
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->seekTo(IJ)V

    .line 274
    return-void
.end method

.method public seekTo(J)V
    .locals 0
    .param p1, "positionMs"    # J

    .line 266
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 267
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->seekTo(J)V

    .line 268
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 0

    .line 254
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 255
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToDefaultPosition()V

    .line 256
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 0
    .param p1, "mediaItemIndex"    # I

    .line 248
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 249
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->seekToDefaultPosition(I)V

    .line 250
    return-void
.end method

.method public seekToDefaultPositionIfCommandAvailable()V
    .locals 1

    .line 259
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition()V

    .line 262
    :cond_0
    return-void
.end method

.method public seekToNext()V
    .locals 0

    .line 961
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 962
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToNext()V

    .line 963
    return-void
.end method

.method public seekToNextMediaItem()V
    .locals 0

    .line 628
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 629
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToNextMediaItem()V

    .line 630
    return-void
.end method

.method public seekToNextWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 616
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 617
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToNextWindow()V

    .line 618
    return-void
.end method

.method public seekToPrevious()V
    .locals 0

    .line 949
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 950
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToPrevious()V

    .line 951
    return-void
.end method

.method public seekToPreviousMediaItem()V
    .locals 0

    .line 622
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 623
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToPreviousMediaItem()V

    .line 624
    return-void
.end method

.method public seekToPreviousWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 608
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 609
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToPreviousWindow()V

    .line 610
    return-void
.end method

.method public setAvailableCommands(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p1, "availableSessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p2, "availablePlayerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 113
    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 114
    iput-object p2, p0, Landroidx/media3/session/PlayerWrapper;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 115
    return-void
.end method

.method public setCustomLayout(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 127
    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 0
    .param p1, "muted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 865
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 866
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setDeviceMuted(Z)V

    .line 867
    return-void
.end method

.method public setDeviceMuted(ZI)V
    .locals 0
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 871
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 872
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setDeviceMuted(ZI)V

    .line 873
    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 0
    .param p1, "volume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 814
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 815
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setDeviceVolume(I)V

    .line 816
    return-void
.end method

.method public setDeviceVolume(II)V
    .locals 0
    .param p1, "volume"    # I
    .param p2, "flags"    # I

    .line 820
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 821
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setDeviceVolume(II)V

    .line 822
    return-void
.end method

.method public setLegacyError(ZILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "isFatal"    # Z
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 168
    new-instance v6, Landroidx/media3/session/PlayerWrapper$LegacyError;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/PlayerWrapper$LegacyError;-><init>(ZILjava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/PlayerWrapper$1;)V

    iput-object v6, p0, Landroidx/media3/session/PlayerWrapper;->legacyError:Landroidx/media3/session/PlayerWrapper$LegacyError;

    .line 169
    return-void
.end method

.method public setLegacyExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 142
    const-string v0, "EXO_SPEED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 143
    const-string v0, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 144
    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    .line 145
    return-void
.end method

.method public setMediaButtonPreferences(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 131
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 468
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 469
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 470
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "startPositionMs"    # J

    .line 474
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 475
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;J)V

    .line 476
    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "resetPosition"    # Z

    .line 480
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 481
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;Z)V

    .line 482
    return-void
.end method

.method public setMediaItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 486
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 487
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setMediaItems(Ljava/util/List;)V

    .line 488
    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 0
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

    .line 498
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 499
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/common/ForwardingPlayer;->setMediaItems(Ljava/util/List;IJ)V

    .line 500
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

    .line 492
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 493
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setMediaItems(Ljava/util/List;Z)V

    .line 494
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0
    .param p1, "playWhenReady"    # Z

    .line 877
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 878
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlayWhenReady(Z)V

    .line 879
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 302
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 303
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 304
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0
    .param p1, "playbackSpeed"    # F

    .line 308
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 309
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlaybackSpeed(F)V

    .line 310
    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 634
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 635
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V

    .line 636
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .line 640
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 641
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setRepeatMode(I)V

    .line 642
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 0
    .param p1, "shuffleModeEnabled"    # Z

    .line 646
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 647
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setShuffleModeEnabled(Z)V

    .line 648
    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 943
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 944
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 945
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 414
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 415
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 416
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 420
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 421
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 422
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 432
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 433
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 434
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 444
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 445
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 446
    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .line 767
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 768
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVolume(F)V

    .line 769
    return-void
.end method

.method public stop()V
    .locals 0

    .line 236
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 237
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->stop()V

    .line 238
    return-void
.end method
