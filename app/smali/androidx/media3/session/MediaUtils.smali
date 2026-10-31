.class final Landroidx/media3/session/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field public static final POSITION_DIFF_TOLERANCE_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "MediaUtils"

.field public static final TRANSACTION_SIZE_LIMIT_IN_BYTES:I = 0x40000

.field public static final defaultBrowserRoot:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    const-string v1, "androidx.media3.session.MediaLibraryService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Landroidx/media3/session/MediaUtils;->defaultBrowserRoot:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqualError(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/PlaybackStateCompat;)Z
    .locals 6
    .param p0, "a"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "b"    # Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 55
    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v3

    if-ne v3, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 56
    .local v3, "aHasError":Z
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v4

    if-ne v4, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 57
    .local v0, "bHasError":Z
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 58
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/session/legacy/PlaybackStateCompat;

    invoke-virtual {v4}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getErrorCode()I

    move-result v4

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/session/legacy/PlaybackStateCompat;

    invoke-virtual {v5}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getErrorCode()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 59
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/session/legacy/PlaybackStateCompat;

    invoke-virtual {v4}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/session/legacy/PlaybackStateCompat;

    invoke-virtual {v5}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 58
    :goto_2
    return v1

    .line 61
    :cond_3
    if-ne v3, v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method public static areSessionPositionInfosInSamePeriodOrAd(Landroidx/media3/session/SessionPositionInfo;Landroidx/media3/session/SessionPositionInfo;)Z
    .locals 2
    .param p0, "info1"    # Landroidx/media3/session/SessionPositionInfo;
    .param p1, "info2"    # Landroidx/media3/session/SessionPositionInfo;

    .line 222
    iget-object v0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iget-object v1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    iget-object v1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget-object v1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    iget-object v1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static calculateBufferedPercentage(JJ)I
    .locals 6
    .param p0, "bufferedPositionMs"    # J
    .param p2, "durationMs"    # J

    .line 180
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/16 v1, 0x64

    if-nez v0, :cond_1

    .line 183
    move v3, v1

    goto :goto_1

    .line 184
    :cond_1
    const-wide/16 v4, 0x64

    mul-long/2addr v4, p0

    div-long/2addr v4, p2

    long-to-int v0, v4

    invoke-static {v0, v3, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v3

    goto :goto_1

    .line 181
    :cond_2
    :goto_0
    nop

    .line 180
    :goto_1
    return v3
.end method

.method public static createPlayerCommandsWith(I)Landroidx/media3/common/Player$Commands;
    .locals 1
    .param p0, "command"    # I

    .line 102
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public static createPlayerCommandsWithout(I)Landroidx/media3/common/Player$Commands;
    .locals 1
    .param p0, "command"    # I

    .line 106
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->addAllCommands()Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/media3/common/Player$Commands$Builder;->remove(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public static generateUnshuffledIndices(I)[I
    .locals 2
    .param p0, "n"    # I

    .line 168
    new-array v0, p0, [I

    .line 169
    .local v0, "indices":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 170
    aput v1, v0, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getUpdatedCurrentPositionMs(Landroidx/media3/session/PlayerInfo;JJJ)J
    .locals 11
    .param p0, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "currentPositionMs"    # J
    .param p3, "lastSetPlayWhenReadyCalledTimeMs"    # J
    .param p5, "timeDiffMs"    # J

    .line 246
    move-object v0, p0

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->DEFAULT:Landroidx/media3/session/SessionPositionInfo;

    .line 247
    invoke-virtual {v1, v2}, Landroidx/media3/session/SessionPositionInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v1, v1, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    cmp-long v1, p3, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 249
    .local v1, "receivedUpdatedPositionInfo":Z
    :goto_1
    iget-boolean v2, v0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_4

    .line 250
    if-nez v1, :cond_3

    cmp-long v2, p1, v3

    if-nez v2, :cond_2

    goto :goto_2

    .line 253
    :cond_2
    return-wide p1

    .line 251
    :cond_3
    :goto_2
    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v2, v2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    return-wide v2

    .line 257
    :cond_4
    if-nez v1, :cond_5

    cmp-long v2, p1, v3

    if-eqz v2, :cond_5

    .line 259
    return-wide p1

    .line 263
    :cond_5
    cmp-long v2, p5, v3

    if-eqz v2, :cond_6

    .line 264
    move-wide/from16 v5, p5

    goto :goto_3

    .line 265
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v7, v2, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    sub-long/2addr v5, v7

    :goto_3
    nop

    .line 266
    .local v5, "elapsedTimeMs":J
    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v7, v2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    long-to-float v2, v5

    iget-object v9, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v9, v9, Landroidx/media3/common/PlaybackParameters;->speed:F

    mul-float/2addr v2, v9

    float-to-long v9, v2

    add-long/2addr v7, v9

    .line 269
    .local v7, "estimatedPositionMs":J
    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v9, v2, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    cmp-long v2, v9, v3

    if-eqz v2, :cond_7

    .line 270
    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v2, v2, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 272
    :cond_7
    return-wide v7
.end method

.method public static intersect(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;
    .locals 3
    .param p0, "commands1"    # Landroidx/media3/common/Player$Commands;
    .param p1, "commands2"    # Landroidx/media3/common/Player$Commands;

    .line 114
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 118
    .local v0, "intersectCommandsBuilder":Landroidx/media3/common/Player$Commands$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Player$Commands;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 119
    invoke-virtual {p0, v1}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {p0, v1}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 118
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v1

    return-object v1

    .line 115
    .end local v0    # "intersectCommandsBuilder":Landroidx/media3/common/Player$Commands$Builder;
    :cond_3
    :goto_1
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    return-object v0
.end method

.method public static mergePlayerInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/common/Player$Commands;)Landroid/util/Pair;
    .locals 5
    .param p0, "oldPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "oldBundlingExclusions"    # Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    .param p2, "newPlayerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p3, "newBundlingExclusions"    # Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    .param p4, "availablePlayerCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/PlayerInfo;",
            "Landroidx/media3/session/PlayerInfo$BundlingExclusions;",
            "Landroidx/media3/session/PlayerInfo;",
            "Landroidx/media3/session/PlayerInfo$BundlingExclusions;",
            "Landroidx/media3/common/Player$Commands;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/session/PlayerInfo;",
            "Landroidx/media3/session/PlayerInfo$BundlingExclusions;",
            ">;"
        }
    .end annotation

    .line 143
    move-object v0, p2

    .line 144
    .local v0, "mergedPlayerInfo":Landroidx/media3/session/PlayerInfo;
    move-object v1, p3

    .line 145
    .local v1, "mergedBundlingExclusions":Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    iget-boolean v2, p3, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 146
    const/16 v2, 0x11

    invoke-virtual {p4, v2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    if-nez v2, :cond_0

    .line 149
    iget-object v2, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 150
    new-instance v2, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    iget-boolean v4, v1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    invoke-direct {v2, v3, v4}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    move-object v1, v2

    .line 154
    :cond_0
    iget-boolean v2, p3, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    if-eqz v2, :cond_1

    .line 155
    const/16 v2, 0x1e

    invoke-virtual {p4, v2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    if-nez v2, :cond_1

    .line 158
    iget-object v2, p0, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithCurrentTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 159
    new-instance v2, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    iget-boolean v4, v1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    invoke-direct {v2, v4, v3}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    move-object v1, v2

    .line 163
    :cond_1
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static removeNullElements(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    return-object v0
.end method

.method public static setMediaItemsWithStartIndexAndPosition(Landroidx/media3/common/Player;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V
    .locals 4
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "mediaItemsWithStartPosition"    # Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    .line 196
    iget v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-ne v0, v1, :cond_1

    .line 197
    invoke-interface {p0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0, v0, v1}, Landroidx/media3/common/Player;->setMediaItems(Ljava/util/List;Z)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 201
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    .line 200
    invoke-interface {p0, v0, v1}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;Z)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-interface {p0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    iget v1, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startIndex:I

    iget-wide v2, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startPositionMs:J

    invoke-interface {p0, v0, v1, v2, v3}, Landroidx/media3/common/Player;->setMediaItems(Ljava/util/List;IJ)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 210
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    iget-wide v1, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startPositionMs:J

    .line 209
    invoke-interface {p0, v0, v1, v2}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;J)V

    .line 213
    :cond_3
    :goto_0
    return-void
.end method

.method public static truncateListBySize(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p1, "sizeLimitInBytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 71
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 74
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 76
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 77
    .local v3, "item":Landroid/os/Parcelable;, "TT;"
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 79
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    nop

    .end local v3    # "item":Landroid/os/Parcelable;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 86
    nop

    .line 87
    return-object v0

    .line 85
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 86
    throw v2
.end method
