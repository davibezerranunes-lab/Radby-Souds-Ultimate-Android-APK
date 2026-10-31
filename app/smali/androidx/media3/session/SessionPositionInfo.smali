.class final Landroidx/media3/session/SessionPositionInfo;
.super Ljava/lang/Object;
.source "SessionPositionInfo.java"


# static fields
.field public static final DEFAULT:Landroidx/media3/session/SessionPositionInfo;

.field public static final DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

.field private static final FIELD_BUFFERED_PERCENTAGE:Ljava/lang/String;

.field static final FIELD_BUFFERED_POSITION_MS:Ljava/lang/String;

.field static final FIELD_CONTENT_BUFFERED_POSITION_MS:Ljava/lang/String;

.field private static final FIELD_CONTENT_DURATION_MS:Ljava/lang/String;

.field private static final FIELD_CURRENT_LIVE_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_DURATION_MS:Ljava/lang/String;

.field private static final FIELD_EVENT_TIME_MS:Ljava/lang/String;

.field private static final FIELD_IS_PLAYING_AD:Ljava/lang/String;

.field static final FIELD_POSITION_INFO:Ljava/lang/String;

.field private static final FIELD_TOTAL_BUFFERED_DURATION_MS:Ljava/lang/String;


# instance fields
.field public final bufferedPercentage:I

.field public final bufferedPositionMs:J

.field public final contentBufferedPositionMs:J

.field public final contentDurationMs:J

.field public final currentLiveOffsetMs:J

.field public final durationMs:J

.field public final eventTimeMs:J

.field public final isPlayingAd:Z

.field public final positionInfo:Landroidx/media3/common/Player$PositionInfo;

