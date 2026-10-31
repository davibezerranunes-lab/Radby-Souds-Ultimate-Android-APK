.class final Landroidx/media3/session/QueueTimeline$QueuedMediaItem;
.super Ljava/lang/Object;
.source "QueueTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/QueueTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueuedMediaItem"
.end annotation


# instance fields
.field public final durationMs:J

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final queueId:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;JJ)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "queueId"    # J
    .param p4, "durationMs"    # J

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 284
    iput-wide p2, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->queueId:J

    .line 285
    iput-wide p4, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->durationMs:J

    .line 286
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 290
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 291
    return v0

    .line 293
    :cond_0
    instance-of v1, p1, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 294
    return v2

    .line 296
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    .line 297
    .local v1, "that":Landroidx/media3/session/QueueTimeline$QueuedMediaItem;
    iget-wide v3, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->queueId:J

    iget-wide v5, v1, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->queueId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v4, v1, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 298
    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->durationMs:J

    iget-wide v5, v1, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->durationMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 297
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 304
    const/4 v0, 0x7

    .line 305
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->queueId:J

    iget-wide v4, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->queueId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 306
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 307
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->durationMs:J

    iget-wide v4, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->durationMs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 308
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
