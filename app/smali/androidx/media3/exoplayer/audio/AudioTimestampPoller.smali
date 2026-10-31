.class final Landroidx/media3/exoplayer/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;
    }
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_US:I = 0x7a120

.field private static final FAST_POLL_INTERVAL_US:I = 0x2710

.field private static final INITIALIZING_DURATION_US:I = 0x7a120

.field private static final SLOW_POLL_INTERVAL_US:I = 0x989680

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_INITIALIZING:I = 0x0

.field private static final STATE_NO_TIMESTAMP:I = 0x3

.field private static final STATE_TIMESTAMP:I = 0x1

.field private static final STATE_TIMESTAMP_ADVANCING:I = 0x2


# instance fields
.field private final audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

.field private initialTimestampPositionFrames:J

.field private initializeSystemTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private sampleIntervalUs:J

.field private state:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 1
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 109
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 110
    return-void
.end method

.method private updateState(I)V
    .locals 6
    .param p1, "state"    # I

    .line 250
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    .line 251
    const-wide/16 v0, 0x2710

    packed-switch p1, :pswitch_data_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 267
    :pswitch_0
    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 268
    goto :goto_0

    .line 264
    :pswitch_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 265
    goto :goto_0

    .line 260
    :pswitch_2
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 261
    goto :goto_0

    .line 254
    :pswitch_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 255
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 256
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 257
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 258
    nop

    .line 272
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptTimestamp()V
    .locals 2

    .line 192
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 195
    :cond_0
    return-void
.end method

.method public expectTimestampFramePositionReset()V
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset()V

    .line 247
    :cond_0
    return-void
.end method

.method public getTimestampPositionFrames()J
    .locals 2

    .line 236
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .locals 2

    .line 228
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public hasAdvancingTimestamp()Z
    .locals 2

    .line 213
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 3

    .line 203
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public maybePollTimestamp(J)Z
    .locals 5
    .param p1, "systemTimeUs"    # J

    .line 123
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 127
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->maybeUpdateTimestamp()Z

    move-result v0

    .line 128
    .local v0, "updatedTimestamp":Z
    iget v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    packed-switch v1, :pswitch_data_0

    .line 173
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 171
    :pswitch_0
    goto :goto_0

    .line 164
    :pswitch_1
    if-eqz v0, :cond_5

    .line 166
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    .line 158
    :pswitch_2
    if-nez v0, :cond_5

    .line 160
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    .line 148
    :pswitch_3
    if-eqz v0, :cond_2

    .line 149
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v1

    .line 150
    .local v1, "timestampPositionFrames":J
    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 151
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 153
    .end local v1    # "timestampPositionFrames":J
    :cond_1
    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 156
    goto :goto_0

    .line 130
    :pswitch_4
    if-eqz v0, :cond_4

    .line 131
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 133
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 134
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    .line 137
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_4
    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 144
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 175
    :cond_5
    :goto_0
    return v0

    .line 124
    .end local v0    # "updatedTimestamp":Z
    :cond_6
    :goto_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public rejectTimestamp()V
    .locals 1

    .line 184
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 185
    return-void
.end method

.method public reset()V
    .locals 1

    .line 218
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 221
    :cond_0
    return-void
.end method