.field public final totalBufferedDurationMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 37
    new-instance v12, Landroidx/media3/common/Player$PositionInfo;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    sput-object v12, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    .line 48
    new-instance v0, Landroidx/media3/session/SessionPositionInfo;

    move-object v13, v0

    sget-object v14, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v29, 0x0

    const/4 v15, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v13 .. v30}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->DEFAULT:Landroidx/media3/session/SessionPositionInfo;

    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_POSITION_INFO:Ljava/lang/String;

    .line 160
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_IS_PLAYING_AD:Ljava/lang/String;

    .line 161
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_EVENT_TIME_MS:Ljava/lang/String;

    .line 162
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_DURATION_MS:Ljava/lang/String;

    .line 163
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_POSITION_MS:Ljava/lang/String;

    .line 164
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_PERCENTAGE:Ljava/lang/String;

    .line 165
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_TOTAL_BUFFERED_DURATION_MS:Ljava/lang/String;

    .line 166
    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_CURRENT_LIVE_OFFSET_MS:Ljava/lang/String;

    .line 167
    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_DURATION_MS:Ljava/lang/String;

    .line 170
    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_BUFFERED_POSITION_MS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V
    .locals 16
    .param p1, "positionInfo"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "isPlayingAd"    # Z
    .param p3, "eventTimeMs"    # J
    .param p5, "durationMs"    # J
    .param p7, "bufferedPositionMs"    # J
    .param p9, "bufferedPercentage"    # I
    .param p10, "totalBufferedDurationMs"    # J
    .param p12, "currentLiveOffsetMs"    # J
    .param p14, "contentDurationMs"    # J
    .param p16, "contentBufferedPositionMs"    # J

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iget v3, v1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 84
    iput-object v1, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 85
    iput-boolean v2, v0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    .line 86
    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    .line 87
    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    .line 88
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    .line 89
    move/from16 v9, p9

    iput v9, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    .line 90
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    .line 91
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    .line 92
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    .line 93
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    .line 94
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionPositionInfo;
    .locals 37
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 239
    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_POSITION_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 241
    .local v1, "positionInfoBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 242
    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    move-object v4, v2

    goto :goto_0

    .line 243
    :cond_0
    invoke-static {v1}, Landroidx/media3/common/Player$PositionInfo;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v2

    move-object v4, v2

    :goto_0
    nop

    .line 244
    .local v4, "positionInfo":Landroidx/media3/common/Player$PositionInfo;
    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->FIELD_IS_PLAYING_AD:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "isPlayingAd":Z
    move v5, v2

    .line 245
    sget-object v6, Landroidx/media3/session/SessionPositionInfo;->FIELD_EVENT_TIME_MS:Ljava/lang/String;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v6, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .local v21, "eventTimeMs":J
    move-wide/from16 v6, v21

    .line 246
    sget-object v8, Landroidx/media3/session/SessionPositionInfo;->FIELD_DURATION_MS:Ljava/lang/String;

    invoke-virtual {v0, v8, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    .local v23, "durationMs":J
    move-wide/from16 v8, v23

    .line 247
    sget-object v10, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_POSITION_MS:Ljava/lang/String;

    const-wide/16 v11, 0x0

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v25

    .local v25, "bufferedPositionMs":J
    move-wide/from16 v10, v25

    .line 248
    sget-object v12, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_PERCENTAGE:Ljava/lang/String;

    invoke-virtual {v0, v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v29

    .local v29, "bufferedPercentage":I
    move/from16 v12, v29

    .line 249
    sget-object v3, Landroidx/media3/session/SessionPositionInfo;->FIELD_TOTAL_BUFFERED_DURATION_MS:Ljava/lang/String;

    .line 250
    move-object/from16 v30, v1

    move/from16 v31, v2

    const-wide/16 v1, 0x0

    .end local v1    # "positionInfoBundle":Landroid/os/Bundle;
    .end local v2    # "isPlayingAd":Z
    .local v30, "positionInfoBundle":Landroid/os/Bundle;
    .local v31, "isPlayingAd":Z
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v27

    move-wide v1, v13

    .local v27, "totalBufferedDurationMs":J
    move-wide/from16 v13, v27

    .line 251
    sget-object v3, Landroidx/media3/session/SessionPositionInfo;->FIELD_CURRENT_LIVE_OFFSET_MS:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    .local v32, "currentLiveOffsetMs":J
    move-wide/from16 v15, v32

    .line 253
    sget-object v3, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_DURATION_MS:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .local v1, "contentDurationMs":J
    move-wide/from16 v17, v1

    .line 255
    sget-object v3, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_BUFFERED_POSITION_MS:Ljava/lang/String;

    .line 256
    move-wide/from16 v34, v1

    const-wide/16 v1, 0x0

    .end local v1    # "contentDurationMs":J
    .local v34, "contentDurationMs":J
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .local v1, "contentBufferedPositionMs":J
    move-wide/from16 v19, v1

    .line 258
    new-instance v36, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v3, v36

    invoke-direct/range {v3 .. v20}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    return-object v36
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 98
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 99
    return v0

    .line 101
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/session/SessionPositionInfo;

    .line 105
    .local v2, "other":Landroidx/media3/session/SessionPositionInfo;
    iget-wide v3, p0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    iget-wide v5, v2, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v4, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 106
    invoke-virtual {v3, v4}, Landroidx/media3/common/Player$PositionInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    iget-boolean v4, v2, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    iget-wide v5, v2, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    iget-wide v5, v2, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    iget v4, v2, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    iget-wide v5, v2, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    iget-wide v5, v2, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    iget-wide v5, v2, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    iget-wide v5, v2, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 105
    :goto_0
    return v0

    .line 102
    .end local v2    # "other":Landroidx/media3/session/SessionPositionInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public filterByAvailableCommands(ZZ)Landroidx/media3/session/SessionPositionInfo;
    .locals 26
    .param p1, "canAccessCurrentMediaItem"    # Z
    .param p2, "canAccessTimeline"    # Z

    .line 186
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 187
    return-object v0

    .line 189
    :cond_0
    new-instance v21, Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 190
    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/Player$PositionInfo;->filterByAvailableCommands(ZZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v5, v0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    iget-wide v6, v0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    .line 193
    if-eqz v1, :cond_2

    iget-wide v10, v0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    goto :goto_1

    :cond_2
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 194
    :goto_1
    const-wide/16 v12, 0x0

    if-eqz v1, :cond_3

    iget-wide v14, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    goto :goto_2

    :cond_3
    move-wide v14, v12

    .line 195
    :goto_2
    if-eqz v1, :cond_4

    iget v3, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    :cond_4
    move/from16 v16, v3

    .line 196
    if-eqz v1, :cond_5

    iget-wide v8, v0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    move-wide/from16 v19, v8

    goto :goto_3

    :cond_5
    move-wide/from16 v19, v12

    .line 197
    :goto_3
    if-eqz v1, :cond_6

    iget-wide v8, v0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    move-wide/from16 v22, v8

    goto :goto_4

    :cond_6
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 198
    :goto_4
    if-eqz v1, :cond_7

    iget-wide v8, v0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    move-wide/from16 v17, v8

    goto :goto_5

    :cond_7
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 199
    :goto_5
    if-eqz v1, :cond_8

    iget-wide v8, v0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    move-wide/from16 v24, v8

    goto :goto_6

    :cond_8
    move-wide/from16 v24, v12

    :goto_6
    move-object/from16 v3, v21

    move-wide v8, v10

    move-wide v10, v14

    move/from16 v12, v16

    move-wide/from16 v13, v19

    move-wide/from16 v15, v22

    move-wide/from16 v19, v24

    invoke-direct/range {v3 .. v20}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 189
    return-object v21
.end method

.method public hashCode()I
    .locals 2

    .line 119
    iget-object v0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-boolean v1, p0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle(I)Landroid/os/Bundle;
    .locals 9
    .param p1, "controllerInterfaceVersion"    # I

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    iget-object v3, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Player$PositionInfo;->equalsForBundling(Landroidx/media3/common/Player$PositionInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    :cond_0
    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->FIELD_POSITION_INFO:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v3, p1}, Landroidx/media3/common/Player$PositionInfo;->toBundle(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 207
    :cond_1
    iget-boolean v2, p0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    if-eqz v2, :cond_2

    .line 208
    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->FIELD_IS_PLAYING_AD:Ljava/lang/String;

    iget-boolean v3, p0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    :cond_2
    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 211
    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->FIELD_EVENT_TIME_MS:Ljava/lang/String;

    iget-wide v6, p0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    :cond_3
    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 214
    sget-object v2, Landroidx/media3/session/SessionPositionInfo;->FIELD_DURATION_MS:Ljava/lang/String;

    iget-wide v6, p0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 216
    :cond_4
    const-wide/16 v2, 0x0

    if-lt p1, v1, :cond_5

    iget-wide v6, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_6

    .line 217
    :cond_5
    sget-object v6, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_POSITION_MS:Ljava/lang/String;

    iget-wide v7, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 219
    :cond_6
    iget v6, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    if-eqz v6, :cond_7

    .line 220
    sget-object v6, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_PERCENTAGE:Ljava/lang/String;

    iget v7, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    :cond_7
    iget-wide v6, p0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_8

    .line 223
    sget-object v6, Landroidx/media3/session/SessionPositionInfo;->FIELD_TOTAL_BUFFERED_DURATION_MS:Ljava/lang/String;

    iget-wide v7, p0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 225
    :cond_8
    iget-wide v6, p0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_9

    .line 226
    sget-object v6, Landroidx/media3/session/SessionPositionInfo;->FIELD_CURRENT_LIVE_OFFSET_MS:Ljava/lang/String;

    iget-wide v7, p0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 228
    :cond_9
    iget-wide v6, p0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_a

    .line 229
    sget-object v4, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_DURATION_MS:Ljava/lang/String;

    iget-wide v5, p0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 231
    :cond_a
    if-lt p1, v1, :cond_b

    iget-wide v4, p0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_c

    .line 232
    :cond_b
    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_BUFFERED_POSITION_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 234
    :cond_c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionPositionInfo {PositionInfo {mediaItemIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", periodIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v1, v1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentPositionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v1, v1, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adGroupIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adIndexInAdGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, isPlayingAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferedPositionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferedPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalBufferedDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentLiveOffsetMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentBufferedPositionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
