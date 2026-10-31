.class final Landroidx/media3/exoplayer/ExoPlayerImpl;
.super Landroidx/media3/common/BasePlayer;
.source "ExoPlayerImpl.java"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;
.implements Landroidx/media3/exoplayer/ExoPlayer$AudioComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$VideoComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$TextComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$Api31;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$NoSuitableOutputPlaybackSuppressionAudioDeviceCallback;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$Api23;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field private final applicationContext:Landroid/content/Context;

.field private final applicationLooper:Landroid/os/Looper;

.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private final audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

.field private audioDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field private final audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

.field private audioFormat:Landroidx/media3/common/Format;

.field private audioManager:Landroid/media/AudioManager;

.field private final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private availableCommands:Landroidx/media3/common/Player$Commands;

.field private final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field private cameraMotionListener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

.field private final clock:Landroidx/media3/common/util/Clock;

.field private final componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field private final constructorFinished:Landroidx/media3/common/util/ConditionVariable;

.field private currentCueGroup:Landroidx/media3/common/text/CueGroup;

.field private final detachSurfaceTimeoutMs:J

.field private deviceInfo:Landroidx/media3/common/DeviceInfo;

.field final emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field private foregroundMode:Z

.field private final frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private final internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field private isPriorityTaskManagerRegistered:Z

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private final maxSeekToPreviousPositionMs:J

.field private mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private final mediaSourceHolderSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private ownedSurface:Landroid/view/Surface;

.field private pauseAtEndOfMediaItems:Z

.field private pendingDiscontinuity:Z

.field private pendingDiscontinuityReason:I

.field private pendingOperationAcks:I

.field private final period:Landroidx/media3/common/Timeline$Period;

.field final permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

.field private playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

.field private final playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private playerReleased:Z

.field private playlistMetadata:Landroidx/media3/common/MediaMetadata;

.field private preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field private priority:I

.field private priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

