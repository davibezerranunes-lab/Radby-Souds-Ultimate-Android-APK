.class public Landroidx/media3/exoplayer/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Landroidx/media3/exoplayer/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;,
        Landroidx/media3/exoplayer/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUDIO_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_BACK_BUFFER_DURATION_MS:I = 0x0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_CAMERA_MOTION_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_IMAGE_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_METADATA_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_MIN_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_MUXED_BUFFER_SIZE:I = 0x89a0000

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = false

.field public static final DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME:Z = false

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1

.field public static final DEFAULT_TEXT_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_VIDEO_BUFFER_SIZE:I = 0x7d00000


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field private final backBufferDurationUs:J

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private final loadingStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBufferUs:J

.field private final minBufferUs:J

.field private final prioritizeTimeOverSizeThresholds:Z

.field private final retainBackBufferFromKeyframe:Z

.field private final targetBufferBytesOverwrite:I

.field private threadId:J


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 279
    new-instance v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v2, 0xc350

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V

    .line 289
    return-void
.end method

.method protected constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V
    .locals 5
    .param p1, "allocator"    # Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    .param p2, "minBufferMs"    # I
    .param p3, "maxBufferMs"    # I
    .param p4, "bufferForPlaybackMs"    # I
    .param p5, "bufferForPlaybackAfterRebufferMs"    # I
    .param p6, "targetBufferBytes"    # I
    .param p7, "prioritizeTimeOverSizeThresholds"    # Z
    .param p8, "backBufferDurationMs"    # I
    .param p9, "retainBackBufferFromKeyframe"    # Z

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    invoke-static {p4, v0, v1, v2}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p5, v0, v3, v2}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v4, "minBufferMs"

    invoke-static {p2, p4, v4, v1}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {p2, p5, v4, v3}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "maxBufferMs"

    invoke-static {p3, p2, v1, v4}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "backBufferDurationMs"

    invoke-static {p8, v0, v1, v2}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 313
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 314
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->minBufferUs:J

    .line 315
    int-to-long v0, p3

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    .line 316
    int-to-long v0, p4

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 317
    int-to-long v0, p5

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 318
    iput p6, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    .line 319
    iput-boolean p7, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    .line 320
    int-to-long v0, p8

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->backBufferDurationUs:J

    .line 321
    iput-boolean p9, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    .line 323
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    .line 324
    return-void
.end method

