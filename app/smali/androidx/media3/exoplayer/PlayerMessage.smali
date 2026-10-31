.class public final Landroidx/media3/exoplayer/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/PlayerMessage$Sender;,
        Landroidx/media3/exoplayer/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field private final clock:Landroidx/media3/common/util/Clock;

.field private deleteAfterDelivery:Z

.field private isCanceled:Z

.field private isDelivered:Z

.field private isProcessed:Z

.field private isSent:Z

.field private looper:Landroid/os/Looper;

.field private mediaItemIndex:I

.field private payload:Ljava/lang/Object;

.field private positionMs:J

.field private final sender:Landroidx/media3/exoplayer/PlayerMessage$Sender;

.field private final target:Landroidx/media3/exoplayer/PlayerMessage$Target;

.field private final timeline:Landroidx/media3/common/Timeline;

.field private type:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/PlayerMessage$Sender;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroidx/media3/common/util/Clock;Landroid/os/Looper;)V
    .locals 2
    .param p1, "sender"    # Landroidx/media3/exoplayer/PlayerMessage$Sender;
    .param p2, "target"    # Landroidx/media3/exoplayer/PlayerMessage$Target;
    .param p3, "timeline"    # Landroidx/media3/common/Timeline;
    .param p4, "defaultMediaItemIndex"    # I
    .param p5, "clock"    # Landroidx/media3/common/util/Clock;
    .param p6, "defaultLooper"    # Landroid/os/Looper;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->sender:Landroidx/media3/exoplayer/PlayerMessage$Sender;

    .line 102
    iput-object p2, p0, Landroidx/media3/exoplayer/PlayerMessage;->target:Landroidx/media3/exoplayer/PlayerMessage$Target;

    .line 103
    iput-object p3, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    .line 104
    iput-object p6, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    .line 105
    iput-object p5, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    .line 106
    iput p4, p0, Landroidx/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    .line 107
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    .line 109
    return-void
.end method


# virtual methods
.method public declared-synchronized blockUntilDelivered()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 322
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 323
    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 324
    :goto_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isProcessed:Z

    if-nez v0, :cond_1

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 327
    .end local p0    # "this":Landroidx/media3/exoplayer/PlayerMessage;
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blockUntilDelivered(J)Z
    .locals 6
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 349
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 350
    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 352
    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 353
    .local v0, "deadlineMs":J
    move-wide v2, p1

    .line 354
    .local v2, "remainingMs":J
    :goto_1
    iget-boolean v4, p0, Landroidx/media3/exoplayer/PlayerMessage;->isProcessed:Z

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 355
    iget-object v4, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v4}, Landroidx/media3/common/util/Clock;->onThreadBlocked()V

    .line 356
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 357
    iget-object v4, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v4}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v0, v4

    goto :goto_1

    .line 359
    .end local p0    # "this":Landroidx/media3/exoplayer/PlayerMessage;
    :cond_1
    iget-boolean v4, p0, Landroidx/media3/exoplayer/PlayerMessage;->isProcessed:Z

    if-eqz v4, :cond_2

    .line 362
    iget-boolean v4, p0, Landroidx/media3/exoplayer/PlayerMessage;->isDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    .line 360
    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    const-string v5, "Message delivery timed out."

    invoke-direct {v4, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 348
    .end local v0    # "deadlineMs":J
    .end local v2    # "remainingMs":J
    .end local p1    # "timeoutMs":J
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized cancel()Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1

    monitor-enter p0

    .line 282
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-object p0

    .line 281
    .end local p0    # "this":Landroidx/media3/exoplayer/PlayerMessage;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeleteAfterDelivery()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    return-object v0
.end method

.method public getMediaItemIndex()I
    .locals 1

    .line 232
    iget v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    return v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionMs()J
    .locals 2

    .line 186
    iget-wide v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public getTarget()Landroidx/media3/exoplayer/PlayerMessage$Target;
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->target:Landroidx/media3/exoplayer/PlayerMessage$Target;

    return-object v0
.end method

.method public getTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 137
    iget v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    return v0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    monitor-enter p0

    .line 290
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 290
    .end local p0    # "this":Landroidx/media3/exoplayer/PlayerMessage;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized markAsProcessed(Z)V
    .locals 1
    .param p1, "isDelivered"    # Z

    monitor-enter p0

    .line 302
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isDelivered:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isDelivered:Z

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isProcessed:Z

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 301
    .end local p0    # "this":Landroidx/media3/exoplayer/PlayerMessage;
    .end local p1    # "isDelivered":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public send()Landroidx/media3/exoplayer/PlayerMessage;
    .locals 6

    .line 265
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 266
    iget-wide v2, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 267
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 269
    :cond_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    .line 270
    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->sender:Landroidx/media3/exoplayer/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/PlayerMessage$Sender;->sendMessage(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 271
    return-object p0
.end method

.method public setDeleteAfterDelivery(Z)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1
    .param p1, "deleteAfterDelivery"    # Z

    .line 246
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 247
    iput-boolean p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    .line 248
    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 169
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 170
    iput-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    .line 171
    return-object p0
.end method

.method public setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1
    .param p1, "payload"    # Ljava/lang/Object;

    .line 149
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 150
    iput-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->payload:Ljava/lang/Object;

    .line 151
    return-object p0
.end method

.method public setPosition(IJ)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 4
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 219
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 220
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 221
    if-ltz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    .line 222
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 225
    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    .line 226
    iput-wide p2, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    .line 227
    return-object p0

    .line 223
    :cond_2
    new-instance v0, Landroidx/media3/common/IllegalSeekPositionException;

    iget-object v1, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    invoke-direct {v0, v1, p1, p2, p3}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Landroidx/media3/common/Timeline;IJ)V

    throw v0
.end method

.method public setPosition(J)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1
    .param p1, "positionMs"    # J

    .line 200
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 201
    iput-wide p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    .line 202
    return-object p0
.end method

.method public setType(I)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1
    .param p1, "messageType"    # I

    .line 130
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 131
    iput p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    .line 132
    return-object p0
.end method