.field private final renderers:[Landroidx/media3/exoplayer/Renderer;

.field private repeatMode:I

.field private final seekBackIncrementMs:J

.field private final seekForwardIncrementMs:J

.field private seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field private shuffleModeEnabled:Z

.field private shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

.field private skipSilenceEnabled:Z

.field private sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field private staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private final streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

.field private final suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

.field private final suppressPlaybackOnUnsuitableOutput:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceHolderSurfaceIsVideoOutput:Z

.field private surfaceSize:Landroidx/media3/common/util/Size;

.field private textureView:Landroid/view/TextureView;

.field private throwsWhenUsingWrongThread:Z

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field private final useLazyPreparation:Z

.field private videoChangeFrameRateStrategy:I

.field private videoDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field private videoFormat:Landroidx/media3/common/Format;

.field private videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field private videoOutput:Ljava/lang/Object;

.field private videoScalingMode:I

.field private videoSize:Landroidx/media3/common/VideoSize;

.field private volume:F

.field private final wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

.field private final wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

.field private final wrappingPlayer:Landroidx/media3/common/Player;


# direct methods
.method public static synthetic $r8$lambda$kuBgAkV8YlLt9T_pxBD5vBMCsCg(Landroidx/media3/exoplayer/ExoPlayerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->onSelectedOutputSuitabilityChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 138
    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V
    .locals 32
    .param p1, "builder"    # Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .param p2, "wrappingPlayer"    # Landroidx/media3/common/Player;

    .line 244
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Landroidx/media3/common/BasePlayer;-><init>()V

    .line 245
    new-instance v0, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v0}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    .line 247
    :try_start_0
    const-string v0, "ExoPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 250
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AndroidXMedia3/1.5.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v0, v3}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    .line 257
    iget-object v0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    iget-object v3, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0, v3}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 258
    iget v0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priority:I

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    .line 259
    iget-object v0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    .line 260
    iget-object v0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 261
    iget v0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    .line 262
    iget v0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 263
    iget-boolean v0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->skipSilenceEnabled:Z

    iput-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 264
    iget-wide v3, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-wide v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    .line 265
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 266
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 267
    new-instance v0, Landroid/os/Handler;

    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 268
    .local v0, "eventHandler":Landroid/os/Handler;
    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 271
    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/media3/exoplayer/RenderersFactory;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 272
    move-object v6, v0

    invoke-interface/range {v5 .. v10}, Landroidx/media3/exoplayer/RenderersFactory;->createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 278
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v4, v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 279
    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 280
    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 281
    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 282
    iget-boolean v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    iput-boolean v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    .line 283
    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 284
    iget-wide v7, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    iput-wide v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    .line 285
    iget-wide v7, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    iput-wide v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    .line 286
    iget-wide v7, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->maxSeekToPreviousPositionMs:J

    iput-wide v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->maxSeekToPreviousPositionMs:J

    .line 287
    iget-boolean v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    iput-boolean v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 288
    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    .line 289
    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/Clock;

    .line 290
    if-nez p2, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    .line 291
    iget-boolean v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suppressPlaybackOnUnsuitableOutput:Z

    iput-boolean v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->suppressPlaybackOnUnsuitableOutput:Z

    .line 292
    new-instance v4, Landroidx/media3/common/util/ListenerSet;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/Clock;

    new-instance v9, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;

    invoke-direct {v9, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    invoke-direct {v4, v7, v8, v9}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 297
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 298
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 299
    new-instance v4, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v4, v5}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 300
    sget-object v4, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;->DEFAULT:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 301
    new-instance v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v7, v7

    new-array v7, v7, [Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v8, v8

    new-array v8, v8, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    sget-object v9, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    invoke-direct {v4, v7, v8, v9, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 307
    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 308
    new-instance v4, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/16 v7, 0x14

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    .line 310
    invoke-virtual {v4, v7}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 332
    invoke-virtual {v7}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v7

    .line 331
    const/16 v8, 0x1d

    invoke-virtual {v4, v8, v7}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-boolean v7, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 333
    const/16 v8, 0x17

    invoke-virtual {v4, v8, v7}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-boolean v7, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 334
    const/16 v9, 0x19

    invoke-virtual {v4, v9, v7}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-boolean v7, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 335
    const/16 v9, 0x21

    invoke-virtual {v4, v9, v7}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-boolean v7, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 336
    const/16 v9, 0x1a

    invoke-virtual {v4, v9, v7}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-boolean v7, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 337
    const/16 v9, 0x22

    invoke-virtual {v4, v9, v7}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    .line 338
    invoke-virtual {v4}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    .line 339
    new-instance v4, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    .line 341
    invoke-virtual {v4, v7}, Landroidx/media3/common/Player$Commands$Builder;->addAll(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    .line 342
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    .line 343
    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    .line 344
    invoke-virtual {v4}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 345
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/Clock;

    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-interface {v4, v10, v3}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 346
    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda16;

    invoke-direct {v4, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 349
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-static {v4}, Landroidx/media3/exoplayer/PlaybackInfo;->createDummy(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 350
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    iget-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-interface {v4, v10, v11}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->setPlayer(Landroidx/media3/common/Player;Landroid/os/Looper;)V

    .line 352
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v10, 0x1f

    if-ge v4, v10, :cond_2

    .line 353
    new-instance v4, Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v10, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playerName:Ljava/lang/String;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>(Ljava/lang/String;)V

    move-object/from16 v28, v4

    goto :goto_2

    .line 354
    :cond_2
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    iget-boolean v10, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    iget-object v11, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playerName:Ljava/lang/String;

    invoke-static {v4, v1, v10, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31;->registerMediaMetricsListener(Landroid/content/Context;Landroidx/media3/exoplayer/ExoPlayerImpl;ZLjava/lang/String;)Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v4

    move-object/from16 v28, v4

    :goto_2
    nop

    .line 359
    .local v28, "playerId":Landroidx/media3/exoplayer/analytics/PlayerId;
    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    iget-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v10, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 364
    invoke-interface {v10}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Landroidx/media3/exoplayer/LoadControl;

    iget-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    iget-boolean v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iget-object v8, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    iget-wide v5, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    move-object/from16 v31, v0

    .end local v0    # "eventHandler":Landroid/os/Handler;
    .local v31, "eventHandler":Landroid/os/Handler;
    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    move/from16 v23, v0

    iget-boolean v0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->dynamicSchedulingEnabled:Z

    move/from16 v24, v0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    move-object/from16 v25, v0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/Clock;

    move-object/from16 v26, v0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    move-object/from16 v27, v0

    iget-object v0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    move/from16 v16, v10

    move-object v10, v4

    move/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move-object/from16 v20, v8

    move-wide/from16 v21, v5

    move-object/from16 v29, v0

    move-object/from16 v30, v2

    invoke-direct/range {v10 .. v30}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;-><init>([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/LivePlaybackSpeedControl;JZZLandroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/PlaybackLooperProvider;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 381
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    .line 382
    const/4 v0, 0x0

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    .line 383
    sget-object v2, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 384
    sget-object v2, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 385
    sget-object v2, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 386
    const/4 v2, -0x1

    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    .line 387
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    .line 388
    sget-object v2, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    .line 389
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    .line 391
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 392
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 393
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    move-object/from16 v2, p1

    :try_start_2
    iget-wide v3, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 395
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-wide v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->experimentalSetForegroundModeTimeoutMs(J)V

    .line 398
    :cond_3
    new-instance v3, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    move-object/from16 v6, v31

    .end local v31    # "eventHandler":Landroid/os/Handler;
    .local v6, "eventHandler":Landroid/os/Handler;
    invoke-direct {v3, v4, v6, v5}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    .line 400
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    iget-boolean v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 401
    new-instance v3, Landroidx/media3/exoplayer/AudioFocusManager;

    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-direct {v3, v4, v6, v5}, Landroidx/media3/exoplayer/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    .line 402
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    iget-boolean v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioFocus:Z

    if-eqz v4, :cond_4

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    .line 404
    iget-object v3, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    .line 405
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    if-eqz v3, :cond_5

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x23

    if-lt v3, v4, :cond_5

    .line 406
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;

    invoke-direct {v4, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/SuitableOutputChecker;->enable(Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;)V

    goto :goto_4

    .line 407
    :cond_5
    iget-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->suppressPlaybackOnUnsuitableOutput:Z

    if-eqz v3, :cond_6

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_6

    .line 408
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioManager:Landroid/media/AudioManager;

    .line 409
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioManager:Landroid/media/AudioManager;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$NoSuitableOutputPlaybackSuppressionAudioDeviceCallback;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$NoSuitableOutputPlaybackSuppressionAudioDeviceCallback;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V

    new-instance v5, Landroid/os/Handler;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-direct {v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v3, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api23;->registerAudioDeviceCallback(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 415
    :cond_6
    :goto_4
    iget-boolean v3, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    if-eqz v3, :cond_7

    .line 416
    new-instance v3, Landroidx/media3/exoplayer/StreamVolumeManager;

    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget v7, v7, Landroidx/media3/common/AudioAttributes;->usage:I

    .line 421
    invoke-static {v7}, Landroidx/media3/common/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v7

    invoke-direct {v3, v4, v6, v5, v7}, Landroidx/media3/exoplayer/StreamVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/StreamVolumeManager$Listener;I)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    goto :goto_5

    .line 423
    :cond_7
    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 425
    :goto_5
    new-instance v3, Landroidx/media3/exoplayer/WakeLockManager;

    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/WakeLockManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    .line 426
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    iget v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    move v4, v0

    :goto_6
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/WakeLockManager;->setEnabled(Z)V

    .line 427
    new-instance v3, Landroidx/media3/exoplayer/WifiLockManager;

    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/WifiLockManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    .line 428
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    iget v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/WifiLockManager;->setEnabled(Z)V

    .line 429
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createDeviceInfo(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 430
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    .line 431
    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 433
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    .line 434
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 435
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v5, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 436
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 437
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x4

    invoke-direct {v1, v5, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 438
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 439
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 438
    const/4 v3, 0x5

    invoke-direct {v1, v5, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 440
    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 441
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    const/4 v3, 0x7

    invoke-direct {v1, v5, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 443
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 445
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x10

    invoke-direct {v1, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 447
    .end local v6    # "eventHandler":Landroid/os/Handler;
    .end local v28    # "playerId":Landroidx/media3/exoplayer/analytics/PlayerId;
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    .line 448
    nop

    .line 449
    return-void

    .line 447
    :catchall_0
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_7
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v3}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    .line 448
    throw v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method static synthetic access$1002(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 130
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$1102(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Landroidx/media3/common/Format;

    .line 130
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFormat:Landroidx/media3/common/Format;

    return-object p1
.end method

.method static synthetic access$1200(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Landroidx/media3/exoplayer/ExoPlayerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Z

    .line 130
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    return p1
.end method

.method static synthetic access$1302(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/text/CueGroup;)Landroidx/media3/common/text/CueGroup;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Landroidx/media3/common/text/CueGroup;

    .line 130
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    return-object p1
.end method

.method static synthetic access$1400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$1402(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Landroidx/media3/common/MediaMetadata;

    .line 130
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$1602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Landroidx/media3/common/MediaMetadata;

    .line 130
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    return v0
.end method

.method static synthetic access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 130
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 130
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$2000(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .line 130
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$2100(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendVolumeToRenderers()V

    return-void
.end method

.method static synthetic access$2200(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 130
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReadyChangeReason(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroidx/media3/exoplayer/ExoPlayerImpl;ZII)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method static synthetic access$2400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/StreamVolumeManager;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    return-object v0
.end method

.method static synthetic access$2500(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 130
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createDeviceInfo(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/DeviceInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object v0
.end method

.method static synthetic access$2602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/DeviceInfo;)Landroidx/media3/common/DeviceInfo;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Landroidx/media3/common/DeviceInfo;

    .line 130
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$2700(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateWakeAndWifiLock()V

    return-void
.end method

.method static synthetic access$2800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasSupportedAudioOutput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    return-object v0
.end method

.method static synthetic access$3000(Landroidx/media3/exoplayer/ExoPlayerImpl;ZII)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfoForPlayWhenReadyAndSuppressionReasonStates(ZII)V

    return-void
.end method

.method static synthetic access$402(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 130
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    return-object v0
.end method

.method static synthetic access$602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Landroidx/media3/common/Format;

    .line 130
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoFormat:Landroidx/media3/common/Format;

    return-object p1
.end method

.method static synthetic access$702(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/VideoSize;)Landroidx/media3/common/VideoSize;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;
    .param p1, "x1"    # Landroidx/media3/common/VideoSize;

    .line 130
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    return-object p1
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/ExoPlayerImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    return-object v0
.end method

.method private addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation

    .line 2402
    .local p2, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2403
    .local v0, "holders":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2404
    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 2405
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/MediaSource;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    .line 2406
    .local v2, "holder":Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2407
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    add-int v4, v1, p1

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v6, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    iget-object v7, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-direct {v5, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MaskingMediaSource;)V

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2403
    .end local v2    # "holder":Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2410
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 2412
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 2411
    invoke-interface {v1, p1, v2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 2413
    return-object v0
.end method

.method private addMediaSourcesInternal(Landroidx/media3/exoplayer/PlaybackInfo;ILjava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 9
    .param p1, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)",
            "Landroidx/media3/exoplayer/PlaybackInfo;"
        }
    .end annotation

    .line 2418
    .local p3, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    iget-object v6, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2419
    .local v6, "oldTimeline":Landroidx/media3/common/Timeline;
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2420
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 2421
    .local v7, "holders":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMaskingTimeline()Landroidx/media3/common/Timeline;

    move-result-object v8

    .line 2422
    .local v8, "newTimeline":Landroidx/media3/common/Timeline;
    nop

    .line 2429
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v3

    .line 2430
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v4

    .line 2426
    move-object v0, p0

    move-object v1, v6

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2423
    invoke-direct {p0, p1, v8, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 2431
    .local v0, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {v1, p2, v7, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->addMediaSources(ILjava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 2432
    return-object v0
.end method

.method private buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 4

    .line 2666
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 2667
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2668
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v1

    .line 2670
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 2672
    .local v1, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata;->buildUpon()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v2

    iget-object v3, v1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaMetadata$Builder;->populate(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    return-object v2
.end method

.method private canUpdateMediaSourcesWithMediaItems(IILjava/util/List;)Z
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)Z"
        }
    .end annotation

    .line 2925
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    sub-int v0, p2, p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2927
    return v2

    .line 2929
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 2930
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->access$300(Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    .line 2931
    .local v1, "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    sub-int v3, v0, p1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/source/MediaSource;->canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2932
    return v2

    .line 2929
    .end local v1    # "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2935
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private computePlaybackSuppressionReason(ZI)I
    .locals 2
    .param p1, "playWhenReady"    # Z
    .param p2, "playerCommand"    # I

    .line 2828
    if-nez p2, :cond_0

    .line 2829
    const/4 v0, 0x1

    return v0

    .line 2831
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->suppressPlaybackOnUnsuitableOutput:Z

    if-eqz v0, :cond_2

    .line 2832
    const/4 v0, 0x3

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasSupportedAudioOutput()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2833
    return v0

    .line 2835
    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v1, v0, :cond_2

    .line 2838
    return v0

    .line 2841
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static createDeviceInfo(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;
    .locals 3
    .param p0, "streamVolumeManager"    # Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 2977
    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    .line 2978
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->getMinVolume()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/media3/common/DeviceInfo$Builder;->setMinVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object v0

    .line 2979
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->getMaxVolume()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;->setMaxVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object v0

    .line 2980
    invoke-virtual {v0}, Landroidx/media3/common/DeviceInfo$Builder;->build()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    .line 2977
    return-object v0
.end method

.method private createMaskingTimeline()Landroidx/media3/common/Timeline;
    .locals 3

    .line 2472
    new-instance v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    return-object v0
.end method

.method private createMediaSources(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 1961
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1962
    .local v0, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1963
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1962
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1965
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 9
    .param p1, "target"    # Landroidx/media3/exoplayer/PlayerMessage$Target;

    .line 2648
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v0

    .line 2649
    .local v0, "currentWindowIndex":I
    new-instance v8, Landroidx/media3/exoplayer/PlayerMessage;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2653
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/Clock;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 2655
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/PlayerMessage;-><init>(Landroidx/media3/exoplayer/PlayerMessage$Sender;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroidx/media3/common/util/Clock;Landroid/os/Looper;)V

    .line 2649
    return-object v8
.end method

.method private evaluateMediaItemTransitionReason(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/exoplayer/PlaybackInfo;ZIZZ)Landroid/util/Pair;
    .locals 17
    .param p1, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p2, "oldPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p3, "positionDiscontinuity"    # Z
    .param p4, "positionDiscontinuityReason"    # I
    .param p5, "timelineChanged"    # Z
    .param p6, "repeatCurrentMediaItem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "ZIZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2285
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2286
    .local v4, "oldTimeline":Landroidx/media3/common/Timeline;
    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2287
    .local v5, "newTimeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    const/4 v7, -0x1

    .line 2288
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2287
    const/4 v8, 0x0

    .line 2288
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2287
    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2288
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 2289
    :cond_0
    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v10

    const/4 v11, 0x1

    if-eq v6, v10, :cond_1

    .line 2290
    new-instance v6, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 2293
    :cond_1
    iget-object v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 2294
    invoke-virtual {v4, v6, v10}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 2295
    .local v6, "oldWindowIndex":I
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v4, v6, v10}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v10

    iget-object v10, v10, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2296
    .local v10, "oldWindowUid":Ljava/lang/Object;
    iget-object v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v12, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 2297
    invoke-virtual {v5, v12, v13}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v12

    iget v12, v12, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 2298
    .local v12, "newWindowIndex":I
    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v5, v12, v13}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v13

    iget-object v13, v13, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2299
    .local v13, "newWindowUid":Ljava/lang/Object;
    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 2301
    if-eqz p3, :cond_2

    if-nez v3, :cond_2

    .line 2303
    const/4 v7, 0x1

    .local v7, "transitionReason":I
    goto :goto_0

    .line 2304
    .end local v7    # "transitionReason":I
    :cond_2
    if-eqz p3, :cond_3

    if-ne v3, v11, :cond_3

    .line 2306
    const/4 v7, 0x2

    .restart local v7    # "transitionReason":I
    goto :goto_0

    .line 2307
    .end local v7    # "transitionReason":I
    :cond_3
    if-eqz p5, :cond_4

    .line 2308
    const/4 v7, 0x3

    .line 2313
    .restart local v7    # "transitionReason":I
    :goto_0
    new-instance v8, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8

    .line 2311
    .end local v7    # "transitionReason":I
    :cond_4
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 2317
    :cond_5
    if-eqz p3, :cond_6

    if-nez v3, :cond_6

    iget-object v14, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v14, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move/from16 v16, v12

    .end local v12    # "newWindowIndex":I
    .local v16, "newWindowIndex":I
    iget-wide v11, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v8, v14, v11

    if-gez v8, :cond_7

    .line 2321
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 2317
    .end local v16    # "newWindowIndex":I
    .restart local v12    # "newWindowIndex":I
    :cond_6
    move/from16 v16, v12

    .line 2323
    .end local v12    # "newWindowIndex":I
    .restart local v16    # "newWindowIndex":I
    :cond_7
    if-eqz p3, :cond_8

    const/4 v8, 0x1

    if-ne v3, v8, :cond_8

    if-eqz p6, :cond_8

    .line 2326
    new-instance v7, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 2329
    :cond_8
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method private getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 4
    .param p1, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1931
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1932
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1933
    iget-wide v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1937
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1936
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    .line 1937
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    goto :goto_0

    .line 1938
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-wide v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1933
    :goto_0
    return-wide v0

    .line 1940
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 4
    .param p1, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1944
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    .line 1949
    :cond_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_1

    .line 1950
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlaybackInfo;->getEstimatedPositionUs()J

    move-result-wide v0

    goto :goto_0

    .line 1951
    :cond_1
    iget-wide v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    :goto_0
    nop

    .line 1953
    .local v0, "positionUs":J
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1954
    return-wide v0

    .line 1956
    :cond_2
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I
    .locals 3
    .param p1, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1923
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1924
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    return v0

    .line 1926
    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    return v0
.end method

.method private getPeriodPositionUsAfterTimelineChanged(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;
    .locals 14
    .param p1, "oldTimeline"    # Landroidx/media3/common/Timeline;
    .param p2, "newTimeline"    # Landroidx/media3/common/Timeline;
    .param p3, "currentWindowIndexInternal"    # I
    .param p4, "contentPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "Landroidx/media3/common/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2588
    move-object v0, p0

    move-object/from16 v8, p2

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    if-nez v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2596
    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 2598
    invoke-static/range {p4 .. p5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v6

    .line 2597
    move-object v2, p1

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v12

    .line 2599
    .local v12, "oldPeriodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    invoke-static {v12}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v13, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2600
    .local v13, "periodUid":Ljava/lang/Object;
    invoke-virtual {v8, v13}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v11, :cond_1

    .line 2602
    return-object v12

    .line 2605
    :cond_1
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    iget v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 2606
    move-object v5, v13

    move-object v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSubsequentPeriod(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    move-result v1

    .line 2608
    .local v1, "newWindowIndex":I
    if-eq v1, v11, :cond_2

    .line 2610
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    .line 2613
    invoke-virtual {v8, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v2

    .line 2610
    invoke-direct {p0, v8, v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 2616
    :cond_2
    invoke-direct {p0, v8, v11, v9, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 2589
    .end local v1    # "newWindowIndex":I
    .end local v12    # "oldPeriodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v13    # "periodUid":Ljava/lang/Object;
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 2590
    .local v1, "isCleared":Z
    :goto_1
    nop

    .line 2592
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v11, p3

    .line 2593
    :goto_2
    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-wide/from16 v9, p4

    .line 2590
    :goto_3
    invoke-direct {p0, v8, v11, v9, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static getPlayWhenReadyChangeReason(I)I
    .locals 1
    .param p0, "playerCommand"    # I

    .line 2984
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 2985
    const/4 v0, 0x2

    goto :goto_0

    .line 2986
    :cond_0
    const/4 v0, 0x1

    .line 2984
    :goto_0
    return v0
.end method

.method private getPositionInfo(J)Landroidx/media3/common/Player$PositionInfo;
    .locals 21
    .param p1, "discontinuityWindowStartPositionUs"    # J

    .line 2241
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2242
    .local v1, "newWindowUid":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 2243
    .local v2, "newPeriodUid":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v15

    .line 2244
    .local v15, "newMediaItemIndex":I
    const/4 v3, -0x1

    .line 2245
    .local v3, "newPeriodIndex":I
    const/4 v4, 0x0

    .line 2246
    .local v4, "newMediaItem":Landroidx/media3/common/MediaItem;
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2247
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2248
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5, v2, v6}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2249
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v5, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 2250
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v5, v15, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    iget-object v1, v5, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2251
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v4, v5, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_0

    .line 2246
    :cond_0
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 2253
    .end local v3    # "newPeriodIndex":I
    .end local v4    # "newMediaItem":Landroidx/media3/common/MediaItem;
    .local v16, "newPeriodIndex":I
    .local v17, "newMediaItem":Landroidx/media3/common/MediaItem;
    :goto_0
    invoke-static/range {p1 .. p2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v18

    .line 2254
    .local v18, "positionMs":J
    new-instance v20, Landroidx/media3/common/Player$PositionInfo;

    .line 2261
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2262
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    move-wide v11, v3

    goto :goto_1

    .line 2263
    :cond_1
    move-wide/from16 v11, v18

    :goto_1
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v13, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v14, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object/from16 v3, v20

    move-object v4, v1

    move v5, v15

    move-object/from16 v6, v17

    move-object v7, v2

    move/from16 v8, v16

    move-wide/from16 v9, v18

    invoke-direct/range {v3 .. v14}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 2254
    return-object v20
.end method

.method private getPreviousPositionInfo(ILandroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/common/Player$PositionInfo;
    .locals 25
    .param p1, "positionDiscontinuityReason"    # I
    .param p2, "oldPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p3, "oldMaskingMediaItemIndex"    # I

    .line 2187
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 2188
    .local v2, "oldWindowUid":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 2189
    .local v3, "oldPeriodUid":Ljava/lang/Object;
    move/from16 v4, p3

    .line 2190
    .local v4, "oldMediaItemIndex":I
    const/4 v5, -0x1

    .line 2191
    .local v5, "oldPeriodIndex":I
    const/4 v6, 0x0

    .line 2192
    .local v6, "oldMediaItem":Landroidx/media3/common/MediaItem;
    new-instance v7, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v7}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 2193
    .local v7, "oldPeriod":Landroidx/media3/common/Timeline$Period;
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2194
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2195
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v8, v3, v7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2196
    iget v4, v7, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 2197
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v8, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v5

    .line 2198
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v8, v4, v9}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v8

    iget-object v2, v8, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2199
    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v6, v8, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 2203
    :cond_0
    if-nez p1, :cond_3

    .line 2204
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2206
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v8, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v9, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v9, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 2207
    invoke-virtual {v7, v8, v9}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v8

    .line 2210
    .local v8, "oldPositionUs":J
    invoke-static/range {p2 .. p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v10

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .local v10, "oldContentPositionUs":J
    goto :goto_0

    .line 2211
    .end local v8    # "oldPositionUs":J
    .end local v10    # "oldContentPositionUs":J
    :cond_1
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v8, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 2214
    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v8

    .line 2215
    .restart local v8    # "oldPositionUs":J
    move-wide v10, v8

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .restart local v10    # "oldContentPositionUs":J
    goto :goto_0

    .line 2218
    .end local v8    # "oldPositionUs":J
    .end local v10    # "oldContentPositionUs":J
    :cond_2
    iget-wide v8, v7, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v10, v7, Landroidx/media3/common/Timeline$Period;->durationUs:J

    add-long/2addr v8, v10

    .line 2219
    .restart local v8    # "oldPositionUs":J
    move-wide v10, v8

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .restart local v10    # "oldContentPositionUs":J
    goto :goto_0

    .line 2221
    .end local v8    # "oldPositionUs":J
    .end local v10    # "oldContentPositionUs":J
    :cond_3
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2222
    iget-wide v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 2223
    .restart local v8    # "oldPositionUs":J
    invoke-static/range {p2 .. p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v10

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .restart local v10    # "oldContentPositionUs":J
    goto :goto_0

    .line 2225
    .end local v8    # "oldPositionUs":J
    .end local v10    # "oldContentPositionUs":J
    :cond_4
    iget-wide v8, v7, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    add-long/2addr v8, v10

    .line 2226
    .restart local v8    # "oldPositionUs":J
    move-wide v10, v8

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .line 2228
    .end local v8    # "oldPositionUs":J
    .local v20, "oldPositionUs":J
    .local v22, "oldContentPositionUs":J
    :goto_0
    new-instance v24, Landroidx/media3/common/Player$PositionInfo;

    .line 2234
    invoke-static/range {v20 .. v21}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v14

    .line 2235
    invoke-static/range {v22 .. v23}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v16

    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v13, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v12, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object/from16 v8, v24

    move-object v9, v2

    move v10, v4

    move-object v11, v6

    move/from16 v19, v12

    move-object v12, v3

    move/from16 v18, v13

    move v13, v5

    invoke-direct/range {v8 .. v19}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 2228
    return-object v24
.end method

.method private static getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 6
    .param p0, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2269
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 2270
    .local v0, "window":Landroidx/media3/common/Timeline$Window;
    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 2271
    .local v1, "period":Landroidx/media3/common/Timeline$Period;
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2272
    iget-wide v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2273
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v3, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v2, v3, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v2

    goto :goto_0

    .line 2274
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    add-long/2addr v2, v4

    .line 2272
    :goto_0
    return-wide v2
.end method

.method private handlePlaybackInfo(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 15
    .param p1, "playbackInfoUpdate"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 1969
    move-object v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    sub-int/2addr v0, v1

    iput v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 1970
    iget-boolean v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1971
    iget v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    iput v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    .line 1972
    iput-boolean v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 1974
    :cond_0
    iget v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    if-nez v0, :cond_a

    .line 1975
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v11, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1976
    .local v11, "newTimeline":Landroidx/media3/common/Timeline;
    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1979
    const/4 v0, -0x1

    iput v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    .line 1980
    const-wide/16 v3, 0x0

    iput-wide v3, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 1981
    iput v2, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 1983
    :cond_1
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1984
    move-object v0, v11

    check-cast v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaylistTimeline;->getChildTimelines()Ljava/util/List;

    move-result-object v0

    .line 1985
    .local v0, "timelines":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1986
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1987
    iget-object v4, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Timeline;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->updateTimeline(Landroidx/media3/common/Timeline;)V

    .line 1986
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1990
    .end local v0    # "timelines":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Timeline;>;"
    .end local v3    # "i":I
    :cond_3
    const/4 v0, 0x0

    .line 1991
    .local v0, "positionDiscontinuity":Z
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 1992
    .local v3, "discontinuityWindowStartPositionUs":J
    iget-boolean v5, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    if-eqz v5, :cond_9

    .line 1993
    iget-object v5, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1994
    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v7, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    move v0, v1

    .line 1997
    if-eqz v0, :cond_8

    .line 1999
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 2001
    :cond_6
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    invoke-direct {p0, v11, v1, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v5

    goto :goto_4

    .line 2000
    :cond_7
    :goto_3
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 2001
    :goto_4
    move-wide v3, v5

    move v12, v0

    move-wide v13, v3

    goto :goto_5

    .line 1997
    :cond_8
    move v12, v0

    move-wide v13, v3

    goto :goto_5

    .line 1992
    :cond_9
    move v12, v0

    move-wide v13, v3

    .line 2007
    .end local v0    # "positionDiscontinuity":Z
    .end local v3    # "discontinuityWindowStartPositionUs":J
    .local v12, "positionDiscontinuity":Z
    .local v13, "discontinuityWindowStartPositionUs":J
    :goto_5
    iput-boolean v2, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 2008
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, v12

    move-wide v5, v13

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 2017
    .end local v11    # "newTimeline":Landroidx/media3/common/Timeline;
    .end local v12    # "positionDiscontinuity":Z
    .end local v13    # "discontinuityWindowStartPositionUs":J
    :cond_a
    return-void
.end method

.method private hasSupportedAudioOutput()Z
    .locals 3

    .line 2845
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    if-eqz v0, :cond_0

    .line 2846
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    invoke-interface {v0}, Landroidx/media3/exoplayer/SuitableOutputChecker;->isSelectedOutputSuitableForPlayback()Z

    move-result v0

    return v0

    .line 2847
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 2848
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioManager:Landroid/media/AudioManager;

    .line 2849
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 2848
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api23;->isSuitableExternalAudioOutputPresentInAudioDeviceInfoList(Landroid/content/Context;[Landroid/media/AudioDeviceInfo;)Z

    move-result v0

    return v0

    .line 2853
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$maybeNotifySurfaceSizeChanged$27(IILandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2773
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic lambda$release$5(Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1066
    new-instance v0, Landroidx/media3/exoplayer/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    .line 1067
    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    .line 1066
    invoke-interface {p0, v0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$setAudioAttributes$8(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "newAudioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1493
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$setAudioSessionId$9(ILandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "finalAudioSessionId"    # I
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1525
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method static synthetic lambda$setRepeatMode$3(ILandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "repeatMode"    # I
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 850
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$setShuffleModeEnabled$4(ZLandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "shuffleModeEnabled"    # Z
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 870
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setSkipSilenceEnabled$11(ZLandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "newSkipSilenceEnabled"    # Z
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1588
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setTrackSelectionParameters$6(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1270
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$setVolume$10(FLandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "finalVolume"    # F
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1563
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$12(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "timelineChangeReason"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2083
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-interface {p2, v0, p1}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$13(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "positionDiscontinuityReason"    # I
    .param p1, "previousPositionInfo"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "positionInfo"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2093
    invoke-interface {p3, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    .line 2094
    invoke-interface {p3, p1, p2, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    .line 2096
    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$14(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "finalMediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "mediaItemTransitionReason"    # I
    .param p2, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2102
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$15(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2107
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$16(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2111
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$17(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2118
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$18(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "finalMediaMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2124
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$19(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2130
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onLoadingChanged(Z)V

    .line 2131
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    .line 2132
    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$20(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2138
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget v1, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$21(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2144
    iget v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$22(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2152
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget v1, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$23(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2160
    iget v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$24(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2166
    invoke-virtual {p0}, Landroidx/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v0

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$25(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p0, "newPlaybackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2171
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method private maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 31
    .param p1, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "Landroidx/media3/common/Timeline;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/media3/exoplayer/PlaybackInfo;"
        }
    .end annotation

    .line 2477
    .local p3, "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2479
    move-object/from16 v3, p1

    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2480
    .local v5, "oldTimeline":Landroidx/media3/common/Timeline;
    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v6

    .line 2482
    .local v6, "oldContentPositionMs":J
    invoke-virtual/range {p1 .. p2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 2484
    .end local p1    # "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .local v3, "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2486
    invoke-static {}, Landroidx/media3/exoplayer/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v4

    .line 2487
    .local v4, "dummyMediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v21

    .line 2488
    .local v21, "positionUs":J
    sget-object v18, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 2497
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v20

    .line 2489
    const-wide/16 v16, 0x0

    move-object v8, v3

    move-object v9, v4

    move-wide/from16 v10, v21

    move-wide/from16 v12, v21

    move-object/from16 v19, v14

    move-wide/from16 v14, v21

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 2498
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 2499
    iget-wide v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 2500
    return-object v3

    .line 2503
    .end local v4    # "dummyMediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .end local v21    # "positionUs":J
    :cond_2
    iget-object v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v14, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2504
    .local v14, "oldPeriodUid":Ljava/lang/Object;
    invoke-static/range {p3 .. p3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v14, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v4

    move/from16 v21, v8

    .line 2506
    .local v21, "playingPeriodChanged":Z
    if-eqz v21, :cond_3

    new-instance v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_2
    move-object v15, v8

    .line 2507
    .local v15, "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2508
    .local v12, "newContentPositionUs":J
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v8

    .line 2509
    .local v8, "oldContentPositionUs":J
    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2510
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 2511
    invoke-virtual {v5, v14, v10}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v10

    sub-long/2addr v8, v10

    move-wide/from16 v22, v8

    goto :goto_3

    .line 2509
    :cond_4
    move-wide/from16 v22, v8

    .line 2514
    .end local v8    # "oldContentPositionUs":J
    .local v22, "oldContentPositionUs":J
    :goto_3
    if-nez v21, :cond_b

    cmp-long v8, v12, v22

    if-gez v8, :cond_5

    move-object/from16 v24, v5

    move-wide/from16 v25, v6

    move-wide v6, v12

    move-object/from16 p1, v14

    move-object/from16 v27, v15

    goto/16 :goto_8

    .line 2529
    :cond_5
    cmp-long v8, v12, v22

    if-nez v8, :cond_9

    .line 2531
    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2532
    invoke-virtual {v1, v4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    .line 2533
    .local v4, "loadingPeriodIndex":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_7

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 2534
    invoke-virtual {v1, v4, v8}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v9, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 2535
    invoke-virtual {v1, v9, v10}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v9

    iget v9, v9, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-eq v8, v9, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v24, v5

    move-wide/from16 v25, v6

    move-wide/from16 v29, v12

    move-object v1, v14

    move-object v2, v15

    goto :goto_6

    .line 2538
    :cond_7
    :goto_4
    iget-object v8, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v8, v9}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2540
    invoke-virtual {v15}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2541
    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    iget v9, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v10, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v8, v9, v10}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v8

    goto :goto_5

    .line 2542
    :cond_8
    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v8, v8, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :goto_5
    move-wide v10, v8

    .line 2543
    .local v10, "maskedBufferedPositionUs":J
    iget-wide v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    move/from16 p1, v4

    move-object/from16 v24, v5

    .end local v4    # "loadingPeriodIndex":I
    .end local v5    # "oldTimeline":Landroidx/media3/common/Timeline;
    .local v24, "oldTimeline":Landroidx/media3/common/Timeline;
    .local p1, "loadingPeriodIndex":I
    iget-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    move-wide/from16 v25, v6

    .end local v6    # "oldContentPositionMs":J
    .local v25, "oldContentPositionMs":J
    iget-wide v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    sub-long v16, v10, v6

    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v7, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v0, v3, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2544
    move-wide/from16 v18, v8

    move-object v8, v3

    move-object v9, v15

    move-wide/from16 v27, v10

    .end local v10    # "maskedBufferedPositionUs":J
    .local v27, "maskedBufferedPositionUs":J
    move-wide/from16 v10, v18

    move-wide/from16 v29, v12

    .end local v12    # "newContentPositionUs":J
    .local v29, "newContentPositionUs":J
    move-wide v12, v1

    move-object v1, v14

    move-object v2, v15

    .end local v14    # "oldPeriodUid":Ljava/lang/Object;
    .end local v15    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v1, "oldPeriodUid":Ljava/lang/Object;
    .local v2, "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    move-wide v14, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v0

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 2553
    .end local v3    # "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .local v0, "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 2554
    .end local v0    # "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .restart local v3    # "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    move-wide/from16 v4, v27

    .end local v27    # "maskedBufferedPositionUs":J
    .local v4, "maskedBufferedPositionUs":J
    iput-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 2556
    .end local v4    # "maskedBufferedPositionUs":J
    .end local p1    # "loadingPeriodIndex":I
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move-wide/from16 v6, v29

    goto/16 :goto_c

    .line 2557
    .end local v1    # "oldPeriodUid":Ljava/lang/Object;
    .end local v2    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .end local v24    # "oldTimeline":Landroidx/media3/common/Timeline;
    .end local v25    # "oldContentPositionMs":J
    .end local v29    # "newContentPositionUs":J
    .restart local v5    # "oldTimeline":Landroidx/media3/common/Timeline;
    .restart local v6    # "oldContentPositionMs":J
    .restart local v12    # "newContentPositionUs":J
    .restart local v14    # "oldPeriodUid":Ljava/lang/Object;
    .restart local v15    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_9
    move-object/from16 v24, v5

    move-wide/from16 v25, v6

    move-wide/from16 v29, v12

    move-object v1, v14

    move-object v2, v15

    .end local v5    # "oldTimeline":Landroidx/media3/common/Timeline;
    .end local v6    # "oldContentPositionMs":J
    .end local v12    # "newContentPositionUs":J
    .end local v14    # "oldPeriodUid":Ljava/lang/Object;
    .end local v15    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v1    # "oldPeriodUid":Ljava/lang/Object;
    .restart local v2    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v24    # "oldTimeline":Landroidx/media3/common/Timeline;
    .restart local v25    # "oldContentPositionMs":J
    .restart local v29    # "newContentPositionUs":J
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 2559
    iget-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v6, v29

    .end local v29    # "newContentPositionUs":J
    .local v6, "newContentPositionUs":J
    sub-long v12, v6, v22

    sub-long/2addr v4, v12

    .line 2560
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2563
    .local v4, "maskedTotalBufferedDurationUs":J
    iget-wide v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 2564
    .local v8, "maskedBufferedPositionUs":J
    iget-object v0, v3, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v10, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2565
    add-long v8, v6, v4

    move-wide v14, v8

    goto :goto_7

    .line 2564
    :cond_a
    move-wide v14, v8

    .line 2567
    .end local v8    # "maskedBufferedPositionUs":J
    .local v14, "maskedBufferedPositionUs":J
    :goto_7
    iget-object v0, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v13, v3, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2568
    move-object v8, v3

    move-object v9, v2

    move-wide v10, v6

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-wide v12, v6

    move-object/from16 p1, v1

    move-object/from16 v27, v2

    move-wide v1, v14

    .end local v2    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .end local v14    # "maskedBufferedPositionUs":J
    .local v1, "maskedBufferedPositionUs":J
    .local v27, "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local p1, "oldPeriodUid":Ljava/lang/Object;
    move-wide v14, v6

    move-wide/from16 v16, v4

    move-object/from16 v18, v0

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 2577
    iput-wide v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v0, p0

    move-object/from16 v2, v27

    goto :goto_c

    .line 2514
    .end local v1    # "maskedBufferedPositionUs":J
    .end local v4    # "maskedTotalBufferedDurationUs":J
    .end local v24    # "oldTimeline":Landroidx/media3/common/Timeline;
    .end local v25    # "oldContentPositionMs":J
    .end local v27    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .end local p1    # "oldPeriodUid":Ljava/lang/Object;
    .restart local v5    # "oldTimeline":Landroidx/media3/common/Timeline;
    .local v6, "oldContentPositionMs":J
    .restart local v12    # "newContentPositionUs":J
    .local v14, "oldPeriodUid":Ljava/lang/Object;
    .restart local v15    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_b
    move-object/from16 v24, v5

    move-wide/from16 v25, v6

    move-wide v6, v12

    move-object/from16 p1, v14

    move-object/from16 v27, v15

    .line 2515
    .end local v5    # "oldTimeline":Landroidx/media3/common/Timeline;
    .end local v12    # "newContentPositionUs":J
    .end local v14    # "oldPeriodUid":Ljava/lang/Object;
    .end local v15    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v6, "newContentPositionUs":J
    .restart local v24    # "oldTimeline":Landroidx/media3/common/Timeline;
    .restart local v25    # "oldContentPositionMs":J
    .restart local v27    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local p1    # "oldPeriodUid":Ljava/lang/Object;
    :goto_8
    invoke-virtual/range {v27 .. v27}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 2517
    nop

    .line 2524
    if-eqz v21, :cond_c

    sget-object v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_9

    :cond_c
    iget-object v0, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_9
    move-object/from16 v18, v0

    .line 2525
    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_a

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_a
    move-object/from16 v19, v1

    .line 2526
    if-eqz v21, :cond_e

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_b

    :cond_e
    iget-object v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_b
    move-object/from16 v20, v1

    .line 2518
    const-wide/16 v16, 0x0

    move-object v8, v3

    move-object/from16 v9, v27

    move-wide v10, v6

    move-wide v12, v6

    move-wide v14, v6

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 2527
    .end local v3    # "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .local v1, "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    move-object/from16 v2, v27

    .end local v27    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v2    # "newPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 2528
    .end local v1    # "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .restart local v3    # "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iput-wide v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 2579
    :goto_c
    return-object v3
.end method

.method private maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;
    .locals 6
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2624
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2626
    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    .line 2627
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-wide v0, p3

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 2628
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 2629
    const/4 v0, 0x0

    return-object v0

    .line 2631
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 2634
    :cond_2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    .line 2635
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p3

    .line 2637
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2770
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 2771
    :cond_0
    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 2772
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;-><init>(II)V

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2774
    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 2777
    :cond_1
    return-void
.end method

.method private onSelectedOutputSuitabilityChanged(Z)V
    .locals 3
    .param p1, "isSelectedOutputSuitableForPlayback"    # Z

    .line 2960
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2961
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v2, v0, :cond_1

    .line 2963
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfoForPlayWhenReadyAndSuppressionReasonStates(ZII)V

    goto :goto_0

    .line 2969
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    invoke-direct {p0, v2, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfoForPlayWhenReadyAndSuppressionReasonStates(ZII)V

    .line 2974
    :cond_1
    :goto_0
    return-void
.end method

.method private periodPositionUsToWindowPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J
    .locals 2
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "periodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "positionUs"    # J

    .line 2642
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2643
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long/2addr p3, v0

    .line 2644
    return-wide p3
.end method

.method private removeMediaItemsInternal(Landroidx/media3/exoplayer/PlaybackInfo;II)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 16
    .param p1, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 2437
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v10

    .line 2438
    .local v10, "currentIndex":I
    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v11

    .line 2439
    .local v11, "contentPositionMs":J
    iget-object v13, v7, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2440
    .local v13, "oldTimeline":Landroidx/media3/common/Timeline;
    iget-object v0, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    .line 2441
    .local v14, "currentMediaSourceCount":I
    iget v0, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v15, 0x1

    add-int/2addr v0, v15

    iput v0, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2442
    invoke-direct {v6, v8, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    .line 2443
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMaskingTimeline()Landroidx/media3/common/Timeline;

    move-result-object v4

    .line 2444
    .local v4, "newTimeline":Landroidx/media3/common/Timeline;
    nop

    .line 2448
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v4

    move v3, v10

    move-object v15, v4

    .end local v4    # "newTimeline":Landroidx/media3/common/Timeline;
    .local v15, "newTimeline":Landroidx/media3/common/Timeline;
    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2445
    invoke-direct {v6, v7, v15, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 2451
    .local v0, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v2, :cond_0

    if-ge v8, v9, :cond_0

    if-ne v9, v14, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2456
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-lt v10, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2457
    .local v1, "transitionsToEnded":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2458
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 2460
    :cond_1
    iget-object v2, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v3, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {v2, v8, v9, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->removeMediaSources(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 2461
    return-object v0
.end method

.method private removeMediaSourceHolders(II)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndexExclusive"    # I

    .line 2465
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 2466
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2465
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2468
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndRemove(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 2469
    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 2676
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2677
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 2678
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 2679
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 2680
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    .line 2681
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 2682
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 2684
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 2685
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    if-eq v0, v2, :cond_1

    .line 2686
    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2688
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2690
    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 2692
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 2693
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2694
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2696
    :cond_3
    return-void
.end method

.method private sendRendererMessage(IILjava/lang/Object;)V
    .locals 5
    .param p1, "trackType"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 2904
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2905
    .local v3, "renderer":Landroidx/media3/exoplayer/Renderer;
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 2906
    :cond_0
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    .line 2904
    .end local v3    # "renderer":Landroidx/media3/exoplayer/Renderer;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2909
    :cond_2
    return-void
.end method

.method private sendRendererMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .line 2899
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 2900
    return-void
.end method

.method private sendVolumeToRenderers()V
    .locals 4

    .line 2780
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/AudioFocusManager;->getVolumeMultiplier()F

    move-result v1

    mul-float/2addr v0, v1

    .line 2781
    .local v0, "scaledVolume":F
    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 2782
    return-void
.end method

.method private setMediaSourcesInternal(Ljava/util/List;IJZ)V
    .locals 24
    .param p2, "startWindowIndex"    # I
    .param p3, "startPositionMs"    # J
    .param p5, "resetToDefaultPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;IJZ)V"
        }
    .end annotation

    .line 2347
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    move-object/from16 v9, p0

    move/from16 v0, p2

    iget-object v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v9, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v10

    .line 2348
    .local v10, "currentWindowIndex":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v11

    .line 2349
    .local v11, "currentPositionMs":J
    iget v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2350
    iget-object v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 2351
    iget-object v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 2352
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2351
    invoke-direct {v9, v3, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    .line 2354
    :cond_0
    nop

    .line 2355
    move-object/from16 v13, p1

    invoke-direct {v9, v3, v13}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 2356
    .local v20, "holders":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;>;"
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMaskingTimeline()Landroidx/media3/common/Timeline;

    move-result-object v8

    .line 2357
    .local v8, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-wide/from16 v4, p3

    goto :goto_0

    .line 2358
    :cond_1
    new-instance v1, Landroidx/media3/common/IllegalSeekPositionException;

    move-wide/from16 v4, p3

    invoke-direct {v1, v8, v0, v4, v5}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Landroidx/media3/common/Timeline;IJ)V

    throw v1

    .line 2357
    :cond_2
    move-wide/from16 v4, p3

    .line 2361
    :goto_0
    const/4 v1, -0x1

    if-eqz p5, :cond_3

    .line 2362
    iget-boolean v6, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v8, v6}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    .line 2363
    .end local p2    # "startWindowIndex":I
    .local v0, "startWindowIndex":I
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move v7, v0

    move-wide v5, v4

    .end local p3    # "startPositionMs":J
    .local v4, "startPositionMs":J
    goto :goto_1

    .line 2364
    .end local v0    # "startWindowIndex":I
    .end local v4    # "startPositionMs":J
    .restart local p2    # "startWindowIndex":I
    .restart local p3    # "startPositionMs":J
    :cond_3
    if-ne v0, v1, :cond_4

    .line 2365
    move v0, v10

    .line 2366
    .end local p2    # "startWindowIndex":I
    .restart local v0    # "startWindowIndex":I
    move-wide v4, v11

    move v7, v0

    move-wide v5, v4

    .end local p3    # "startPositionMs":J
    .restart local v4    # "startPositionMs":J
    goto :goto_1

    .line 2364
    .end local v0    # "startWindowIndex":I
    .end local v4    # "startPositionMs":J
    .restart local p2    # "startWindowIndex":I
    .restart local p3    # "startPositionMs":J
    :cond_4
    move v7, v0

    move-wide v5, v4

    .line 2368
    .end local p2    # "startWindowIndex":I
    .end local p3    # "startPositionMs":J
    .local v5, "startPositionMs":J
    .local v7, "startWindowIndex":I
    :goto_1
    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2372
    invoke-direct {v9, v8, v7, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v4

    .line 2369
    invoke-direct {v9, v0, v8, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 2374
    .local v0, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 2375
    .local v4, "maskingPlaybackState":I
    if-eq v7, v1, :cond_7

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v2, :cond_7

    .line 2377
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-lt v7, v1, :cond_5

    goto :goto_2

    .line 2381
    :cond_5
    const/4 v4, 0x2

    goto :goto_3

    .line 2379
    :cond_6
    :goto_2
    const/4 v4, 0x4

    .line 2384
    :cond_7
    :goto_3
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 2385
    .end local v0    # "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .local v1, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget-object v14, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 2386
    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v17

    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 2385
    move-object/from16 v15, v20

    move/from16 v16, v7

    move-object/from16 v19, v0

    invoke-virtual/range {v14 .. v19}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setMediaSources(Ljava/util/List;IJLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 2387
    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v14, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v14, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2388
    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2389
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    nop

    .line 2390
    .local v3, "positionDiscontinuity":Z
    :goto_4
    nop

    .line 2395
    invoke-direct {v9, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v14

    .line 2390
    const/4 v2, 0x0

    const/16 v16, 0x4

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    .end local v1    # "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .local v19, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    move/from16 v21, v4

    .end local v4    # "maskingPlaybackState":I
    .local v21, "maskingPlaybackState":I
    move/from16 v4, v16

    move-wide/from16 v22, v5

    .end local v5    # "startPositionMs":J
    .local v22, "startPositionMs":J
    move-wide v5, v14

    move v14, v7

    .end local v7    # "startWindowIndex":I
    .local v14, "startWindowIndex":I
    move/from16 v7, v17

    move-object v15, v8

    .end local v8    # "timeline":Landroidx/media3/common/Timeline;
    .local v15, "timeline":Landroidx/media3/common/Timeline;
    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 2398
    return-void
.end method

.method private setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "nonVideoOutputSurfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 2757
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 2758
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2759
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2760
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 2761
    .local v1, "surface":Landroid/view/Surface;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2762
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 2763
    .local v0, "surfaceSize":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 2764
    .end local v0    # "surfaceSize":Landroid/graphics/Rect;
    goto :goto_0

    .line 2765
    :cond_0
    invoke-direct {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 2767
    :goto_0
    return-void
.end method

.method private setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 2699
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2700
    .local v0, "surface":Landroid/view/Surface;
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 2701
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 2702
    return-void
.end method

.method private setVideoOutputInternal(Ljava/lang/Object;)V
    .locals 7
    .param p1, "videoOutput"    # Ljava/lang/Object;

    .line 2707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2708
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/PlayerMessage;>;"
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2709
    .local v4, "renderer":Landroidx/media3/exoplayer/Renderer;
    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 2710
    nop

    .line 2711
    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v5

    .line 2712
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v5

    .line 2713
    invoke-virtual {v5, p1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v5

    .line 2714
    invoke-virtual {v5}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v5

    .line 2710
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2708
    .end local v4    # "renderer":Landroidx/media3/exoplayer/Renderer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2717
    :cond_1
    const/4 v1, 0x0

    .line 2718
    .local v1, "messageDeliveryTimedOut":Z
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eq v2, p1, :cond_3

    .line 2722
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/PlayerMessage;

    .line 2723
    .local v3, "message":Landroidx/media3/exoplayer/PlayerMessage;
    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Landroidx/media3/exoplayer/PlayerMessage;->blockUntilDelivered(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2724
    nop

    .end local v3    # "message":Landroidx/media3/exoplayer/PlayerMessage;
    goto :goto_1

    .line 2727
    :catch_0
    move-exception v2

    .line 2728
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    const/4 v1, 0x1

    goto :goto_2

    .line 2725
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v2

    .line 2726
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 2729
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    nop

    .line 2730
    :goto_2
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-ne v2, v3, :cond_3

    .line 2732
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 2733
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 2736
    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    .line 2737
    if-eqz v1, :cond_4

    .line 2738
    new-instance v2, Landroidx/media3/exoplayer/ExoTimeoutException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    .line 2739
    const/16 v3, 0x3eb

    invoke-static {v2, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v2

    .line 2738
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 2743
    :cond_4
    return-void
.end method

.method private stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 11
    .param p1, "error"    # Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 1902
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1903
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 1904
    .local v0, "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 1905
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1906
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 1907
    if-eqz p1, :cond_0

    .line 1908
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 1910
    :cond_0
    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 1911
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stop()V

    .line 1912
    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 1920
    return-void
.end method

.method private updateAvailableCommands()V
    .locals 4

    .line 2333
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 2334
    .local v0, "previousAvailableCommands":Landroidx/media3/common/Player$Commands;
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->getAvailableCommands(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 2335
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2336
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2340
    :cond_0
    return-void
.end method

.method private updateMediaSourcesWithMediaItems(IILjava/util/List;)V
    .locals 11
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

    .line 2940
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2941
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateMediaSourcesWithMediaItems(IILjava/util/List;)V

    .line 2942
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2943
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    .line 2944
    .local v1, "snapshot":Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
    new-instance v2, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    .line 2945
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v3

    sub-int v4, v0, p1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem;

    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    .line 2944
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->updateTimeline(Landroidx/media3/common/Timeline;)V

    .line 2942
    .end local v1    # "snapshot":Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2947
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMaskingTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 2948
    .local v0, "newTimeline":Landroidx/media3/common/Timeline;
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 2949
    .local v1, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 2957
    return-void
.end method

.method private updatePlayWhenReady(ZII)V
    .locals 2
    .param p1, "playWhenReady"    # Z
    .param p2, "playerCommand"    # I
    .param p3, "playWhenReadyChangeReason"    # I

    .line 2788
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move p1, v0

    .line 2790
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->computePlaybackSuppressionReason(ZI)I

    move-result v0

    .line 2791
    .local v0, "playbackSuppressionReason":I
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    if-ne v1, p3, :cond_1

    .line 2794
    return-void

    .line 2796
    :cond_1
    invoke-direct {p0, p1, p3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfoForPlayWhenReadyAndSuppressionReasonStates(ZII)V

    .line 2798
    return-void
.end method

.method private updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V
    .locals 19
    .param p1, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;
    .param p2, "timelineChangeReason"    # I
    .param p3, "positionDiscontinuity"    # Z
    .param p4, "positionDiscontinuityReason"    # I
    .param p5, "discontinuityWindowStartPositionUs"    # J
    .param p7, "oldMaskingMediaItemIndex"    # I
    .param p8, "repeatCurrentMediaItem"    # Z

    .line 2032
    move-object/from16 v7, p0

    move/from16 v8, p4

    iget-object v9, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2033
    .local v9, "previousPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    move-object/from16 v10, p1

    .line 2034
    .local v10, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    move-object/from16 v11, p1

    iput-object v11, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2036
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, v10, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x1

    xor-int/2addr v0, v12

    move v13, v0

    .line 2037
    .local v13, "timelineChanged":Z
    nop

    .line 2038
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v9

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v13

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->evaluateMediaItemTransitionReason(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/exoplayer/PlaybackInfo;ZIZZ)Landroid/util/Pair;

    move-result-object v0

    .line 2045
    .local v0, "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2046
    .local v1, "mediaItemTransitioned":Z
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2047
    .local v2, "mediaItemTransitionReason":I
    const/4 v3, 0x0

    .line 2048
    .local v3, "mediaItem":Landroidx/media3/common/MediaItem;
    if-eqz v1, :cond_1

    .line 2049
    iget-object v4, v10, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2050
    iget-object v4, v10, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v10, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 2051
    invoke-virtual {v4, v5, v6}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 2053
    .local v4, "windowIndex":I
    iget-object v5, v10, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v5, v4, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    iget-object v3, v5, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 2055
    .end local v4    # "windowIndex":I
    :cond_0
    sget-object v4, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v4, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 2057
    :cond_1
    if-nez v1, :cond_2

    iget-object v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v5, v10, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2058
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2059
    :cond_2
    iget-object v4, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 2061
    invoke-virtual {v4}, Landroidx/media3/common/MediaMetadata;->buildUpon()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v4

    iget-object v5, v10, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2062
    invoke-virtual {v4, v5}, Landroidx/media3/common/MediaMetadata$Builder;->populateFromMetadata(Ljava/util/List;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v4

    .line 2063
    invoke-virtual {v4}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v4

    iput-object v4, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 2065
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v4

    .line 2066
    .local v4, "newMediaMetadata":Landroidx/media3/common/MediaMetadata;
    iget-object v5, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v4, v5}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v12

    .line 2067
    .local v5, "metadataChanged":Z
    iput-object v4, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 2068
    iget-boolean v6, v9, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v14, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eq v6, v14, :cond_4

    move v6, v12

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .line 2070
    .local v6, "playWhenReadyChanged":Z
    :goto_0
    iget v14, v9, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    iget v12, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v14, v12, :cond_5

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    .line 2072
    .local v12, "playbackStateChanged":Z
    :goto_1
    if-nez v12, :cond_6

    if-eqz v6, :cond_7

    .line 2073
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateWakeAndWifiLock()V

    .line 2075
    :cond_7
    iget-boolean v14, v9, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    iget-boolean v15, v10, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-eq v14, v15, :cond_8

    const/4 v14, 0x1

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    .line 2076
    .local v14, "isLoadingChanged":Z
    :goto_2
    if-eqz v14, :cond_9

    .line 2077
    iget-boolean v15, v10, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    invoke-direct {v7, v15}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePriorityTaskManagerForIsLoadingChange(Z)V

    .line 2080
    :cond_9
    if-eqz v13, :cond_a

    .line 2081
    iget-object v15, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    move-object/from16 v17, v0

    .end local v0    # "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .local v17, "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;

    move-object/from16 v18, v4

    move/from16 v4, p2

    .end local v4    # "newMediaMetadata":Landroidx/media3/common/MediaMetadata;
    .local v18, "newMediaMetadata":Landroidx/media3/common/MediaMetadata;
    invoke-direct {v0, v10, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_3

    .line 2080
    .end local v17    # "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .end local v18    # "newMediaMetadata":Landroidx/media3/common/MediaMetadata;
    .restart local v0    # "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .restart local v4    # "newMediaMetadata":Landroidx/media3/common/MediaMetadata;
    :cond_a
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    .line 2085
    .end local v0    # "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .end local v4    # "newMediaMetadata":Landroidx/media3/common/MediaMetadata;
    .restart local v17    # "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .restart local v18    # "newMediaMetadata":Landroidx/media3/common/MediaMetadata;
    :goto_3
    if-eqz p3, :cond_b

    .line 2086
    nop

    .line 2087
    move/from16 v0, p7

    invoke-direct {v7, v8, v9, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPreviousPositionInfo(ILandroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v4

    .line 2089
    .local v4, "previousPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    move v15, v12

    move-wide/from16 v11, p5

    .end local v12    # "playbackStateChanged":Z
    .local v15, "playbackStateChanged":Z
    invoke-direct {v7, v11, v12}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPositionInfo(J)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v0

    .line 2090
    .local v0, "positionInfo":Landroidx/media3/common/Player$PositionInfo;
    iget-object v11, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v12, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda24;

    invoke-direct {v12, v8, v4, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda24;-><init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    move-object/from16 v16, v0

    .end local v0    # "positionInfo":Landroidx/media3/common/Player$PositionInfo;
    .local v16, "positionInfo":Landroidx/media3/common/Player$PositionInfo;
    const/16 v0, 0xb

    invoke-virtual {v11, v0, v12}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_4

    .line 2085
    .end local v4    # "previousPositionInfo":Landroidx/media3/common/Player$PositionInfo;
    .end local v15    # "playbackStateChanged":Z
    .end local v16    # "positionInfo":Landroidx/media3/common/Player$PositionInfo;
    .restart local v12    # "playbackStateChanged":Z
    :cond_b
    move v15, v12

    .line 2098
    .end local v12    # "playbackStateChanged":Z
    .restart local v15    # "playbackStateChanged":Z
    :goto_4
    if-eqz v1, :cond_c

    .line 2099
    move-object v0, v3

    .line 2100
    .local v0, "finalMediaItem":Landroidx/media3/common/MediaItem;
    iget-object v4, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v11, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda25;

    invoke-direct {v11, v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/common/MediaItem;I)V

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v11}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2104
    .end local v0    # "finalMediaItem":Landroidx/media3/common/MediaItem;
    :cond_c
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v4, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eq v0, v4, :cond_d

    .line 2105
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda26;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    const/16 v11, 0xa

    invoke-virtual {v0, v11, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2108
    iget-object v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_d

    .line 2109
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda27;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    invoke-virtual {v0, v11, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2114
    :cond_d
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v10, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    if-eq v0, v4, :cond_e

    .line 2115
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v4, v10, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 2116
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda28;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda28;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    const/4 v11, 0x2

    invoke-virtual {v0, v11, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2120
    :cond_e
    if-eqz v5, :cond_f

    .line 2121
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 2122
    .local v0, "finalMediaMetadata":Landroidx/media3/common/MediaMetadata;
    iget-object v4, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v11, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/MediaMetadata;)V

    const/16 v12, 0xe

    invoke-virtual {v4, v12, v11}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2126
    .end local v0    # "finalMediaMetadata":Landroidx/media3/common/MediaMetadata;
    :cond_f
    if-eqz v14, :cond_10

    .line 2127
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    const/4 v11, 0x3

    invoke-virtual {v0, v11, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2134
    :cond_10
    if-nez v15, :cond_11

    if-eqz v6, :cond_12

    .line 2135
    :cond_11
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    const/4 v11, -0x1

    invoke-virtual {v0, v11, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2141
    :cond_12
    if-eqz v15, :cond_13

    .line 2142
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    const/4 v11, 0x4

    invoke-virtual {v0, v11, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2146
    :cond_13
    if-nez v6, :cond_14

    iget v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    iget v4, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    if-eq v0, v4, :cond_15

    .line 2149
    :cond_14
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    const/4 v11, 0x5

    invoke-virtual {v0, v11, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2155
    :cond_15
    iget v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget v4, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-eq v0, v4, :cond_16

    .line 2157
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda21;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    const/4 v11, 0x6

    invoke-virtual {v0, v11, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2163
    :cond_16
    invoke-virtual {v9}, Landroidx/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v0

    invoke-virtual {v10}, Landroidx/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v4

    if-eq v0, v4, :cond_17

    .line 2164
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda22;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    const/4 v11, 0x7

    invoke-virtual {v0, v11, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2168
    :cond_17
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v4, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, v4}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2169
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda23;

    invoke-direct {v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    const/16 v11, 0xc

    invoke-virtual {v0, v11, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2173
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    .line 2174
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 2176
    iget-boolean v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    iget-boolean v4, v10, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eq v0, v4, :cond_19

    .line 2177
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    .line 2178
    .local v4, "listener":Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;
    iget-boolean v11, v10, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    invoke-interface {v4, v11}, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;->onSleepingForOffloadChanged(Z)V

    .line 2179
    .end local v4    # "listener":Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;
    goto :goto_5

    .line 2181
    :cond_19
    return-void
.end method

.method private updatePlaybackInfoForPlayWhenReadyAndSuppressionReasonStates(ZII)V
    .locals 10
    .param p1, "playWhenReady"    # Z
    .param p2, "playWhenReadyChangeReason"    # I
    .param p3, "playbackSuppressionReason"    # I

    .line 2804
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2807
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_0

    .line 2808
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithEstimatedPosition()Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    goto :goto_0

    .line 2809
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :goto_0
    nop

    .line 2810
    .local v0, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    nop

    .line 2811
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 2813
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPlayWhenReady(ZII)V

    .line 2815
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 2823
    return-void
.end method

.method private updatePriorityTaskManagerForIsLoadingChange(Z)V
    .locals 2
    .param p1, "isLoading"    # Z

    .line 2912
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v0, :cond_1

    .line 2913
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-nez v0, :cond_0

    .line 2914
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->add(I)V

    .line 2915
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    goto :goto_0

    .line 2916
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_1

    .line 2917
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->remove(I)V

    .line 2918
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 2921
    :cond_1
    :goto_0
    return-void
.end method

.method private updateWakeAndWifiLock()V
    .locals 5

    .line 2858
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    .line 2859
    .local v0, "playbackState":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2873
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2862
    :pswitch_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isSleepingForOffload()Z

    move-result v2

    .line 2863
    .local v2, "isSleeping":Z
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    .line 2865
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/WifiLockManager;->setStayAwake(Z)V

    .line 2866
    goto :goto_0

    .line 2869
    .end local v2    # "isSleeping":Z
    :pswitch_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    .line 2870
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/WifiLockManager;->setStayAwake(Z)V

    .line 2871
    nop

    .line 2875
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private verifyApplicationThread()V
    .locals 3

    .line 2880
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->blockUninterruptible()V

    .line 2881
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 2882
    nop

    .line 2889
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2883
    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2890
    .local v0, "message":Ljava/lang/String;
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    if-nez v1, :cond_1

    .line 2893
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2894
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    goto :goto_1

    .line 2891
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2896
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 1600
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->addListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 1601
    return-void
.end method

.method public addAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    .line 514
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 515
    return-void
.end method

.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1732
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 1733
    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 651
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 652
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    .line 653
    return-void
.end method

.method public addMediaSource(ILandroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 663
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 664
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    .line 665
    return-void
.end method

.method public addMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 657
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 658
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSources(Ljava/util/List;)V

    .line 659
    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 675
    .local p2, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 676
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 677
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 678
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, p2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 682
    return-void

    .line 684
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSourcesInternal(Landroidx/media3/exoplayer/PlaybackInfo;ILjava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 685
    .local v0, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 693
    return-void
.end method

.method public addMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 669
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 670
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    .line 671
    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 3

    .line 1542
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1543
    new-instance v0, Landroidx/media3/common/AuxEffectInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/AuxEffectInfo;-><init>(IF)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V

    .line 1544
    return-void
.end method

.method public clearCameraMotionListener(Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    .line 1713
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1714
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->cameraMotionListener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eq v0, p1, :cond_0

    .line 1715
    return-void

    .line 1717
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1718
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1719
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1720
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    .line 1721
    return-void
.end method

.method public clearVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 1691
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1692
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eq v0, p1, :cond_0

    .line 1693
    return-void

    .line 1695
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1696
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1697
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1698
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    .line 1699
    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 1363
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1364
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1365
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1366
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 1367
    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1371
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1372
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 1373
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    .line 1375
    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 1410
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1411
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 1412
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    .line 1414
    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 1440
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1441
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1442
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 1471
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1472
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 1473
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    .line 1475
    :cond_0
    return-void
.end method

.method public createMessage(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1
    .param p1, "target"    # Landroidx/media3/exoplayer/PlayerMessage$Target;

    .line 1107
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1108
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    return-object v0
.end method

.method public decreaseDeviceVolume()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1834
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1835
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/StreamVolumeManager;->decreaseVolume(I)V

    .line 1838
    :cond_0
    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 1842
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1843
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1844
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->decreaseVolume(I)V

    .line 1846
    :cond_0
    return-void
.end method

.method public getAnalyticsCollector()Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 1

    .line 1593
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1594
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    return-object v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 502
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 1507
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1508
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method public getAudioComponent()Landroidx/media3/exoplayer/ExoPlayer$AudioComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 457
    return-object p0
.end method

.method public getAudioDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;
    .locals 1

    .line 1675
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1676
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 1661
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1662
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFormat:Landroidx/media3/common/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1530
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1531
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    return v0
.end method

.method public getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 525
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 526
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1148
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1149
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    goto :goto_0

    .line 1152
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    .line 1150
    :goto_0
    return-wide v0

    .line 1154
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Landroidx/media3/common/util/Clock;
    .locals 1

    .line 508
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/Clock;

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .locals 5

    .line 1189
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1190
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 1193
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1195
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0

    .line 1197
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 1198
    .local v0, "contentBufferedPositionUs":J
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1199
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 1200
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    .line 1201
    .local v2, "loadingPeriod":Landroidx/media3/common/Timeline$Period;
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1202
    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v0

    .line 1203
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 1204
    iget-wide v0, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 1207
    .end local v2    # "loadingPeriod":Landroidx/media3/common/Timeline$Period;
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1208
    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v2

    .line 1207
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getContentPosition()J
    .locals 2

    .line 1183
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1184
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1171
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1172
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1177
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1178
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 1725
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1726
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 2

    .line 1123
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1124
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v0

    .line 1125
    .local v0, "currentWindowIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public getCurrentPeriodIndex()I
    .locals 2

    .line 1113
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1114
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    return v0

    .line 1117
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1142
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1143
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 1300
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1301
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getCurrentTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    .line 1238
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1239
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;
    .locals 2

    .line 1244
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1245
    new-instance v0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;-><init>([Landroidx/media3/exoplayer/trackselection/TrackSelection;)V

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 1250
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1251
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method public getDeviceComponent()Landroidx/media3/exoplayer/ExoPlayer$DeviceComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 484
    return-object p0
.end method

.method public getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    .line 1764
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1765
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 1770
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1771
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/StreamVolumeManager;->getVolume()I

    move-result v0

    return v0

    .line 1774
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 5

    .line 1130
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1131
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1133
    .local v0, "periodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1134
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    iget v2, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v1

    .line 1135
    .local v1, "adDurationUs":J
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    return-wide v3

    .line 1137
    .end local v0    # "periodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .end local v1    # "adDurationUs":J
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 967
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 968
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method public getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 1275
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1276
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .locals 1

    .line 825
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 826
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 839
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 840
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 496
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 995
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 996
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 531
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 532
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 537
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 538
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    return v0
.end method

.method public bridge synthetic getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 1

    .line 544
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 545
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 1281
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1282
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method public getPreloadConfiguration()Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;
    .locals 1

    .line 894
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    return-object v0
.end method

.method public getRenderer(I)Landroidx/media3/exoplayer/Renderer;
    .locals 1
    .param p1, "index"    # I

    .line 1226
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1227
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRendererCount()I
    .locals 1

    .line 1214
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1215
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1220
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1221
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v0, v0, p1

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 858
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 859
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 955
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 956
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 961
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 962
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public getSeekParameters()Landroidx/media3/exoplayer/SeekParameters;
    .locals 1

    .line 1013
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1014
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 878
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 879
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    return v0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 1

    .line 1574
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1575
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    return v0
.end method

.method public getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 1

    .line 1357
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1358
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    return-object v0
.end method

.method public getTextComponent()Landroidx/media3/exoplayer/ExoPlayer$TextComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 475
    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1159
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1160
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 1256
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1257
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->getParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getTrackSelector()Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 1

    .line 1232
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1233
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    return-object v0
.end method

.method public getVideoChangeFrameRateStrategy()I
    .locals 1

    .line 1345
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1346
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    return v0
.end method

.method public getVideoComponent()Landroidx/media3/exoplayer/ExoPlayer$VideoComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 466
    return-object p0
.end method

.method public getVideoDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;
    .locals 1

    .line 1668
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1669
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 1654
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1655
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoFormat:Landroidx/media3/common/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .line 1327
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1328
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    return v0
.end method

.method public getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 1

    .line 1351
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1352
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 1568
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1569
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1814
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1815
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1816
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/StreamVolumeManager;->increaseVolume(I)V

    .line 1818
    :cond_0
    return-void
.end method

.method public increaseDeviceVolume(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 1822
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1823
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->increaseVolume(I)V

    .line 1826
    :cond_0
    return-void
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 1780
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1781
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/StreamVolumeManager;->isMuted()Z

    move-result v0

    return v0

    .line 1784
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 899
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 900
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1165
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1166
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .line 1101
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1102
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playerReleased:Z

    return v0
.end method

.method public isSleepingForOffload()Z
    .locals 1

    .line 489
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 490
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    return v0
.end method

.method public isTunnelingEnabled()Z
    .locals 6

    .line 1870
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1872
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1873
    .local v4, "config":Landroidx/media3/exoplayer/RendererConfiguration;
    if-eqz v4, :cond_0

    iget-boolean v5, v4, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    if-eqz v5, :cond_0

    .line 1874
    const/4 v0, 0x1

    return v0

    .line 1872
    .end local v4    # "config":Landroidx/media3/exoplayer/RendererConfiguration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1877
    :cond_1
    return v2
.end method

.method synthetic lambda$new$0$androidx-media3-exoplayer-ExoPlayerImpl(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;
    .param p2, "flags"    # Landroidx/media3/common/FlagSet;

    .line 296
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    new-instance v1, Landroidx/media3/common/Player$Events;

    invoke-direct {v1, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method synthetic lambda$new$1$androidx-media3-exoplayer-ExoPlayerImpl(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0
    .param p1, "playbackInfoUpdate"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 348
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->handlePlaybackInfo(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method synthetic lambda$new$2$androidx-media3-exoplayer-ExoPlayerImpl(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 2
    .param p1, "playbackInfoUpdate"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 348
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$setPlaylistMetadata$7$androidx-media3-exoplayer-ExoPlayerImpl(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1295
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method synthetic lambda$updateAvailableCommands$26$androidx-media3-exoplayer-ExoPlayerImpl(Landroidx/media3/common/Player$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 2338
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public moveMediaItems(III)V
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I

    .line 720
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 721
    const/4 v2, 0x1

    if-ltz v10, :cond_0

    if-gt v10, v0, :cond_0

    if-ltz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 722
    iget-object v3, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    .line 723
    .local v11, "playlistSize":I
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 724
    .end local p2    # "toIndex":I
    .local v12, "toIndex":I
    sub-int v0, v12, v10

    sub-int v0, v11, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 725
    .end local p3    # "newFromIndex":I
    .local v13, "newFromIndex":I
    if-ge v10, v11, :cond_2

    if-eq v10, v12, :cond_2

    if-ne v10, v13, :cond_1

    goto :goto_1

    .line 729
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v14

    .line 730
    .local v14, "oldTimeline":Landroidx/media3/common/Timeline;
    iget v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v0, v2

    iput v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 731
    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-static {v0, v10, v12, v13}, Landroidx/media3/common/util/Util;->moveItems(Ljava/util/List;III)V

    .line 732
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMaskingTimeline()Landroidx/media3/common/Timeline;

    move-result-object v15

    .line 733
    .local v15, "newTimeline":Landroidx/media3/common/Timeline;
    iget-object v6, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 740
    invoke-direct {v9, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v3

    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 741
    invoke-direct {v9, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v4

    .line 737
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 734
    invoke-direct {v9, v6, v15, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v16

    .line 742
    .local v16, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {v0, v10, v12, v13, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->moveMediaSources(IIILandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 743
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 751
    return-void

    .line 727
    .end local v14    # "oldTimeline":Landroidx/media3/common/Timeline;
    .end local v15    # "newTimeline":Landroidx/media3/common/Timeline;
    .end local v16    # "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    :cond_2
    :goto_1
    return-void
.end method

.method public prepare()V
    .locals 14

    .line 550
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 551
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    .line 553
    .local v0, "playWhenReady":Z
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v1

    .line 554
    .local v1, "playerCommand":I
    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReadyChangeReason(I)I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    .line 555
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 559
    .local v3, "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    nop

    .line 561
    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x4

    .line 560
    :cond_1
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    .line 566
    .end local v3    # "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .local v2, "playbackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v3, v4

    iput v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 567
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prepare()V

    .line 568
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v13}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 576
    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 581
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 582
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 583
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare()V

    .line 584
    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaSource;ZZ)V
    .locals 0
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 590
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    .line 591
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare()V

    .line 592
    return-void
.end method

.method public release()V
    .locals 6

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1045
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AndroidXMedia3/1.5.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1051
    invoke-static {}, Landroidx/media3/common/MediaLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1054
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 1055
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/StreamVolumeManager;->release()V

    .line 1058
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    .line 1059
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WifiLockManager;->setStayAwake(Z)V

    .line 1060
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/AudioFocusManager;->release()V

    .line 1061
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->release()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1063
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda9;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1071
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->release()V

    .line 1072
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1073
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->removeEventListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 1074
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_2

    .line 1075
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithEstimatedPosition()Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1077
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    if-eqz v0, :cond_3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v0, v3, :cond_3

    .line 1078
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    invoke-interface {v0}, Landroidx/media3/exoplayer/SuitableOutputChecker;->disable()V

    .line 1080
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1081
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1082
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 1083
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1084
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->release()V

    .line 1085
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->release()V

    .line 1086
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1087
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 1088
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1089
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 1091
    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_5

    .line 1092
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/PriorityTaskManager;

    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-virtual {v0, v2}, Landroidx/media3/common/PriorityTaskManager;->remove(I)V

    .line 1093
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 1095
    :cond_5
    sget-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    .line 1096
    iput-boolean v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playerReleased:Z

    .line 1097
    return-void
.end method

.method public removeAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 1605
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1606
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->removeListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 1607
    return-void
.end method

.method public removeAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    .line 519
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 520
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 521
    return-void
.end method

.method public removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/common/Player$Listener;

    .line 1737
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1738
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    .line 1739
    return-void
.end method

.method public removeMediaItems(II)V
    .locals 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 697
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 698
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 699
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 700
    .local v1, "playlistSize":I
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 701
    if-ge p1, v1, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 705
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0, v2, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeMediaItemsInternal(Landroidx/media3/exoplayer/PlaybackInfo;II)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    .line 706
    .local v2, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget-object v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 707
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v6, v3, 0x1

    .line 708
    .local v6, "positionDiscontinuity":Z
    nop

    .line 713
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v8

    .line 708
    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 716
    return-void

    .line 703
    .end local v2    # "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .end local v6    # "positionDiscontinuity":Z
    :cond_2
    :goto_1
    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .locals 16
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

    .line 755
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v0, p2

    move-object/from16 v11, p3

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 756
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v10, :cond_0

    if-lt v0, v10, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 757
    iget-object v3, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    .line 758
    .local v12, "playlistSize":I
    if-le v10, v12, :cond_1

    .line 760
    return-void

    .line 762
    :cond_1
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 763
    .end local p2    # "toIndex":I
    .local v13, "toIndex":I
    invoke-direct {v9, v10, v13, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->canUpdateMediaSourcesWithMediaItems(IILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    invoke-direct {v9, v10, v13, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateMediaSourcesWithMediaItems(IILjava/util/List;)V

    .line 766
    return-void

    .line 768
    :cond_2
    invoke-direct {v9, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 769
    .local v14, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 772
    iget v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v9, v14, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 773
    return-void

    .line 775
    :cond_4
    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v9, v0, v13, v14}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSourcesInternal(Landroidx/media3/exoplayer/PlaybackInfo;ILjava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 776
    .local v0, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    invoke-direct {v9, v0, v10, v13}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeMediaItemsInternal(Landroidx/media3/exoplayer/PlaybackInfo;II)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v15

    .line 777
    .end local v0    # "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .local v15, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget-object v0, v15, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 779
    .local v3, "positionDiscontinuity":Z
    nop

    .line 784
    invoke-direct {v9, v15}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v5

    .line 779
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 787
    return-void
.end method

.method public seekTo(IJIZ)V
    .locals 16
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J
    .param p4, "seekCommand"    # I
    .param p5, "isRepeatingCurrentItem"    # Z

    .line 909
    move-object/from16 v9, p0

    move/from16 v10, p1

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 910
    const/4 v0, -0x1

    if-ne v10, v0, :cond_0

    .line 911
    return-void

    .line 913
    :cond_0
    const/4 v0, 0x1

    if-ltz v10, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 914
    iget-object v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 915
    .local v11, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-lt v10, v1, :cond_2

    .line 916
    return-void

    .line 918
    :cond_2
    iget-object v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 919
    iget v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v1, v0

    iput v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 920
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 924
    const-string v1, "ExoPlayerImpl"

    const-string/jumbo v2, "seekTo ignored because an ad is playing"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v2, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 927
    .local v1, "playbackInfoUpdate":Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 928
    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 929
    return-void

    .line 931
    .end local v1    # "playbackInfoUpdate":Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;
    :cond_3
    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 932
    .local v0, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget-object v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget-object v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 933
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 934
    :cond_4
    iget-object v1, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 936
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v12

    .line 937
    .local v12, "oldMaskingMediaItemIndex":I
    nop

    .line 941
    move-wide/from16 v13, p2

    invoke-direct {v9, v11, v10, v13, v14}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 938
    invoke-direct {v9, v0, v11, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v15

    .line 942
    .end local v0    # "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    .local v15, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget-object v0, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static/range {p2 .. p3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-virtual {v0, v11, v10, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekTo(Landroidx/media3/common/Timeline;IJ)V

    .line 943
    nop

    .line 948
    invoke-direct {v9, v15}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v5

    .line 943
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move v7, v12

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 951
    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 3
    .param p1, "newAudioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z

    .line 1479
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1480
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playerReleased:Z

    if-eqz v0, :cond_0

    .line 1481
    return-void

    .line 1483
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1484
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 1485
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1486
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_1

    .line 1487
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    iget v1, p1, Landroidx/media3/common/AudioAttributes;->usage:I

    .line 1488
    invoke-static {v1}, Landroidx/media3/common/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v1

    .line 1487
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/StreamVolumeManager;->setStreamType(I)V

    .line 1491
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/common/AudioAttributes;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1496
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    if-eqz p2, :cond_3

    move-object v1, p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    .line 1497
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    .line 1498
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    .line 1500
    .local v0, "playWhenReady":Z
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v1

    .line 1501
    .local v1, "playerCommand":I
    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReadyChangeReason(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    .line 1502
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 1503
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 4
    .param p1, "audioSessionId"    # I

    .line 1513
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1514
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    if-ne v0, p1, :cond_0

    .line 1515
    return-void

    .line 1517
    :cond_0
    if-nez p1, :cond_1

    .line 1518
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result p1

    .line 1520
    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    .line 1521
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p0, v0, v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1522
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1523
    move v0, p1

    .line 1524
    .local v0, "finalAudioSessionId":I
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(I)V

    const/16 v3, 0x15

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1526
    return-void
.end method

.method public setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V
    .locals 2
    .param p1, "auxEffectInfo"    # Landroidx/media3/common/AuxEffectInfo;

    .line 1536
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1537
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1538
    return-void
.end method

.method public setCameraMotionListener(Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    .line 1703
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1704
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->cameraMotionListener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    .line 1705
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1706
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1707
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1708
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    .line 1709
    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 2
    .param p1, "muted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1854
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1855
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1856
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/StreamVolumeManager;->setMuted(ZI)V

    .line 1858
    :cond_0
    return-void
.end method

.method public setDeviceMuted(ZI)V
    .locals 1
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 1862
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1863
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/StreamVolumeManager;->setMuted(ZI)V

    .line 1866
    :cond_0
    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 2
    .param p1, "volume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1794
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1795
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/StreamVolumeManager;->setVolume(II)V

    .line 1798
    :cond_0
    return-void
.end method

.method public setDeviceVolume(II)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "flags"    # I

    .line 1802
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1803
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/StreamVolumeManager;->setVolume(II)V

    .line 1806
    :cond_0
    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 2
    .param p1, "foregroundMode"    # Z

    .line 1019
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1020
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->foregroundMode:Z

    if-eq v0, p1, :cond_0

    .line 1021
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->foregroundMode:Z

    .line 1022
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setForegroundMode(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    new-instance v0, Landroidx/media3/exoplayer/ExoTimeoutException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    .line 1025
    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    .line 1024
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 1030
    :cond_0
    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .locals 1
    .param p1, "handleAudioBecomingNoisy"    # Z

    .line 1611
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1612
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playerReleased:Z

    if-eqz v0, :cond_0

    .line 1613
    return-void

    .line 1615
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 1616
    return-void
.end method

.method public setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 2
    .param p1, "imageOutput"    # Landroidx/media3/exoplayer/image/ImageOutput;

    .line 1882
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1883
    const/4 v0, 0x4

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1884
    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 1
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 602
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 603
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    .line 604
    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 1
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 596
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 597
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 598
    return-void
.end method

.method public setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 608
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 609
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;)V

    .line 610
    return-void
.end method

.method public setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;J)V
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "startPositionMs"    # J

    .line 614
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 615
    nop

    .line 616
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 615
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    .line 617
    return-void
.end method

.method public setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "resetPosition"    # Z

    .line 621
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 622
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 623
    return-void
.end method

.method public setMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 627
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 628
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 629
    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .locals 6
    .param p2, "startWindowIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 644
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 645
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSourcesInternal(Ljava/util/List;IJZ)V

    .line 647
    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .locals 6
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 633
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 634
    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSourcesInternal(Ljava/util/List;IJZ)V

    .line 639
    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .locals 1
    .param p1, "pauseAtEndOfMediaItems"    # Z

    .line 815
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 816
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    if-ne v0, p1, :cond_0

    .line 817
    return-void

    .line 819
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 820
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPauseAtEndOfWindow(Z)V

    .line 821
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2
    .param p1, "playWhenReady"    # Z

    .line 831
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 833
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v0

    .line 834
    .local v0, "playerCommand":I
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReadyChangeReason(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    .line 835
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 10
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 973
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 974
    if-nez p1, :cond_0

    .line 975
    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    .line 977
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 981
    .local v0, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 982
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 983
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 991
    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 3
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 1287
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1288
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    return-void

    .line 1292
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1293
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1296
    return-void
.end method

.method public setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 2
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 1549
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1550
    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1551
    return-void
.end method

.method public setPreloadConfiguration(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 1
    .param p1, "preloadConfiguration"    # Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 884
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 885
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    return-void

    .line 888
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 889
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPreloadConfiguration(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    .line 890
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .param p1, "priority"    # I

    .line 1620
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1621
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    if-ne v0, p1, :cond_0

    .line 1622
    return-void

    .line 1624
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_1

    .line 1625
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/PriorityTaskManager;

    .line 1626
    .local v0, "priorityTaskManager":Landroidx/media3/common/PriorityTaskManager;
    invoke-virtual {v0, p1}, Landroidx/media3/common/PriorityTaskManager;->add(I)V

    .line 1627
    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->remove(I)V

    .line 1629
    .end local v0    # "priorityTaskManager":Landroidx/media3/common/PriorityTaskManager;
    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    .line 1630
    const/16 v0, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(ILjava/lang/Object;)V

    .line 1631
    return-void
.end method

.method public setPriorityTaskManager(Landroidx/media3/common/PriorityTaskManager;)V
    .locals 2
    .param p1, "priorityTaskManager"    # Landroidx/media3/common/PriorityTaskManager;

    .line 1635
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1636
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    return-void

    .line 1639
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_1

    .line 1640
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/PriorityTaskManager;

    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->remove(I)V

    .line 1642
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1643
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-virtual {p1, v0}, Landroidx/media3/common/PriorityTaskManager;->add(I)V

    .line 1644
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    goto :goto_0

    .line 1646
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 1648
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    .line 1649
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3
    .param p1, "repeatMode"    # I

    .line 845
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 846
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-eq v0, p1, :cond_0

    .line 847
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    .line 848
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setRepeatMode(I)V

    .line 849
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda12;-><init>(I)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 851
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    .line 852
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 854
    :cond_0
    return-void
.end method

.method public setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V
    .locals 1
    .param p1, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;

    .line 1001
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1002
    if-nez p1, :cond_0

    .line 1003
    sget-object p1, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    .line 1005
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 1007
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V

    .line 1009
    :cond_1
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 864
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 865
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 866
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 867
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setShuffleModeEnabled(Z)V

    .line 868
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;-><init>(Z)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 871
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    .line 872
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 874
    :cond_0
    return-void
.end method

.method public setShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 13
    .param p1, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 791
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 792
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 793
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 794
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMaskingTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 795
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 800
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v4

    .line 799
    invoke-direct {p0, v0, v3, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 796
    invoke-direct {p0, v1, v0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 801
    .local v1, "newPlaybackInfo":Landroidx/media3/exoplayer/PlaybackInfo;
    iget v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 802
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 803
    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v12}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 811
    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 3
    .param p1, "newSkipSilenceEnabled"    # Z

    .line 1580
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1581
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    if-ne v0, p1, :cond_0

    .line 1582
    return-void

    .line 1584
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 1585
    const/16 v0, 0x9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1586
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;-><init>(Z)V

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1589
    return-void
.end method

.method setThrowsWhenUsingWrongThread(Z)V
    .locals 1
    .param p1, "throwsWhenUsingWrongThread"    # Z

    .line 1888
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    .line 1889
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->setThrowsWhenUsingWrongThread(Z)V

    .line 1890
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    instance-of v0, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 1892
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->setThrowsWhenUsingWrongThread(Z)V

    .line 1894
    :cond_0
    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 1262
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1263
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 1264
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->getParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1267
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 1268
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/common/TrackSelectionParameters;)V

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1271
    return-void

    .line 1265
    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoChangeFrameRateStrategy(I)V
    .locals 3
    .param p1, "videoChangeFrameRateStrategy"    # I

    .line 1334
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1335
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    if-ne v0, p1, :cond_0

    .line 1336
    return-void

    .line 1338
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 1339
    nop

    .line 1340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1339
    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1341
    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 1307
    .local p1, "videoEffects":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Effect;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1310
    :try_start_0
    const-string v0, "androidx.media3.effect.PreviewingSingleInputVideoGraph$Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroidx/media3/common/VideoFrameProcessor$Factory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1311
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    nop

    .line 1315
    const/4 v0, 0x2

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1316
    return-void

    .line 1312
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1313
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find required lib-effect dependencies."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 1681
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1682
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 1683
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1684
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1685
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1686
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    .line 1687
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 3
    .param p1, "videoScalingMode"    # I

    .line 1320
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1321
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    .line 1322
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1323
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1379
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1380
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1381
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1382
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1383
    .local v0, "newSurfaceSize":I
    :goto_0
    invoke-direct {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 1384
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 1388
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1389
    if-nez p1, :cond_0

    .line 1390
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_0

    .line 1392
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1393
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 1394
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1395
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1396
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1397
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1398
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1399
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 1400
    .local v1, "surfaceSize":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 1401
    .end local v1    # "surfaceSize":Landroid/graphics/Rect;
    goto :goto_0

    .line 1402
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1403
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 1406
    .end local v0    # "surface":Landroid/view/Surface;
    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 1418
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1419
    instance-of v0, p1, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_0

    .line 1420
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1421
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1422
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 1423
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_1

    .line 1424
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1425
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 1426
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1427
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 1428
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1429
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    .line 1430
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->addVideoSurfaceListener(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 1431
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1432
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 1434
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1436
    :goto_1
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 3
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 1446
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1447
    if-nez p1, :cond_0

    .line 1448
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_1

    .line 1450
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1451
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 1452
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1453
    const-string v0, "ExoPlayerImpl"

    const-string v1, "Replacing existing SurfaceTextureListener."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1458
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1459
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :goto_0
    if-nez v0, :cond_3

    .line 1460
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1461
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_1

    .line 1463
    :cond_3
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    .line 1464
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 1467
    .end local v0    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 4
    .param p1, "volume"    # F

    .line 1555
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1556
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 1557
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 1558
    return-void

    .line 1560
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    .line 1561
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendVolumeToRenderers()V

    .line 1562
    move v0, p1

    .line 1563
    .local v0, "finalVolume":F
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda6;-><init>(F)V

    const/16 v3, 0x16

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1564
    return-void
.end method

.method public setWakeMode(I)V
    .locals 3
    .param p1, "wakeMode"    # I

    .line 1743
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1744
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1754
    :pswitch_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/WakeLockManager;->setEnabled(Z)V

    .line 1755
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/WifiLockManager;->setEnabled(Z)V

    .line 1756
    goto :goto_0

    .line 1750
    :pswitch_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/WakeLockManager;->setEnabled(Z)V

    .line 1751
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WifiLockManager;->setEnabled(Z)V

    .line 1752
    goto :goto_0

    .line 1746
    :pswitch_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WakeLockManager;->setEnabled(Z)V

    .line 1747
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WifiLockManager;->setEnabled(Z)V

    .line 1748
    nop

    .line 1760
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 4

    .line 1034
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1035
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(ZI)I

    .line 1036
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 1037
    new-instance v0, Landroidx/media3/common/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    .line 1038
    return-void
.end method