.method static synthetic access$000(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 44
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "value1"    # I
    .param p1, "value2"    # I
    .param p2, "name1"    # Ljava/lang/String;
    .param p3, "name2"    # Ljava/lang/String;

    .line 520
    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 521
    return-void
.end method

.method private static getDefaultBufferSize(I)I
    .locals 2
    .param p0, "trackType"    # I

    .line 495
    const/high16 v0, 0xc80000

    const/high16 v1, 0x20000

    packed-switch p0, :pswitch_data_0

    .line 515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 507
    :pswitch_0
    return v1

    .line 505
    :pswitch_1
    return v1

    .line 509
    :pswitch_2
    return v1

    .line 503
    :pswitch_3
    return v1

    .line 501
    :pswitch_4
    const/high16 v0, 0x7d00000

    return v0

    .line 499
    :pswitch_5
    return v0

    .line 497
    :pswitch_6
    const/high16 v0, 0x89a0000

    return v0

    .line 513
    :pswitch_7
    return v0

    .line 511
    :pswitch_8
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removePlayer(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 481
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->updateAllocator()V

    .line 484
    :cond_0
    return-void
.end method

.method private resetPlayerLoadingState(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 3
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 472
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 473
    .local v0, "playerLoadingState":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    nop

    .line 474
    iget v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 475
    const/high16 v1, 0xc80000

    goto :goto_0

    .line 476
    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    :goto_0
    iput v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    .line 477
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    .line 478
    return-void
.end method

.method private updateAllocator()V
    .locals 2

    .line 487
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->reset()V

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTotalTargetBufferBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    .line 492
    :goto_0
    return-void
.end method


# virtual methods
.method protected final calculateTargetBufferBytes([Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I
    .locals 1
    .param p1, "renderers"    # [Landroidx/media3/exoplayer/Renderer;
    .param p2, "trackSelectionArray"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 459
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTargetBufferBytes([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I

    move-result v0

    return v0
.end method

.method protected calculateTargetBufferBytes([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I
    .locals 5
    .param p1, "trackSelectionArray"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "targetBufferSize":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 445
    .local v3, "exoTrackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eqz v3, :cond_0

    .line 446
    invoke-interface {v3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/TrackGroup;->type:I

    invoke-static {v4}, Landroidx/media3/exoplayer/DefaultLoadControl;->getDefaultBufferSize(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 444
    .end local v3    # "exoTrackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    :cond_1
    const/high16 v1, 0xc80000

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method calculateTotalTargetBufferBytes()I
    .locals 4

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "totalTargetBufferBytes":I
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 466
    .local v2, "state":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    iget v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    add-int/2addr v0, v3

    .line 467
    .end local v2    # "state":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    goto :goto_0

    .line 468
    :cond_0
    return v0
.end method

.method public getAllocator()Landroidx/media3/exoplayer/upstream/Allocator;
    .locals 1

    .line 367
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs(Landroidx/media3/exoplayer/analytics/PlayerId;)J
    .locals 2
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 372
    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 6
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 328
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 329
    .local v0, "currentThreadId":J
    iget-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 333
    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    .line 334
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 335
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    new-instance v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;-><init>(Landroidx/media3/exoplayer/DefaultLoadControl$1;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->resetPlayerLoadingState(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 338
    return-void
.end method

.method public onReleased(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 2
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 359
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->removePlayer(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 360
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    .line 363
    :cond_0
    return-void
.end method

.method public onStopped(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 354
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->removePlayer(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 355
    return-void
.end method

.method public onTracksSelected(Landroidx/media3/exoplayer/LoadControl$Parameters;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 3
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;
    .param p2, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 345
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 346
    iget v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 347
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTargetBufferBytes([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I

    move-result v1

    goto :goto_0

    .line 348
    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    :goto_0
    iput v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    .line 349
    invoke-direct {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->updateAllocator()V

    .line 350
    return-void
.end method

.method public retainBackBufferFromKeyframe(Landroidx/media3/exoplayer/analytics/PlayerId;)Z
    .locals 1
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 377
    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return v0
.end method

.method public shouldContinueLoading(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 11
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;

    .line 382
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 383
    .local v0, "playerLoadingState":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 384
    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTotalTargetBufferBytes()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 385
    .local v1, "targetBufferSizeReached":Z
    :goto_0
    iget-wide v5, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->minBufferUs:J

    .line 386
    .local v5, "minBufferUs":J
    iget v2, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    .line 389
    iget v2, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    .line 390
    invoke-static {v5, v6, v2}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v7

    .line 391
    .local v7, "mediaDurationMinBufferUs":J
    iget-wide v9, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 394
    .end local v7    # "mediaDurationMinBufferUs":J
    :cond_1
    const-wide/32 v7, 0x7a120

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 395
    iget-wide v9, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    cmp-long v2, v9, v5

    if-gez v2, :cond_4

    .line 396
    iget-boolean v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    iput-boolean v3, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    .line 397
    iget-boolean v2, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    if-nez v2, :cond_6

    iget-wide v2, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_6

    .line 398
    const-string v2, "DefaultLoadControl"

    const-string v3, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {v2, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 402
    :cond_4
    iget-wide v2, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    iget-wide v7, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_5

    if-eqz v1, :cond_6

    .line 403
    :cond_5
    iput-boolean v4, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    .line 405
    :cond_6
    :goto_2
    iget-boolean v2, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    return v2
.end method

.method public shouldContinuePreloading(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Z
    .locals 3
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "bufferedDurationUs"    # J

    .line 427
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 428
    .local v1, "playerLoadingState":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    iget-boolean v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    if-eqz v2, :cond_0

    .line 429
    const/4 v0, 0x0

    return v0

    .line 431
    .end local v1    # "playerLoadingState":Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    :cond_0
    goto :goto_0

    .line 432
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public shouldStartPlayback(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 8
    .param p1, "parameters"    # Landroidx/media3/exoplayer/LoadControl$Parameters;

    .line 410
    iget-wide v0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    iget v2, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    .line 411
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v0

    .line 414
    .local v0, "bufferedDurationUs":J
    iget-boolean v2, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->rebuffering:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 415
    .local v2, "minBufferDurationUs":J
    :goto_0
    iget-wide v4, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 416
    iget-wide v4, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 418
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    iget-boolean v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 421
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTotalTargetBufferBytes()I

    move-result v5

    if-lt v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 418
    :goto_2
    return v4
.end method
