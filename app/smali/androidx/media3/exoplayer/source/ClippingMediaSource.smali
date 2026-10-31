.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;,
        Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
    }
.end annotation


# instance fields
.field private final allowDynamicClippingUpdates:Z

.field private clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field private clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

.field private final enableInitialDiscontinuity:Z

.field private final endUs:J

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private periodEndUs:J

.field private periodStartUs:J

.field private final relativeToDefaultPosition:Z

.field private final startUs:J

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;J)V
    .locals 9
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "durationUs"    # J

    .line 144
    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJZZZ)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V
    .locals 9
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "startPositionUs"    # J
    .param p4, "endPositionUs"    # J

    .line 125
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJZZZ)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;JJZZZ)V
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "startPositionUs"    # J
    .param p4, "endPositionUs"    # J
    .param p6, "enableInitialDiscontinuity"    # Z
    .param p7, "allowDynamicClippingUpdates"    # Z
    .param p8, "relativeToDefaultPosition"    # Z

    .line 193
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 194
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 195
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->startUs:J

    .line 196
    iput-wide p4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    .line 197
    iput-boolean p6, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    .line 198
    iput-boolean p7, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    .line 199
    iput-boolean p8, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    .line 202
    return-void
.end method

.method private refreshClippedTimeline(Landroidx/media3/common/Timeline;)V
    .locals 16
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;

    .line 257
    move-object/from16 v1, p0

    const/4 v0, 0x0

    iget-object v2, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    move-object/from16 v9, p1

    invoke-virtual {v9, v0, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 258
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v10

    .line 259
    .local v10, "windowPositionInPeriodUs":J
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 278
    :cond_0
    iget-wide v4, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    sub-long/2addr v4, v10

    .line 280
    .local v4, "windowStartUs":J
    iget-wide v6, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_1

    .line 281
    goto :goto_0

    .line 282
    :cond_1
    iget-wide v2, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    sub-long/2addr v2, v10

    :goto_0
    move-wide v12, v2

    move-wide v14, v4

    .local v2, "windowEndUs":J
    goto :goto_4

    .line 260
    .end local v2    # "windowEndUs":J
    .end local v4    # "windowStartUs":J
    :cond_2
    :goto_1
    iget-wide v4, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->startUs:J

    .line 261
    .restart local v4    # "windowStartUs":J
    iget-wide v6, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    .line 262
    .local v6, "windowEndUs":J
    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v12

    .line 264
    .local v12, "windowDefaultPositionUs":J
    add-long/2addr v4, v12

    .line 265
    add-long/2addr v6, v12

    .line 267
    .end local v12    # "windowDefaultPositionUs":J
    :cond_3
    add-long v12, v10, v4

    iput-wide v12, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    .line 268
    nop

    .line 269
    iget-wide v12, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v12, v2

    if-nez v0, :cond_4

    .line 270
    goto :goto_2

    .line 271
    :cond_4
    add-long v2, v10, v6

    :goto_2
    iput-wide v2, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    .line 272
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 273
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_5

    .line 274
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v12, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v14, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    invoke-virtual {v3, v12, v13, v14, v15}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->updateClipping(JJ)V

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 276
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_5
    move-wide v14, v4

    move-wide v12, v6

    .line 285
    .end local v4    # "windowStartUs":J
    .end local v6    # "windowEndUs":J
    .local v12, "windowEndUs":J
    .local v14, "windowStartUs":J
    :goto_4
    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    move-object v3, v0

    move-object/from16 v4, p1

    move-wide v5, v14

    move-wide v7, v12

    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;-><init>(Landroidx/media3/common/Timeline;JJ)V

    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    nop

    .line 295
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    .line 296
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;
    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 290
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 291
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v4, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->setClippingError(Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;)V

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 293
    .end local v2    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 206
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 207
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0
.end method

.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 8
    .param p1, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 220
    new-instance v7, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 222
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    .line 226
    .local v0, "mediaPeriod":Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    .line 215
    invoke-super {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 216
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    throw v0
.end method

.method protected onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
    .locals 1
    .param p1, "newTimeline"    # Landroidx/media3/common/Timeline;

    .line 248
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->refreshClippedTimeline(Landroidx/media3/common/Timeline;)V

    .line 252
    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 232
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 233
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 234
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->refreshClippedTimeline(Landroidx/media3/common/Timeline;)V

    .line 237
    :cond_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 1

    .line 241
    invoke-super {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->releaseSourceInternal()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 243
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    .line 244
    return-void
.end method
