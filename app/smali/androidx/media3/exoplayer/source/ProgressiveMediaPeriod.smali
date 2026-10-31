.class final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/extractor/ExtractorOutput;
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;
.implements Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;
.implements Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/source/MediaPeriod;",
        "Landroidx/media3/extractor/ExtractorOutput;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;",
        ">;",
        "Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;",
        "Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L

.field private static final ICY_FORMAT:Landroidx/media3/common/Format;

.field private static final ICY_METADATA_HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ProgressiveMediaPeriod"


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field private final continueLoadingCheckIntervalBytes:J

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSource:Landroidx/media3/datasource/DataSource;

.field private dataType:I

.field private final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private durationUs:J

.field private enabledTrackCount:I

.field private extractedSamplesCountAtStartOfLoad:I

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

.field private isLengthKnown:Z

.field private isLive:Z

.field private isSingleSample:Z

.field private lastSeekPositionUs:J

.field private final listener:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

.field private final loadCondition:Landroidx/media3/common/util/ConditionVariable;

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private final loader:Landroidx/media3/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field private notifyDiscontinuity:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingDeferredRetry:Z

.field private pendingInitialDiscontinuity:Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private final progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

.field private released:Z

.field private sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

.field private sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private seekMap:Landroidx/media3/extractor/SeekMap;

.field private seenFirstTrackSelection:Z

.field private final singleSampleDurationUs:J

.field private final suppressPrepareError:Z

.field private trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$S--pTorCq-DuXYVXYm-nCp1JewM(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 107
    invoke-static {}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->createIcyMetadataHeaders()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    .line 109
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 110
    const-string v1, "icy"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_FORMAT:Landroidx/media3/common/Format;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;Landroidx/media3/exoplayer/upstream/Allocator;Ljava/lang/String;IZJLandroidx/media3/exoplayer/util/ReleasableExecutor;)V
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p3, "progressiveMediaExtractor"    # Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .param p4, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p5, "drmEventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    .param p6, "loadErrorHandlingPolicy"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .param p7, "mediaSourceEventDispatcher"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .param p8, "listener"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;
    .param p9, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p10, "customCacheKey"    # Ljava/lang/String;
    .param p11, "continueLoadingCheckIntervalBytes"    # I
    .param p12, "suppressPrepareError"    # Z
    .param p13, "singleSampleDurationUs"    # J
    .param p15, "downloadExecutor"    # Landroidx/media3/exoplayer/util/ReleasableExecutor;

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p15

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    move-object/from16 v2, p1

    iput-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    .line 201
    move-object/from16 v3, p2

    iput-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 202
    move-object/from16 v4, p4

    iput-object v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 203
    move-object/from16 v5, p5

    iput-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 204
    move-object/from16 v6, p6

    iput-object v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 205
    move-object/from16 v7, p7

    iput-object v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 206
    move-object/from16 v8, p8

    iput-object v8, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    .line 207
    move-object/from16 v9, p9

    iput-object v9, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 208
    move-object/from16 v10, p10

    iput-object v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    .line 209
    move/from16 v11, p11

    int-to-long v12, v11

    iput-wide v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    .line 210
    move/from16 v12, p12

    iput-boolean v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressPrepareError:Z

    .line 211
    nop

    .line 212
    if-eqz v1, :cond_0

    .line 213
    new-instance v13, Landroidx/media3/exoplayer/upstream/Loader;

    invoke-direct {v13, v1}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/ReleasableExecutor;)V

    goto :goto_0

    .line 214
    :cond_0
    new-instance v13, Landroidx/media3/exoplayer/upstream/Loader;

    const-string v14, "ProgressiveMediaPeriod"

    invoke-direct {v13, v14}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v13, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 215
    move-object/from16 v13, p3

    iput-object v13, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 216
    move-wide/from16 v14, p13

    iput-wide v14, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->singleSampleDurationUs:J

    .line 217
    new-instance v1, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v1}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/util/ConditionVariable;

    .line 218
    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 219
    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 225
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    .line 226
    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    iput-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 227
    new-array v1, v1, [Landroidx/media3/exoplayer/source/SampleQueue;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 228
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 229
    const/4 v1, 0x1

    iput v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    .line 230
    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 78
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 78
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 78
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Z)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
    .param p1, "x1"    # Z

    .line 78
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .locals 1

    .line 78
    sget-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 78
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 78
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    return-wide v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 78
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->onLengthKnown()V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)Landroidx/media3/extractor/metadata/icy/IcyHeaders;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 78
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    return-object v0
.end method

