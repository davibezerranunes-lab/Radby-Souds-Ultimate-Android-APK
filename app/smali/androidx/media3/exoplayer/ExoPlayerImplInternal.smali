.class final Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
.implements Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;
.implements Landroidx/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;
.implements Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;
.implements Landroidx/media3/exoplayer/PlayerMessage$Sender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    }
.end annotation


# static fields
.field private static final BUFFERING_MAXIMUM_INTERVAL_MS:J

.field private static final MSG_ADD_MEDIA_SOURCES:I = 0x12

.field private static final MSG_ATTEMPT_RENDERER_ERROR_RECOVERY:I = 0x19

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field private static final MSG_MOVE_MEDIA_SOURCES:I = 0x13

.field private static final MSG_PERIOD_PREPARED:I = 0x8

.field private static final MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL:I = 0x10

.field private static final MSG_PLAYLIST_UPDATE_REQUESTED:I = 0x16

.field private static final MSG_PREPARE:I = 0x1d

.field private static final MSG_RELEASE:I = 0x7

.field private static final MSG_REMOVE_MEDIA_SOURCES:I = 0x14

.field private static final MSG_RENDERER_CAPABILITIES_CHANGED:I = 0x1a

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SEND_MESSAGE:I = 0xe

.field private static final MSG_SEND_MESSAGE_TO_TARGET_THREAD:I = 0xf

.field private static final MSG_SET_FOREGROUND_MODE:I = 0xd

.field private static final MSG_SET_MEDIA_SOURCES:I = 0x11

.field private static final MSG_SET_PAUSE_AT_END_OF_WINDOW:I = 0x17

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SET_PRELOAD_CONFIGURATION:I = 0x1c

.field private static final MSG_SET_REPEAT_MODE:I = 0xb

.field private static final MSG_SET_SEEK_PARAMETERS:I = 0x5

.field private static final MSG_SET_SHUFFLE_ENABLED:I = 0xc

.field private static final MSG_SET_SHUFFLE_ORDER:I = 0x15

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x9

.field private static final MSG_STOP:I = 0x6

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xa

.field private static final MSG_UPDATE_MEDIA_SOURCES_WITH_MEDIA_ITEMS:I = 0x1b

.field private static final PLAYBACK_BUFFER_EMPTY_THRESHOLD_US:J = 0x7a120L

.field private static final PLAYBACK_STUCK_AFTER_MS:J = 0xfa0L

.field private static final READY_MAXIMUM_INTERVAL_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private final analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field private final applicationLooperHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final backBufferDurationUs:J

.field private final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field private final clock:Landroidx/media3/common/util/Clock;

.field private deliverPendingMessageAtStartPositionRequired:Z

.field private final dynamicSchedulingEnabled:Z

.field private final emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field private enabledRendererCount:I

.field private foregroundMode:Z

.field private final handler:Landroidx/media3/common/util/HandlerWrapper;

.field private isRebuffering:Z

.field private lastPreloadPoolInvalidationTimeline:Landroidx/media3/common/Timeline;

.field private lastRebufferRealtimeMs:J

.field private final livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

.field private final loadControl:Landroidx/media3/exoplayer/LoadControl;

.field private final mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

.field private final mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

.field private nextPendingMessageIndexHint:I

.field private offloadSchedulingEnabled:Z

.field private pauseAtEndOfWindow:Z

.field private pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

.field private final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPauseAtEndOfPeriod:Z

.field private pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

.field private playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field private final playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private final playbackLooper:Landroid/os/Looper;

.field private final playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

.field private playbackMaybeBecameStuckAtMs:J

.field private final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field private final queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

.field private final releaseTimeoutMs:J

.field private released:Z

.field private final rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

.field private rendererPositionElapsedRealtimeUs:J

.field private rendererPositionUs:J

