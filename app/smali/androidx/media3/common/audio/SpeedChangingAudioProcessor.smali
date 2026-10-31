.class public final Landroidx/media3/common/audio/SpeedChangingAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "SpeedChangingAudioProcessor.java"


# instance fields
.field private bytesRead:J

.field private currentSpeed:F

.field private endOfStreamQueuedToSonic:Z

.field private inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

.field private lastProcessedInputTimeUs:J

.field private lastSpeedAdjustedInputTimeUs:J

.field private lastSpeedAdjustedOutputTimeUs:J

.field private final lock:Ljava/lang/Object;

.field private outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

.field private final pendingCallbackInputTimesUs:Landroidx/media3/common/util/LongArrayQueue;

.field private final pendingCallbacks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/common/util/TimestampConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

.field private speedAdjustedTimeAsyncInputTimeUs:J

.field private final speedProvider:Landroidx/media3/common/audio/SpeedProvider;


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/SpeedProvider;)V
    .locals 2
    .param p1, "speedProvider"    # Landroidx/media3/common/audio/SpeedProvider;

    .line 94
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 95
    iput-object p1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    .line 98
    new-instance v0, Landroidx/media3/common/util/LongArrayQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/LongArrayQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->pendingCallbackInputTimesUs:Landroidx/media3/common/util/LongArrayQueue;

    .line 99
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->pendingCallbacks:Ljava/util/Queue;

    .line 100
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->speedAdjustedTimeAsyncInputTimeUs:J

    .line 101
    invoke-direct {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->resetState()V

    .line 102
    return-void
.end method

.method private calculateSpeedAdjustedTime(J)J
    .locals 11
    .param p1, "inputTimeUs"    # J

    .line 288
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 289
    .local v0, "floorIndex":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    .line 290
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 293
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 294
    iget-wide v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedInputTimeUs:J

    iget-object v3, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v3, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 295
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedInputTimeUs:J

    .line 296
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedOutputTimeUs:J

    .line 298
    :cond_1
    iget-wide v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedInputTimeUs:J

    sub-long v1, p1, v1

    .line 299
    .local v1, "lastSegmentInputDurationUs":J
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->getPlayoutDurationUsAtCurrentSpeed(J)J

    move-result-wide v1

    .line 300
    .local v1, "lastSegmentOutputDurationUs":J
    goto :goto_1

    .line 301
    .end local v1    # "lastSegmentOutputDurationUs":J
    :cond_2
    iget-wide v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedInputTimeUs:J

    sub-long v1, p1, v1

    .line 302
    .local v1, "lastSegmentInputDurationUs":J
    long-to-double v3, v1

    iget-object v5, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    add-int/lit8 v6, v0, 0x1

    .line 306
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 307
    invoke-virtual {v7, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v7, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    add-int/lit8 v8, v0, 0x1

    .line 308
    invoke-virtual {v7, v8}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v7

    iget-object v9, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 309
    invoke-virtual {v9, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 305
    invoke-static {v5, v6, v7, v8}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->divide(JJ)D

    move-result-wide v5

    mul-double/2addr v3, v5

    .line 303
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    move-wide v1, v3

    .line 311
    .local v1, "lastSegmentOutputDurationUs":J
    :goto_1
    iput-wide p1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedInputTimeUs:J

    .line 312
    iget-wide v3, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedOutputTimeUs:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedOutputTimeUs:J

    .line 313
    iget-wide v3, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedOutputTimeUs:J

    return-wide v3
.end method

.method private static divide(JJ)D
    .locals 4
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .line 317
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMediaDurationUsAtCurrentSpeed(J)J
    .locals 2
    .param p1, "playoutDurationUs"    # J

    .line 369
    invoke-direct {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->isUsingSonic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->getMediaDuration(J)J

    move-result-wide v0

    goto :goto_0

    .line 371
    :cond_0
    move-wide v0, p1

    .line 369
    :goto_0
    return-wide v0
.end method

.method private getPlayoutDurationUsAtCurrentSpeed(J)J
    .locals 2
    .param p1, "mediaDurationUs"    # J

    .line 363
    invoke-direct {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->isUsingSonic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->getPlayoutDuration(J)J

    move-result-wide v0

    goto :goto_0

    .line 365
    :cond_0
    move-wide v0, p1

    .line 363
    :goto_0
    return-wide v0
.end method

.method private static getSampleRateAlignedTimestamp(JI)J
    .locals 12
    .param p0, "timestampUs"    # J
    .param p2, "sampleRate"    # I

    .line 431
    int-to-long v2, p2

    .line 432
    const-wide/32 v4, 0xf4240

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 433
    .local v0, "exactSamplePosition":J
    const-wide/32 v8, 0xf4240

    int-to-long v10, p2

    move-wide v6, v0

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private isUsingSonic()Z
    .locals 3

    .line 398
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    iget v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->currentSpeed:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 400
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processPendingCallbacks()V
    .locals 5

    .line 321
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->pendingCallbacks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->pendingCallbackInputTimesUs:Landroidx/media3/common/util/LongArrayQueue;

    .line 323
    invoke-virtual {v1}, Landroidx/media3/common/util/LongArrayQueue;->element()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastProcessedInputTimeUs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->isEnded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->pendingCallbacks:Ljava/util/Queue;

    .line 325
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/util/TimestampConsumer;

    iget-object v2, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->pendingCallbackInputTimesUs:Landroidx/media3/common/util/LongArrayQueue;

    .line 326
    invoke-virtual {v2}, Landroidx/media3/common/util/LongArrayQueue;->remove()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->calculateSpeedAdjustedTime(J)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/media3/common/util/TimestampConsumer;->onTimestamp(J)V

    goto :goto_0

    .line 328
    :cond_1
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetState()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "inputSegmentStartTimesUs",
            "outputSegmentStartTimesUs"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "lock"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    new-instance v1, Landroidx/media3/common/util/LongArray;

    invoke-direct {v1}, Landroidx/media3/common/util/LongArray;-><init>()V

    iput-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 408
    new-instance v1, Landroidx/media3/common/util/LongArray;

    invoke-direct {v1}, Landroidx/media3/common/util/LongArray;-><init>()V

    iput-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 409
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 410
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 411
    iput-wide v2, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastProcessedInputTimeUs:J

    .line 412
    iput-wide v2, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedInputTimeUs:J

    .line 413
    iput-wide v2, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastSpeedAdjustedOutputTimeUs:J

    .line 414
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->currentSpeed:F

    .line 415
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iput-wide v2, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->bytesRead:J

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->endOfStreamQueuedToSonic:Z

    .line 423
    return-void

    .line 415
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateLastProcessedInputTime()V
    .locals 8

    .line 375
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->isUsingSonic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    .line 381
    invoke-virtual {v1}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->getProcessedInputBytes()J

    move-result-wide v2

    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-long v4, v1

    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    int-to-long v6, v1

    mul-long/2addr v6, v4

    .line 380
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    .line 384
    .local v1, "currentProcessedInputDurationUs":J
    iget-object v3, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    iget-object v4, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 385
    invoke-virtual {v4}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastProcessedInputTimeUs:J

    .line 387
    .end local v1    # "currentProcessedInputDurationUs":J
    goto :goto_0

    .line 388
    :cond_0
    iget-wide v2, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->bytesRead:J

    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-long v4, v1

    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    int-to-long v6, v1

    mul-long/2addr v6, v4

    .line 389
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastProcessedInputTimeUs:J

    .line 394
    :goto_0
    monitor-exit v0

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSpeed(FJ)V
    .locals 2
    .param p1, "newSpeed"    # F
    .param p2, "timeUs"    # J

    .line 332
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->currentSpeed:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 334
    invoke-direct {p0, p2, p3}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->updateSpeedChangeArrays(J)V

    .line 335
    iput p1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->currentSpeed:F

    .line 336
    invoke-direct {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->isUsingSonic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v1, p1}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->setSpeed(F)V

    .line 338
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v1, p1}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->setPitch(F)V

    .line 341
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v1}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->flush()V

    .line 342
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->endOfStreamQueuedToSonic:Z

    .line 343
    invoke-super {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    .line 345
    :cond_1
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSpeedChangeArrays(J)V
    .locals 9
    .param p1, "currentSpeedChangeInputTimeUs"    # J

    .line 350
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 351
    invoke-virtual {v1}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v0

    .line 352
    .local v0, "lastSpeedChangeOutputTimeUs":J
    iget-object v2, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    iget-object v3, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 353
    invoke-virtual {v3}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v2

    .line 354
    .local v2, "lastSpeedChangeInputTimeUs":J
    sub-long v4, p1, v2

    .line 356
    .local v4, "lastSpeedSegmentMediaDurationUs":J
    iget-object v6, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v6, p1, p2}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 357
    iget-object v6, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 359
    invoke-direct {p0, v4, v5}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->getPlayoutDurationUsAtCurrentSpeed(J)J

    move-result-wide v7

    add-long/2addr v7, v0

    .line 357
    invoke-virtual {v6, v7, v8}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 360
    return-void
.end method


# virtual methods
.method public getDurationAfterProcessorApplied(J)J
    .locals 2
    .param p1, "durationUs"    # J

    .line 106
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/SpeedProviderUtil;->getDurationAfterSpeedProviderApplied(Landroidx/media3/common/audio/SpeedProvider;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaDurationUs(J)J
    .locals 12
    .param p1, "playoutDurationUs"    # J

    .line 257
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 259
    .local v1, "floorIndex":I
    :goto_0
    if-lez v1, :cond_0

    iget-object v2, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    .line 260
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 262
    :cond_0
    iget-object v2, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 263
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 265
    .local v2, "lastSegmentOutputDurationUs":J
    iget-object v4, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 266
    invoke-direct {p0, v2, v3}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->getMediaDurationUsAtCurrentSpeed(J)J

    move-result-wide v4

    .local v4, "lastSegmentInputDurationUs":J
    goto :goto_1

    .line 269
    .end local v4    # "lastSegmentInputDurationUs":J
    :cond_1
    long-to-double v4, v2

    iget-object v6, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    add-int/lit8 v7, v1, 0x1

    .line 273
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v6

    iget-object v8, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 274
    invoke-virtual {v8, v1}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v8, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    add-int/lit8 v9, v1, 0x1

    .line 275
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v8

    iget-object v10, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->outputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    .line 276
    invoke-virtual {v10, v1}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 272
    invoke-static {v6, v7, v8, v9}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->divide(JJ)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 270
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 278
    .restart local v4    # "lastSegmentInputDurationUs":J
    :goto_1
    iget-object v6, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputSegmentStartTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v6, v1}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v6

    add-long/2addr v6, v4

    monitor-exit v0

    return-wide v6

    .line 279
    .end local v1    # "floorIndex":I
    .end local v2    # "lastSegmentOutputDurationUs":J
    .end local v4    # "lastSegmentInputDurationUs":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 1

    .line 191
    invoke-direct {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->isUsingSonic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 192
    .local v0, "output":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-direct {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->processPendingCallbacks()V

    .line 193
    return-object v0
.end method

.method public getSpeedAdjustedTimeAsync(JLandroidx/media3/common/util/TimestampConsumer;)V
    .locals 3
    .param p1, "inputTimeUs"    # J
    .param p3, "callback"    # Landroidx/media3/common/util/TimestampConsumer;

    .line 232
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-wide v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->speedAdjustedTimeAsyncInputTimeUs:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 234
    iput-wide p1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->speedAdjustedTimeAsyncInputTimeUs:J

    .line 235
    iget-wide v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->lastProcessedInputTimeUs:J

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->pendingCallbackInputTimesUs:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v1}, Landroidx/media3/common/util/LongArrayQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->isEnded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->calculateSpeedAdjustedTime(J)J

    move-result-wide v1

    invoke-interface {p3, v1, v2}, Landroidx/media3/common/util/TimestampConsumer;->onTimestamp(J)V

    .line 238
    monitor-exit v0

    return-void

    .line 240
    :cond_3
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->pendingCallbackInputTimesUs:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/common/util/LongArrayQueue;->add(J)V

    .line 241
    iget-object v1, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->pendingCallbacks:Ljava/util/Queue;

    invoke-interface {v1, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEnded()Z
    .locals 1

    .line 198
    invoke-super {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 1
    .param p1, "inputAudioFormat"    # Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v0, p1}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method protected onFlush()V
    .locals 1

    .line 203
    invoke-direct {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->resetState()V

    .line 204
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->flush()V

    .line 205
    return-void
.end method

.method protected onQueueEndOfStream()V
    .locals 1

    .line 183
    iget-boolean v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->endOfStreamQueuedToSonic:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->queueEndOfStream()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->endOfStreamQueuedToSonic:Z

    .line 187
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 209
    invoke-direct {p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->resetState()V

    .line 210
    iget-object v0, p0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->reset()V

    .line 211
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 19
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->bytesRead:J

    iget-object v4, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-long v4, v4

    iget-object v6, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    int-to-long v6, v6

    mul-long/2addr v6, v4

    .line 118
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 122
    .local v2, "currentTimeUs":J
    iget-object v4, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-interface {v4, v2, v3}, Landroidx/media3/common/audio/SpeedProvider;->getSpeed(J)F

    move-result v4

    .line 123
    .local v4, "newSpeed":F
    iget-object v5, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-interface {v5, v2, v3}, Landroidx/media3/common/audio/SpeedProvider;->getNextSpeedChangeTimeUs(J)J

    move-result-wide v5

    .line 124
    .local v5, "nextSpeedChangeTimeUs":J
    iget-object v7, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v7, v7, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 125
    invoke-static {v5, v6, v7}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->getSampleRateAlignedTimestamp(JI)J

    move-result-wide v7

    .line 130
    .local v7, "sampleRateAlignedNextSpeedChangeTimeUs":J
    cmp-long v9, v7, v2

    if-nez v9, :cond_0

    .line 131
    iget-object v9, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v9, v9, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 132
    const-wide/16 v10, 0x1

    invoke-static {v10, v11, v9}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v9

    .line 133
    .local v9, "sampleDuration":J
    iget-object v11, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    add-long v12, v2, v9

    invoke-interface {v11, v12, v13}, Landroidx/media3/common/audio/SpeedProvider;->getSpeed(J)F

    move-result v4

    .line 134
    iget-object v11, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    add-long v12, v2, v9

    .line 135
    invoke-interface {v11, v12, v13}, Landroidx/media3/common/audio/SpeedProvider;->getNextSpeedChangeTimeUs(J)J

    move-result-wide v5

    .line 138
    .end local v9    # "sampleDuration":J
    :cond_0
    invoke-direct {v0, v4, v2, v3}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->updateSpeed(FJ)V

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    .line 142
    .local v9, "inputBufferLimit":I
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v5, v10

    if-eqz v10, :cond_2

    .line 143
    sub-long v11, v5, v2

    iget-object v10, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v10, v10, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-long v13, v10

    iget-object v10, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v10, v10, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    move-wide/from16 v17, v2

    .end local v2    # "currentTimeUs":J
    .local v17, "currentTimeUs":J
    int-to-long v2, v10

    mul-long/2addr v13, v2

    .line 145
    const-wide/32 v15, 0xf4240

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 150
    .local v2, "bytesToNextSpeedChange":I
    iget-object v3, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    iget-object v10, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v10, v10, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    rem-int v10, v2, v10

    sub-int/2addr v3, v10

    .line 152
    .local v3, "bytesToNextFrame":I
    iget-object v10, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v10, v10, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    if-eq v3, v10, :cond_1

    .line 153
    add-int/2addr v2, v3

    .line 156
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 157
    .end local v3    # "bytesToNextFrame":I
    goto :goto_0

    .line 158
    .end local v17    # "currentTimeUs":J
    .local v2, "currentTimeUs":J
    :cond_2
    move-wide/from16 v17, v2

    .end local v2    # "currentTimeUs":J
    .restart local v17    # "currentTimeUs":J
    const/4 v2, -0x1

    .line 161
    .local v2, "bytesToNextSpeedChange":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v10, v3

    .line 162
    .local v10, "startPosition":J
    invoke-direct/range {p0 .. p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->isUsingSonic()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    iget-object v3, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v3, v1}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 164
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 165
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v12, v3

    sub-long/2addr v12, v10

    int-to-long v14, v2

    cmp-long v3, v12, v14

    if-nez v3, :cond_5

    .line 166
    iget-object v3, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->sonicAudioProcessor:Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;

    invoke-virtual {v3}, Landroidx/media3/common/audio/SynchronizedSonicAudioProcessor;->queueEndOfStream()V

    .line 167
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->endOfStreamQueuedToSonic:Z

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 171
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 172
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 174
    :cond_4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 176
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5
    :goto_1
    iget-wide v12, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->bytesRead:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v14, v3

    sub-long/2addr v14, v10

    add-long/2addr v12, v14

    iput-wide v12, v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->bytesRead:J

    .line 177
    invoke-direct/range {p0 .. p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->updateLastProcessedInputTime()V

    .line 178
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 179
    return-void
.end method
