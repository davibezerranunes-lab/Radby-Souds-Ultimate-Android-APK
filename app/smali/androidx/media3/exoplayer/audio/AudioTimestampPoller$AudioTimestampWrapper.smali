.class final Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioTimestampPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioTimestampWrapper"
.end annotation


# instance fields
.field private accumulatedRawTimestampFramePosition:J

.field private final audioTimestamp:Landroid/media/AudioTimestamp;

.field private final audioTrack:Landroid/media/AudioTrack;

.field private expectTimestampFramePositionReset:Z

.field private lastTimestampPositionFrames:J

.field private lastTimestampRawPositionFrames:J

.field private rawTimestampFramePositionWrapCount:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 1
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTrack:Landroid/media/AudioTrack;

    .line 302
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    .line 303
    return-void
.end method


# virtual methods
.method public expectTimestampFramePositionReset()V
    .locals 1

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset:Z

    .line 343
    return-void
.end method

.method public getTimestampPositionFrames()J
    .locals 2

    .line 338
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampPositionFrames:J

    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .locals 4

    .line 334
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public maybeUpdateTimestamp()Z
    .locals 8

    .line 312
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    .line 313
    .local v0, "updated":Z
    if-eqz v0, :cond_2

    .line 314
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v1, v1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 315
    .local v1, "rawPositionFrames":J
    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampRawPositionFrames:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_1

    .line 316
    iget-boolean v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset:Z

    if-eqz v3, :cond_0

    .line 317
    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->accumulatedRawTimestampFramePosition:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampRawPositionFrames:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->accumulatedRawTimestampFramePosition:J

    .line 318
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset:Z

    goto :goto_0

    .line 321
    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->rawTimestampFramePositionWrapCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->rawTimestampFramePositionWrapCount:J

    .line 324
    :cond_1
    :goto_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampRawPositionFrames:J

    .line 325
    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->accumulatedRawTimestampFramePosition:J

    add-long/2addr v3, v1

    iget-wide v5, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->rawTimestampFramePositionWrapCount:J

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampPositionFrames:J

    .line 330
    .end local v1    # "rawPositionFrames":J
    :cond_2
    return v0
.end method