.field private final rendererReportedReady:[Z

.field private final renderers:[Landroidx/media3/exoplayer/Renderer;

.field private final renderersToReset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private repeatMode:I

.field private requestForRendererSleep:Z

.field private final retainBackBufferFromKeyframe:Z

.field private seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field private setForegroundModeTimeoutMs:J

.field private shouldContinueLoading:Z

.field private shuffleModeEnabled:Z

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$4ByVomVrDZGMrfXELlhTrFd0naQ(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/MediaPeriodInfo;J)Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->createMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;J)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GiYIuSgkdcClbkNSWm6YyOduvLI(Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 166
    nop

    .line 167
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->BUFFERING_MAXIMUM_INTERVAL_MS:J

    .line 166
    return-void
.end method

.method public constructor <init>([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/LivePlaybackSpeedControl;JZZLandroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/PlaybackLooperProvider;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 17
    .param p1, "renderers"    # [Landroidx/media3/exoplayer/Renderer;
    .param p2, "trackSelector"    # Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .param p3, "emptyTrackSelectorResult"    # Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .param p4, "loadControl"    # Landroidx/media3/exoplayer/LoadControl;
    .param p5, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .param p6, "repeatMode"    # I
    .param p7, "shuffleModeEnabled"    # Z
    .param p8, "analyticsCollector"    # Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .param p9, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;
    .param p10, "livePlaybackSpeedControl"    # Landroidx/media3/exoplayer/LivePlaybackSpeedControl;
    .param p11, "releaseTimeoutMs"    # J
    .param p13, "pauseAtEndOfWindow"    # Z
    .param p14, "dynamicSchedulingEnabled"    # Z
    .param p15, "applicationLooper"    # Landroid/os/Looper;
    .param p16, "clock"    # Landroidx/media3/common/util/Clock;
    .param p17, "playbackInfoUpdateListener"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;
    .param p18, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p19, "playbackLooperProvider"    # Landroidx/media3/exoplayer/PlaybackLooperProvider;
    .param p20, "preloadConfiguration"    # Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-wide/from16 v6, p11

    move-object/from16 v8, p16

    move-object/from16 v9, p18

    move-object/from16 v10, p20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 260
    move-object/from16 v11, p17

    iput-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 261
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 262
    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 263
    move-object/from16 v12, p3

    iput-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 264
    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 265
    iput-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 266
    move/from16 v13, p6

    iput v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    .line 267
    move/from16 v14, p7

    iput-boolean v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 268
    move-object/from16 v15, p9

    iput-object v15, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 269
    move-object/from16 v11, p10

    iput-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 270
    iput-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseTimeoutMs:J

    .line 271
    iput-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    .line 272
    move/from16 v6, p13

    iput-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 273
    move/from16 v7, p14

    iput-boolean v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->dynamicSchedulingEnabled:Z

    .line 274
    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 275
    iput-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 276
    iput-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 277
    iput-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 279
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 280
    iput-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    .line 281
    invoke-interface {v3, v9}, Landroidx/media3/exoplayer/LoadControl;->getBackBufferDurationUs(Landroidx/media3/exoplayer/analytics/PlayerId;)J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 282
    invoke-interface {v3, v9}, Landroidx/media3/exoplayer/LoadControl;->retainBackBufferFromKeyframe(Landroidx/media3/exoplayer/analytics/PlayerId;)Z

    move-result v6

    iput-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 283
    sget-object v6, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    iput-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastPreloadPoolInvalidationTimeline:Landroidx/media3/common/Timeline;

    .line 285
    invoke-static/range {p3 .. p3}, Landroidx/media3/exoplayer/PlaybackInfo;->createDummy(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 286
    new-instance v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    iput-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 287
    array-length v6, v1

    new-array v6, v6, [Landroidx/media3/exoplayer/RendererCapabilities;

    iput-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 288
    array-length v6, v1

    new-array v6, v6, [Z

    iput-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererReportedReady:[Z

    .line 290
    nop

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->getRendererCapabilitiesListener()Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    move-result-object v6

    .line 292
    .local v6, "rendererCapabilitiesListener":Landroidx/media3/exoplayer/RendererCapabilities$Listener;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v3, v1

    if-ge v7, v3, :cond_1

    .line 293
    aget-object v3, v1, v7

    invoke-interface {v3, v7, v9, v8}, Landroidx/media3/exoplayer/Renderer;->init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V

    .line 294
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v16, v1, v7

    invoke-interface/range {v16 .. v16}, Landroidx/media3/exoplayer/Renderer;->getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v16

    aput-object v16, v3, v7

    .line 295
    if-eqz v6, :cond_0

    .line 296
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v3, v3, v7

    invoke-interface {v3, v6}, Landroidx/media3/exoplayer/RendererCapabilities;->setListener(Landroidx/media3/exoplayer/RendererCapabilities$Listener;)V

    .line 292
    :cond_0
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p4

    goto :goto_0

    .line 299
    .end local v7    # "i":I
    :cond_1
    new-instance v3, Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-direct {v3, v0, v8}, Landroidx/media3/exoplayer/DefaultMediaClock;-><init>(Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;Landroidx/media3/common/util/Clock;)V

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 300
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 301
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    .line 302
    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 303
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 304
    invoke-virtual {v2, v0, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->init(Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    .line 306
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 308
    const/4 v3, 0x0

    move-object/from16 v7, p15

    invoke-interface {v8, v7, v3}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->applicationLooperHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 309
    new-instance v3, Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->applicationLooperHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    invoke-direct {v3, v5, v1, v2, v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 315
    new-instance v1, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->applicationLooperHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-direct {v1, v0, v5, v2, v9}, Landroidx/media3/exoplayer/MediaSourceList;-><init>(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 319
    nop

    .line 320
    if-nez p19, :cond_2

    new-instance v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-direct {v1}, Landroidx/media3/exoplayer/PlaybackLooperProvider;-><init>()V

    goto :goto_1

    :cond_2
    move-object/from16 v1, p19

    :goto_1
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 321
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlaybackLooperProvider;->obtainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 322
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-interface {v8, v1, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 323
    return-void
.end method

.method static synthetic access$602(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    return p1
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 85
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->dynamicSchedulingEnabled:Z

    return v0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 85
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    return v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Landroidx/media3/common/util/HandlerWrapper;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 85
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    return-object v0
.end method

.method private addMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .locals 4
    .param p1, "addMessage"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;
    .param p2, "insertionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 826
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 828
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaSourceList;->getSize()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    .line 829
    :goto_0
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v2

    .line 830
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v3

    .line 827
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/exoplayer/MediaSourceList;->addMediaSources(ILjava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 831
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    .line 832
    return-void
.end method

.method private allowRenderersToRenderStartOfStreams()V
    .locals 3

    .line 2480
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 2481
    .local v0, "playingTracks":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2482
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2483
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->enableMayRenderStartOfStream()V

    .line 2481
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2486
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private attemptRendererErrorRecovery()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternalAndSeek()V

    .line 1001
    return-void
.end method

.method private createMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;J)Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 12
    .param p1, "mediaPeriodInfo"    # Landroidx/media3/exoplayer/MediaPeriodInfo;
    .param p2, "rendererPositionOffsetUs"    # J

    .line 327
    new-instance v11, Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 331
    invoke-interface {v0}, Landroidx/media3/exoplayer/LoadControl;->getAllocator()Landroidx/media3/exoplayer/upstream/Allocator;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;->targetPreloadDurationUs:J

    move-object v0, v11

    move-wide v2, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/MediaPeriodHolder;-><init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;J)V

    .line 327
    return-object v11
.end method

.method private deliverMessage(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 4
    .param p1, "message"    # Landroidx/media3/exoplayer/PlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1748
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    return-void

    .line 1752
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->getTarget()Landroidx/media3/exoplayer/PlayerMessage$Target;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    .line 1755
    nop

    .line 1756
    return-void

    .line 1754
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    .line 1755
    throw v1
.end method

.method private disableRenderer(I)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1852
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v0, v0, p1

    .line 1853
    .local v0, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1854
    return-void

    .line 1856
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    .line 1857
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->onRendererDisabled(Landroidx/media3/exoplayer/Renderer;)V

    .line 1858
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->ensureStopped(Landroidx/media3/exoplayer/Renderer;)V

    .line 1859
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->disable()V

    .line 1860
    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 1861
    return-void
.end method

.method private doSomeWork()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 1102
    .local v1, "operationStartTimeMs":J
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 1104
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePeriods()V

    .line 1106
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_21

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    goto/16 :goto_10

    .line 1112
    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    .line 1113
    .local v3, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v3, :cond_1

    .line 1115
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->scheduleNextWork(J)V

    .line 1116
    return-void

    .line 1119
    :cond_1
    const-string v7, "doSomeWork"

    invoke-static {v7}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1121
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1123
    const/4 v7, 0x1

    .line 1124
    .local v7, "renderersEnded":Z
    const/4 v8, 0x1

    .line 1125
    .local v8, "renderersAllowPlayback":Z
    iget-boolean v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_b

    .line 1126
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v9}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    iput-wide v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionElapsedRealtimeUs:J

    .line 1127
    iget-object v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v11, v11, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v11, v13

    iget-boolean v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v9, v11, v12, v13}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    .line 1129
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v11, v11

    if-ge v9, v11, :cond_a

    .line 1130
    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v11, v11, v9

    .line 1131
    .local v11, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-static {v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1132
    invoke-direct {v0, v9, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    .line 1133
    goto/16 :goto_7

    .line 1138
    :cond_2
    iget-wide v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionElapsedRealtimeUs:J

    invoke-interface {v11, v12, v13, v14, v15}, Landroidx/media3/exoplayer/Renderer;->render(JJ)V

    .line 1139
    if-eqz v7, :cond_3

    invoke-interface {v11}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v5

    goto :goto_1

    :cond_3
    move v12, v10

    :goto_1
    move v7, v12

    .line 1145
    iget-object v12, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v12, v12, v9

    invoke-interface {v11}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v13

    if-eq v12, v13, :cond_4

    move v12, v5

    goto :goto_2

    :cond_4
    move v12, v10

    .line 1146
    .local v12, "isReadingAhead":Z
    :goto_2
    if-nez v12, :cond_5

    invoke-interface {v11}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v5

    goto :goto_3

    :cond_5
    move v13, v10

    .line 1147
    .local v13, "isWaitingForNextStream":Z
    :goto_3
    if-nez v12, :cond_7

    if-nez v13, :cond_7

    .line 1148
    invoke-interface {v11}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-interface {v11}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_4

    :cond_6
    move v14, v10

    goto :goto_5

    :cond_7
    :goto_4
    move v14, v5

    .line 1149
    .local v14, "allowsPlayback":Z
    :goto_5
    invoke-direct {v0, v9, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    .line 1150
    if-eqz v8, :cond_8

    if-eqz v14, :cond_8

    move v15, v5

    goto :goto_6

    :cond_8
    move v15, v10

    :goto_6
    move v8, v15

    .line 1151
    if-nez v14, :cond_9

    .line 1152
    invoke-direct {v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeThrowRendererStreamError(I)V

    .line 1129
    .end local v11    # "renderer":Landroidx/media3/exoplayer/Renderer;
    .end local v12    # "isReadingAhead":Z
    .end local v13    # "isWaitingForNextStream":Z
    .end local v14    # "allowsPlayback":Z
    :cond_9
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v9    # "i":I
    :cond_a
    goto :goto_8

    .line 1156
    :cond_b
    iget-object v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v9}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 1159
    :goto_8
    iget-object v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v11, v9, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    .line 1160
    .local v11, "playingPeriodDurationUs":J
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v7, :cond_d

    iget-boolean v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v9, :cond_d

    cmp-long v9, v11, v13

    if-eqz v9, :cond_c

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v13, v9, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v9, v11, v13

    if-gtz v9, :cond_d

    :cond_c
    move v9, v5

    goto :goto_9

    :cond_d
    move v9, v10

    .line 1165
    .local v9, "finishedRendering":Z
    :goto_9
    if-eqz v9, :cond_e

    iget-boolean v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v13, :cond_e

    .line 1166
    iput-boolean v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 1167
    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v13, v13, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    const/4 v14, 0x5

    invoke-direct {v0, v10, v13, v10, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V

    .line 1173
    :cond_e
    const/4 v13, 0x3

    if-eqz v9, :cond_f

    iget-object v14, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v14, v14, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-eqz v14, :cond_f

    .line 1174
    invoke-direct {v0, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 1175
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_a

    .line 1176
    :cond_f
    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v14, v14, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v14, v4, :cond_10

    .line 1177
    invoke-direct {v0, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldTransitionToReadyState(Z)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1178
    invoke-direct {v0, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 1179
    const/4 v14, 0x0

    iput-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 1180
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 1181
    invoke-direct {v0, v10, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    .line 1183
    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v14}, Landroidx/media3/exoplayer/DefaultMediaClock;->start()V

    .line 1184
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_a

    .line 1186
    :cond_10
    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v14, v14, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v14, v13, :cond_14

    iget v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v14, :cond_11

    .line 1187
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_a

    :cond_11
    if-nez v8, :cond_14

    .line 1188
    :cond_12
    nop

    .line 1189
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v14

    .line 1188
    invoke-direct {v0, v14, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    .line 1190
    invoke-direct {v0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 1191
    iget-boolean v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    if-eqz v14, :cond_13

    .line 1192
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->notifyTrackSelectionRebuffer()V

    .line 1193
    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v14}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->notifyRebuffer()V

    .line 1195
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    .line 1198
    :cond_14
    :goto_a
    const/4 v14, 0x0

    .line 1199
    .local v14, "playbackMaybeStuck":Z
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v5, v4, :cond_17

    .line 1200
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b
    iget-object v15, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v15, v15

    if-ge v5, v15, :cond_16

    .line 1201
    iget-object v15, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v15, v15, v5

    invoke-static {v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v15

    if-eqz v15, :cond_15

    iget-object v15, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v15, v15, v5

    .line 1202
    invoke-interface {v15}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v15

    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v4, v4, v5

    if-ne v15, v4, :cond_15

    .line 1203
    invoke-direct {v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeThrowRendererStreamError(I)V

    .line 1200
    :cond_15
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x2

    goto :goto_b

    .line 1206
    .end local v5    # "i":I
    :cond_16
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-nez v4, :cond_17

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    const-wide/32 v17, 0x7a120

    cmp-long v4, v4, v17

    if-gez v4, :cond_17

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 1208
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    invoke-direct {v0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1215
    const/4 v14, 0x1

    .line 1219
    :cond_17
    if-nez v14, :cond_18

    .line 1220
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    move/from16 v16, v7

    goto :goto_c

    .line 1221
    :cond_18
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 v16, v7

    .end local v7    # "renderersEnded":Z
    .local v16, "renderersEnded":Z
    iget-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_19

    .line 1222
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v4}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_c

    .line 1223
    :cond_19
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v4}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa0

    cmp-long v4, v4, v6

    if-gez v4, :cond_20

    .line 1227
    :goto_c
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v4, v13, :cond_1a

    const/4 v4, 0x1

    goto :goto_d

    :cond_1a
    move v4, v10

    .line 1228
    .local v4, "isPlaying":Z
    :goto_d
    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v5, :cond_1b

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    if-eqz v5, :cond_1b

    if-eqz v4, :cond_1b

    const/4 v5, 0x1

    goto :goto_e

    :cond_1b
    move v5, v10

    .line 1229
    .local v5, "sleepingForOffload":Z
    :goto_e
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eq v6, v5, :cond_1c

    .line 1230
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v6, v5}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithSleepingForOffload(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1232
    :cond_1c
    iput-boolean v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    .line 1234
    if-nez v5, :cond_1f

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1d

    goto :goto_f

    .line 1236
    :cond_1d
    if-nez v4, :cond_1e

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1e

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v6, v13, :cond_1f

    iget v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-eqz v6, :cond_1f

    .line 1240
    :cond_1e
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->scheduleNextWork(J)V

    .line 1243
    :cond_1f
    :goto_f
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 1244
    return-void

    .line 1224
    .end local v4    # "isPlaying":Z
    .end local v5    # "sleepingForOffload":Z
    :cond_20
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Playback stuck buffering and not loading"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1109
    .end local v3    # "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v8    # "renderersAllowPlayback":Z
    .end local v9    # "finishedRendering":Z
    .end local v11    # "playingPeriodDurationUs":J
    .end local v14    # "playbackMaybeStuck":Z
    .end local v16    # "renderersEnded":Z
    :cond_21
    :goto_10
    return-void
.end method

.method private enableRenderer(IZJ)V
    .locals 23
    .param p1, "rendererIndex"    # I
    .param p2, "wasRendererEnabled"    # Z
    .param p3, "startPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2817
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v1, v1, p1

    .line 2818
    .local v1, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2819
    return-void

    .line 2821
    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v15

    .line 2822
    .local v15, "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v15, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move/from16 v16, v2

    .line 2823
    .local v16, "arePlayingAndReadingTheSamePeriod":Z
    invoke-virtual {v15}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v14

    .line 2824
    .local v14, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v2, v14, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v17, v2, p1

    .line 2826
    .local v17, "rendererConfiguration":Landroidx/media3/exoplayer/RendererConfiguration;
    iget-object v2, v14, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v18, v2, p1

    .line 2827
    .local v18, "newSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    invoke-static/range {v18 .. v18}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getFormats(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;

    move-result-object v19

    .line 2829
    .local v19, "formats":[Landroidx/media3/common/Format;
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move/from16 v20, v2

    .line 2831
    .local v20, "playing":Z
    if-nez p2, :cond_3

    if-eqz v20, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v3

    .line 2833
    .local v8, "joining":Z
    :goto_2
    iget v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 2834
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2835
    iget-object v2, v15, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v5, v2, p1

    iget-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2843
    invoke-virtual {v15}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v12

    iget-object v2, v15, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v10, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2835
    move-object v2, v1

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    move/from16 v9, v16

    move-object/from16 v21, v10

    move-wide/from16 v10, p3

    move-object/from16 v22, v14

    .end local v14    # "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .local v22, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    move-object/from16 v14, v21

    invoke-interface/range {v2 .. v14}, Landroidx/media3/exoplayer/Renderer;->enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 2845
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    const/16 v3, 0xb

    invoke-interface {v1, v3, v2}, Landroidx/media3/exoplayer/Renderer;->handleMessage(ILjava/lang/Object;)V

    .line 2861
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->onRendererEnabled(Landroidx/media3/exoplayer/Renderer;)V

    .line 2863
    if-eqz v20, :cond_4

    if-eqz v16, :cond_4

    .line 2864
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->start()V

    .line 2866
    :cond_4
    return-void
.end method

.method private enableRenderers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2790
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2792
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v1

    .line 2790
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([ZJ)V

    .line 2793
    return-void
.end method

.method private enableRenderers([ZJ)V
    .locals 5
    .param p1, "rendererWasEnabledFlags"    # [Z
    .param p2, "startPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2797
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2798
    .local v0, "readingMediaPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 2801
    .local v1, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2802
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2803
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->reset()V

    .line 2801
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2807
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 2808
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2809
    aget-boolean v3, p1, v2

    invoke-direct {p0, v2, v3, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderer(IZJ)V

    .line 2807
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2812
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    .line 2813
    return-void
.end method

.method private ensureStopped(Landroidx/media3/exoplayer/Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroidx/media3/exoplayer/Renderer;

    .line 1846
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1847
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->stop()V

    .line 1849
    :cond_0
    return-void
.end method

.method private extractMetadataFromTrackSelectionArray([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;
    .locals 9
    .param p1, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Metadata;",
            ">;"
        }
    .end annotation

    .line 2773
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 2774
    .local v0, "result":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Metadata;>;"
    const/4 v1, 0x0

    .line 2775
    .local v1, "seenNonEmptyMetadata":Z
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 2776
    .local v5, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eqz v5, :cond_1

    .line 2777
    invoke-interface {v5, v3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v6

    .line 2778
    .local v6, "format":Landroidx/media3/common/Format;
    iget-object v7, v6, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v7, :cond_0

    .line 2779
    new-instance v7, Landroidx/media3/common/Metadata;

    new-array v8, v3, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v7, v8}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 2781
    :cond_0
    iget-object v7, v6, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 2782
    const/4 v1, 0x1

    .line 2775
    .end local v5    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .end local v6    # "format":Landroidx/media3/common/Format;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2786
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method private getCurrentLiveOffsetUs()J
    .locals 4

    .line 1257
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getLiveOffsetUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFormats(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;
    .locals 4
    .param p0, "newSelection"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 3437
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3438
    .local v0, "length":I
    :goto_0
    new-array v1, v0, [Landroidx/media3/common/Format;

    .line 3439
    .local v1, "formats":[Landroidx/media3/common/Format;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 3440
    invoke-interface {p0, v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3439
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3442
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private getLiveOffsetUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J
    .locals 5
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "periodPositionUs"    # J

    .line 1262
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 1263
    .local v0, "windowIndex":I
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 1264
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-wide v1, v1, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1267
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-wide v3, v3, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 1268
    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long/2addr v3, p3

    sub-long/2addr v1, v3

    .line 1267
    return-wide v1

    .line 1265
    :cond_1
    :goto_0
    return-wide v3
.end method

.method private getMaxRendererReadPositionUs()J
    .locals 9

    .line 2175
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2176
    .local v0, "readingHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v0, :cond_0

    .line 2177
    const-wide/16 v1, 0x0

    return-wide v1

    .line 2179
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    .line 2180
    .local v1, "maxReadPositionUs":J
    iget-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_1

    .line 2181
    return-wide v1

    .line 2183
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 2184
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v4, v4, v3

    .line 2185
    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v4

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2

    .line 2187
    goto :goto_1

    .line 2189
    :cond_2
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide v4

    .line 2190
    .local v4, "readingPositionUs":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 2191
    return-wide v6

    .line 2193
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 2183
    .end local v4    # "readingPositionUs":J
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2196
    .end local v3    # "i":I
    :cond_5
    return-wide v1
.end method

.method private getPlaceholderFirstMediaPeriodPositionUs(Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 10
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1666
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 1667
    invoke-static {}, Landroidx/media3/exoplayer/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1669
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    .line 1670
    .local v0, "firstWindowIndex":I
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 1671
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 1674
    .local v3, "firstPeriodAndPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1675
    invoke-virtual {v4, p1, v5, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v4

    .line 1677
    .local v4, "firstPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1678
    .local v5, "positionUs":J
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1679
    iget-object v7, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v7, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1681
    iget v7, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget v9, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v8, v9}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 1682
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    goto :goto_0

    .line 1683
    :cond_1
    nop

    :goto_0
    move-wide v5, v1

    .line 1685
    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private getTotalBufferedDurationUs()J
    .locals 2

    .line 2900
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalBufferedDurationUs(J)J
    .locals 5
    .param p1, "bufferedPositionInLoadingPeriodUs"    # J

    .line 2904
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2905
    .local v0, "loadingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 2906
    return-wide v1

    .line 2908
    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2909
    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    sub-long v3, p1, v3

    .line 2910
    .local v3, "totalBufferedDurationUs":J
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private handleContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 3
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2607
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLoading(Landroidx/media3/exoplayer/source/MediaPeriod;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2608
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 2609
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0

    .line 2610
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isPreloading(Landroidx/media3/exoplayer/source/MediaPeriod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2611
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinuePreloading()V

    .line 2613
    :cond_1
    :goto_0
    return-void
.end method

.method private handleIoException(Ljava/io/IOException;I)V
    .locals 4
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "errorCode"    # I

    .line 733
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    .line 734
    .local v0, "error":Landroidx/media3/exoplayer/ExoPlaybackException;
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    .line 735
    .local v1, "playingPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-eqz v1, :cond_0

    .line 737
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    .line 739
    :cond_0
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 740
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 741
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 742
    return-void
.end method

.method private handleLoadingMediaPeriodChanged(Z)V
    .locals 6
    .param p1, "loadingTrackSelectionChanged"    # Z

    .line 2876
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2878
    .local v0, "loadingMediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2879
    .local v1, "loadingMediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2880
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 2881
    .local v2, "loadingMediaPeriodChanged":Z
    if-eqz v2, :cond_1

    .line 2882
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2884
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2885
    if-nez v0, :cond_2

    .line 2886
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_1

    .line 2887
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v4

    :goto_1
    iput-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 2888
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 2889
    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_4

    .line 2892
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2894
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v4

    .line 2895
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v5

    .line 2892
    invoke-direct {p0, v3, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    .line 2897
    :cond_4
    return-void
.end method

.method private handleLoadingPeriodPrepared(Landroidx/media3/exoplayer/MediaPeriodHolder;)V
    .locals 11
    .param p1, "loadingPeriodHolder"    # Landroidx/media3/exoplayer/MediaPeriodHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2580
    iget-boolean v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    .line 2581
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 2582
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 2581
    invoke-virtual {p1, v0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->handlePrepared(FLandroidx/media3/common/Timeline;Z)V

    .line 2586
    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2588
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    .line 2589
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v2

    .line 2586
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    .line 2590
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2592
    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 2593
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers()V

    .line 2594
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v7, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 2595
    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2603
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 2604
    return-void
.end method

.method private handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V
    .locals 29
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "isSourceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2038
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget v5, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 2039
    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePositionForPlaylistChange(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;Landroidx/media3/exoplayer/MediaPeriodQueue;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-result-object v13

    .line 2048
    .local v13, "positionUpdate":Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    iget-object v14, v13, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2049
    .local v14, "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-wide v9, v13, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    .line 2050
    .local v9, "newRequestedContentPositionUs":J
    iget-boolean v15, v13, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    .line 2051
    .local v15, "forceBufferingState":Z
    iget-wide v7, v13, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    .line 2052
    .local v7, "newPositionUs":J
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2053
    invoke-virtual {v0, v14}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    move/from16 v16, v0

    .line 2055
    .local v16, "periodPositionChanged":Z
    const/16 v17, 0x3

    const/4 v4, 0x2

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x4

    :try_start_0
    iget-boolean v0, v13, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_3

    .line 2056
    :try_start_1
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v0, v5, :cond_2

    .line 2057
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 2059
    :cond_2
    invoke-direct {v11, v6, v6, v6, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2088
    :catchall_0
    move-exception v0

    move/from16 v20, v1

    move/from16 v21, v5

    move-wide/from16 v24, v9

    move/from16 v26, v15

    const/4 v10, 0x0

    :goto_2
    move v9, v4

    move v15, v6

    const/4 v4, -0x1

    goto/16 :goto_e

    .line 2065
    :cond_3
    :goto_3
    :try_start_2
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    array-length v1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move v2, v6

    :goto_4
    if-ge v2, v1, :cond_4

    :try_start_4
    aget-object v22, v0, v2

    move-object/from16 v23, v22

    .line 2066
    .local v23, "renderer":Landroidx/media3/exoplayer/Renderer;
    move-object/from16 v3, v23

    .end local v23    # "renderer":Landroidx/media3/exoplayer/Renderer;
    .local v3, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-interface {v3, v12}, Landroidx/media3/exoplayer/Renderer;->setTimeline(Landroidx/media3/common/Timeline;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2065
    .end local v3    # "renderer":Landroidx/media3/exoplayer/Renderer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2088
    :catchall_1
    move-exception v0

    move/from16 v21, v5

    move-wide/from16 v24, v9

    move/from16 v26, v15

    const/4 v10, 0x0

    const/16 v20, 0x4

    goto :goto_2

    .line 2068
    :cond_4
    if-nez v16, :cond_5

    .line 2070
    :try_start_5
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2071
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getMaxRendererReadPositionUs()J

    move-result-wide v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2070
    const/16 v20, 0x4

    move-wide/from16 v25, v2

    const/4 v3, -0x1

    move-object/from16 v2, p1

    move-wide/from16 v3, v25

    move/from16 v21, v5

    move-wide/from16 v25, v9

    move v9, v6

    .end local v9    # "newRequestedContentPositionUs":J
    .local v25, "newRequestedContentPositionUs":J
    move-wide/from16 v5, v23

    :try_start_6
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateQueuedPeriods(Landroidx/media3/common/Timeline;JJ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2072
    invoke-direct {v11, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    .line 2088
    .end local v25    # "newRequestedContentPositionUs":J
    .restart local v9    # "newRequestedContentPositionUs":J
    :catchall_2
    move-exception v0

    move/from16 v21, v5

    move-wide/from16 v25, v9

    const/16 v20, 0x4

    move v9, v6

    move-wide/from16 v24, v25

    const/4 v4, -0x1

    const/4 v10, 0x0

    move/from16 v26, v15

    move v15, v9

    const/4 v9, 0x2

    .end local v9    # "newRequestedContentPositionUs":J
    .restart local v25    # "newRequestedContentPositionUs":J
    goto/16 :goto_e

    .line 2074
    .end local v25    # "newRequestedContentPositionUs":J
    .restart local v9    # "newRequestedContentPositionUs":J
    :cond_5
    move/from16 v21, v5

    move-wide/from16 v25, v9

    const/16 v20, 0x4

    move v9, v6

    .end local v9    # "newRequestedContentPositionUs":J
    .restart local v25    # "newRequestedContentPositionUs":J
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v0, :cond_8

    .line 2076
    :try_start_8
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2077
    .local v0, "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :goto_5
    if-eqz v0, :cond_7

    .line 2079
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v14}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2080
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {v1, v12, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 2081
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->updateClipping()V

    .line 2083
    :cond_6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    move-object v0, v1

    goto :goto_5

    .line 2085
    :cond_7
    invoke-direct {v11, v14, v7, v8, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-wide v7, v1

    move-wide/from16 v22, v7

    goto :goto_7

    .line 2088
    .end local v0    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :catchall_3
    move-exception v0

    move-wide/from16 v24, v25

    const/4 v4, -0x1

    const/4 v10, 0x0

    move/from16 v26, v15

    move v15, v9

    const/4 v9, 0x2

    goto/16 :goto_e

    :cond_8
    :goto_6
    move-wide/from16 v22, v7

    .end local v7    # "newPositionUs":J
    .local v22, "newPositionUs":J
    :goto_7
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2093
    iget-boolean v0, v13, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v0, :cond_9

    .line 2094
    move-wide/from16 v6, v22

    goto :goto_8

    .line 2095
    :cond_9
    move-wide/from16 v6, v18

    :goto_8
    nop

    .line 2088
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    .line 2097
    if-nez v16, :cond_b

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v0, v25, v0

    if-eqz v0, :cond_a

    goto :goto_9

    :cond_a
    move-wide/from16 v24, v25

    move/from16 v26, v15

    move v15, v9

    goto :goto_c

    .line 2099
    :cond_b
    :goto_9
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2100
    .local v0, "oldPeriodUid":Ljava/lang/Object;
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2101
    .local v10, "oldTimeline":Landroidx/media3/common/Timeline;
    if-eqz v16, :cond_c

    if-eqz p2, :cond_c

    .line 2104
    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 2105
    invoke-virtual {v10, v0, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-nez v1, :cond_c

    goto :goto_a

    :cond_c
    move/from16 v21, v9

    :goto_a
    move v7, v9

    move-wide/from16 v24, v25

    .end local v25    # "newRequestedContentPositionUs":J
    .local v24, "newRequestedContentPositionUs":J
    move/from16 v9, v21

    .line 2106
    .local v9, "reportDiscontinuity":Z
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 2113
    invoke-virtual {v12, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_d

    .line 2114
    move/from16 v17, v20

    goto :goto_b

    .line 2115
    :cond_d
    nop

    .line 2107
    :goto_b
    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v22

    move-wide/from16 v18, v5

    move-wide/from16 v5, v24

    move/from16 v26, v15

    move v15, v7

    .end local v15    # "forceBufferingState":Z
    .local v26, "forceBufferingState":Z
    move-wide/from16 v7, v18

    move-object/from16 v18, v10

    .end local v10    # "oldTimeline":Landroidx/media3/common/Timeline;
    .local v18, "oldTimeline":Landroidx/media3/common/Timeline;
    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2117
    .end local v0    # "oldPeriodUid":Ljava/lang/Object;
    .end local v9    # "reportDiscontinuity":Z
    .end local v18    # "oldTimeline":Landroidx/media3/common/Timeline;
    :goto_c
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2118
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-direct {v11, v12, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePositions(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    .line 2120
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2121
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2123
    const/4 v10, 0x0

    iput-object v10, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 2125
    :cond_e
    invoke-direct {v11, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 2126
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 2127
    nop

    .line 2128
    return-void

    .line 2088
    .end local v22    # "newPositionUs":J
    .end local v24    # "newRequestedContentPositionUs":J
    .end local v26    # "forceBufferingState":Z
    .restart local v7    # "newPositionUs":J
    .restart local v15    # "forceBufferingState":Z
    .restart local v25    # "newRequestedContentPositionUs":J
    :catchall_4
    move-exception v0

    move-wide/from16 v24, v25

    const/4 v4, -0x1

    const/4 v10, 0x0

    move/from16 v26, v15

    move v15, v9

    const/4 v9, 0x2

    .end local v15    # "forceBufferingState":Z
    .end local v25    # "newRequestedContentPositionUs":J
    .restart local v24    # "newRequestedContentPositionUs":J
    .restart local v26    # "forceBufferingState":Z
    goto :goto_e

    .end local v24    # "newRequestedContentPositionUs":J
    .end local v26    # "forceBufferingState":Z
    .local v9, "newRequestedContentPositionUs":J
    .restart local v15    # "forceBufferingState":Z
    :catchall_5
    move-exception v0

    move/from16 v21, v5

    move-wide/from16 v24, v9

    move/from16 v26, v15

    const/4 v10, 0x0

    const/16 v20, 0x4

    goto :goto_d

    :catchall_6
    move-exception v0

    move/from16 v20, v1

    move/from16 v21, v5

    move-wide/from16 v24, v9

    move/from16 v26, v15

    const/4 v10, 0x0

    :goto_d
    move v9, v4

    move v15, v6

    const/4 v4, -0x1

    .end local v9    # "newRequestedContentPositionUs":J
    .end local v15    # "forceBufferingState":Z
    .restart local v24    # "newRequestedContentPositionUs":J
    .restart local v26    # "forceBufferingState":Z
    :goto_e
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2093
    iget-boolean v1, v13, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v1, :cond_f

    .line 2094
    move-wide/from16 v18, v7

    goto :goto_f

    .line 2095
    :cond_f
    nop

    :goto_f
    nop

    .line 2088
    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move v10, v4

    move-object v4, v5

    move-object v5, v6

    move-wide/from16 v27, v7

    .end local v7    # "newPositionUs":J
    .local v27, "newPositionUs":J
    move-wide/from16 v6, v18

    move/from16 v8, v22

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    .line 2097
    if-nez v16, :cond_11

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v1, v24, v1

    if-eqz v1, :cond_10

    goto :goto_10

    :cond_10
    const/4 v15, 0x0

    goto :goto_13

    .line 2099
    :cond_11
    :goto_10
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v7, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2100
    .local v7, "oldPeriodUid":Ljava/lang/Object;
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2101
    .local v8, "oldTimeline":Landroidx/media3/common/Timeline;
    if-eqz v16, :cond_12

    if-eqz p2, :cond_12

    .line 2104
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 2105
    invoke-virtual {v8, v7, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-nez v1, :cond_12

    goto :goto_11

    :cond_12
    move/from16 v21, v15

    :goto_11
    move v5, v9

    move/from16 v9, v21

    .line 2106
    .local v9, "reportDiscontinuity":Z
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 2113
    invoke-virtual {v12, v7}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v10, :cond_13

    .line 2114
    move/from16 v10, v20

    goto :goto_12

    .line 2115
    :cond_13
    move/from16 v10, v17

    .line 2107
    :goto_12
    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v17, v3

    move-wide/from16 v3, v27

    move-wide/from16 v5, v24

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    .end local v7    # "oldPeriodUid":Ljava/lang/Object;
    .end local v8    # "oldTimeline":Landroidx/media3/common/Timeline;
    .local v19, "oldPeriodUid":Ljava/lang/Object;
    .local v20, "oldTimeline":Landroidx/media3/common/Timeline;
    move-wide/from16 v7, v17

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2117
    .end local v9    # "reportDiscontinuity":Z
    .end local v19    # "oldPeriodUid":Ljava/lang/Object;
    .end local v20    # "oldTimeline":Landroidx/media3/common/Timeline;
    :goto_13
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2118
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-direct {v11, v12, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePositions(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    .line 2120
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1, v12}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2121
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2123
    iput-object v15, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 2125
    :cond_14
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 2126
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 2127
    throw v0
.end method

.method private handlePeriodPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 4
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2561
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLoading(Landroidx/media3/exoplayer/source/MediaPeriod;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2562
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingPeriodPrepared(Landroidx/media3/exoplayer/MediaPeriodHolder;)V

    goto :goto_0

    .line 2564
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPreloadHolderByMediaPeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2565
    .local v0, "preloadHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-eqz v0, :cond_1

    .line 2566
    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 2567
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 2568
    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 2567
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->handlePrepared(FLandroidx/media3/common/Timeline;Z)V

    .line 2571
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isPreloading(Landroidx/media3/exoplayer/source/MediaPeriod;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2572
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinuePreloading()V

    .line 2576
    .end local v0    # "preloadHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_1
    :goto_0
    return-void
.end method

.method private handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V
    .locals 5
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .param p2, "currentPlaybackSpeed"    # F
    .param p3, "updatePlaybackInfo"    # Z
    .param p4, "acknowledgeCommand"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2631
    if-eqz p3, :cond_1

    .line 2632
    if-eqz p4, :cond_0

    .line 2633
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 2635
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2637
    :cond_1
    iget v0, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateTrackSelectionPlaybackSpeed(F)V

    .line 2638
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 2639
    .local v3, "renderer":Landroidx/media3/exoplayer/Renderer;
    if-eqz v3, :cond_2

    .line 2640
    iget v4, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-interface {v3, p2, v4}, Landroidx/media3/exoplayer/Renderer;->setPlaybackSpeed(FF)V

    .line 2638
    .end local v3    # "renderer":Landroidx/media3/exoplayer/Renderer;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2644
    :cond_3
    return-void
.end method

.method private handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;Z)V
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .param p2, "acknowledgeCommand"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2618
    iget v0, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    .line 2623
    return-void
.end method

.method private handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 18
    .param p1, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "positionUs"    # J
    .param p4, "requestedContentPositionUs"    # J
    .param p6, "discontinuityStartPositionUs"    # J
    .param p8, "reportDiscontinuity"    # Z
    .param p9, "discontinuityReason"    # I

    .line 2725
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-wide/from16 v12, p4

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2728
    invoke-virtual {v14, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 2729
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2730
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 2731
    .local v1, "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 2732
    .local v2, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2733
    .local v3, "staticMetadata":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Metadata;>;"
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2734
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    .line 2736
    .local v4, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v4, :cond_2

    .line 2737
    sget-object v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_2

    .line 2738
    :cond_2
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v5

    :goto_2
    move-object v1, v5

    .line 2740
    if-nez v4, :cond_3

    .line 2741
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_3

    .line 2742
    :cond_3
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v5

    :goto_3
    move-object v2, v5

    .line 2743
    iget-object v5, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-direct {v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->extractMetadataFromTrackSelectionArray([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 2745
    if-eqz v4, :cond_4

    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v5, v5, v12

    if-eqz v5, :cond_4

    .line 2747
    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 2748
    invoke-virtual {v5, v12, v13}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v5

    iput-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 2750
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdateOffloadScheduling()V

    .end local v4    # "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    goto :goto_4

    .line 2751
    :cond_5
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v14, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2753
    sget-object v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 2754
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 2755
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_5

    .line 2751
    :cond_6
    :goto_4
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 2757
    .end local v1    # "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v2    # "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .end local v3    # "staticMetadata":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Metadata;>;"
    .local v15, "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .local v16, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .local v17, "staticMetadata":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Metadata;>;"
    :goto_5
    if-eqz p8, :cond_7

    .line 2758
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    move/from16 v11, p9

    invoke-virtual {v1, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    goto :goto_6

    .line 2757
    :cond_7
    move/from16 v11, p9

    .line 2760
    :goto_6
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2765
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v9

    .line 2760
    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-virtual/range {v1 .. v13}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    return-object v1
.end method

.method private hasReachedServerSideInsertedAdsTransition(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 5
    .param p1, "renderer"    # Landroidx/media3/exoplayer/Renderer;
    .param p2, "reading"    # Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2532
    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2538
    .local v0, "nextPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v1, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroidx/media3/exoplayer/text/TextRenderer;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    if-nez v1, :cond_0

    .line 2542
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2538
    :goto_0
    return v1
.end method

.method private hasReadingPeriodFinishedReading()Z
    .locals 6

    .line 2512
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2513
    .local v0, "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2514
    return v2

    .line 2516
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 2517
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v3, v3, v1

    .line 2518
    .local v3, "renderer":Landroidx/media3/exoplayer/Renderer;
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v4, v4, v1

    .line 2519
    .local v4, "sampleStream":Landroidx/media3/exoplayer/source/SampleStream;
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v5

    if-ne v5, v4, :cond_2

    if-eqz v4, :cond_1

    .line 2521
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2522
    invoke-direct {p0, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->hasReachedServerSideInsertedAdsTransition(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 2516
    .end local v3    # "renderer":Landroidx/media3/exoplayer/Renderer;
    .end local v4    # "sampleStream":Landroidx/media3/exoplayer/source/SampleStream;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2524
    .restart local v3    # "renderer":Landroidx/media3/exoplayer/Renderer;
    .restart local v4    # "sampleStream":Landroidx/media3/exoplayer/source/SampleStream;
    :cond_2
    :goto_1
    return v2

    .line 2527
    .end local v1    # "i":I
    .end local v3    # "renderer":Landroidx/media3/exoplayer/Renderer;
    .end local v4    # "sampleStream":Landroidx/media3/exoplayer/source/SampleStream;
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private static isIgnorableServerSideAdInsertionPeriodChange(ZLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;J)Z
    .locals 4
    .param p0, "isUsingPlaceholderPeriod"    # Z
    .param p1, "oldPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "oldContentPositionUs"    # J
    .param p4, "newPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p5, "newPeriod"    # Landroidx/media3/common/Timeline$Period;
    .param p6, "newContentPositionUs"    # J

    .line 3168
    const/4 v0, 0x0

    if-nez p0, :cond_4

    cmp-long v1, p2, p6

    if-nez v1, :cond_4

    iget-object v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 3170
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3174
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, v1}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3176
    iget v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p5, v1, v3}, Landroidx/media3/common/Timeline$Period;->getAdState(II)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    iget v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 3178
    invoke-virtual {p5, v1, v3}, Landroidx/media3/common/Timeline$Period;->getAdState(II)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    nop

    .line 3176
    :goto_0
    return v0

    .line 3182
    :cond_2
    invoke-virtual {p4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, v1}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 3172
    :cond_4
    :goto_1
    return v0
.end method

.method private isLoadingPossible(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 4
    .param p1, "mediaPeriodHolder"    # Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2703
    if-eqz p1, :cond_0

    .line 2704
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasLoadingError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2705
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2703
    :goto_0
    return v0
.end method

.method private static isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z
    .locals 1
    .param p0, "renderer"    # Landroidx/media3/exoplayer/Renderer;

    .line 3446
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTimelineReady()Z
    .locals 5

    .line 2028
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2029
    .local v0, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    .line 2030
    .local v1, "playingPeriodDurationUs":J
    iget-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v3, v3, v1

    if-ltz v3, :cond_0

    .line 2033
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 2030
    :goto_0
    return v3
.end method

.method private static isUsingPlaceholderPeriod(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline$Period;)Z
    .locals 3
    .param p0, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 3187
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3188
    .local v0, "periodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 3189
    .local v1, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-boolean v2, v2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private maybeContinueLoading()V
    .locals 4

    .line 2647
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 2648
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_0

    .line 2649
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2650
    .local v0, "loadingPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    new-instance v1, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2652
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 2653
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setPlaybackSpeed(F)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    .line 2654
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setLastRebufferRealtimeMs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    .line 2655
    invoke-virtual {v1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->build()Landroidx/media3/exoplayer/LoadingInfo;

    move-result-object v1

    .line 2650
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)V

    .line 2657
    .end local v0    # "loadingPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateIsLoading()V

    .line 2658
    return-void
.end method

.method private maybeContinuePreloading()V
    .locals 6

    .line 2359
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->maybeUpdatePreloadMediaPeriodHolder()V

    .line 2360
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPreloadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2361
    .local v0, "preloading":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-eqz v0, :cond_4

    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2363
    invoke-interface {v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2367
    iget-boolean v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    .line 2364
    :goto_0
    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/media3/exoplayer/LoadControl;->shouldContinuePreloading(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 2370
    :cond_2
    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    if-nez v1, :cond_3

    .line 2371
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {v0, p0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    goto :goto_1

    .line 2373
    :cond_3
    new-instance v1, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2375
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 2376
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setPlaybackSpeed(F)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    .line 2377
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setLastRebufferRealtimeMs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    .line 2378
    invoke-virtual {v1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->build()Landroidx/media3/exoplayer/LoadingInfo;

    move-result-object v1

    .line 2373
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)V

    .line 2380
    :goto_1
    return-void

    .line 2368
    :cond_4
    :goto_2
    return-void
.end method

.method private maybeNotifyPlaybackInfoChanged()V
    .locals 2

    .line 784
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 785
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$100(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 787
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 789
    :cond_0
    return-void
.end method

.method private maybeThrowRendererStreamError(I)V
    .locals 8
    .param p1, "rendererIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2951
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v0, v0, p1

    .line 2953
    .local v0, "renderer":Landroidx/media3/exoplayer/Renderer;
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->maybeThrowStreamError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2986
    goto :goto_1

    .line 2954
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2955
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2984
    :pswitch_0
    throw v1

    .line 2958
    :pswitch_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2959
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v2

    .line 2960
    .local v2, "currentTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling track due to error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v4, v4, p1

    .line 2964
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v4

    .line 2963
    invoke-static {v4}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2960
    const-string v4, "ExoPlayerImplInternal"

    invoke-static {v4, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2967
    new-instance v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    .line 2969
    invoke-virtual {v4}, [Landroidx/media3/exoplayer/RendererConfiguration;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v5, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 2970
    invoke-virtual {v5}, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v6, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    iget-object v7, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    .line 2973
    .local v3, "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v4, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    const/4 v5, 0x0

    aput-object v5, v4, p1

    .line 2974
    iget-object v4, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aput-object v5, v4, p1

    .line 2975
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(I)V

    .line 2976
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2977
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 2978
    const/4 v7, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J

    .line 2982
    nop

    .line 2987
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "currentTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .end local v3    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private maybeTriggerOnRendererReadyChanged(IZ)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "allowsPlayback"    # Z

    .line 1247
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererReportedReady:[Z

    aget-boolean v0, v0, p1

    if-eq v0, p2, :cond_0

    .line 1248
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererReportedReady:[Z

    aput-boolean p2, v0, p1

    .line 1249
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->applicationLooperHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;IZ)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 1254
    :cond_0
    return-void
.end method

.method private maybeTriggerPendingMessages(JJ)V
    .locals 7
    .param p1, "oldPeriodPositionUs"    # J
    .param p3, "newPeriodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1783
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 1788
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-eqz v0, :cond_1

    .line 1789
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 1790
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 1794
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1795
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1796
    .local v0, "currentPeriodIndex":I
    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1798
    .local v1, "nextPendingMessageIndex":I
    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 1799
    .local v3, "previousInfo":Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
    :goto_0
    if-eqz v3, :cond_5

    iget v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v4, v0, :cond_3

    iget v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_5

    iget-wide v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_5

    .line 1803
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 1805
    if-lez v1, :cond_4

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    move-object v3, v4

    goto :goto_0

    .line 1808
    :cond_5
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1809
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_2

    .line 1810
    :cond_6
    move-object v4, v2

    :goto_2
    nop

    .line 1811
    .local v4, "nextInfo":Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
    :goto_3
    if-eqz v4, :cond_9

    iget-object v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v5, :cond_9

    iget v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v5, v0, :cond_7

    iget v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v5, v0, :cond_9

    iget-wide v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v5, v5, p1

    if-gtz v5, :cond_9

    .line 1816
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 1818
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 1819
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_4

    .line 1820
    :cond_8
    move-object v5, v2

    :goto_4
    move-object v4, v5

    goto :goto_3

    .line 1823
    :cond_9
    :goto_5
    if-eqz v4, :cond_f

    iget-object v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v5, :cond_f

    iget v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v5, v0, :cond_f

    iget-wide v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v5, v5, p1

    if-lez v5, :cond_f

    iget-wide v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v5, v5, p3

    if-gtz v5, :cond_f

    .line 1829
    :try_start_0
    iget-object v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTarget(Landroidx/media3/exoplayer/PlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    iget-object v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_6

    .line 1834
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 1836
    goto :goto_7

    .line 1832
    :cond_b
    :goto_6
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1838
    :goto_7
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_c

    .line 1839
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_8

    .line 1840
    :cond_c
    move-object v5, v2

    :goto_8
    move-object v4, v5

    goto :goto_5

    .line 1831
    :catchall_0
    move-exception v2

    iget-object v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_9

    .line 1834
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1832
    :cond_e
    :goto_9
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1836
    :goto_a
    throw v2

    .line 1842
    :cond_f
    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    .line 1843
    return-void

    .line 1784
    .end local v0    # "currentPeriodIndex":I
    .end local v1    # "nextPendingMessageIndex":I
    .end local v3    # "previousInfo":Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
    .end local v4    # "nextInfo":Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
    :cond_10
    :goto_b
    return-void
.end method

.method private maybeUpdateLoadingPeriod()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2212
    const/4 v0, 0x0

    .line 2213
    .local v0, "loadingPeriodChanged":Z
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 2214
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->shouldLoadNextMediaPeriod()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2216
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getNextMediaPeriodInfo(JLandroidx/media3/exoplayer/PlaybackInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    .line 2217
    .local v1, "info":Landroidx/media3/exoplayer/MediaPeriodInfo;
    if-eqz v1, :cond_3

    .line 2218
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->enqueueNextMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 2219
    .local v2, "mediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-boolean v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    if-nez v3, :cond_0

    .line 2220
    iget-wide v3, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {v2, p0, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    goto :goto_0

    .line 2221
    :cond_0
    iget-boolean v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_1

    .line 2222
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v4, 0x8

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v3, v4, v5}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 2224
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    if-ne v3, v2, :cond_2

    .line 2225
    iget-wide v3, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 2227
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 2228
    const/4 v0, 0x1

    .line 2231
    .end local v1    # "info":Landroidx/media3/exoplayer/MediaPeriodInfo;
    .end local v2    # "mediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_3
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v1, :cond_4

    .line 2234
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 2235
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateIsLoading()V

    goto :goto_1

    .line 2237
    :cond_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 2239
    :goto_1
    return v0
.end method

.method private maybeUpdateOffloadScheduling()V
    .locals 7

    .line 2458
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2459
    .local v0, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-eqz v0, :cond_4

    .line 2460
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 2461
    .local v1, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    const/4 v2, 0x0

    .line 2462
    .local v2, "isAudioRendererEnabledAndOffloadPreferred":Z
    const/4 v3, 0x1

    .line 2463
    .local v3, "isAudioOnly":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v5, v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 2464
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2465
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v5, v5, v4

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 2466
    const/4 v3, 0x0

    .line 2467
    goto :goto_1

    .line 2469
    :cond_0
    iget-object v5, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v5, v5, v4

    iget v5, v5, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-eqz v5, :cond_1

    .line 2471
    const/4 v2, 0x1

    .line 2463
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2475
    .end local v4    # "i":I
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-direct {p0, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setOffloadSchedulingEnabled(Z)V

    .line 2477
    .end local v1    # "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .end local v2    # "isAudioRendererEnabledAndOffloadPreferred":Z
    .end local v3    # "isAudioOnly":Z
    :cond_4
    return-void
.end method

.method private maybeUpdatePlayingPeriod()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2424
    move-object/from16 v10, p0

    const/4 v0, 0x0

    move v11, v0

    .line 2425
    .local v11, "advancedPlayingPeriod":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldAdvancePlayingPeriod()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2426
    if-eqz v11, :cond_0

    .line 2428
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 2430
    :cond_0
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2431
    .local v12, "newPlayingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2432
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v0, v3, :cond_1

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-object v3, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    move v13, v0

    .line 2437
    .local v13, "isCancelledSSAIAdTransition":Z
    iget-object v0, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-object v0, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v6, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-object v0, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v8, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    if-nez v13, :cond_2

    move v14, v1

    goto :goto_2

    :cond_2
    move v14, v2

    .line 2438
    :goto_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move v8, v14

    move v9, v15

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2445
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2446
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 2447
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2448
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    .line 2450
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->allowRenderersToRenderStartOfStreams()V

    .line 2451
    const/4 v11, 0x1

    .line 2452
    .end local v12    # "newPlayingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v13    # "isCancelledSSAIAdTransition":Z
    goto/16 :goto_0

    .line 2453
    :cond_4
    return-void
.end method

.method private maybeUpdatePreloadPeriods(Z)V
    .locals 4
    .param p1, "loadingPeriodChanged"    # Z

    .line 2345
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-wide v0, v0, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;->targetPreloadDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2347
    return-void

    .line 2349
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastPreloadPoolInvalidationTimeline:Landroidx/media3/common/Timeline;

    .line 2350
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2352
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastPreloadPoolInvalidationTimeline:Landroidx/media3/common/Timeline;

    .line 2353
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->invalidatePreloadPool(Landroidx/media3/common/Timeline;)V

    .line 2355
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinuePreloading()V

    .line 2356
    return-void
.end method

.method private maybeUpdateReadingPeriod()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2243
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2244
    .local v0, "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v0, :cond_0

    .line 2245
    return-void

    .line 2248
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 2272
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->hasReadingPeriodFinishedReading()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2273
    return-void

    .line 2276
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_3

    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2277
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 2279
    return-void

    .line 2282
    :cond_3
    move-object v1, v0

    .line 2283
    .local v1, "oldReadingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v4

    .line 2284
    .local v4, "oldTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->advanceReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2285
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v5

    .line 2287
    .local v5, "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v9, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v10, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v11, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    .line 2295
    iget-boolean v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2296
    invoke-interface {v6}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v8

    cmp-long v2, v8, v2

    if-eqz v2, :cond_5

    .line 2299
    nop

    .line 2300
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v2

    .line 2299
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setAllRendererStreamsFinal(J)V

    .line 2301
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2304
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 2305
    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 2306
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 2308
    :cond_4
    return-void

    .line 2310
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 2311
    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    .line 2312
    .local v3, "oldRendererEnabled":Z
    invoke-virtual {v5, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    .line 2313
    .local v6, "newRendererEnabled":Z
    if-eqz v3, :cond_8

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v8, v8, v2

    invoke-interface {v8}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result v8

    if-nez v8, :cond_8

    .line 2314
    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v8, v8, v2

    invoke-interface {v8}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v8

    const/4 v9, -0x2

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    move v8, v7

    .line 2315
    .local v8, "isNoSampleRenderer":Z
    :goto_1
    iget-object v9, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v9, v9, v2

    .line 2316
    .local v9, "oldConfig":Landroidx/media3/exoplayer/RendererConfiguration;
    iget-object v10, v5, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v10, v10, v2

    .line 2317
    .local v10, "newConfig":Landroidx/media3/exoplayer/RendererConfiguration;
    if-eqz v6, :cond_7

    invoke-virtual {v10, v9}, Landroidx/media3/exoplayer/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v8, :cond_8

    .line 2323
    :cond_7
    iget-object v11, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v11, v11, v2

    .line 2325
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v12

    .line 2323
    invoke-direct {p0, v11, v12, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setCurrentStreamFinal(Landroidx/media3/exoplayer/Renderer;J)V

    .line 2310
    .end local v3    # "oldRendererEnabled":Z
    .end local v6    # "newRendererEnabled":Z
    .end local v8    # "isNoSampleRenderer":Z
    .end local v9    # "oldConfig":Landroidx/media3/exoplayer/RendererConfiguration;
    .end local v10    # "newConfig":Landroidx/media3/exoplayer/RendererConfiguration;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2329
    .end local v2    # "i":I
    :cond_9
    return-void

    .line 2251
    .end local v1    # "oldReadingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v4    # "oldTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .end local v5    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    :cond_a
    :goto_2
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_e

    .line 2252
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v4, v4

    if-ge v1, v4, :cond_e

    .line 2253
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v4, v4, v1

    .line 2254
    .local v4, "renderer":Landroidx/media3/exoplayer/Renderer;
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v5, v5, v1

    .line 2257
    .local v5, "sampleStream":Landroidx/media3/exoplayer/source/SampleStream;
    if-eqz v5, :cond_d

    .line 2258
    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v6

    if-ne v6, v5, :cond_d

    .line 2259
    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2262
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v6, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_c

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v6, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    .line 2263
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v6

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v8, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v6, v8

    goto :goto_4

    .line 2264
    :cond_c
    move-wide v6, v2

    :goto_4
    nop

    .line 2265
    .local v6, "streamEndPositionUs":J
    invoke-direct {p0, v4, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setCurrentStreamFinal(Landroidx/media3/exoplayer/Renderer;J)V

    .line 2252
    .end local v4    # "renderer":Landroidx/media3/exoplayer/Renderer;
    .end local v5    # "sampleStream":Landroidx/media3/exoplayer/source/SampleStream;
    .end local v6    # "streamEndPositionUs":J
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2269
    .end local v1    # "i":I
    :cond_e
    return-void
.end method

.method private maybeUpdateReadingRenderers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2332
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2333
    .local v0, "readingPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2334
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eq v1, v0, :cond_2

    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2339
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->replaceStreamsOrDisableRendererForTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2340
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers()V

    .line 2342
    :cond_1
    return-void

    .line 2337
    :cond_2
    :goto_0
    return-void
.end method

.method private mediaSourceListUpdateRequestedInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 854
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 855
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->createTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 854
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    .line 856
    return-void
.end method

.method private moveMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;)V
    .locals 5
    .param p1, "moveMediaItemsMessage"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 837
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    iget v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    iget v3, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    iget-object v4, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 838
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/MediaSourceList;->moveMediaSourceRange(IIILandroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 843
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    .line 844
    return-void
.end method

.method private notifyTrackSelectionDiscontinuity()V
    .locals 5

    .line 1972
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 1973
    .local v0, "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :goto_0
    if-eqz v0, :cond_2

    .line 1974
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1975
    .local v4, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eqz v4, :cond_0

    .line 1976
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onDiscontinuity()V

    .line 1974
    .end local v4    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1979
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    .line 1981
    :cond_2
    return-void
.end method

.method private notifyTrackSelectionPlayWhenReadyChanged(Z)V
    .locals 5
    .param p1, "playWhenReady"    # Z

    .line 873
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 874
    .local v0, "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :goto_0
    if-eqz v0, :cond_2

    .line 875
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 876
    .local v4, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eqz v4, :cond_0

    .line 877
    invoke-interface {v4, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    .line 875
    .end local v4    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 880
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    .line 882
    :cond_2
    return-void
.end method

.method private notifyTrackSelectionRebuffer()V
    .locals 5

    .line 1088
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 1089
    .local v0, "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :goto_0
    if-eqz v0, :cond_2

    .line 1090
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1091
    .local v4, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eqz v4, :cond_0

    .line 1092
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onRebuffer()V

    .line 1090
    .end local v4    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1095
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    .line 1097
    :cond_2
    return-void
.end method

.method private prepareInternal()V
    .locals 3

    .line 792
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 793
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 798
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/LoadControl;->onPrepared(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 799
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 800
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->getTransferListener()Landroidx/media3/datasource/TransferListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/MediaSourceList;->prepare(Landroidx/media3/datasource/TransferListener;)V

    .line 801
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 802
    return-void
.end method

.method private releaseInternal()V
    .locals 3

    .line 1548
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, v0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1553
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseRenderers()V

    .line 1554
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/LoadControl;->onReleased(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 1555
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1557
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackLooperProvider;->releaseLooper()V

    .line 1558
    monitor-enter p0

    .line 1559
    :try_start_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 1560
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1561
    monitor-exit p0

    .line 1562
    nop

    .line 1563
    return-void

    .line 1561
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1557
    :catchall_1
    move-exception v0

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/PlaybackLooperProvider;->releaseLooper()V

    .line 1558
    monitor-enter p0

    .line 1559
    :try_start_2
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 1560
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1561
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1562
    throw v0

    .line 1561
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private releaseRenderers()V
    .locals 2

    .line 2869
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2870
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->clearListener()V

    .line 2871
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->release()V

    .line 2869
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2873
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private removeMediaItemsInternal(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 848
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 849
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaSourceList;->removeMediaSourceRange(IILandroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 850
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    .line 851
    return-void
.end method

.method private replaceStreamsOrDisableRendererForTransition()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2383
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    .line 2384
    .local v1, "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v2

    .line 2385
    .local v2, "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    const/4 v3, 0x0

    .line 2386
    .local v3, "needsToWaitForRendererToEnd":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 2387
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v5, v5, v4

    .line 2388
    .local v5, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-static {v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2389
    goto :goto_2

    .line 2391
    :cond_0
    nop

    .line 2392
    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v6

    iget-object v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v7, v7, v4

    const/4 v14, 0x0

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v14

    :goto_1
    move v15, v6

    .line 2393
    .local v15, "rendererIsReadingOldStream":Z
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v16

    .line 2394
    .local v16, "rendererShouldBeEnabled":Z
    if-eqz v16, :cond_2

    if-nez v15, :cond_2

    .line 2396
    goto :goto_2

    .line 2398
    :cond_2
    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2400
    iget-object v6, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getFormats(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;

    move-result-object v17

    .line 2401
    .local v17, "formats":[Landroidx/media3/common/Format;
    iget-object v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v8, v6, v4

    .line 2404
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v9

    .line 2405
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v11

    iget-object v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v13, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2401
    move-object v6, v5

    move-object/from16 v7, v17

    invoke-interface/range {v6 .. v13}, Landroidx/media3/exoplayer/Renderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 2407
    iget-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v6, :cond_3

    .line 2410
    invoke-direct {v0, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setOffloadSchedulingEnabled(Z)V

    .line 2412
    .end local v17    # "formats":[Landroidx/media3/common/Format;
    :cond_3
    goto :goto_2

    :cond_4
    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2414
    invoke-direct {v0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(I)V

    goto :goto_2

    .line 2417
    :cond_5
    const/4 v3, 0x1

    .line 2386
    .end local v5    # "renderer":Landroidx/media3/exoplayer/Renderer;
    .end local v15    # "rendererIsReadingOldStream":Z
    .end local v16    # "rendererShouldBeEnabled":Z
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2420
    .end local v4    # "i":I
    :cond_6
    xor-int/lit8 v4, v3, 0x1

    return v4
.end method

.method private reselectTracksInternal()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1869
    move-object/from16 v10, p0

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v11, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 1871
    .local v11, "playbackSpeed":F
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 1872
    .local v0, "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v12

    .line 1873
    .local v12, "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    const/4 v1, 0x1

    .line 1876
    .local v1, "selectionsChangedForReadPeriod":Z
    const/4 v2, 0x0

    move-object v13, v0

    move v14, v1

    .line 1878
    .end local v0    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v1    # "selectionsChangedForReadPeriod":Z
    .local v2, "newPlayingPeriodTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .local v13, "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v14, "selectionsChangedForReadPeriod":Z
    :goto_0
    if-eqz v13, :cond_c

    iget-boolean v0, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    move/from16 v22, v11

    move-object v0, v12

    move/from16 v23, v14

    goto/16 :goto_6

    .line 1882
    :cond_0
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 1883
    invoke-virtual {v13, v11, v0, v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->selectTracks(FLandroidx/media3/common/Timeline;Z)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v15

    .line 1885
    .local v15, "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-ne v13, v0, :cond_1

    .line 1886
    move-object v0, v15

    move-object/from16 v16, v0

    .end local v2    # "newPlayingPeriodTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .local v0, "newPlayingPeriodTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    goto :goto_1

    .line 1885
    .end local v0    # "newPlayingPeriodTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .restart local v2    # "newPlayingPeriodTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    :cond_1
    move-object/from16 v16, v2

    .line 1888
    .end local v2    # "newPlayingPeriodTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .local v16, "newPlayingPeriodTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    :goto_1
    invoke-virtual {v13}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1890
    nop

    .line 1899
    const/4 v0, 0x0

    const/4 v9, 0x4

    if-eqz v14, :cond_7

    .line 1901
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    .line 1902
    .local v1, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v17

    .line 1904
    .local v17, "recreateStreams":Z
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v2, v2

    new-array v7, v2, [Z

    .line 1905
    .local v7, "streamResetFlags":[Z
    nop

    .line 1907
    invoke-static/range {v16 .. v16}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 1906
    move-object v2, v1

    move/from16 v6, v17

    move-object/from16 v18, v7

    .end local v7    # "streamResetFlags":[Z
    .local v18, "streamResetFlags":[Z
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v6

    .line 1911
    .local v6, "periodPositionUs":J
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v2, v9, :cond_2

    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    move/from16 v19, v0

    .line 1914
    .local v19, "hasDiscontinuity":Z
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v0, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 1915
    const/16 v21, 0x5

    move-object/from16 v0, p0

    move-object v3, v1

    .end local v1    # "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v3, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    move-object v1, v2

    move/from16 v22, v11

    move-object v11, v3

    .end local v3    # "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v11, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v22, "playbackSpeed":F
    move-wide v2, v6

    move/from16 v23, v14

    move-object/from16 v24, v15

    move-wide v14, v6

    .end local v6    # "periodPositionUs":J
    .end local v15    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .local v14, "periodPositionUs":J
    .local v23, "selectionsChangedForReadPeriod":Z
    .local v24, "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    move-wide v6, v8

    const/4 v9, 0x1

    move/from16 v8, v19

    move-object/from16 v20, v12

    move v12, v9

    .end local v12    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v20, "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1922
    if-eqz v19, :cond_3

    .line 1923
    invoke-direct {v10, v14, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1926
    :cond_3
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    .line 1927
    .local v0, "rendererWasEnabledFlags":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 1928
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v2, v2, v1

    .line 1929
    .local v2, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-static {v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 1930
    iget-object v3, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v3, v3, v1

    .line 1931
    .local v3, "sampleStream":Landroidx/media3/exoplayer/source/SampleStream;
    aget-boolean v4, v0, v1

    if-eqz v4, :cond_5

    .line 1932
    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 1934
    invoke-direct {v10, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(I)V

    goto :goto_3

    .line 1935
    :cond_4
    aget-boolean v4, v18, v1

    if-eqz v4, :cond_5

    .line 1937
    iget-wide v4, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v2, v4, v5}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    .line 1927
    .end local v2    # "renderer":Landroidx/media3/exoplayer/Renderer;
    .end local v3    # "sampleStream":Landroidx/media3/exoplayer/source/SampleStream;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1941
    .end local v1    # "i":I
    :cond_6
    iget-wide v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-direct {v10, v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([ZJ)V

    .line 1942
    .end local v0    # "rendererWasEnabledFlags":[Z
    .end local v11    # "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v14    # "periodPositionUs":J
    .end local v17    # "recreateStreams":Z
    .end local v18    # "streamResetFlags":[Z
    .end local v19    # "hasDiscontinuity":Z
    move-object/from16 v3, v24

    goto :goto_4

    .line 1944
    .end local v20    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v22    # "playbackSpeed":F
    .end local v23    # "selectionsChangedForReadPeriod":Z
    .end local v24    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .local v11, "playbackSpeed":F
    .restart local v12    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v14, "selectionsChangedForReadPeriod":Z
    .restart local v15    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    :cond_7
    move/from16 v22, v11

    move-object/from16 v20, v12

    move/from16 v23, v14

    move-object/from16 v24, v15

    const/4 v12, 0x1

    .end local v11    # "playbackSpeed":F
    .end local v12    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v14    # "selectionsChangedForReadPeriod":Z
    .end local v15    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .restart local v20    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v22    # "playbackSpeed":F
    .restart local v23    # "selectionsChangedForReadPeriod":Z
    .restart local v24    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1, v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 1945
    iget-boolean v1, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_8

    .line 1946
    iget-object v1, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v3, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1947
    invoke-virtual {v13, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1948
    .local v1, "loadingPeriodPositionUs":J
    move-object/from16 v3, v24

    .end local v24    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .local v3, "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    invoke-virtual {v13, v3, v1, v2, v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J

    goto :goto_4

    .line 1945
    .end local v1    # "loadingPeriodPositionUs":J
    .end local v3    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .restart local v24    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    :cond_8
    move-object/from16 v3, v24

    .line 1951
    .end local v24    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .restart local v3    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    :goto_4
    invoke-direct {v10, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1952
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 1953
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1954
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1955
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 1957
    :cond_9
    return-void

    .line 1892
    .end local v3    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .end local v20    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v22    # "playbackSpeed":F
    .end local v23    # "selectionsChangedForReadPeriod":Z
    .restart local v11    # "playbackSpeed":F
    .restart local v12    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v14    # "selectionsChangedForReadPeriod":Z
    .restart local v15    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    :cond_a
    move/from16 v22, v11

    move-object/from16 v20, v12

    move/from16 v23, v14

    move-object v3, v15

    .end local v11    # "playbackSpeed":F
    .end local v12    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v14    # "selectionsChangedForReadPeriod":Z
    .end local v15    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .restart local v3    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .restart local v20    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v22    # "playbackSpeed":F
    .restart local v23    # "selectionsChangedForReadPeriod":Z
    move-object/from16 v0, v20

    .end local v20    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v0, "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-ne v13, v0, :cond_b

    .line 1894
    const/4 v1, 0x0

    move v14, v1

    .end local v23    # "selectionsChangedForReadPeriod":Z
    .local v1, "selectionsChangedForReadPeriod":Z
    goto :goto_5

    .line 1892
    .end local v1    # "selectionsChangedForReadPeriod":Z
    .restart local v23    # "selectionsChangedForReadPeriod":Z
    :cond_b
    move/from16 v14, v23

    .line 1896
    .end local v23    # "selectionsChangedForReadPeriod":Z
    .restart local v14    # "selectionsChangedForReadPeriod":Z
    :goto_5
    invoke-virtual {v13}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v13

    move-object v12, v0

    move-object/from16 v2, v16

    move/from16 v11, v22

    goto/16 :goto_0

    .line 1878
    .end local v0    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v3    # "newTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .end local v16    # "newPlayingPeriodTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .end local v22    # "playbackSpeed":F
    .local v2, "newPlayingPeriodTrackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .restart local v11    # "playbackSpeed":F
    .restart local v12    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_c
    move/from16 v22, v11

    move-object v0, v12

    move/from16 v23, v14

    .line 1880
    .end local v11    # "playbackSpeed":F
    .end local v12    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v14    # "selectionsChangedForReadPeriod":Z
    .restart local v0    # "readingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v22    # "playbackSpeed":F
    .restart local v23    # "selectionsChangedForReadPeriod":Z
    :goto_6
    return-void
.end method

.method private reselectTracksInternalAndSeek()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1864
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternal()V

    .line 1865
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    .line 1866
    return-void
.end method

.method private resetInternal(ZZZZ)V
    .locals 37
    .param p1, "resetRenderers"    # Z
    .param p2, "resetPosition"    # Z
    .param p3, "releaseMediaSourceList"    # Z
    .param p4, "resetError"    # Z

    .line 1570
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 1571
    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 1572
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    .line 1573
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->stop()V

    .line 1574
    const-wide v4, 0xe8d4a51000L

    iput-wide v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1575
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_0
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v0, v0

    const-string v5, "ExoPlayerImplInternal"

    if-ge v4, v0, :cond_0

    .line 1577
    :try_start_0
    invoke-direct {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(I)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1581
    goto :goto_2

    .line 1578
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1580
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v6, "Disable failed."

    invoke-static {v5, v6, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1575
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1583
    .end local v4    # "i":I
    :cond_0
    if-eqz p1, :cond_2

    .line 1584
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v6, v4

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    .line 1585
    .local v8, "renderer":Landroidx/media3/exoplayer/Renderer;
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    :try_start_1
    invoke-interface {v8}, Landroidx/media3/exoplayer/Renderer;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1591
    goto :goto_4

    .line 1588
    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 1590
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v9, "Reset failed."

    invoke-static {v5, v9, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1584
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "renderer":Landroidx/media3/exoplayer/Renderer;
    :cond_1
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1595
    :cond_2
    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 1597
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1598
    .local v0, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 1600
    .local v4, "startPositionUs":J
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isUsingPlaceholderPeriod(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline$Period;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_5

    .line 1602
    :cond_3
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_6

    .line 1601
    :cond_4
    :goto_5
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 1602
    :goto_6
    nop

    .line 1603
    .local v6, "requestedContentPositionUs":J
    const/4 v8, 0x0

    .line 1604
    .local v8, "resetTrackInfo":Z
    if-eqz p2, :cond_6

    .line 1605
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 1606
    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v9, v9, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1607
    invoke-direct {v1, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v9

    .line 1608
    .local v9, "firstPeriodAndPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Long;>;"
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1609
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1610
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1611
    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v10, v10, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1612
    const/4 v8, 0x1

    move-wide/from16 v31, v4

    move-wide/from16 v33, v6

    move/from16 v35, v8

    goto :goto_7

    .line 1611
    :cond_5
    move-wide/from16 v31, v4

    move-wide/from16 v33, v6

    move/from16 v35, v8

    goto :goto_7

    .line 1604
    .end local v9    # "firstPeriodAndPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Long;>;"
    :cond_6
    move-wide/from16 v31, v4

    move-wide/from16 v33, v6

    move/from16 v35, v8

    .line 1616
    .end local v4    # "startPositionUs":J
    .end local v6    # "requestedContentPositionUs":J
    .end local v8    # "resetTrackInfo":Z
    .local v31, "startPositionUs":J
    .local v33, "requestedContentPositionUs":J
    .local v35, "resetTrackInfo":Z
    :goto_7
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->clear()V

    .line 1617
    iput-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 1619
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1620
    .local v3, "timeline":Landroidx/media3/common/Timeline;
    if-eqz p3, :cond_7

    instance-of v4, v3, Landroidx/media3/exoplayer/PlaylistTimeline;

    if-eqz v4, :cond_7

    .line 1623
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v4, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 1625
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaSourceList;->getShuffleOrder()Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/PlaylistTimeline;->copyWithPlaceholderTimeline(Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/exoplayer/PlaylistTimeline;

    move-result-object v3

    .line 1626
    iget v4, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 1627
    iget-object v4, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1628
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1632
    new-instance v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v6, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v4, v5, v6, v7}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    move-object v0, v4

    .line 1637
    :cond_7
    new-instance v15, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v11, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 1644
    if-eqz p4, :cond_8

    goto :goto_8

    :cond_8
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    :goto_8
    move-object v12, v2

    .line 1646
    if-eqz v35, :cond_9

    sget-object v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_9

    :cond_9
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_9
    move-object v14, v2

    .line 1647
    if-eqz v35, :cond_a

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_a

    :cond_a
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 1648
    :goto_a
    if-eqz v35, :cond_b

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    goto :goto_b

    :cond_b
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_b
    move-object/from16 v16, v4

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    move/from16 v18, v4

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    move/from16 v19, v4

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v20, v4

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    move-object/from16 v21, v4

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/4 v13, 0x0

    const-wide/16 v24, 0x0

    move-object v4, v15

    move-object v5, v3

    move-object v6, v0

    move-wide/from16 v7, v33

    move-wide/from16 v9, v31

    move-object/from16 v36, v15

    move-object v15, v2

    move-object/from16 v17, v0

    move-wide/from16 v22, v31

    move-wide/from16 v26, v31

    invoke-direct/range {v4 .. v30}, Landroidx/media3/exoplayer/PlaybackInfo;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;ZIILandroidx/media3/common/PlaybackParameters;JJJJZ)V

    move-object/from16 v2, v36

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1659
    if-eqz p3, :cond_c

    .line 1660
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->releasePreloadPool()V

    .line 1661
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaSourceList;->release()V

    .line 1663
    :cond_c
    return-void
.end method

.method private resetPendingPauseAtEndOfPeriod()V
    .locals 2

    .line 2489
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2490
    .local v0, "playingPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 2492
    return-void
.end method

.method private resetRendererPosition(J)V
    .locals 7
    .param p1, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 1492
    .local v0, "playingMediaPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    nop

    .line 1493
    if-nez v0, :cond_0

    .line 1494
    const-wide v1, 0xe8d4a51000L

    add-long/2addr v1, p1

    goto :goto_0

    .line 1495
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1496
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/DefaultMediaClock;->resetPosition(J)V

    .line 1497
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1498
    .local v4, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-static {v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1499
    iget-wide v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v4, v5, v6}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    .line 1497
    .end local v4    # "renderer":Landroidx/media3/exoplayer/Renderer;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1502
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->notifyTrackSelectionDiscontinuity()V

    .line 1503
    return-void
.end method

.method private static resolvePendingMessageEndOfStreamPosition(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V
    .locals 7
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "messageInfo"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 3297
    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 3298
    .local v0, "windowIndex":I
    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 3299
    .local v1, "lastPeriodIndex":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p3, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 3300
    .local v2, "lastPeriodUid":Ljava/lang/Object;
    iget-wide v3, p3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_0
    const-wide v3, 0x7fffffffffffffffL

    .line 3301
    .local v3, "positionUs":J
    :goto_0
    invoke-virtual {p1, v1, v3, v4, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 3302
    return-void
.end method

.method private static resolvePendingMessagePosition(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z
    .locals 18
    .param p0, "pendingMessageInfo"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
    .param p1, "newTimeline"    # Landroidx/media3/common/Timeline;
    .param p2, "previousTimeline"    # Landroidx/media3/common/Timeline;
    .param p3, "repeatMode"    # I
    .param p4, "shuffleModeEnabled"    # Z
    .param p5, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p6, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 3229
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-wide/high16 v14, -0x8000000000000000L

    if-nez v1, :cond_3

    .line 3232
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v1, v1, v14

    if-nez v1, :cond_0

    .line 3233
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 3234
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    :goto_0
    move-wide v6, v1

    .line 3236
    .local v6, "requestPositionUs":J
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 3240
    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 3241
    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlayerMessage;->getMediaItemIndex()I

    move-result v3

    invoke-direct {v2, v1, v3, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    .line 3237
    const/4 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v16, v6

    .end local v6    # "requestPositionUs":J
    .local v16, "requestPositionUs":J
    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    .line 3248
    .local v1, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v1, :cond_1

    .line 3249
    return v12

    .line 3251
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3252
    invoke-virtual {v8, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 3253
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3251
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 3255
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/PlayerMessage;->getPositionMs()J

    move-result-wide v2

    cmp-long v2, v2, v14

    if-nez v2, :cond_2

    .line 3256
    invoke-static {v8, v0, v10, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V

    .line 3258
    :cond_2
    return v13

    .line 3261
    .end local v1    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v16    # "requestPositionUs":J
    :cond_3
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v8, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v7

    .line 3262
    .local v7, "index":I
    const/4 v1, -0x1

    if-ne v7, v1, :cond_4

    .line 3263
    return v12

    .line 3265
    :cond_4
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v1, v1, v14

    if-nez v1, :cond_5

    .line 3267
    invoke-static {v8, v0, v10, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V

    .line 3268
    return v13

    .line 3270
    :cond_5
    iput v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 3271
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v9, v1, v11}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3272
    iget-boolean v1, v11, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v1, :cond_6

    iget v1, v11, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 3273
    invoke-virtual {v9, v1, v10}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 3274
    invoke-virtual {v9, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 3278
    iget-wide v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 3279
    invoke-virtual/range {p6 .. p6}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long v14, v1, v3

    .line 3280
    .local v14, "windowPositionUs":J
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 3281
    invoke-virtual {v8, v1, v11}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v12, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 3282
    .local v12, "windowIndex":I
    nop

    .line 3283
    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, v12

    move-wide v5, v14

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 3284
    .local v1, "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3285
    invoke-virtual {v8, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 3286
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3284
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 3289
    .end local v1    # "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v12    # "windowIndex":I
    .end local v14    # "windowPositionUs":J
    :cond_6
    return v13
.end method

.method private resolvePendingMessagePositions(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V
    .locals 9
    .param p1, "newTimeline"    # Landroidx/media3/common/Timeline;
    .param p2, "previousTimeline"    # Landroidx/media3/common/Timeline;

    .line 1759
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    return-void

    .line 1763
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1764
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1765
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 1764
    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePosition(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1773
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    .line 1774
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1763
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1778
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1779
    return-void
.end method

.method private static resolvePositionForPlaylistChange(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;Landroidx/media3/exoplayer/MediaPeriodQueue;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    .locals 40
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p2, "pendingInitialSeekPosition"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;
    .param p3, "queue"    # Landroidx/media3/exoplayer/MediaPeriodQueue;
    .param p4, "repeatMode"    # I
    .param p5, "shuffleModeEnabled"    # Z
    .param p6, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p7, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 2998
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2999
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 3000
    invoke-static {}, Landroidx/media3/exoplayer/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v13

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-wide/16 v14, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v18, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V

    .line 2999
    return-object v0

    .line 3007
    :cond_0
    iget-object v12, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3008
    .local v12, "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v13, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 3009
    .local v13, "newPeriodUid":Ljava/lang/Object;
    invoke-static {v8, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isUsingPlaceholderPeriod(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline$Period;)Z

    move-result v14

    .line 3011
    .local v14, "isUsingPlaceholderPeriod":Z
    iget-object v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v14, :cond_1

    goto :goto_0

    .line 3013
    :cond_1
    iget-wide v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_1

    .line 3012
    :cond_2
    :goto_0
    iget-wide v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 3013
    :goto_1
    move-wide v15, v0

    .line 3014
    .local v15, "oldContentPositionUs":J
    move-wide/from16 v17, v15

    .line 3015
    .local v17, "newContentPositionUs":J
    const/16 v19, -0x1

    .line 3016
    .local v19, "startAtDefaultPositionWindowIndex":I
    const/16 v20, 0x0

    .line 3017
    .local v20, "forceBufferingState":Z
    const/16 v21, 0x0

    .line 3018
    .local v21, "endPlayback":Z
    const/16 v22, 0x0

    .line 3019
    .local v22, "setTargetLiveOffset":Z
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/4 v6, -0x1

    if-eqz v9, :cond_6

    .line 3022
    nop

    .line 3023
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v29, v12

    move v12, v6

    .end local v12    # "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v29, "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v0

    .line 3031
    .local v0, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v0, :cond_3

    .line 3033
    const/16 v21, 0x1

    .line 3034
    invoke-virtual {v7, v10}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move/from16 v19, v1

    .end local v19    # "startAtDefaultPositionWindowIndex":I
    .local v1, "startAtDefaultPositionWindowIndex":I
    goto :goto_4

    .line 3037
    .end local v1    # "startAtDefaultPositionWindowIndex":I
    .restart local v19    # "startAtDefaultPositionWindowIndex":I
    :cond_3
    iget-wide v1, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v1, v1, v23

    if-nez v1, :cond_4

    .line 3038
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3039
    invoke-virtual {v7, v1, v11}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move/from16 v19, v1

    .end local v19    # "startAtDefaultPositionWindowIndex":I
    .restart local v1    # "startAtDefaultPositionWindowIndex":I
    goto :goto_2

    .line 3041
    .end local v1    # "startAtDefaultPositionWindowIndex":I
    .restart local v19    # "startAtDefaultPositionWindowIndex":I
    :cond_4
    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3042
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 3044
    const/16 v22, 0x1

    .line 3046
    :goto_2
    iget v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    move/from16 v1, v26

    goto :goto_3

    :cond_5
    move/from16 v1, v25

    :goto_3
    move/from16 v20, v1

    .line 3048
    .end local v0    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :goto_4
    move/from16 v4, v19

    move/from16 v19, v21

    move/from16 v36, v22

    move-object/from16 v6, v29

    goto/16 :goto_6

    .end local v29    # "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v12    # "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_6
    move-object/from16 v29, v12

    move v12, v6

    .end local v12    # "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v29    # "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3050
    invoke-virtual {v7, v10}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v19

    move/from16 v4, v19

    move/from16 v19, v21

    move/from16 v36, v22

    move-object/from16 v6, v29

    goto/16 :goto_6

    .line 3051
    :cond_7
    invoke-virtual {v7, v13}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v12, :cond_9

    .line 3054
    iget-object v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 3055
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v13

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSubsequentPeriod(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    move-result v0

    .line 3063
    .local v0, "newWindowIndex":I
    if-ne v0, v12, :cond_8

    .line 3065
    const/16 v21, 0x1

    .line 3066
    invoke-virtual {v7, v10}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move/from16 v19, v1

    .end local v19    # "startAtDefaultPositionWindowIndex":I
    .restart local v1    # "startAtDefaultPositionWindowIndex":I
    goto :goto_5

    .line 3070
    .end local v1    # "startAtDefaultPositionWindowIndex":I
    .restart local v19    # "startAtDefaultPositionWindowIndex":I
    :cond_8
    move v1, v0

    move/from16 v19, v1

    .line 3072
    .end local v0    # "newWindowIndex":I
    :goto_5
    move/from16 v4, v19

    move/from16 v19, v21

    move/from16 v36, v22

    move-object/from16 v6, v29

    goto/16 :goto_6

    :cond_9
    cmp-long v0, v15, v23

    if-nez v0, :cond_a

    .line 3075
    invoke-virtual {v7, v13, v11}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move v4, v0

    move/from16 v19, v21

    move/from16 v36, v22

    move-object/from16 v6, v29

    .end local v19    # "startAtDefaultPositionWindowIndex":I
    .local v0, "startAtDefaultPositionWindowIndex":I
    goto :goto_6

    .line 3076
    .end local v0    # "startAtDefaultPositionWindowIndex":I
    .restart local v19    # "startAtDefaultPositionWindowIndex":I
    :cond_a
    if-eqz v14, :cond_c

    .line 3079
    iget-object v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    move-object/from16 v6, v29

    .end local v29    # "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v6, "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v1, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3080
    iget-object v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v1, v11, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 3081
    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 3084
    invoke-virtual/range {p7 .. p7}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long v23, v15, v0

    .line 3085
    .local v23, "windowPositionUs":J
    invoke-virtual {v7, v13, v11}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v5, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 3086
    .local v5, "windowIndex":I
    nop

    .line 3087
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move v3, v5

    move/from16 v27, v5

    .end local v5    # "windowIndex":I
    .local v27, "windowIndex":I
    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 3088
    .local v0, "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3089
    .end local v13    # "newPeriodUid":Ljava/lang/Object;
    .local v1, "newPeriodUid":Ljava/lang/Object;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v13, v1

    move-wide/from16 v17, v2

    .line 3092
    .end local v0    # "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v1    # "newPeriodUid":Ljava/lang/Object;
    .end local v23    # "windowPositionUs":J
    .end local v27    # "windowIndex":I
    .restart local v13    # "newPeriodUid":Ljava/lang/Object;
    :cond_b
    const/16 v22, 0x1

    move/from16 v4, v19

    move/from16 v19, v21

    move/from16 v36, v22

    goto :goto_6

    .line 3076
    .end local v6    # "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v29    # "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_c
    move-object/from16 v6, v29

    .end local v29    # "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v6    # "oldPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    move/from16 v4, v19

    move/from16 v19, v21

    move/from16 v36, v22

    .line 3096
    .end local v21    # "endPlayback":Z
    .end local v22    # "setTargetLiveOffset":Z
    .local v4, "startAtDefaultPositionWindowIndex":I
    .local v19, "endPlayback":Z
    .local v36, "setTargetLiveOffset":Z
    :goto_6
    move-wide/from16 v21, v17

    .line 3097
    .local v21, "contentPositionForAdResolutionUs":J
    if-eq v4, v12, :cond_d

    .line 3098
    nop

    .line 3099
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move v3, v4

    move/from16 v37, v4

    .end local v4    # "startAtDefaultPositionWindowIndex":I
    .local v37, "startAtDefaultPositionWindowIndex":I
    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 3104
    .local v0, "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3105
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 3106
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v0, v21

    goto :goto_7

    .line 3097
    .end local v0    # "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v37    # "startAtDefaultPositionWindowIndex":I
    .restart local v4    # "startAtDefaultPositionWindowIndex":I
    :cond_d
    move/from16 v37, v4

    .end local v4    # "startAtDefaultPositionWindowIndex":I
    .restart local v37    # "startAtDefaultPositionWindowIndex":I
    move-wide/from16 v0, v21

    .line 3110
    .end local v21    # "contentPositionForAdResolutionUs":J
    .local v0, "contentPositionForAdResolutionUs":J
    :goto_7
    nop

    .line 3111
    move-object/from16 v2, p3

    invoke-virtual {v2, v7, v13, v0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v3

    .line 3113
    .local v3, "periodIdWithAds":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget v4, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v4, v12, :cond_f

    iget v4, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v4, v12, :cond_e

    iget v4, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget v5, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-lt v4, v5, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v4, v25

    goto :goto_9

    :cond_f
    :goto_8
    move/from16 v4, v26

    .line 3120
    .local v4, "earliestCuePointIsUnchangedOrLater":Z
    :goto_9
    iget-object v5, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3121
    .local v5, "sameOldAndNewPeriodUid":Z
    if-eqz v5, :cond_10

    .line 3123
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v12

    if-nez v12, :cond_10

    .line 3124
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v12

    if-nez v12, :cond_10

    if-eqz v4, :cond_10

    move/from16 v25, v26

    goto :goto_a

    :cond_10
    nop

    :goto_a
    move/from16 v12, v25

    .line 3128
    .local v12, "onlyNextAdGroupIndexIncreased":Z
    nop

    .line 3134
    invoke-virtual {v7, v13, v11}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v26

    .line 3129
    move/from16 v21, v14

    move-object/from16 v22, v6

    move-wide/from16 v23, v15

    move-object/from16 v25, v3

    move-wide/from16 v27, v17

    invoke-static/range {v21 .. v28}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isIgnorableServerSideAdInsertionPeriodChange(ZLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;J)Z

    move-result v21

    .line 3137
    .local v21, "isInStreamAdChange":Z
    if-nez v12, :cond_12

    if-eqz v21, :cond_11

    goto :goto_b

    :cond_11
    move-object/from16 v22, v3

    goto :goto_c

    :cond_12
    :goto_b
    move-object/from16 v22, v6

    :goto_c
    move-object/from16 v23, v22

    .line 3139
    .local v23, "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    move-wide/from16 v24, v0

    .line 3140
    .local v24, "periodPositionUs":J
    invoke-virtual/range {v23 .. v23}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 3141
    move-wide/from16 v38, v0

    move-object/from16 v0, v23

    .end local v23    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v0, "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v38, "contentPositionForAdResolutionUs":J
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3142
    iget-wide v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-wide/from16 v24, v1

    .end local v24    # "periodPositionUs":J
    .local v1, "periodPositionUs":J
    goto :goto_e

    .line 3144
    .end local v1    # "periodPositionUs":J
    .restart local v24    # "periodPositionUs":J
    :cond_13
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v1, v11}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3146
    iget v1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v2, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v11, v2}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 3147
    invoke-virtual/range {p7 .. p7}, Landroidx/media3/common/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    goto :goto_d

    .line 3148
    :cond_14
    const-wide/16 v1, 0x0

    :goto_d
    move-wide/from16 v24, v1

    goto :goto_e

    .line 3140
    .end local v38    # "contentPositionForAdResolutionUs":J
    .local v0, "contentPositionForAdResolutionUs":J
    .restart local v23    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_15
    move-wide/from16 v38, v0

    move-object/from16 v0, v23

    .line 3152
    .end local v23    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v0, "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v38    # "contentPositionForAdResolutionUs":J
    :goto_e
    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-object/from16 v27, v1

    move-object/from16 v28, v0

    move-wide/from16 v29, v24

    move-wide/from16 v31, v17

    move/from16 v33, v20

    move/from16 v34, v19

    move/from16 v35, v36

    invoke-direct/range {v27 .. v35}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v1
.end method

.method private static resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;
    .locals 16
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "seekPosition"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;
    .param p2, "trySubsequentPeriods"    # Z
    .param p3, "repeatMode"    # I
    .param p4, "shuffleModeEnabled"    # Z
    .param p5, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p6, "period"    # Landroidx/media3/common/Timeline$Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;",
            "ZIZ",
            "Landroidx/media3/common/Timeline$Window;",
            "Landroidx/media3/common/Timeline$Period;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3324
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->timeline:Landroidx/media3/common/Timeline;

    .line 3325
    .local v0, "seekTimeline":Landroidx/media3/common/Timeline;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    .line 3327
    return-object v11

    .line 3329
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3332
    move-object/from16 v0, p0

    move-object v12, v0

    goto :goto_0

    .line 3329
    :cond_1
    move-object v12, v0

    .line 3337
    .end local v0    # "seekTimeline":Landroidx/media3/common/Timeline;
    .local v12, "seekTimeline":Landroidx/media3/common/Timeline;
    :goto_0
    :try_start_0
    iget v4, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v5, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 3338
    move-object v1, v12

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3343
    .local v0, "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    nop

    .line 3344
    invoke-virtual {v8, v12}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3346
    return-object v0

    .line 3349
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v13

    .line 3350
    .local v13, "periodIndex":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    .line 3352
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v12, v1, v10}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v1, :cond_3

    iget v1, v10, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 3353
    move-object/from16 v15, p5

    invoke-virtual {v12, v1, v15}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3354
    invoke-virtual {v12, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 3358
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v1, v10}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v7, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 3359
    .local v7, "newWindowIndex":I
    iget-wide v5, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 3360
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 3352
    .end local v7    # "newWindowIndex":I
    :cond_3
    move-object/from16 v15, p5

    .line 3363
    :cond_4
    :goto_1
    return-object v0

    .line 3365
    :cond_5
    move-object/from16 v15, p5

    if-eqz p2, :cond_6

    .line 3367
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3368
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v12

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSubsequentPeriod(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    move-result v7

    .line 3376
    .restart local v7    # "newWindowIndex":I
    if-eq v7, v14, :cond_6

    .line 3378
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 3383
    .end local v7    # "newWindowIndex":I
    :cond_6
    return-object v11

    .line 3340
    .end local v0    # "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v13    # "periodIndex":I
    :catch_0
    move-exception v0

    move-object/from16 v15, p5

    .line 3342
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v11
.end method

.method static resolveSubsequentPeriod(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I
    .locals 17
    .param p0, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p1, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z
    .param p4, "oldPeriodUid"    # Ljava/lang/Object;
    .param p5, "oldTimeline"    # Landroidx/media3/common/Timeline;
    .param p6, "newTimeline"    # Landroidx/media3/common/Timeline;

    .line 3408
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual {v9, v8, v7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v11, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 3409
    .local v11, "oldWindowIndex":I
    invoke-virtual {v9, v11, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v12, v0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3411
    .local v12, "oldWindowUid":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual/range {p6 .. p6}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3412
    invoke-virtual {v10, v0, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3414
    return v0

    .line 3411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3417
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v9, v8}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 3418
    .local v0, "oldPeriodIndex":I
    const/4 v1, -0x1

    .line 3419
    .local v1, "newPeriodIndex":I
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v13

    .line 3420
    .local v13, "maxIterations":I
    const/4 v2, 0x0

    move v14, v0

    move v15, v1

    move v5, v2

    .end local v0    # "oldPeriodIndex":I
    .end local v1    # "newPeriodIndex":I
    .local v5, "i":I
    .local v14, "oldPeriodIndex":I
    .local v15, "newPeriodIndex":I
    :goto_1
    const/4 v4, -0x1

    if-ge v5, v13, :cond_3

    if-ne v15, v4, :cond_3

    .line 3421
    nop

    .line 3422
    move-object/from16 v0, p5

    move v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move v6, v4

    move/from16 v4, p2

    move/from16 v16, v5

    .end local v5    # "i":I
    .local v16, "i":I
    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v14

    .line 3424
    if-ne v14, v6, :cond_2

    .line 3426
    goto :goto_2

    .line 3428
    :cond_2
    invoke-virtual {v9, v14}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v15

    .line 3420
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v6, p0

    .end local v16    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    :cond_3
    move v6, v4

    move/from16 v16, v5

    .line 3430
    .end local v5    # "i":I
    :goto_2
    if-ne v15, v6, :cond_4

    .line 3431
    move v4, v6

    goto :goto_3

    .line 3432
    :cond_4
    invoke-virtual {v10, v15, v7}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v4, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 3430
    :goto_3
    return v4
.end method

.method private scheduleNextWork(J)V
    .locals 10
    .param p1, "thisOperationStartTimeMs"    # J

    .line 1284
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->dynamicSchedulingEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1285
    :cond_0
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 1286
    :cond_1
    sget-wide v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->BUFFERING_MAXIMUM_INTERVAL_MS:J

    :goto_0
    nop

    .line 1287
    .local v0, "wakeUpTimeIntervalMs":J
    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->dynamicSchedulingEnabled:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1288
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1289
    .local v5, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-static {v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1290
    iget-wide v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionElapsedRealtimeUs:J

    .line 1294
    invoke-interface {v5, v6, v7, v8, v9}, Landroidx/media3/exoplayer/Renderer;->getDurationToProgressUs(JJ)J

    move-result-wide v6

    .line 1293
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 1291
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1288
    .end local v5    # "renderer":Landroidx/media3/exoplayer/Renderer;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1299
    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v3, 0x2

    add-long v4, p1, v0

    invoke-interface {v2, v3, v4, v5}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    .line 1301
    return-void
.end method

.method private seekToCurrentPosition(Z)V
    .locals 13
    .param p1, "sendDiscontinuity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 958
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 959
    .local v0, "periodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 960
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v11

    .line 965
    .local v11, "newPositionUs":J
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v1, v11, v1

    if-eqz v1, :cond_0

    .line 966
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 967
    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move-wide v3, v11

    move v9, p1

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 975
    :cond_0
    return-void
.end method

.method private seekToInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V
    .locals 21
    .param p1, "seekPosition"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1304
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1311
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v6, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v7, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 1312
    const/4 v3, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v13

    .line 1320
    .local v13, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    if-nez v13, :cond_0

    .line 1323
    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1324
    invoke-direct {v11, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v3

    .line 1325
    .local v3, "firstPeriodAndPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Long;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1326
    .local v4, "periodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1327
    .local v5, "periodPositionUs":J
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 1328
    .local v9, "requestedContentPositionUs":J
    iget-object v7, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v8

    move v3, v7

    .line 1329
    .local v3, "seekPositionAdjusted":Z
    move v15, v3

    move-object v14, v4

    move-wide/from16 v19, v9

    goto :goto_3

    .line 1331
    .end local v3    # "seekPositionAdjusted":Z
    .end local v4    # "periodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .end local v5    # "periodPositionUs":J
    .end local v9    # "requestedContentPositionUs":J
    :cond_0
    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1332
    .local v3, "periodUid":Ljava/lang/Object;
    iget-object v4, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1334
    .local v4, "resolvedContentPositionUs":J
    iget-wide v6, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v6, v9

    if-nez v6, :cond_1

    move-wide v6, v9

    goto :goto_0

    :cond_1
    move-wide v6, v4

    .line 1335
    .local v6, "requestedContentPositionUs":J
    :goto_0
    iget-object v14, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v15, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v15, v15, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1336
    invoke-virtual {v14, v15, v3, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v14

    .line 1338
    .local v14, "periodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    invoke-virtual {v14}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1339
    iget-object v9, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v9, v9, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v10, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v15, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v9, v10, v15}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1341
    iget-object v9, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget v10, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v9, v10}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v9

    iget v10, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v9, v10, :cond_2

    .line 1342
    iget-object v9, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v9}, Landroidx/media3/common/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v9

    goto :goto_1

    .line 1343
    :cond_2
    const-wide/16 v9, 0x0

    :goto_1
    nop

    .line 1344
    .local v9, "periodPositionUs":J
    const/4 v15, 0x1

    move-wide/from16 v19, v6

    move-wide v5, v9

    .local v15, "seekPositionAdjusted":Z
    goto :goto_3

    .line 1346
    .end local v9    # "periodPositionUs":J
    .end local v15    # "seekPositionAdjusted":Z
    :cond_3
    move-wide v15, v4

    .line 1347
    .local v15, "periodPositionUs":J
    iget-wide v0, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_4

    move v0, v8

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    move-wide/from16 v19, v6

    move-wide v5, v15

    move v15, v0

    .line 1352
    .end local v3    # "periodUid":Ljava/lang/Object;
    .end local v4    # "resolvedContentPositionUs":J
    .end local v6    # "requestedContentPositionUs":J
    .restart local v5    # "periodPositionUs":J
    .local v15, "seekPositionAdjusted":Z
    .local v19, "requestedContentPositionUs":J
    :goto_3
    :try_start_0
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1354
    iput-object v12, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    goto :goto_4

    .line 1355
    :cond_5
    const/4 v0, 0x4

    if-nez v13, :cond_7

    .line 1357
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v8, :cond_6

    .line 1358
    invoke-direct {v11, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 1360
    :cond_6
    invoke-direct {v11, v2, v8, v2, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1401
    :goto_4
    move-wide/from16 v16, v5

    goto/16 :goto_8

    .line 1367
    :cond_7
    move-wide v3, v5

    .line 1368
    .local v3, "newPeriodPositionUs":J
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v14, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1369
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    move-object v10, v1

    .line 1370
    .local v10, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-eqz v10, :cond_8

    iget-boolean v1, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_8

    const-wide/16 v16, 0x0

    cmp-long v1, v3, v16

    if-eqz v1, :cond_8

    .line 1373
    iget-object v1, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v7, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 1374
    invoke-interface {v1, v3, v4, v7}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide v16

    move-wide/from16 v3, v16

    goto :goto_5

    .line 1377
    :cond_8
    move-wide/from16 v16, v3

    .end local v3    # "newPeriodPositionUs":J
    .local v16, "newPeriodPositionUs":J
    :goto_5
    invoke-static/range {v16 .. v17}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    cmp-long v1, v3, v8

    if-nez v1, :cond_a

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_b

    .line 1381
    :cond_9
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1401
    .end local v5    # "periodPositionUs":J
    .local v3, "periodPositionUs":J
    nop

    .line 1402
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v5, v19

    move-wide v7, v3

    move v9, v15

    move-object/from16 v18, v10

    .end local v10    # "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v18, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    move v10, v0

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1382
    return-void

    .line 1377
    .end local v3    # "periodPositionUs":J
    .end local v18    # "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v5    # "periodPositionUs":J
    .restart local v10    # "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_a
    move-object/from16 v18, v10

    .line 1385
    .end local v10    # "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_b
    move-wide/from16 v3, v16

    .end local v16    # "newPeriodPositionUs":J
    .local v3, "newPeriodPositionUs":J
    :cond_c
    :try_start_1
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    move v0, v2

    .line 1386
    :goto_6
    invoke-direct {v11, v14, v3, v4, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v9, v0

    .line 1390
    .end local v3    # "newPeriodPositionUs":J
    .local v9, "newPeriodPositionUs":J
    cmp-long v0, v5, v9

    if-eqz v0, :cond_e

    const/4 v8, 0x1

    goto :goto_7

    :cond_e
    move v8, v2

    :goto_7
    or-int/2addr v15, v8

    .line 1391
    move-wide/from16 v16, v9

    .line 1392
    .end local v5    # "periodPositionUs":J
    .local v16, "periodPositionUs":J
    :try_start_2
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v3, v14

    move-wide/from16 v6, v19

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1401
    .end local v9    # "newPeriodPositionUs":J
    :goto_8
    nop

    .line 1402
    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, v19

    move-wide/from16 v7, v16

    move v9, v15

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1409
    nop

    .line 1410
    return-void

    .line 1401
    :catchall_0
    move-exception v0

    goto :goto_9

    .end local v16    # "periodPositionUs":J
    .restart local v5    # "periodPositionUs":J
    :catchall_1
    move-exception v0

    move-wide/from16 v16, v5

    .line 1402
    .end local v5    # "periodPositionUs":J
    .restart local v16    # "periodPositionUs":J
    :goto_9
    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, v19

    move-wide/from16 v7, v16

    move v9, v15

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1409
    throw v0
.end method

.method private seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)J
    .locals 7
    .param p1, "periodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "periodPositionUs"    # J
    .param p4, "forceBufferingState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 1419
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 1416
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J
    .locals 8
    .param p1, "periodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "periodPositionUs"    # J
    .param p4, "forceDisableRenderers"    # Z
    .param p5, "forceBufferingState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1429
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    .line 1430
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    .line 1431
    const/4 v0, 0x2

    if-nez p5, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1432
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 1436
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 1437
    .local v2, "oldPlayingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    move-object v3, v2

    .line 1438
    .local v3, "newPlayingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :goto_0
    if-eqz v3, :cond_3

    .line 1439
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1440
    goto :goto_1

    .line 1442
    :cond_2
    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    goto :goto_0

    .line 1447
    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne v2, v3, :cond_4

    if-eqz v3, :cond_7

    .line 1450
    invoke-virtual {v3, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 1451
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 1452
    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(I)V

    .line 1451
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1454
    .end local v4    # "i":I
    :cond_5
    if-eqz v3, :cond_7

    .line 1456
    :goto_3
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    if-eq v4, v3, :cond_6

    .line 1457
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_3

    .line 1459
    :cond_6
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 1460
    const-wide v4, 0xe8d4a51000L

    invoke-virtual {v3, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->setRendererOffset(J)V

    .line 1462
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers()V

    .line 1467
    :cond_7
    if-eqz v3, :cond_a

    .line 1468
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 1469
    iget-boolean v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v4, :cond_8

    .line 1470
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 1471
    invoke-virtual {v4, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    goto :goto_4

    .line 1472
    :cond_8
    iget-boolean v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v4, :cond_9

    .line 1473
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v4, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 1474
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long v5, p2, v5

    iget-boolean v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v4, v5, v6, v7}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    .line 1477
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1478
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_5

    .line 1481
    :cond_a
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->clear()V

    .line 1482
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1485
    :goto_5
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1486
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v1, v0}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 1487
    return-wide p2
.end method

.method private sendMessageInternal(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 8
    .param p1, "message"    # Landroidx/media3/exoplayer/PlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1689
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1691
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTarget(Landroidx/media3/exoplayer/PlayerMessage;)V

    goto :goto_0

    .line 1692
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media3/exoplayer/PlayerMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1696
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 1697
    .local v0, "pendingMessageInfo":Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePosition(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1705
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 1709
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    .line 1712
    .end local v0    # "pendingMessageInfo":Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
    :goto_0
    return-void
.end method

.method private sendMessageToTarget(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 3
    .param p1, "message"    # Landroidx/media3/exoplayer/PlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1715
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    .line 1716
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverMessage(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 1717
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v0, v2, :cond_2

    .line 1720
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1723
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 1725
    :cond_2
    :goto_0
    return-void
.end method

.method private sendMessageToTargetThread(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 3
    .param p1, "message"    # Landroidx/media3/exoplayer/PlayerMessage;

    .line 1728
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1729
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1730
    const-string v1, "TAG"

    const-string v2, "Trying to send message on a dead thread."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    .line 1732
    return-void

    .line 1734
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 1735
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 1736
    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 1745
    return-void
.end method

.method private setAllRendererStreamsFinal(J)V
    .locals 5
    .param p1, "streamEndPositionUs"    # J

    .line 2546
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2547
    .local v3, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2548
    invoke-direct {p0, v3, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setCurrentStreamFinal(Landroidx/media3/exoplayer/Renderer;J)V

    .line 2546
    .end local v3    # "renderer":Landroidx/media3/exoplayer/Renderer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2551
    :cond_1
    return-void
.end method

.method private setCurrentStreamFinal(Landroidx/media3/exoplayer/Renderer;J)V
    .locals 1
    .param p1, "renderer"    # Landroidx/media3/exoplayer/Renderer;
    .param p2, "streamEndPositionUs"    # J

    .line 2554
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->setCurrentStreamFinal()V

    .line 2555
    instance-of v0, p1, Landroidx/media3/exoplayer/text/TextRenderer;

    if-eqz v0, :cond_0

    .line 2556
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/text/TextRenderer;

    invoke-virtual {v0, p2, p3}, Landroidx/media3/exoplayer/text/TextRenderer;->setFinalStreamEndPositionUs(J)V

    .line 2558
    :cond_0
    return-void
.end method

.method private setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 5
    .param p1, "foregroundMode"    # Z
    .param p2, "processedFlag"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1517
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-eq v0, p1, :cond_1

    .line 1518
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    .line 1519
    if-nez p1, :cond_1

    .line 1520
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1521
    .local v3, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1522
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->reset()V

    .line 1520
    .end local v3    # "renderer":Landroidx/media3/exoplayer/Renderer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1527
    :cond_1
    if-eqz p2, :cond_2

    .line 1528
    monitor-enter p0

    .line 1529
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1530
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1531
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1533
    :cond_2
    :goto_1
    return-void
.end method

.method private setMediaClockPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 1083
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 1084
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 1085
    return-void
.end method

.method private setMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .locals 5
    .param p1, "mediaSourceListUpdateMessage"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 807
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 808
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    new-instance v1, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 811
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v2

    .line 812
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 813
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v2

    .line 814
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$500(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 816
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 818
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v1

    .line 819
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v2

    .line 817
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/MediaSourceList;->setMediaSources(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 820
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    .line 821
    return-void
.end method

.method private setOffloadSchedulingEnabled(Z)V
    .locals 2
    .param p1, "offloadSchedulingEnabled"    # Z

    .line 922
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-ne p1, v0, :cond_0

    .line 923
    return-void

    .line 925
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    .line 926
    if-nez p1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 930
    :cond_1
    return-void
.end method

.method private setPauseAtEndOfWindowInternal(Z)V
    .locals 2
    .param p1, "pauseAtEndOfWindow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 911
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 912
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 913
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 916
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    .line 917
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 919
    :cond_0
    return-void
.end method

.method private setPlayWhenReadyInternal(ZIZI)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackSuppressionReason"    # I
    .param p3, "operationAck"    # Z
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 890
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 891
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 892
    invoke-virtual {v0, p1, p4, p2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 893
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    .line 894
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->notifyTrackSelectionPlayWhenReadyChanged(Z)V

    .line 895
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    .line 897
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_0

    .line 899
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 900
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->start()V

    .line 901
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    .line 902
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 903
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v0, v2, :cond_2

    .line 904
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 907
    :cond_2
    :goto_0
    return-void
.end method

.method private setPlaybackParametersInternal(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1507
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setMediaClockPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 1508
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;Z)V

    .line 1509
    return-void
.end method

.method private setPreloadConfigurationInternal(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 2
    .param p1, "preloadConfiguration"    # Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 951
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 952
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updatePreloadConfiguration(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    .line 953
    return-void
.end method

.method private setRepeatModeInternal(I)V
    .locals 2
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 934
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    .line 935
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateRepeatMode(Landroidx/media3/common/Timeline;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    .line 938
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 939
    return-void
.end method

.method private setSeekParametersInternal(Landroidx/media3/exoplayer/SeekParameters;)V
    .locals 0
    .param p1, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;

    .line 1512
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 1513
    return-void
.end method

.method private setShuffleModeEnabledInternal(Z)V
    .locals 2
    .param p1, "shuffleModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 943
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 944
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateShuffleModeEnabled(Landroidx/media3/common/Timeline;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    .line 947
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 948
    return-void
.end method

.method private setShuffleOrderInternal(Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 2
    .param p1, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 860
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->setShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 861
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    .line 862
    return-void
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 775
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v0, p1, :cond_1

    .line 776
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 777
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 779
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 781
    :cond_1
    return-void
.end method

.method private shouldAdvancePlayingPeriod()Z
    .locals 7

    .line 2495
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2496
    return v1

    .line 2498
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v0, :cond_1

    .line 2499
    return v1

    .line 2501
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2502
    .local v0, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v0, :cond_2

    .line 2503
    return v1

    .line 2505
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 2506
    .local v2, "nextPlayingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-eqz v2, :cond_3

    iget-wide v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2507
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    iget-boolean v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 2506
    :goto_0
    return v1
.end method

.method private shouldContinueLoading()Z
    .locals 19

    .line 2661
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2662
    return v2

    .line 2664
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    .line 2665
    .local v1, "loadingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    nop

    .line 2666
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v3

    .line 2668
    .local v3, "bufferedDurationUs":J
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v5

    if-ne v1, v5, :cond_1

    .line 2669
    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v5, v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v5

    move-wide v9, v5

    goto :goto_0

    .line 2671
    :cond_1
    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2670
    invoke-virtual {v1, v5, v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v5

    iget-object v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v7, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v5, v7

    move-wide v9, v5

    :goto_0
    nop

    .line 2673
    .local v9, "playbackPositionUs":J
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {v0, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2674
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v5}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v5

    move-wide/from16 v16, v5

    goto :goto_1

    .line 2675
    :cond_2
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v16, v5

    :goto_1
    nop

    .line 2676
    .local v16, "targetLiveOffsetUs":J
    new-instance v18, Landroidx/media3/exoplayer/LoadControl$Parameters;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v8, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 2683
    invoke-virtual {v5}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v5

    iget v13, v5, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v14, v5, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v15, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    move-object/from16 v5, v18

    move-wide v11, v3

    invoke-direct/range {v5 .. v17}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJ)V

    .line 2687
    .local v5, "loadParameters":Landroidx/media3/exoplayer/LoadControl$Parameters;
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    invoke-interface {v6, v5}, Landroidx/media3/exoplayer/LoadControl;->shouldContinueLoading(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v6

    .line 2688
    .local v6, "shouldContinueLoading":Z
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v7

    .line 2689
    .local v7, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v6, :cond_4

    iget-boolean v8, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v8, :cond_4

    const-wide/32 v11, 0x7a120

    cmp-long v8, v3, v11

    if-gez v8, :cond_4

    iget-wide v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-gtz v8, :cond_3

    iget-boolean v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    if-eqz v8, :cond_4

    .line 2695
    :cond_3
    iget-object v8, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v11, v11, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-interface {v8, v11, v12, v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    .line 2697
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    invoke-interface {v2, v5}, Landroidx/media3/exoplayer/LoadControl;->shouldContinueLoading(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v6

    .line 2699
    :cond_4
    return v6
.end method

.method private shouldPlayWhenReady()Z
    .locals 1

    .line 2945
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldTransitionToReadyState(Z)Z
    .locals 22
    .param p1, "renderersReadyOrEnded"    # Z

    .line 1984
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v1, :cond_0

    .line 1986
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v1

    return v1

    .line 1988
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1989
    return v1

    .line 1991
    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1994
    return v3

    .line 1997
    :cond_2
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 1999
    .local v2, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {v0, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2000
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v4}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v4

    move-wide/from16 v17, v4

    goto :goto_0

    .line 2001
    :cond_3
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v17, v4

    :goto_0
    nop

    .line 2002
    .local v17, "targetLiveOffsetUs":J
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    .line 2003
    .local v4, "loadingHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v1

    .line 2007
    .local v5, "isBufferedToEnd":Z
    :goto_1
    iget-object v6, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v6, :cond_5

    move v1, v3

    .line 2008
    .local v1, "isAdPendingPreparation":Z
    :cond_5
    if-nez v5, :cond_7

    if-eqz v1, :cond_6

    goto :goto_2

    .line 2012
    :cond_6
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v19

    .line 2014
    .local v19, "bufferedDurationUs":J
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    new-instance v15, Landroidx/media3/exoplayer/LoadControl$Parameters;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v9, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2019
    invoke-virtual {v2, v10, v11}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v10

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 2021
    invoke-virtual {v6}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v6

    iget v14, v6, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v12, v6, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    move-object v6, v15

    move/from16 v16, v12

    move/from16 v21, v13

    move-wide/from16 v12, v19

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v21

    invoke-direct/range {v6 .. v18}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJ)V

    .line 2014
    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/LoadControl;->shouldStartPlayback(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v0

    return v0

    .line 2009
    .end local v19    # "bufferedDurationUs":J
    :cond_7
    :goto_2
    return v3
.end method

.method private shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 6
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1273
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 1277
    .local v0, "windowIndex":I
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 1278
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-boolean v2, v2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-wide v2, v2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1274
    .end local v0    # "windowIndex":I
    :cond_2
    :goto_0
    return v1
.end method

.method private startRenderers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 978
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 979
    .local v0, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v0, :cond_0

    .line 980
    return-void

    .line 982
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 983
    .local v1, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 984
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 985
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->start()V

    .line 983
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 988
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private stopInternal(ZZ)V
    .locals 3
    .param p1, "forceResetRenderers"    # Z
    .param p2, "acknowledgeStop"    # Z

    .line 1536
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-direct {p0, v2, v0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1541
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1542
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/LoadControl;->onStopped(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 1543
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 1544
    return-void
.end method

.method private stopRenderers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 991
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->stop()V

    .line 992
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 993
    .local v3, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 994
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->ensureStopped(Landroidx/media3/exoplayer/Renderer;)V

    .line 992
    .end local v3    # "renderer":Landroidx/media3/exoplayer/Renderer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 997
    :cond_1
    return-void
.end method

.method private updateIsLoading()V
    .locals 3

    .line 2709
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2710
    .local v0, "loadingPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2711
    invoke-interface {v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2712
    .local v1, "isLoading":Z
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-eq v1, v2, :cond_2

    .line 2713
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithIsLoading(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2715
    :cond_2
    return-void
.end method

.method private updateLoadControlTrackSelection(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 19
    .param p1, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "trackSelectorResult"    # Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 2917
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2919
    .local v1, "loadingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2920
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    move-wide v8, v2

    goto :goto_0

    .line 2922
    :cond_0
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2921
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v2, v4

    move-wide v8, v2

    :goto_0
    nop

    .line 2923
    .local v8, "playbackPositionUs":J
    nop

    .line 2924
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v2

    .line 2926
    .local v2, "bufferedDurationUs":J
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {v0, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2927
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v4}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v4

    move-wide v15, v4

    goto :goto_1

    .line 2928
    :cond_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v15, v4

    :goto_1
    nop

    .line 2929
    .local v15, "targetLiveOffsetUs":J
    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    new-instance v13, Landroidx/media3/exoplayer/LoadControl$Parameters;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 2936
    invoke-virtual {v4}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v4

    iget v12, v4, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v10, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    move-object v4, v13

    move-object/from16 v7, p1

    move/from16 v17, v10

    move/from16 v18, v11

    move-wide v10, v2

    move-object v0, v13

    move/from16 v13, v17

    move-object/from16 v17, v1

    move-object v1, v14

    .end local v1    # "loadingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v17, "loadingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    move/from16 v14, v18

    invoke-direct/range {v4 .. v16}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJ)V

    move-object/from16 v4, p3

    iget-object v5, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 2929
    move-object/from16 v6, p2

    invoke-interface {v1, v0, v6, v5}, Landroidx/media3/exoplayer/LoadControl;->onTracksSelected(Landroidx/media3/exoplayer/LoadControl$Parameters;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 2942
    return-void
.end method

.method private updateMediaSourcesWithMediaItemsInternal(IILjava/util/List;)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 866
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 867
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 868
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaSourceList;->updateMediaSourcesWithMediaItems(IILjava/util/List;)Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 869
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    .line 870
    return-void
.end method

.method private updatePeriods()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2200
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2204
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()Z

    move-result v0

    .line 2205
    .local v0, "loadingPeriodChanged":Z
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdateReadingPeriod()V

    .line 2206
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdateReadingRenderers()V

    .line 2207
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdatePlayingPeriod()V

    .line 2208
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdatePreloadPeriods(Z)V

    .line 2209
    return-void

    .line 2202
    .end local v0    # "loadingPeriodChanged":Z
    :cond_1
    :goto_0
    return-void
.end method

.method private updatePlaybackPositions()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1004
    move-object/from16 v10, p0

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v11

    .line 1005
    .local v11, "playingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v11, :cond_0

    .line 1006
    return-void

    .line 1011
    :cond_0
    iget-boolean v0, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    goto :goto_0

    .line 1013
    :cond_1
    move-wide v3, v1

    :goto_0
    move-wide v12, v3

    .line 1014
    .local v12, "discontinuityPositionUs":J
    cmp-long v0, v12, v1

    const/4 v14, 0x0

    if-eqz v0, :cond_3

    .line 1015
    invoke-virtual {v11}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1018
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 1019
    invoke-direct {v10, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1020
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1022
    :cond_2
    invoke-direct {v10, v12, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1025
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v0, v12, v0

    if-eqz v0, :cond_6

    .line 1026
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 1027
    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object/from16 v0, p0

    move-wide v2, v12

    move-wide v6, v12

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    goto :goto_2

    .line 1036
    :cond_3
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 1038
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v11, v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v14

    .line 1037
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->syncAndGetPositionUs(Z)J

    move-result-wide v0

    iput-wide v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1039
    iget-wide v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v11, v0, v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v6

    .line 1040
    .local v6, "periodPositionUs":J
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-direct {v10, v0, v1, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerPendingMessages(JJ)V

    .line 1041
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->hasSkippedSilenceSinceLastCall()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1043
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    xor-int/lit8 v8, v0, 0x1

    .line 1044
    .local v8, "reportSilenceSkip":Z
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 1045
    const/4 v9, 0x6

    move-object/from16 v0, p0

    move-wide v2, v6

    move-wide v15, v6

    .end local v6    # "periodPositionUs":J
    .local v15, "periodPositionUs":J
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1052
    .end local v8    # "reportSilenceSkip":Z
    goto :goto_2

    .line 1053
    .end local v15    # "periodPositionUs":J
    .restart local v6    # "periodPositionUs":J
    :cond_5
    move-wide v15, v6

    .end local v6    # "periodPositionUs":J
    .restart local v15    # "periodPositionUs":J
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    move-wide v1, v15

    .end local v15    # "periodPositionUs":J
    .local v1, "periodPositionUs":J
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->updatePositionUs(J)V

    .line 1058
    .end local v1    # "periodPositionUs":J
    :cond_6
    :goto_2
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 1059
    .local v0, "loadingPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 1060
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1063
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eqz v1, :cond_7

    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1065
    invoke-direct {v10, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    .line 1067
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 1069
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getCurrentLiveOffsetUs()J

    move-result-wide v2

    iget-object v4, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1068
    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->getAdjustedPlaybackSpeed(JJ)F

    move-result v1

    .line 1070
    .local v1, "adjustedSpeed":F
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_7

    .line 1071
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v2, v1}, Landroidx/media3/common/PlaybackParameters;->withSpeed(F)Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    invoke-direct {v10, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setMediaClockPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 1072
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v3, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 1074
    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 1072
    invoke-direct {v10, v2, v3, v14, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    .line 1079
    .end local v1    # "adjustedSpeed":F
    :cond_7
    return-void
.end method

.method private updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    .locals 7
    .param p1, "newTimeline"    # Landroidx/media3/common/Timeline;
    .param p2, "newPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "oldTimeline"    # Landroidx/media3/common/Timeline;
    .param p4, "oldPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p5, "positionForTargetOffsetOverrideUs"    # J
    .param p7, "forceSetTargetOffsetOverride"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2138
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2142
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 2143
    .local v0, "targetPlaybackParameters":Landroidx/media3/common/PlaybackParameters;
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2144
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setMediaClockPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 2145
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v2, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    .line 2151
    :cond_1
    return-void

    .line 2153
    .end local v0    # "targetPlaybackParameters":Landroidx/media3/common/PlaybackParameters;
    :cond_2
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 2154
    .local v0, "windowIndex":I
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 2155
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v2, v2, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    .line 2156
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p5, v1

    if-eqz v3, :cond_3

    .line 2157
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    iget-object v2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2158
    invoke-direct {p0, p1, v2, p5, p6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getLiveOffsetUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    move-result-wide v2

    .line 2157
    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    goto :goto_1

    .line 2160
    :cond_3
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v3, v3, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2161
    .local v3, "windowUid":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2162
    .local v4, "oldWindowUid":Ljava/lang/Object;
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2163
    iget-object v5, p4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p3, v5, v6}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v5

    iget v5, v5, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 2164
    .local v5, "oldWindowIndex":I
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p3, v5, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v6

    iget-object v4, v6, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2166
    .end local v5    # "oldWindowIndex":I
    :cond_4
    invoke-static {v4, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p7, :cond_6

    .line 2169
    :cond_5
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v5, v1, v2}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    .line 2172
    .end local v3    # "windowUid":Ljava/lang/Object;
    .end local v4    # "oldWindowUid":Ljava/lang/Object;
    :cond_6
    :goto_1
    return-void
.end method

.method private updateRebufferingState(ZZ)V
    .locals 2
    .param p1, "isRebuffering"    # Z
    .param p2, "resetLastRebufferRealtimeMs"    # Z

    .line 3204
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    .line 3205
    nop

    .line 3206
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    .line 3207
    return-void
.end method

.method private updateTrackSelectionPlaybackSpeed(F)V
    .locals 5
    .param p1, "playbackSpeed"    # F

    .line 1960
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 1961
    .local v0, "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :goto_0
    if-eqz v0, :cond_2

    .line 1962
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1963
    .local v4, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-eqz v4, :cond_0

    .line 1964
    invoke-interface {v4, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    .line 1962
    .end local v4    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1967
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    .line 1969
    :cond_2
    return-void
.end method

.method private declared-synchronized waitUninterruptibly(Lcom/google/common/base/Supplier;J)V
    .locals 7
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    .local p1, "condition":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 756
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 757
    .local v0, "deadlineMs":J
    move-wide v2, p2

    .line 758
    .local v2, "remainingMs":J
    const/4 v4, 0x0

    .line 759
    .local v4, "wasInterrupted":Z
    :goto_0
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 761
    :try_start_1
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v5}, Landroidx/media3/common/util/Clock;->onThreadBlocked()V

    .line 762
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    goto :goto_1

    .line 763
    .end local p0    # "this":Landroidx/media3/exoplayer/ExoPlayerImplInternal;
    :catch_0
    move-exception v5

    .line 764
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 766
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    :try_start_2
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v5}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v2, v0, v5

    goto :goto_0

    .line 768
    :cond_0
    if-eqz v4, :cond_1

    .line 770
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 772
    :cond_1
    monitor-exit p0

    return-void

    .line 755
    .end local v0    # "deadlineMs":J
    .end local v2    # "remainingMs":J
    .end local v4    # "wasInterrupted":Z
    .end local p1    # "condition":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    .end local p2    # "timeoutMs":J
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public addMediaSources(ILjava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 9
    .param p1, "index"    # I
    .param p3, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Landroidx/media3/exoplayer/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 406
    .local p2, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v4, -0x1

    move-object v1, v8

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;IJLandroidx/media3/exoplayer/ExoPlayerImplInternal$1;)V

    .line 407
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, v8}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    .line 416
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 417
    return-void
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)V
    .locals 0
    .param p1, "setForegroundModeTimeoutMs"    # J

    .line 339
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    .line 340
    return-void
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 491
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 541
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v1, "Playback error"

    const-string v2, "ExoPlayerImplInternal"

    const/4 v3, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x1

    :try_start_0
    iget v4, v12, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 633
    :pswitch_0
    return v13

    .line 543
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prepareInternal()V

    .line 544
    goto/16 :goto_9

    .line 559
    :pswitch_2
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPreloadConfigurationInternal(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    .line 560
    goto/16 :goto_9

    .line 626
    :pswitch_3
    iget v4, v12, Landroid/os/Message;->arg1:I

    iget v5, v12, Landroid/os/Message;->arg2:I

    iget-object v6, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-direct {v11, v4, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateMediaSourcesWithMediaItemsInternal(IILjava/util/List;)V

    .line 627
    goto/16 :goto_9

    .line 623
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternalAndSeek()V

    .line 624
    goto/16 :goto_9

    .line 620
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->attemptRendererErrorRecovery()V

    .line 621
    goto/16 :goto_9

    .line 617
    :pswitch_6
    iget v4, v12, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    move v4, v14

    goto :goto_0

    :cond_0
    move v4, v13

    :goto_0
    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPauseAtEndOfWindowInternal(Z)V

    .line 618
    goto/16 :goto_9

    .line 614
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceListUpdateRequestedInternal()V

    .line 615
    goto/16 :goto_9

    .line 611
    :pswitch_8
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setShuffleOrderInternal(Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 612
    goto/16 :goto_9

    .line 608
    :pswitch_9
    iget v4, v12, Landroid/os/Message;->arg1:I

    iget v5, v12, Landroid/os/Message;->arg2:I

    iget-object v6, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v11, v4, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->removeMediaItemsInternal(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 609
    goto/16 :goto_9

    .line 605
    :pswitch_a
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->moveMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;)V

    .line 606
    goto/16 :goto_9

    .line 602
    :pswitch_b
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    iget v5, v12, Landroid/os/Message;->arg1:I

    invoke-direct {v11, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->addMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    .line 603
    goto/16 :goto_9

    .line 599
    :pswitch_c
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    .line 600
    goto/16 :goto_9

    .line 590
    :pswitch_d
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v11, v4, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;Z)V

    .line 591
    goto/16 :goto_9

    .line 596
    :pswitch_e
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTargetThread(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 597
    goto/16 :goto_9

    .line 593
    :pswitch_f
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageInternal(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 594
    goto/16 :goto_9

    .line 574
    :pswitch_10
    iget v4, v12, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    move v4, v14

    goto :goto_1

    :cond_1
    move v4, v13

    :goto_1
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 576
    goto/16 :goto_9

    .line 556
    :pswitch_11
    iget v4, v12, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    move v4, v14

    goto :goto_2

    :cond_2
    move v4, v13

    :goto_2
    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    .line 557
    goto/16 :goto_9

    .line 553
    :pswitch_12
    iget v4, v12, Landroid/os/Message;->arg1:I

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    .line 554
    goto/16 :goto_9

    .line 587
    :pswitch_13
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternal()V

    .line 588
    goto/16 :goto_9

    .line 584
    :pswitch_14
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 585
    goto/16 :goto_9

    .line 581
    :pswitch_15
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePeriodPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 582
    goto/16 :goto_9

    .line 629
    :pswitch_16
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseInternal()V

    .line 631
    return v14

    .line 578
    :pswitch_17
    invoke-direct {v11, v13, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 579
    goto/16 :goto_9

    .line 571
    :pswitch_18
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/SeekParameters;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setSeekParametersInternal(Landroidx/media3/exoplayer/SeekParameters;)V

    .line 572
    goto/16 :goto_9

    .line 568
    :pswitch_19
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPlaybackParametersInternal(Landroidx/media3/common/PlaybackParameters;)V

    .line 569
    goto/16 :goto_9

    .line 565
    :pswitch_1a
    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    .line 566
    goto/16 :goto_9

    .line 562
    :pswitch_1b
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->doSomeWork()V

    .line 563
    goto/16 :goto_9

    .line 546
    :pswitch_1c
    iget v4, v12, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    move v4, v14

    goto :goto_3

    :cond_3
    move v4, v13

    :goto_3
    iget v5, v12, Landroid/os/Message;->arg2:I

    shr-int/2addr v5, v3

    iget v6, v12, Landroid/os/Message;->arg2:I

    and-int/lit8 v6, v6, 0xf

    invoke-direct {v11, v4, v5, v14, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/media3/exoplayer/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    goto/16 :goto_9

    .line 714
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 716
    .local v3, "e":Ljava/lang/RuntimeException;
    instance-of v4, v3, Ljava/lang/IllegalStateException;

    if-nez v4, :cond_5

    instance-of v4, v3, Ljava/lang/IllegalArgumentException;

    if-eqz v4, :cond_4

    goto :goto_4

    .line 719
    :cond_4
    const/16 v4, 0x3e8

    .local v4, "errorCode":I
    goto :goto_5

    .line 717
    .end local v4    # "errorCode":I
    :cond_5
    :goto_4
    const/16 v4, 0x3ec

    .line 721
    .restart local v4    # "errorCode":I
    :goto_5
    invoke-static {v3, v4}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v5

    .line 722
    .local v5, "error":Landroidx/media3/exoplayer/ExoPlaybackException;
    invoke-static {v2, v1, v5}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 723
    invoke-direct {v11, v14, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 724
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    goto/16 :goto_d

    .line 712
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "errorCode":I
    .end local v5    # "error":Landroidx/media3/exoplayer/ExoPlaybackException;
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 713
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, 0x7d0

    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 710
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 711
    .local v1, "e":Landroidx/media3/exoplayer/source/BehindLiveWindowException;
    const/16 v2, 0x3ea

    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    .end local v1    # "e":Landroidx/media3/exoplayer/source/BehindLiveWindowException;
    goto :goto_9

    .line 708
    :catch_3
    move-exception v0

    move-object v1, v0

    .line 709
    .local v1, "e":Landroidx/media3/datasource/DataSourceException;
    iget v2, v1, Landroidx/media3/datasource/DataSourceException;->reason:I

    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    .end local v1    # "e":Landroidx/media3/datasource/DataSourceException;
    goto :goto_9

    .line 692
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 694
    .local v1, "e":Landroidx/media3/common/ParserException;
    iget v2, v1, Landroidx/media3/common/ParserException;->dataType:I

    if-ne v2, v14, :cond_7

    .line 696
    iget-boolean v2, v1, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    if-eqz v2, :cond_6

    .line 697
    const/16 v2, 0xbb9

    goto :goto_6

    .line 698
    :cond_6
    const/16 v2, 0xbbb

    :goto_6
    nop

    .local v2, "errorCode":I
    goto :goto_8

    .line 699
    .end local v2    # "errorCode":I
    :cond_7
    iget v2, v1, Landroidx/media3/common/ParserException;->dataType:I

    if-ne v2, v3, :cond_9

    .line 701
    iget-boolean v2, v1, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    if-eqz v2, :cond_8

    .line 702
    const/16 v2, 0xbba

    goto :goto_7

    .line 703
    :cond_8
    const/16 v2, 0xbbc

    :goto_7
    nop

    .restart local v2    # "errorCode":I
    goto :goto_8

    .line 705
    .end local v2    # "errorCode":I
    :cond_9
    const/16 v2, 0x3e8

    .line 707
    .restart local v2    # "errorCode":I
    :goto_8
    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    .end local v1    # "e":Landroidx/media3/common/ParserException;
    .end local v2    # "errorCode":I
    goto :goto_9

    .line 690
    :catch_5
    move-exception v0

    move-object v1, v0

    .line 691
    .local v1, "e":Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    iget v2, v1, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    .line 725
    .end local v1    # "e":Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    :goto_9
    goto/16 :goto_d

    .line 635
    :catch_6
    move-exception v0

    move-object v3, v0

    .line 636
    .local v3, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    iget v4, v3, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v4, v14, :cond_a

    .line 637
    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    .line 638
    .local v4, "readingPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-eqz v4, :cond_a

    .line 641
    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v3

    .line 644
    .end local v4    # "readingPeriod":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_a
    iget-boolean v4, v3, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    if-eqz v4, :cond_d

    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v4, :cond_b

    iget v4, v3, Landroidx/media3/exoplayer/ExoPlaybackException;->errorCode:I

    const/16 v5, 0x138c

    if-eq v4, v5, :cond_b

    iget v4, v3, Landroidx/media3/exoplayer/ExoPlaybackException;->errorCode:I

    const/16 v5, 0x138b

    if-ne v4, v5, :cond_d

    .line 651
    :cond_b
    const-string v1, "Recoverable renderer error"

    invoke-static {v2, v1, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v1, :cond_c

    .line 653
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 654
    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    goto :goto_a

    .line 656
    :cond_c
    iput-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 660
    :goto_a
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    iget-object v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 661
    const/16 v4, 0x19

    invoke-interface {v2, v4, v3}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v2

    .line 660
    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->sendMessageAtFrontOfQueue(Landroidx/media3/common/util/HandlerWrapper$Message;)Z

    goto :goto_9

    .line 663
    :cond_d
    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v4, :cond_e

    .line 664
    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 665
    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    move-object v15, v3

    goto :goto_b

    .line 663
    :cond_e
    move-object v15, v3

    .line 667
    .end local v3    # "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    .local v15, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    :goto_b
    invoke-static {v2, v1, v15}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 668
    iget v1, v15, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v1, v14, :cond_10

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 669
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    iget-object v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-eq v1, v2, :cond_10

    .line 672
    :goto_c
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    iget-object v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-eq v1, v2, :cond_f

    .line 673
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_c

    .line 675
    :cond_f
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 677
    .local v10, "newPlayingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 678
    iget-object v1, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-object v1, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-object v1, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v7, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 679
    const/4 v9, 0x1

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v17, v10

    .end local v10    # "newPlayingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v17, "newPlayingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 687
    .end local v17    # "newPlayingPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_10
    invoke-direct {v11, v14, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 688
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1, v15}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    goto/16 :goto_9

    .line 726
    .end local v15    # "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    :goto_d
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 727
    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$maybeTriggerOnRendererReadyChanged$1$androidx-media3-exoplayer-ExoPlayerImplInternal(IZ)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "allowsPlayback"    # Z

    .line 1251
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v1, v1, p1

    .line 1252
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v1

    .line 1251
    invoke-interface {v0, p1, v1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onRendererReadyChanged(IIZ)V

    return-void
.end method

.method synthetic lambda$release$0$androidx-media3-exoplayer-ExoPlayerImplInternal()Ljava/lang/Boolean;
    .locals 1

    .line 486
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$sendMessageToTargetThread$2$androidx-media3-exoplayer-ExoPlayerImplInternal(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 3
    .param p1, "message"    # Landroidx/media3/exoplayer/PlayerMessage;

    .line 1739
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverMessage(Landroidx/media3/exoplayer/PlayerMessage;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    nop

    .line 1744
    return-void

    .line 1740
    :catch_0
    move-exception v0

    .line 1741
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Unexpected error delivering message on external thread."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1742
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public moveMediaSources(IIILandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I
    .param p4, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 427
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;-><init>(IIILandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 429
    .local v0, "moveMediaItemsMessage":Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v2, 0x13

    invoke-interface {v1, v2, v0}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 430
    return-void
.end method

.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 511
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 512
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0

    .line 85
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2
    .param p1, "newPlaybackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 530
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 531
    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    .line 532
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 533
    return-void
.end method

.method public onPlaylistUpdateRequested()V
    .locals 2

    .line 498
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 499
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 500
    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 506
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 507
    return-void
.end method

.method public onRendererCapabilitiesChanged(Landroidx/media3/exoplayer/Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroidx/media3/exoplayer/Renderer;

    .line 523
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 524
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .line 518
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 519
    return-void
.end method

.method public prepare()V
    .locals 2

    .line 343
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 344
    return-void
.end method

.method public declared-synchronized release()Z
    .locals 3

    monitor-enter p0

    .line 482
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 486
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseTimeoutMs:J

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 487
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 483
    .end local p0    # "this":Landroidx/media3/exoplayer/ExoPlayerImplInternal;
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 481
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeMediaSources(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 420
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 421
    const/16 v1, 0x14

    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 423
    return-void
.end method

.method public seekTo(Landroidx/media3/common/Timeline;IJ)V
    .locals 3
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "positionUs"    # J

    .line 375
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    .line 376
    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    .line 377
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 378
    return-void
.end method

.method public declared-synchronized sendMessage(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 2
    .param p1, "message"    # Landroidx/media3/exoplayer/PlayerMessage;

    monitor-enter p0

    .line 445
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit p0

    return-void

    .line 446
    .end local p0    # "this":Landroidx/media3/exoplayer/ExoPlayerImplInternal;
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    .line 444
    .end local p1    # "message":Landroidx/media3/exoplayer/PlayerMessage;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized setForegroundMode(Z)Z
    .locals 4
    .param p1, "foregroundMode"    # Z

    monitor-enter p0

    .line 460
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    const/16 v0, 0xd

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 464
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v3, v0, v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return v1

    .line 467
    .end local p0    # "this":Landroidx/media3/exoplayer/ExoPlayerImplInternal;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 468
    .local v1, "processedFlag":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 469
    invoke-interface {v3, v0, v2, v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    .line 470
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 471
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    invoke-direct {p0, v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 472
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 461
    .end local v1    # "processedFlag":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 459
    .end local p1    # "foregroundMode":Z
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setMediaSources(Ljava/util/List;IJLandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 9
    .param p2, "windowIndex"    # I
    .param p3, "positionUs"    # J
    .param p5, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;IJ",
            "Landroidx/media3/exoplayer/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 397
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;IJLandroidx/media3/exoplayer/ExoPlayerImplInternal$1;)V

    .line 398
    const/16 v1, 0x11

    invoke-interface {v0, v1, v8}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 402
    return-void
.end method

.method public setPauseAtEndOfWindow(Z)V
    .locals 3
    .param p1, "pauseAtEndOfWindow"    # Z

    .line 357
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 358
    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-interface {v0, v2, p1, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 360
    return-void
.end method

.method public setPlayWhenReady(ZII)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playWhenReadyChangeReason"    # I
    .param p3, "playbackSuppressionReason"    # I

    .line 350
    shl-int/lit8 v0, p3, 0x4

    or-int/2addr v0, p2

    .line 351
    .local v0, "combinedReasons":I
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 352
    const/4 v2, 0x1

    invoke-interface {v1, v2, p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v1

    .line 353
    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 354
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 381
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 382
    return-void
.end method

.method public setPreloadConfiguration(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 2
    .param p1, "preloadConfiguration"    # Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 371
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x1c

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 372
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3
    .param p1, "repeatMode"    # I

    .line 363
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 364
    return-void
.end method

.method public setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V
    .locals 2
    .param p1, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;

    .line 385
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 386
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 367
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 368
    return-void
.end method

.method public setShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 2
    .param p1, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 433
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x15

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 434
    return-void
.end method

.method public stop()V
    .locals 2

    .line 389
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 390
    return-void
.end method

.method public updateMediaSourcesWithMediaItems(IILjava/util/List;)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 438
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 439
    const/16 v1, 0x1b

    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 441
    return-void
.end method