.method static synthetic access$802(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroidx/media3/extractor/metadata/icy/IcyHeaders;)Landroidx/media3/extractor/metadata/icy/IcyHeaders;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
    .param p1, "x1"    # Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 78
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method static synthetic access$900()Landroidx/media3/common/Format;
    .locals 1

    .line 78
    sget-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_FORMAT:Landroidx/media3/common/Format;

    return-object v0
.end method

.method private assertPrepared()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 999
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1000
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    return-void
.end method

.method private configureRetry(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;I)Z
    .locals 7
    .param p1, "loadable"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "currentExtractedSampleCount"    # I

    .line 909
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_1

    .line 914
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 924
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 925
    return v2

    .line 931
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 932
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 933
    iput v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 934
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v5, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v0, v2

    .line 935
    .local v6, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/SampleQueue;->reset()V

    .line 934
    .end local v6    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 937
    :cond_2
    invoke-static {p1, v3, v4, v3, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$600(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    .line 938
    return v1

    .line 912
    :cond_3
    :goto_1
    iput p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 913
    return v1
.end method

.method private static createIcyMetadataHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1229
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private getExtractedSamplesCount()I
    .locals 6

    .line 975
    const/4 v0, 0x0

    .line 976
    .local v0, "extractedSamplesCount":I
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 977
    .local v4, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/SampleQueue;->getWriteIndex()I

    move-result v5

    add-int/2addr v0, v5

    .line 976
    .end local v4    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 979
    :cond_0
    return v0
.end method

.method private getLargestQueuedTimestampUs(Z)J
    .locals 5
    .param p1, "includeDisabledTracks"    # Z

    .line 983
    const-wide/high16 v0, -0x8000000000000000L

    .line 984
    .local v0, "largestQueuedTimestampUs":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 985
    if-nez p1, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 986
    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v3, v3, v2

    .line 987
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 984
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 990
    .end local v2    # "i":I
    :cond_2
    return-wide v0
.end method

.method private isPendingReset()Z
    .locals 4

    .line 994
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

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

.method private maybeFinishPrepare()V
    .locals 15

    .line 803
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->released:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 806
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 807
    .local v4, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v5

    if-nez v5, :cond_1

    .line 808
    return-void

    .line 806
    .end local v4    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 811
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->close()Z

    .line 812
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    .line 813
    .local v0, "trackCount":I
    new-array v1, v0, [Landroidx/media3/common/TrackGroup;

    .line 814
    .local v1, "trackArray":[Landroidx/media3/common/TrackGroup;
    new-array v3, v0, [Z

    .line 815
    .local v3, "trackIsAudioVideoFlags":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-ge v4, v0, :cond_a

    .line 816
    iget-object v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v8

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/Format;

    .line 817
    .local v8, "trackFormat":Landroidx/media3/common/Format;
    iget-object v9, v8, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 818
    .local v9, "mimeType":Ljava/lang/String;
    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v10

    .line 819
    .local v10, "isAudio":Z
    if-nez v10, :cond_4

    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    move v11, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v11, v7

    .line 820
    .local v11, "isAudioVideo":Z
    :goto_3
    aput-boolean v11, v3, v4

    .line 821
    iget-boolean v12, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v12, v11

    iput-boolean v12, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    .line 822
    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v12

    .line 823
    .local v12, "isImage":Z
    iget-wide v13, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->singleSampleDurationUs:J

    cmp-long v5, v13, v5

    if-eqz v5, :cond_5

    if-ne v0, v7, :cond_5

    if-eqz v12, :cond_5

    move v5, v7

    goto :goto_4

    :cond_5
    move v5, v2

    :goto_4
    iput-boolean v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isSingleSample:Z

    .line 824
    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 825
    .local v5, "icyHeaders":Landroidx/media3/extractor/metadata/icy/IcyHeaders;
    if-eqz v5, :cond_9

    .line 826
    if-nez v10, :cond_6

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    aget-object v6, v6, v4

    iget-boolean v6, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-eqz v6, :cond_8

    .line 827
    :cond_6
    iget-object v6, v8, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 828
    .local v6, "metadata":Landroidx/media3/common/Metadata;
    if-nez v6, :cond_7

    .line 829
    new-instance v13, Landroidx/media3/common/Metadata;

    new-array v14, v7, [Landroidx/media3/common/Metadata$Entry;

    aput-object v5, v14, v2

    invoke-direct {v13, v14}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    move-object v6, v13

    goto :goto_5

    .line 831
    :cond_7
    new-array v13, v7, [Landroidx/media3/common/Metadata$Entry;

    aput-object v5, v13, v2

    invoke-virtual {v6, v13}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v6

    .line 833
    :goto_5
    invoke-virtual {v8}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v8

    .line 837
    .end local v6    # "metadata":Landroidx/media3/common/Metadata;
    :cond_8
    if-eqz v10, :cond_9

    iget v6, v8, Landroidx/media3/common/Format;->averageBitrate:I

    const/4 v13, -0x1

    if-ne v6, v13, :cond_9

    iget v6, v8, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v6, v13, :cond_9

    iget v6, v5, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v6, v13, :cond_9

    .line 841
    invoke-virtual {v8}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v6

    iget v13, v5, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {v6, v13}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v8

    .line 844
    :cond_9
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v6, v8}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->getCryptoType(Landroidx/media3/common/Format;)I

    move-result v6

    invoke-virtual {v8, v6}, Landroidx/media3/common/Format;->copyWithCryptoType(I)Landroidx/media3/common/Format;

    move-result-object v6

    .line 845
    .end local v8    # "trackFormat":Landroidx/media3/common/Format;
    .local v6, "trackFormat":Landroidx/media3/common/Format;
    new-instance v8, Landroidx/media3/common/TrackGroup;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    new-array v7, v7, [Landroidx/media3/common/Format;

    aput-object v6, v7, v2

    invoke-direct {v8, v13, v7}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v8, v1, v4

    .line 846
    iget-boolean v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    iget-boolean v8, v6, Landroidx/media3/common/Format;->hasPrerollSamples:Z

    or-int/2addr v7, v8

    iput-boolean v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 815
    .end local v5    # "icyHeaders":Landroidx/media3/extractor/metadata/icy/IcyHeaders;
    .end local v6    # "trackFormat":Landroidx/media3/common/Format;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "isAudio":Z
    .end local v11    # "isAudioVideo":Z
    .end local v12    # "isImage":Z
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 848
    .end local v4    # "i":I
    :cond_a
    new-instance v2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    new-instance v4, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v4, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    invoke-direct {v2, v4, v3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;-><init>(Landroidx/media3/exoplayer/source/TrackGroupArray;[Z)V

    iput-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 849
    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isSingleSample:Z

    if-eqz v2, :cond_b

    iget-wide v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    cmp-long v2, v8, v5

    if-nez v2, :cond_b

    .line 850
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->singleSampleDurationUs:J

    iput-wide v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 851
    new-instance v2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$1;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-direct {v2, p0, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$1;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroidx/media3/extractor/SeekMap;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    .line 859
    :cond_b
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v6}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v6

    iget-boolean v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    invoke-interface {v2, v4, v5, v6, v8}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JZZ)V

    .line 860
    iput-boolean v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    .line 861
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v2, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 862
    return-void

    .line 804
    .end local v0    # "trackCount":I
    .end local v1    # "trackArray":[Landroidx/media3/common/TrackGroup;
    .end local v3    # "trackIsAudioVideoFlags":[Z
    :cond_c
    :goto_6
    return-void
.end method

.method private maybeNotifyDownstreamFormat(I)V
    .locals 10
    .param p1, "track"    # I

    .line 561
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 562
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackNotifiedDownstreamFormats:[Z

    .line 563
    .local v0, "trackNotifiedDownstreamFormats":[Z
    aget-boolean v1, v0, p1

    if-nez v1, :cond_0

    .line 564
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v1

    .line 565
    .local v1, "trackFormat":Landroidx/media3/common/Format;
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 566
    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v4

    iget-wide v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 565
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v3 .. v9}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILandroidx/media3/common/Format;ILjava/lang/Object;J)V

    .line 571
    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    .line 573
    .end local v1    # "trackFormat":Landroidx/media3/common/Format;
    :cond_0
    return-void
.end method

.method private maybeStartDeferredRetry(I)V
    .locals 5
    .param p1, "track"    # I

    .line 576
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 577
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 578
    .local v0, "trackIsAudioVideoFlags":[Z
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v1, :cond_2

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v1, v1, p1

    .line 580
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 583
    :cond_0
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 584
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 585
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 586
    iput-wide v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 587
    iput v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 588
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 589
    .local v4, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/SampleQueue;->reset()V

    .line 588
    .end local v4    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 591
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 592
    return-void

    .line 581
    :cond_2
    :goto_1
    return-void
.end method

.method private onLengthKnown()V
    .locals 2

    .line 763
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 764
    return-void
.end method

.method private prepareTrackOutput(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/extractor/TrackOutput;
    .locals 5
    .param p1, "id"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 767
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    .line 768
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 769
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v2, v2, v1

    return-object v2

    .line 768
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v1    # "i":I
    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    if-eqz v1, :cond_2

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extractor added new track (id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") after finishing tracks."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgressiveMediaPeriod"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    new-instance v1, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object v1

    .line 777
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 778
    invoke-static {v1, v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->createWithDrm(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v1

    .line 779
    .local v1, "trackOutput":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/source/SampleQueue;->setUpstreamFormatChangeListener(Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 781
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 782
    .local v2, "sampleQueueTrackIds":[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;
    aput-object p1, v2, v0

    .line 783
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    iput-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 784
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/exoplayer/source/SampleQueue;

    .line 785
    .local v3, "sampleQueues":[Landroidx/media3/exoplayer/source/SampleQueue;
    aput-object v1, v3, v0

    .line 786
    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/media3/exoplayer/source/SampleQueue;

    iput-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 787
    return-object v1
.end method

.method private seekInsideBufferUs([ZJZ)Z
    .locals 6
    .param p1, "trackIsAudioVideoFlags"    # [Z
    .param p2, "positionUs"    # J
    .param p4, "isSameAsLastSeekPosition"    # Z

    .line 953
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    .line 954
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 955
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v2, v2, v1

    .line 956
    .local v2, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz p4, :cond_0

    .line 957
    goto :goto_2

    .line 960
    :cond_0
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isSingleSample:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 961
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getFirstIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(I)Z

    move-result v3

    goto :goto_1

    .line 962
    :cond_1
    invoke-virtual {v2, p2, p3, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v3

    :goto_1
    nop

    .line 967
    .local v3, "seekInsideQueue":Z
    if-nez v3, :cond_3

    aget-boolean v5, p1, v1

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v5, :cond_3

    .line 968
    :cond_2
    return v4

    .line 954
    .end local v2    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    .end local v3    # "seekInsideQueue":Z
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 971
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method private setSeekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 6
    .param p1, "seekMap"    # Landroidx/media3/extractor/SeekMap;

    .line 791
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    .line 792
    invoke-interface {p1}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 793
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    .line 794
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    if-eqz v0, :cond_2

    const/4 v3, 0x7

    :cond_2
    iput v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    .line 795
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    invoke-interface {p1}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v3

    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JZZ)V

    goto :goto_2

    .line 798
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V

    .line 800
    :goto_2
    return-void
.end method

.method private startLoading()V
    .locals 19

    .line 865
    move-object/from16 v7, p0

    new-instance v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataSource:Landroidx/media3/datasource/DataSource;

    iget-object v4, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    iget-object v6, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/util/ConditionVariable;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/common/util/ConditionVariable;)V

    .line 868
    .local v0, "loadable":Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
    iget-boolean v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v1, :cond_2

    .line 869
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 870
    iget-wide v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    iget-wide v5, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 871
    const/4 v1, 0x1

    iput-boolean v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 872
    iput-wide v3, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 873
    return-void

    .line 875
    :cond_0
    iget-object v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    .line 876
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/SeekMap;

    iget-wide v5, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    invoke-interface {v1, v5, v6}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v1, v1, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-wide v5, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 875
    invoke-static {v0, v1, v2, v5, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$600(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    .line 878
    iget-object v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v2, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    .line 879
    .local v6, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    iget-wide v8, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    invoke-virtual {v6, v8, v9}, Landroidx/media3/exoplayer/source/SampleQueue;->setStartTimeUs(J)V

    .line 878
    .end local v6    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 881
    :cond_1
    iput-wide v3, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 883
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v1

    iput v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 884
    iget-object v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v2, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v3, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    .line 886
    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 885
    invoke-virtual {v1, v0, v7, v2}, Landroidx/media3/exoplayer/upstream/Loader;->startLoading(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    move-result-wide v1

    .line 887
    .local v1, "elapsedRealtimeMs":J
    invoke-static {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media3/datasource/DataSpec;

    move-result-object v3

    .line 888
    .local v3, "dataSpec":Landroidx/media3/datasource/DataSpec;
    iget-object v4, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    new-instance v5, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 889
    invoke-static {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v9

    move-object v8, v5

    move-object v11, v3

    move-wide v12, v1

    invoke-direct/range {v8 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    .line 895
    invoke-static {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v15

    iget-wide v13, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 888
    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    move-object v8, v4

    move-object v9, v5

    move-wide v4, v13

    move v13, v6

    move-object/from16 v14, v17

    move-wide/from16 v17, v4

    invoke-virtual/range {v8 .. v18}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 897
    return-void
.end method

.method private suppressRead()Z
    .locals 1

    .line 595
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 2
    .param p1, "loadingInfo"    # Landroidx/media3/exoplayer/LoadingInfo;

    .line 390
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 391
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    move-result v0

    .line 397
    .local v0, "continuedLoading":Z
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->startLoading()V

    .line 399
    const/4 v0, 0x1

    .line 401
    :cond_1
    return v0

    .line 394
    .end local v0    # "continuedLoading":Z
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public discardBuffer(JZ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 368
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isSingleSample:Z

    if-eqz v0, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 373
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 377
    .local v0, "trackEnabledStates":[Z
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v1

    .line 378
    .local v1, "trackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 379
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->discardTo(JZZ)V

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public endTracks()V
    .locals 2

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    .line 739
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 740
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 9
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;

    .line 504
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 505
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    const-wide/16 v0, 0x0

    return-wide v0

    .line 509
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 510
    .local v0, "seekPoints":Landroidx/media3/extractor/SeekMap$SeekPoints;
    iget-object v1, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v5, v1, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-object v1, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v7, v1, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    move-object v2, p3

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Landroidx/media3/exoplayer/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public getBufferedPositionUs()J
    .locals 8

    .line 431
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 432
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_0

    goto :goto_2

    .line 434
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    .line 437
    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    .line 438
    .local v3, "largestQueuedTimestampUs":J
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    .line 441
    .local v0, "trackCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 442
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v6, v6, v5

    .line 444
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued()Z

    move-result v6

    if-nez v6, :cond_2

    .line 445
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v6, v6, v5

    .line 446
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 441
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "trackCount":I
    .end local v5    # "i":I
    :cond_3
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v3

    .line 453
    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 454
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    goto :goto_1

    .line 455
    :cond_5
    move-wide v0, v3

    .line 453
    :goto_1
    return-wide v0

    .line 433
    .end local v3    # "largestQueuedTimestampUs":J
    :cond_6
    :goto_2
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 411
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    .line 282
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 283
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method icyTrack()Landroidx/media3/extractor/TrackOutput;
    .locals 3

    .line 750
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepareTrackOutput(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 406
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReady(I)Z
    .locals 2
    .param p1, "track"    # I

    .line 517
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

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

.method synthetic lambda$new$0$androidx-media3-exoplayer-source-ProgressiveMediaPeriod()V
    .locals 1

    .line 221
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->released:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 224
    :cond_0
    return-void
.end method

.method synthetic lambda$onLengthKnown$2$androidx-media3-exoplayer-source-ProgressiveMediaPeriod()V
    .locals 1

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    return-void
.end method

.method synthetic lambda$seekMap$1$androidx-media3-exoplayer-source-ProgressiveMediaPeriod(Landroidx/media3/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Landroidx/media3/extractor/SeekMap;

    .line 744
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->setSeekMap(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method

.method maybeThrowError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/upstream/Loader;->maybeThrowError(I)V

    .line 527
    return-void
.end method

.method maybeThrowError(I)V
    .locals 1
    .param p1, "sampleQueueIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->maybeThrowError()V

    .line 522
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeThrowError()V

    .line 523
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeThrowError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressPrepareError:Z

    if-eqz v1, :cond_2

    .line 267
    const-string v1, "ProgressiveMediaPeriod"

    const-string v2, "Suppressing preparation error because suppressPrepareError=true"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    .line 269
    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->setSeekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 274
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 275
    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 278
    :cond_1
    :goto_1
    return-void

    .line 271
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_2
    throw v0
.end method

.method public onLoadCanceled(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJZ)V
    .locals 15
    .param p1, "loadable"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .line 640
    move-object v0, p0

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media3/datasource/StatsDataSource;

    move-result-object v1

    .line 641
    .local v1, "dataSource":Landroidx/media3/datasource/StatsDataSource;
    new-instance v14, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 643
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    .line 644
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media3/datasource/DataSpec;

    move-result-object v5

    .line 645
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v6

    .line 646
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 649
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v3, v14

    .line 650
    .local v3, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 651
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 658
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v9

    iget-wide v11, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 651
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v12}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 660
    if-nez p6, :cond_1

    .line 661
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 662
    .local v6, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/SampleQueue;->reset()V

    .line 661
    .end local v6    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 664
    :cond_0
    iget v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-lez v2, :cond_1

    .line 665
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v2, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 668
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 78
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->onLoadCanceled(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .locals 16
    .param p1, "loadable"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 603
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v1}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v1

    .line 605
    .local v1, "isSeekable":Z
    nop

    .line 606
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v3

    .line 607
    .local v3, "largestQueuedTimestampUs":J
    nop

    .line 608
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 609
    const-wide/16 v5, 0x0

    goto :goto_0

    .line 610
    :cond_0
    const-wide/16 v5, 0x2710

    add-long/2addr v5, v3

    :goto_0
    iput-wide v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 611
    iget-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    iget-wide v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    iget-boolean v8, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    invoke-interface {v5, v6, v7, v1, v8}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JZZ)V

    .line 613
    .end local v1    # "isSeekable":Z
    .end local v3    # "largestQueuedTimestampUs":J
    :cond_1
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media3/datasource/StatsDataSource;

    move-result-object v1

    .line 614
    .local v1, "dataSource":Landroidx/media3/datasource/StatsDataSource;
    new-instance v15, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 616
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v4

    .line 617
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media3/datasource/DataSpec;

    move-result-object v6

    .line 618
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v7

    .line 619
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 622
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v4, v15

    .line 623
    .local v4, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    iget-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 624
    iget-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 631
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v10

    iget-wide v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 624
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 633
    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 634
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 635
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 78
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->onLoadCompleted(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 28
    .param p1, "loadable"    # Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 677
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media3/datasource/StatsDataSource;

    move-result-object v1

    .line 678
    .local v1, "dataSource":Landroidx/media3/datasource/StatsDataSource;
    new-instance v14, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 680
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    .line 681
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media3/datasource/DataSpec;

    move-result-object v5

    .line 682
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v6

    .line 683
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 686
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 687
    .local v2, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    new-instance v13, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 694
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 695
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v11

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 697
    .local v3, "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    iget-object v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    new-instance v5, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct {v5, v2, v3, v6, v7}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 698
    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v4

    .line 700
    .local v4, "retryDelayMs":J
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v8

    const/4 v9, 0x1

    if-nez v8, :cond_0

    .line 701
    sget-object v8, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-object/from16 v11, p1

    .local v8, "loadErrorAction":Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    goto :goto_2

    .line 703
    .end local v8    # "loadErrorAction":Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v8

    .line 704
    .local v8, "extractedSamplesCount":I
    iget v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v8, v10, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 706
    .local v10, "madeProgress":Z
    :goto_0
    move-object/from16 v11, p1

    invoke-direct {v0, v11, v8}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->configureRetry(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 707
    invoke-static {v10, v4, v5}, Landroidx/media3/exoplayer/upstream/Loader;->createRetryAction(ZJ)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v12

    goto :goto_1

    .line 708
    :cond_2
    sget-object v12, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    :goto_1
    move-object v8, v12

    .line 711
    .end local v10    # "madeProgress":Z
    .local v8, "loadErrorAction":Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    :goto_2
    invoke-virtual {v8}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v10

    xor-int/2addr v9, v10

    .line 712
    .local v9, "wasCanceled":Z
    iget-object v15, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 719
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v22

    iget-wide v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 712
    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-wide/from16 v24, v12

    move-object/from16 v26, p6

    move/from16 v27, v9

    invoke-virtual/range {v15 .. v27}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 723
    if-eqz v9, :cond_3

    .line 724
    iget-object v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v12

    invoke-interface {v10, v12, v13}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 726
    :cond_3
    return-object v8
.end method

.method public bridge synthetic onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 8

    .line 78
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->onLoadError(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .locals 4

    .line 248
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 249
    .local v3, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->release()V

    .line 248
    .end local v3    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;->release()V

    .line 252
    return-void
.end method

.method public onUpstreamFormatChanged(Landroidx/media3/common/Format;)V
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 757
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 1
    .param p1, "callback"    # Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 256
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 257
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    .line 258
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->startLoading()V

    .line 259
    return-void
.end method

.method readData(ILandroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 3
    .param p1, "sampleQueueIndex"    # I
    .param p2, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .param p3, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .param p4, "readFlags"    # I

    .line 534
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    .line 535
    return v1

    .line 537
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 538
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 539
    invoke-virtual {v0, p2, p3, p4, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v0

    .line 540
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    .line 541
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    .line 543
    :cond_1
    return v0
.end method

.method public readDiscontinuity()J
    .locals 3

    .line 416
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 417
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 418
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    .line 421
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1

    .line 422
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v2, :cond_2

    .line 423
    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 424
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    .line 426
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0
    .param p1, "positionUs"    # J

    .line 386
    return-void
.end method

.method public release()V
    .locals 4

    .line 233
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 237
    .local v3, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->preRelease()V

    .line 236
    .end local v3    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/Loader;->release(Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    .line 241
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 242
    iput-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->released:Z

    .line 244
    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 2
    .param p1, "seekMap"    # Landroidx/media3/extractor/SeekMap;

    .line 744
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroidx/media3/extractor/SeekMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 745
    return-void
.end method

.method public seekToUs(J)J
    .locals 6
    .param p1, "positionUs"    # J

    .line 460
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 461
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 463
    .local v0, "trackIsAudioVideoFlags":[Z
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v1}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v1, p1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide p1, v1

    .line 465
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 466
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 467
    .local v2, "isSameAsLastSeekPosition":Z
    :goto_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 468
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 470
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 471
    return-wide p1

    .line 476
    :cond_2
    iget v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_4

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 477
    invoke-virtual {v3}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 478
    :cond_3
    invoke-direct {p0, v0, p1, p2, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekInsideBufferUs([ZJZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 479
    return-wide p1

    .line 483
    :cond_4
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 484
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 485
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 486
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 487
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 489
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    .line 490
    .local v5, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    .line 489
    .end local v5    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 492
    :cond_5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->cancelLoading()V

    goto :goto_4

    .line 494
    :cond_6
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/upstream/Loader;->clearFatalError()V

    .line 495
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v4, v3

    :goto_3
    if-ge v1, v4, :cond_7

    aget-object v5, v3, v1

    .line 496
    .restart local v5    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/SampleQueue;->reset()V

    .line 495
    .end local v5    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 499
    :cond_7
    :goto_4
    return-wide p1
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 16
    .param p1, "selections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media3/exoplayer/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 293
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 294
    iget-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 295
    .local v5, "tracks":Landroidx/media3/exoplayer/source/TrackGroupArray;
    iget-object v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 296
    .local v6, "trackEnabledStates":[Z
    iget v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 298
    .local v7, "oldEnabledTrackCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v8, v9, :cond_2

    .line 299
    aget-object v9, v2, v8

    if-eqz v9, :cond_1

    aget-object v9, v1, v8

    if-eqz v9, :cond_0

    aget-boolean v9, p2, v8

    if-nez v9, :cond_1

    .line 300
    :cond_0
    aget-object v9, v2, v8

    check-cast v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-static {v9}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->access$000(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;)I

    move-result v9

    .line 301
    .local v9, "track":I
    aget-boolean v12, v6, v9

    invoke-static {v12}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 302
    iget v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v12, v11

    iput v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 303
    aput-boolean v10, v6, v9

    .line 304
    const/4 v10, 0x0

    aput-object v10, v2, v8

    .line 298
    .end local v9    # "track":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 311
    .end local v8    # "i":I
    :cond_2
    iget-boolean v8, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz v8, :cond_3

    if-nez v7, :cond_4

    :goto_1
    move v8, v11

    goto :goto_2

    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-eqz v8, :cond_4

    iget-boolean v8, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isSingleSample:Z

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    move v8, v10

    .line 313
    .local v8, "seekRequired":Z
    :goto_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    array-length v12, v1

    if-ge v9, v12, :cond_9

    .line 314
    aget-object v12, v2, v9

    if-nez v12, :cond_8

    aget-object v12, v1, v9

    if-eqz v12, :cond_8

    .line 315
    aget-object v12, v1, v9

    .line 316
    .local v12, "selection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    invoke-interface {v12}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v13

    if-ne v13, v11, :cond_5

    move v13, v11

    goto :goto_4

    :cond_5
    move v13, v10

    :goto_4
    invoke-static {v13}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 317
    invoke-interface {v12, v10}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v13

    if-nez v13, :cond_6

    move v13, v11

    goto :goto_5

    :cond_6
    move v13, v10

    :goto_5
    invoke-static {v13}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 318
    invoke-interface {v12}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/source/TrackGroupArray;->indexOf(Landroidx/media3/common/TrackGroup;)I

    move-result v13

    .line 319
    .local v13, "track":I
    aget-boolean v14, v6, v13

    xor-int/2addr v14, v11

    invoke-static {v14}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 320
    iget v14, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    add-int/2addr v14, v11

    iput v14, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 321
    aput-boolean v11, v6, v13

    .line 322
    iget-boolean v14, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    invoke-interface {v12}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v15

    iget-boolean v15, v15, Landroidx/media3/common/Format;->hasPrerollSamples:Z

    or-int/2addr v14, v15

    iput-boolean v14, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 323
    new-instance v14, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-direct {v14, v0, v13}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    aput-object v14, v2, v9

    .line 324
    aput-boolean v11, p4, v9

    .line 326
    if-nez v8, :cond_8

    .line 327
    iget-object v14, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v14, v14, v13

    .line 331
    .local v14, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    nop

    .line 332
    invoke-virtual {v14}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v15

    if-eqz v15, :cond_7

    .line 333
    invoke-virtual {v14, v3, v4, v11}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v15

    if-nez v15, :cond_7

    move v15, v11

    goto :goto_6

    :cond_7
    move v15, v10

    :goto_6
    move v8, v15

    .line 313
    .end local v12    # "selection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .end local v13    # "track":I
    .end local v14    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 337
    .end local v9    # "i":I
    :cond_9
    iget v9, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v9, :cond_c

    .line 338
    iput-boolean v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 339
    iput-boolean v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 340
    iput-boolean v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 341
    iget-object v9, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v9}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 343
    iget-object v9, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v12, v9

    :goto_7
    if-ge v10, v12, :cond_a

    aget-object v13, v9, v10

    .line 344
    .local v13, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v13}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    .line 343
    .end local v13    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 346
    :cond_a
    iget-object v9, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v9}, Landroidx/media3/exoplayer/upstream/Loader;->cancelLoading()V

    goto :goto_a

    .line 348
    :cond_b
    iput-boolean v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 349
    iget-object v9, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v12, v9

    :goto_8
    if-ge v10, v12, :cond_e

    aget-object v13, v9, v10

    .line 350
    .restart local v13    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    invoke-virtual {v13}, Landroidx/media3/exoplayer/source/SampleQueue;->reset()V

    .line 349
    .end local v13    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 353
    :cond_c
    if-eqz v8, :cond_e

    .line 354
    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekToUs(J)J

    move-result-wide v3

    .line 356
    .end local p5    # "positionUs":J
    .local v3, "positionUs":J
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    array-length v10, v2

    if-ge v9, v10, :cond_e

    .line 357
    aget-object v10, v2, v9

    if-eqz v10, :cond_d

    .line 358
    aput-boolean v11, p4, v9

    .line 356
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 362
    .end local v9    # "i":I
    :cond_e
    :goto_a
    iput-boolean v11, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    .line 363
    return-wide v3
.end method

.method skipData(IJ)I
    .locals 2
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .line 547
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x0

    return v0

    .line 550
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 551
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v0, v0, p1

    .line 552
    .local v0, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    invoke-virtual {v0, p2, p3, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getSkipCount(JZ)I

    move-result v1

    .line 553
    .local v1, "skipCount":I
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->skip(I)V

    .line 554
    if-nez v1, :cond_1

    .line 555
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    .line 557
    :cond_1
    return v1
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 2
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 733
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepareTrackOutput(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method
