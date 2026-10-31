.class public Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;
.implements Landroidx/media3/exoplayer/source/SequenceableLoader;
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;
.implements Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,
        Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media3/exoplayer/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/source/SampleStream;",
        "Landroidx/media3/exoplayer/source/SequenceableLoader;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/source/chunk/Chunk;",
        ">;",
        "Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChunkSampleStream"


# instance fields
.field private final callback:Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/SequenceableLoader$Callback<",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private canReportInitialDiscontinuity:Z

.field private canceledMediaChunk:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

.field private final chunkOutput:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

.field private final chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

.field private final embeddedTrackFormats:[Landroidx/media3/common/Format;

.field private final embeddedTrackTypes:[I

.field private final embeddedTracksSelected:[Z

.field private hasInitialDiscontinuity:Z

.field private lastSeekPositionUs:J

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private final loader:Landroidx/media3/exoplayer/upstream/Loader;

.field private loadingChunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

.field loadingFinished:Z

.field private final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field private final nextChunkHolder:Landroidx/media3/exoplayer/source/chunk/ChunkHolder;

.field private nextNotifyPrimaryFormatMediaChunkIndex:I

.field private pendingResetPositionUs:J

.field private primaryDownstreamTrackFormat:Landroidx/media3/common/Format;

.field private final primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

.field public final primaryTrackType:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private releaseCallback:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[I[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/chunk/ChunkSource;Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;Landroidx/media3/exoplayer/upstream/Allocator;JLandroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;ZLandroidx/media3/exoplayer/util/ReleasableExecutor;)V
    .locals 17
    .param p1, "primaryTrackType"    # I
    .param p2, "embeddedTrackTypes"    # [I
    .param p3, "embeddedTrackFormats"    # [Landroidx/media3/common/Format;
    .param p6, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p7, "positionUs"    # J
    .param p9, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p10, "drmEventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    .param p11, "loadErrorHandlingPolicy"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .param p12, "mediaSourceEventDispatcher"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .param p13, "canReportInitialDiscontinuity"    # Z
    .param p14, "downloadExecutor"    # Landroidx/media3/exoplayer/util/ReleasableExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Landroidx/media3/common/Format;",
            "TT;",
            "Landroidx/media3/exoplayer/source/SequenceableLoader$Callback<",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>;>;",
            "Landroidx/media3/exoplayer/upstream/Allocator;",
            "J",
            "Landroidx/media3/exoplayer/drm/DrmSessionManager;",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;",
            "Z",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ")V"
        }
    .end annotation

    .line 139
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    .local p4, "chunkSource":Landroidx/media3/exoplayer/source/chunk/ChunkSource;, "TT;"
    .local p5, "callback":Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;, "Landroidx/media3/exoplayer/source/SequenceableLoader$Callback<Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p7

    move-object/from16 v4, p14

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput v1, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    .line 141
    const/4 v5, 0x0

    if-nez p2, :cond_0

    new-array v6, v5, [I

    goto :goto_0

    :cond_0
    move-object/from16 v6, p2

    :goto_0
    iput-object v6, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    .line 142
    if-nez p3, :cond_1

    new-array v6, v5, [Landroidx/media3/common/Format;

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    iput-object v6, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Landroidx/media3/common/Format;

    .line 143
    move-object/from16 v6, p4

    iput-object v6, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    .line 144
    move-object/from16 v7, p5

    iput-object v7, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->callback:Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;

    .line 145
    move-object/from16 v8, p12

    iput-object v8, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 146
    move-object/from16 v9, p11

    iput-object v9, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 147
    move/from16 v10, p13

    iput-boolean v10, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canReportInitialDiscontinuity:Z

    .line 148
    nop

    .line 149
    new-instance v11, Landroidx/media3/exoplayer/upstream/Loader;

    if-eqz v4, :cond_2

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/ReleasableExecutor;)V

    goto :goto_2

    :cond_2
    const-string v12, "ChunkSampleStream"

    invoke-direct {v11, v12}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_2
    iput-object v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 150
    new-instance v11, Landroidx/media3/exoplayer/source/chunk/ChunkHolder;

    invoke-direct {v11}, Landroidx/media3/exoplayer/source/chunk/ChunkHolder;-><init>()V

    iput-object v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextChunkHolder:Landroidx/media3/exoplayer/source/chunk/ChunkHolder;

    .line 151
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 152
    iget-object v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 154
    iget-object v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    array-length v11, v11

    .line 155
    .local v11, "embeddedTrackCount":I
    new-array v12, v11, [Landroidx/media3/exoplayer/source/SampleQueue;

    iput-object v12, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 156
    new-array v12, v11, [Z

    iput-object v12, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    .line 157
    add-int/lit8 v12, v11, 0x1

    new-array v12, v12, [I

    .line 158
    .local v12, "trackTypes":[I
    add-int/lit8 v13, v11, 0x1

    new-array v13, v13, [Landroidx/media3/exoplayer/source/SampleQueue;

    .line 160
    .local v13, "sampleQueues":[Landroidx/media3/exoplayer/source/SampleQueue;
    nop

    .line 161
    move-object/from16 v14, p6

    move-object/from16 v15, p9

    move-object/from16 v5, p10

    invoke-static {v14, v15, v5}, Landroidx/media3/exoplayer/source/SampleQueue;->createWithDrm(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 162
    const/4 v4, 0x0

    aput v1, v12, v4

    .line 163
    iget-object v1, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    aput-object v1, v13, v4

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v11, :cond_3

    .line 166
    invoke-static/range {p6 .. p6}, Landroidx/media3/exoplayer/source/SampleQueue;->createWithoutDrm(Landroidx/media3/exoplayer/upstream/Allocator;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v4

    .line 167
    .local v4, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    iget-object v5, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aput-object v4, v5, v1

    .line 168
    add-int/lit8 v5, v1, 0x1

    aput-object v4, v13, v5

    .line 169
    add-int/lit8 v5, v1, 0x1

    move-object/from16 v16, v4

    .end local v4    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    .local v16, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    iget-object v4, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    aget v4, v4, v1

    aput v4, v12, v5

    .line 165
    .end local v16    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, p10

    goto :goto_3

    .line 172
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    invoke-direct {v1, v12, v13}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;-><init>([I[Landroidx/media3/exoplayer/source/SampleQueue;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkOutput:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    .line 173
    iput-wide v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 174
    iput-wide v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 175
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 60
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)[Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 60
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)[I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 60
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)[Landroidx/media3/common/Format;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 60
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Landroidx/media3/common/Format;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 60
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    return-wide v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 60
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    return-object v0
.end method

.method private discardDownstreamMediaChunks(I)V
    .locals 3
    .param p1, "discardToSampleIndex"    # I

    .line 766
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    nop

    .line 767
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v1

    .line 769
    .local v1, "discardToMediaChunkIndex":I
    iget v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 770
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 771
    if-lez v1, :cond_0

    .line 772
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    .line 773
    iget v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 775
    :cond_0
    return-void
.end method

.method private discardUpstream(I)V
    .locals 11
    .param p1, "preferredQueueSize"    # I

    .line 710
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 712
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 713
    .local v0, "currentQueueSize":I
    const/4 v1, -0x1

    .line 714
    .local v1, "newQueueSize":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 715
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 718
    move v1, v2

    .line 719
    goto :goto_1

    .line 714
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 722
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 723
    return-void

    .line 726
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->getLastMediaChunk()Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v2

    iget-wide v9, v2, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 727
    .local v9, "endTimeUs":J
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v2

    .line 728
    .local v2, "firstRemovedChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 729
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 731
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 732
    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v4, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-wide v5, v2, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->startTimeUs:J

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    .line 734
    return-void
.end method

.method private discardUpstreamMediaChunksFromIndex(I)Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    .locals 4
    .param p1, "chunkIndex"    # I

    .line 834
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 835
    .local v0, "firstRemovedChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    .line 836
    iget v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 837
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 838
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 839
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 840
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v2, v2, v1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 842
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getLastMediaChunk()Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    .locals 2

    .line 823
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    return-object v0
.end method

.method private haveReadFromMediaChunk(I)Z
    .locals 6
    .param p1, "mediaChunkIndex"    # I

    .line 749
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 750
    .local v0, "mediaChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v1, v3, :cond_0

    .line 751
    return v4

    .line 753
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 754
    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v5

    if-le v3, v5, :cond_1

    .line 755
    return v4

    .line 753
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 758
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method private isMediaChunk(Landroidx/media3/exoplayer/source/chunk/Chunk;)Z
    .locals 1
    .param p1, "chunk"    # Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 737
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    instance-of v0, p1, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    return v0
.end method

.method private maybeNotifyPrimaryTrackFormatChanged()V
    .locals 4

    .line 778
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v0

    .line 779
    .local v0, "readSampleIndex":I
    iget v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    add-int/lit8 v1, v1, -0x1

    .line 780
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v1

    .line 782
    .local v1, "notifyToMediaChunkIndex":I
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    if-gt v2, v1, :cond_0

    .line 783
    iget v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged(I)V

    goto :goto_0

    .line 785
    :cond_0
    return-void
.end method

.method private maybeNotifyPrimaryTrackFormatChanged(I)V
    .locals 9
    .param p1, "mediaChunkReadIndex"    # I

    .line 788
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 789
    .local v0, "currentChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    iget-object v8, v0, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    .line 790
    .local v8, "trackFormat":Landroidx/media3/common/Format;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Landroidx/media3/common/Format;

    invoke-virtual {v8, v1}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget v4, v0, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->startTimeUs:J

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILandroidx/media3/common/Format;ILjava/lang/Object;J)V

    .line 798
    :cond_0
    iput-object v8, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Landroidx/media3/common/Format;

    .line 799
    return-void
.end method

.method private primarySampleIndexToMediaChunkIndex(II)I
    .locals 3
    .param p1, "primarySampleIndex"    # I
    .param p2, "minChunkIndex"    # I

    .line 814
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 815
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    if-le v1, p1, :cond_0

    .line 816
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 814
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private resetSampleQueues()V
    .locals 4

    .line 741
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->reset()V

    .line 742
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 743
    .local v3, "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->reset()V

    .line 742
    .end local v3    # "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    :cond_0
    return-void
.end method


# virtual methods
.method public consumeInitialDiscontinuity()Z
    .locals 2

    .line 703
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->hasInitialDiscontinuity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->hasInitialDiscontinuity:Z

    .line 703
    return v1

    .line 705
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->hasInitialDiscontinuity:Z

    .line 706
    throw v1
.end method

.method public continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 26
    .param p1, "loadingInfo"    # Landroidx/media3/exoplayer/LoadingInfo;

    .line 579
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    iget-object v1, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->hasFatalError()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 583
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v1

    .line 586
    .local v1, "pendingReset":Z
    if-eqz v1, :cond_1

    .line 587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 588
    .local v3, "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;>;"
    iget-wide v4, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .local v4, "loadPositionUs":J
    goto :goto_0

    .line 590
    .end local v3    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;>;"
    .end local v4    # "loadPositionUs":J
    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 591
    .restart local v3    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;>;"
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->getLastMediaChunk()Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 593
    .restart local v4    # "loadPositionUs":J
    :goto_0
    iget-object v6, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    iget-object v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextChunkHolder:Landroidx/media3/exoplayer/source/chunk/ChunkHolder;

    move-object/from16 v7, p1

    move-wide v8, v4

    move-object v10, v3

    invoke-interface/range {v6 .. v11}, Landroidx/media3/exoplayer/source/chunk/ChunkSource;->getNextChunk(Landroidx/media3/exoplayer/LoadingInfo;JLjava/util/List;Landroidx/media3/exoplayer/source/chunk/ChunkHolder;)V

    .line 594
    iget-object v6, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextChunkHolder:Landroidx/media3/exoplayer/source/chunk/ChunkHolder;

    iget-boolean v6, v6, Landroidx/media3/exoplayer/source/chunk/ChunkHolder;->endOfStream:Z

    .line 595
    .local v6, "endOfStream":Z
    iget-object v7, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextChunkHolder:Landroidx/media3/exoplayer/source/chunk/ChunkHolder;

    iget-object v7, v7, Landroidx/media3/exoplayer/source/chunk/ChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 596
    .local v7, "loadable":Landroidx/media3/exoplayer/source/chunk/Chunk;
    iget-object v8, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextChunkHolder:Landroidx/media3/exoplayer/source/chunk/ChunkHolder;

    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/chunk/ChunkHolder;->clear()V

    .line 598
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    if-eqz v6, :cond_2

    .line 599
    iput-wide v8, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 600
    iput-boolean v10, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 601
    return v10

    .line 604
    :cond_2
    if-nez v7, :cond_3

    .line 605
    return v2

    .line 608
    :cond_3
    iput-object v7, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingChunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 609
    invoke-direct {v0, v7}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isMediaChunk(Landroidx/media3/exoplayer/source/chunk/Chunk;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 610
    move-object v11, v7

    check-cast v11, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 611
    .local v11, "mediaChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    if-eqz v1, :cond_6

    .line 616
    iget-wide v12, v11, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->startTimeUs:J

    iget-wide v14, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_5

    .line 617
    iget-object v12, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    iget-wide v13, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    invoke-virtual {v12, v13, v14}, Landroidx/media3/exoplayer/source/SampleQueue;->setStartTimeUs(J)V

    .line 618
    iget-object v12, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v13, v12

    move v14, v2

    :goto_1
    if-ge v14, v13, :cond_4

    aget-object v15, v12, v14

    .line 619
    .local v15, "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    iget-wide v8, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    invoke-virtual {v15, v8, v9}, Landroidx/media3/exoplayer/source/SampleQueue;->setStartTimeUs(J)V

    .line 618
    .end local v15    # "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v14, v14, 0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 621
    :cond_4
    iget-boolean v8, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canReportInitialDiscontinuity:Z

    if-eqz v8, :cond_5

    .line 623
    iget-object v8, v11, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget-object v8, v8, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v9, v11, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget-object v9, v9, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 624
    invoke-static {v8, v9}, Landroidx/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 626
    .local v8, "sampleQueueCanSkipSamples":Z
    xor-int/lit8 v9, v8, 0x1

    iput-boolean v9, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->hasInitialDiscontinuity:Z

    .line 631
    .end local v8    # "sampleQueueCanSkipSamples":Z
    :cond_5
    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canReportInitialDiscontinuity:Z

    .line 632
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v8, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 634
    :cond_6
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkOutput:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    invoke-virtual {v11, v2}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->init(Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)V

    .line 635
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v11    # "mediaChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    goto :goto_2

    .line 636
    :cond_7
    instance-of v2, v7, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;

    if-eqz v2, :cond_8

    .line 637
    move-object v2, v7

    check-cast v2, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;

    iget-object v8, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkOutput:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    invoke-virtual {v2, v8}, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->init(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;)V

    goto :goto_3

    .line 636
    :cond_8
    :goto_2
    nop

    .line 639
    :goto_3
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v8, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v9, v7, Landroidx/media3/exoplayer/source/chunk/Chunk;->type:I

    .line 641
    invoke-interface {v8, v9}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v8

    .line 640
    invoke-virtual {v2, v7, v0, v8}, Landroidx/media3/exoplayer/upstream/Loader;->startLoading(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    move-result-wide v8

    .line 642
    .local v8, "elapsedRealtimeMs":J
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    new-instance v17, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v12, v7, Landroidx/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v14, v7, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    move-object/from16 v11, v17

    move-wide v15, v8

    invoke-direct/range {v11 .. v16}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    iget v13, v7, Landroidx/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v14, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v15, v7, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    iget v12, v7, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v11, v7, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move/from16 v22, v1

    .end local v1    # "pendingReset":Z
    .local v22, "pendingReset":Z
    iget-wide v0, v7, Landroidx/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v23, v3

    move-wide/from16 v24, v4

    .end local v3    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;>;"
    .end local v4    # "loadPositionUs":J
    .local v23, "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;>;"
    .local v24, "loadPositionUs":J
    iget-wide v3, v7, Landroidx/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    move-object v5, v11

    move-object v11, v2

    move v2, v12

    move-object/from16 v12, v17

    move/from16 v16, v2

    move-object/from16 v17, v5

    move-wide/from16 v18, v0

    move-wide/from16 v20, v3

    invoke-virtual/range {v11 .. v21}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 651
    return v10

    .line 580
    .end local v6    # "endOfStream":Z
    .end local v7    # "loadable":Landroidx/media3/exoplayer/source/chunk/Chunk;
    .end local v8    # "elapsedRealtimeMs":J
    .end local v22    # "pendingReset":Z
    .end local v23    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;>;"
    .end local v24    # "loadPositionUs":J
    :cond_9
    :goto_4
    return v2
.end method

.method public discardBuffer(JZ)V
    .locals 7
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 185
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getFirstIndex()I

    move-result v0

    .line 189
    .local v0, "oldFirstSampleIndex":I
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->discardTo(JZZ)V

    .line 190
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getFirstIndex()I

    move-result v1

    .line 191
    .local v1, "newFirstSampleIndex":I
    if-le v1, v0, :cond_1

    .line 192
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getFirstTimestampUs()J

    move-result-wide v2

    .line 193
    .local v2, "discardToUs":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 194
    iget-object v5, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v5, v5, v4

    iget-object v6, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v6, v6, v4

    invoke-virtual {v5, v2, v3, p3, v6}, Landroidx/media3/exoplayer/source/SampleQueue;->discardTo(JZZ)V

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "discardToUs":J
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->discardDownstreamMediaChunks(I)V

    .line 198
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 2
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;

    .line 263
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/chunk/ChunkSource;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .line 236
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_0

    .line 237
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    .line 241
    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 242
    .local v0, "bufferedPositionUs":J
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->getLastMediaChunk()Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v2

    .line 244
    .local v2, "lastMediaChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    move-object v3, v2

    goto :goto_0

    .line 246
    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    nop

    .line 247
    .local v3, "lastCompletedMediaChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    if-eqz v3, :cond_4

    .line 248
    iget-wide v4, v3, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 250
    :cond_4
    iget-object v4, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public getChunkSource()Landroidx/media3/exoplayer/source/chunk/ChunkSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 225
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 661
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    .line 664
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->getLastMediaChunk()Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->endTimeUs:J

    :goto_0
    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    .line 656
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    return v0
.end method

.method isPendingReset()Z
    .locals 4

    .line 762
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 381
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    .line 387
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->maybeThrowError()V

    .line 388
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSource;->maybeThrowError()V

    .line 391
    :cond_0
    return-void
.end method

.method public onLoadCanceled(Landroidx/media3/exoplayer/source/chunk/Chunk;JJZ)V
    .locals 15
    .param p1, "loadable"    # Landroidx/media3/exoplayer/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .line 461
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingChunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 462
    iput-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 463
    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 468
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v4, v2

    .line 472
    .local v4, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v5, v6}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 473
    iget-object v3, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v5, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v6, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v7, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    iget v8, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 482
    if-nez p6, :cond_2

    .line 483
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->resetSampleQueues()V

    goto :goto_0

    .line 485
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isMediaChunk(Landroidx/media3/exoplayer/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 488
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    iget-wide v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 492
    :cond_1
    :goto_0
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->callback:Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;

    invoke-interface {v2, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 494
    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 59
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->onLoadCanceled(Landroidx/media3/exoplayer/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media3/exoplayer/source/chunk/Chunk;JJ)V
    .locals 15
    .param p1, "loadable"    # Landroidx/media3/exoplayer/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 434
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingChunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 435
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/source/chunk/ChunkSource;->onChunkLoadCompleted(Landroidx/media3/exoplayer/source/chunk/Chunk;)V

    .line 436
    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 440
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 444
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v4, v2

    .line 445
    .local v4, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v5, v6}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 446
    iget-object v3, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v5, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v6, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v7, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    iget v8, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 455
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->callback:Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;

    invoke-interface {v2, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 456
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 59
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->onLoadCompleted(Landroidx/media3/exoplayer/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/source/chunk/Chunk;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 35
    .param p1, "loadable"    # Landroidx/media3/exoplayer/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 503
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v14

    .line 504
    .local v14, "bytesLoaded":J
    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isMediaChunk(Landroidx/media3/exoplayer/source/chunk/Chunk;)Z

    move-result v16

    .line 505
    .local v16, "isMediaChunk":Z
    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v12, v2, -0x1

    .line 506
    .local v12, "lastChunkIndex":I
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    const/4 v13, 0x0

    if-eqz v2, :cond_1

    if-eqz v16, :cond_1

    .line 507
    invoke-direct {v0, v12}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v13

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v2, v17

    :goto_1
    move v10, v2

    .line 508
    .local v10, "cancelable":Z
    new-instance v18, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v5, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    move-object/from16 v2, v18

    move-wide/from16 v8, p2

    move/from16 v19, v10

    .end local v10    # "cancelable":Z
    .local v19, "cancelable":Z
    move-wide/from16 v10, p4

    move/from16 v21, v12

    .end local v12    # "lastChunkIndex":I
    .local v21, "lastChunkIndex":I
    move-wide v12, v14

    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 517
    .local v2, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    new-instance v13, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget v4, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v5, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v6, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    iget v7, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v8, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v9, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    .line 524
    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v11, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    .line 525
    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v11

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 526
    .local v3, "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    new-instance v4, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct {v4, v2, v3, v5, v6}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 529
    .local v4, "loadErrorInfo":Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    const/4 v7, 0x0

    .line 530
    .local v7, "loadErrorAction":Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    iget-object v8, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    iget-object v9, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move/from16 v10, v19

    .end local v19    # "cancelable":Z
    .restart local v10    # "cancelable":Z
    invoke-interface {v8, v1, v10, v4, v9}, Landroidx/media3/exoplayer/source/chunk/ChunkSource;->onChunkLoadError(Landroidx/media3/exoplayer/source/chunk/Chunk;ZLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 532
    if-eqz v10, :cond_5

    .line 533
    sget-object v7, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 534
    if-eqz v16, :cond_4

    .line 535
    move/from16 v8, v21

    .end local v21    # "lastChunkIndex":I
    .local v8, "lastChunkIndex":I
    invoke-direct {v0, v8}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v9

    .line 536
    .local v9, "removed":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    if-ne v9, v1, :cond_2

    move/from16 v13, v17

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    invoke-static {v13}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 537
    iget-object v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 538
    iget-wide v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 540
    .end local v9    # "removed":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    :cond_3
    goto :goto_3

    .line 534
    .end local v8    # "lastChunkIndex":I
    .restart local v21    # "lastChunkIndex":I
    :cond_4
    move/from16 v8, v21

    .end local v21    # "lastChunkIndex":I
    .restart local v8    # "lastChunkIndex":I
    goto :goto_3

    .line 542
    .end local v8    # "lastChunkIndex":I
    .restart local v21    # "lastChunkIndex":I
    :cond_5
    move/from16 v8, v21

    .end local v21    # "lastChunkIndex":I
    .restart local v8    # "lastChunkIndex":I
    const-string v9, "ChunkSampleStream"

    const-string v11, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v9, v11}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 530
    .end local v8    # "lastChunkIndex":I
    .restart local v21    # "lastChunkIndex":I
    :cond_6
    move/from16 v8, v21

    .line 546
    .end local v21    # "lastChunkIndex":I
    .restart local v8    # "lastChunkIndex":I
    :goto_3
    if-nez v7, :cond_8

    .line 548
    iget-object v9, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v9, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v11

    .line 550
    .local v11, "retryDelayMs":J
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v11, v18

    if-eqz v9, :cond_7

    .line 551
    const/4 v9, 0x0

    invoke-static {v9, v11, v12}, Landroidx/media3/exoplayer/upstream/Loader;->createRetryAction(ZJ)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v9

    goto :goto_4

    .line 552
    :cond_7
    sget-object v9, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    :goto_4
    move-object v7, v9

    .line 555
    .end local v11    # "retryDelayMs":J
    :cond_8
    invoke-virtual {v7}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 556
    .local v9, "canceled":Z
    iget-object v11, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v12, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v13, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    move-object/from16 v17, v3

    .end local v3    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .local v17, "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    iget-object v3, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    move-object/from16 v18, v4

    .end local v4    # "loadErrorInfo":Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    .local v18, "loadErrorInfo":Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    iget v4, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v5, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-wide/from16 v19, v14

    .end local v14    # "bytesLoaded":J
    .local v19, "bytesLoaded":J
    iget-wide v14, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v21, v7

    .end local v7    # "loadErrorAction":Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .local v21, "loadErrorAction":Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    iget-wide v6, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    move-object/from16 v22, v11

    move-object/from16 v23, v2

    move/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-wide/from16 v29, v14

    move-wide/from16 v31, v6

    move-object/from16 v33, p6

    move/from16 v34, v9

    invoke-virtual/range {v22 .. v34}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 567
    if-eqz v9, :cond_9

    .line 568
    const/4 v3, 0x0

    iput-object v3, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingChunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 569
    iget-object v3, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 570
    iget-object v3, v0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->callback:Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;

    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 572
    :cond_9
    return-object v21
.end method

.method public bridge synthetic onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 8

    .line 59
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->onLoadError(Landroidx/media3/exoplayer/source/chunk/Chunk;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .locals 4

    .line 367
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->release()V

    .line 368
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 369
    .local v3, "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->release()V

    .line 368
    .end local v3    # "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSource;->release()V

    .line 372
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->releaseCallback:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->releaseCallback:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;->onSampleStreamReleased(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)V

    .line 375
    :cond_1
    return-void
.end method

.method public readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 3
    .param p1, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .param p2, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 396
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    .line 397
    return v1

    .line 399
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 400
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 401
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 404
    return v1

    .line 406
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    .line 408
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .line 670
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingChunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 676
    .local v0, "loadingChunk":Landroidx/media3/exoplayer/source/chunk/Chunk;
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isMediaChunk(Landroidx/media3/exoplayer/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 677
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    return-void

    .line 681
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0, v2}, Landroidx/media3/exoplayer/source/chunk/ChunkSource;->shouldCancelLoad(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->cancelLoading()V

    .line 683
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isMediaChunk(Landroidx/media3/exoplayer/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    iput-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 687
    :cond_2
    return-void

    .line 690
    .end local v0    # "loadingChunk":Landroidx/media3/exoplayer/source/chunk/Chunk;
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Landroidx/media3/exoplayer/source/chunk/ChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result v0

    .line 691
    .local v0, "preferredQueueSize":I
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 692
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->discardUpstream(I)V

    .line 694
    :cond_4
    return-void

    .line 671
    .end local v0    # "preferredQueueSize":I
    :cond_5
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 343
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->release(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    .line 344
    return-void
.end method

.method public release(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 356
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    .local p1, "callback":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback<TT;>;"
    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->releaseCallback:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;

    .line 358
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->preRelease()V

    .line 359
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 360
    .local v3, "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->preRelease()V

    .line 359
    .end local v3    # "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/Loader;->release(Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    .line 363
    return-void
.end method

.method public seekToUs(J)V
    .locals 10
    .param p1, "positionUs"    # J

    .line 272
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canReportInitialDiscontinuity:Z

    .line 274
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 277
    return-void

    .line 281
    :cond_0
    const/4 v1, 0x0

    .line 282
    .local v1, "seekToMediaChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 283
    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 284
    .local v3, "mediaChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    iget-wide v4, v3, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->startTimeUs:J

    .line 285
    .local v4, "mediaChunkStartTimeUs":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_1

    iget-wide v6, v3, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->clippedStartTimeUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 286
    move-object v1, v3

    .line 287
    goto :goto_1

    .line 288
    :cond_1
    cmp-long v6, v4, p1

    if-lez v6, :cond_2

    .line 290
    goto :goto_1

    .line 282
    .end local v3    # "mediaChunk":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
    .end local v4    # "mediaChunkStartTimeUs":J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "i":I
    :cond_3
    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 300
    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(I)Z

    move-result v3

    .local v3, "seekInsideBuffer":Z
    goto :goto_3

    .line 302
    .end local v3    # "seekInsideBuffer":Z
    :cond_4
    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 304
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->getNextLoadPositionUs()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v0

    .line 303
    :goto_2
    invoke-virtual {v3, p1, p2, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v3

    .line 307
    .restart local v3    # "seekInsideBuffer":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 309
    iget-object v4, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 311
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v4

    .line 310
    invoke-direct {p0, v4, v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v4

    iput v4, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 313
    iget-object v4, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v5, v4

    :goto_4
    if-ge v0, v5, :cond_9

    aget-object v6, v4, v0

    .line 314
    .local v6, "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v6, p1, p2, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    .line 313
    .end local v6    # "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 318
    :cond_6
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 319
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 320
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 321
    iput v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 322
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 324
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    .line 325
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v4, v2

    :goto_5
    if-ge v0, v4, :cond_7

    aget-object v5, v2, v0

    .line 326
    .local v5, "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    .line 325
    .end local v5    # "embeddedSampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 328
    :cond_7
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->cancelLoading()V

    goto :goto_6

    .line 330
    :cond_8
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->clearFatalError()V

    .line 331
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->resetSampleQueues()V

    .line 334
    :cond_9
    :goto_6
    return-void
.end method

.method public selectEmbeddedTrack(JI)Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "trackType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>.EmbeddedSampleStream;"
        }
    .end annotation

    .line 211
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 212
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    .line 213
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 214
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aput-boolean v2, v1, v0

    .line 215
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    .line 216
    new-instance v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v2, v2, v0

    invoke-direct {v1, p0, p0, v2, v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;-><init>(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;Landroidx/media3/exoplayer/source/SampleQueue;I)V

    return-object v1

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public skipData(J)I
    .locals 3
    .param p1, "positionUs"    # J

    .line 413
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 414
    return v1

    .line 416
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getSkipCount(JZ)I

    move-result v0

    .line 417
    .local v0, "skipCount":I
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    if-eqz v2, :cond_1

    .line 420
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 421
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 422
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v2

    sub-int/2addr v1, v2

    .line 423
    .local v1, "maxSkipCount":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 425
    .end local v1    # "maxSkipCount":I
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->skip(I)V

    .line 426
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    .line 427
    return v0
.end method
